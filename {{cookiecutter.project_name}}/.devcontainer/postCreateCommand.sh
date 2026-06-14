#! /usr/bin/env bash

# Install uv
curl -LsSf https://astral.sh/uv/install.sh | sh

# Make uv available in the current shell session
# (the installer adds it to ~/.local/bin, which is not yet on PATH here)
source "$HOME/.local/bin/env"

# Install Dependencies
uv sync

# Install pre-commit hooks
uv run pre-commit install --install-hooks
