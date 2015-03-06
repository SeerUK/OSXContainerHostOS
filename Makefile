default: download-src-box extract-src-box build-dist-box

download-src-box:
	mkdir -p tmp/src-box
	curl -o tmp/src-box/src.box https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box

extract-src-box:
	cd tmp/src-box && tar -xzvf src.box

build-dist-box: packer-validate packer-build

packer-validate:
	packer validate packer.json

packer-build:
	packer build packer.json

.PHONY: build-dist-box download-src-box packer-build packer-validate
