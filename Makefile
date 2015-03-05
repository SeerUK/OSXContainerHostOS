default: build-box

build-box: packer-validate packer-build

packer-validate:
	packer validate packer.json

packer-build:
	packer build packer.json

.PHONY: build-box
