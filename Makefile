format-check:
	@rustup component add rustfmt
	@cargo fmt --all -- --check

lint:
	@rustup component add clippy
	@cargo clippy --all -- -D warnings

test:
	@cargo test --all

build-release:
	@echo "Building release version for platform: $(shell uname -s)"
	@cargo build --release

build-debug:
	@echo "Building debug version for platform: $(shell uname -s)"
	@cargo build

run:
	@cargo run