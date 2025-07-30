.PHONY: help
.PHONY: dev

help:
	@echo "Available commands:"
	@echo "  make dev   - Set up the development environment"
	@echo "  make help  - Show this help message"

dev:
	@echo "Setting up development environment..."
	uv pip install -e .