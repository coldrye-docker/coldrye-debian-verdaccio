# vim: noexpandtab:ts=4:sw=4

releases = releases/*

.PHONY: help build

help:
	@echo "available targets are help, build"

build:
	@for release in $(releases); do \
	  $(MAKE) -C $$release build; \
	done

