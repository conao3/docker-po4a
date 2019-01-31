TAG ?= latest

build: Dockerfile
	docker image build -t conao3/po4a:$(TAG) .

push: build
	docker push conao3/po4a:$(TAG)
