CONTAINER=ridecharge/logging

all: build push clean

build:
	ansible-galaxy install -r requirements.yml -f
	docker build --no-cache -t $(CONTAINER):latest . 

push:
	docker push $(CONTAINER)

clean:
	rm -r roles
	docker rmi $(CONTAINER)