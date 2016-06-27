# vim: noexpandtab:ts=4:sw=4

releases = releases/*

.PHONY: init build

help:
	@echo "available targets are help, init, build(init)"

init:
	@git submodule init
	@git submodule update

build: init
	@for release in $(releases); do \
	  $(MAKE) -C $$release build; \
	done

