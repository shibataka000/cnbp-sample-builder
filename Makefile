builder: buildpack stack
	pack builder create my-builder:bionic --config ./builder/builder.toml

buildpack:
	pack buildpack package my-buildpack --config ./buildpack/package.toml

stack:
	docker build ./stack -t my-stack-run:bionic --target run
	docker build ./stack -t my-stack-build:bionic --target build

app: builder
	pack build my-sample-app --path ./app --builder my-builder:bionic

clean:
	docker rmi my-builder:bionic my-buildpack my-stack-run:bionic my-stack-build:bionic my-sample-app

.PHONY: builder buildpack stack app clean
