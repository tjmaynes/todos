install:
	./gradlew --refresh-dependencies

test:
	./gradlew $@

start:
	./gradlew clean bootRun

.PHONY: build
build:
	./gradlew clean bootJar

build_image:
	./gradlew clean buildNative

deploy: install test build_image
