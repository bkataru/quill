.PHONY: update-os install-system-deps install-bun install run

build: update-os install-system-deps install-bun

update-os:
	sudo apt install -y && sudo apt upgrade -y

install-system-deps:
	sudo apt install -y unzip

install-bun:
	curl -fsSL https://bun.sh/install | bash
	source ~/.bashrc

install:
	bun install

run:
	bun --bun run dev

start: install run

install-bore:
	wget -qO- https://github.com/ekzhang/bore/releases/download/v0.5.0/bore-v0.5.0-x86_64-unknown-linux-musl.tar.gz | tar xvz

run-bore:
	./bore local 3000 --to bore.pub
