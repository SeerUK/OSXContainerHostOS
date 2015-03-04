default: baseimage-download

baseimage-download:
	curl -LO https://github.com/rancherio/os/releases/download/v0.1.1/rancheros.iso

.PHONY: baseimage-download
