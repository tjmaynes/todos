install:
	cd e2e && make $@
	cd web && make $@
	cd api && make $@

test:
	cd e2e && make $@
	cd web && make $@
	cd api && make $@

run_local_db:
	cd api && docker compose up -d

start:
	cd web && make build
	cd api && make $@

.PHONY: e2e
e2e:
	cd e2e && make test

deploy: install test
	cd web && make $@
	cd api && make $@