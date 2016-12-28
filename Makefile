TAG?=latest
IMAGENAME?=jtilander/niftypostgres

.PHONY: image push

image:
	docker build -t $(IMAGENAME):$(TAG) .

push: image
	docker push $(IMAGENAME):$(TAG) .
