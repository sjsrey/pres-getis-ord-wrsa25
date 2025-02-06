# Makefile for previewing a single .qmd file

QMD_FILE = wrsa25.qmd  # Name of your .qmd file
QUARTO_PORT = 8888     # Desired port

.PHONY: preview
preview:
	quarto preview $(QMD_FILE) --port $(QUARTO_PORT)

.PHONY: render
render:
	quarto render $(QMD_FILE)

.PHONY: clean
clean:
        # Add any files or directories you want to remove here.
        # For example, if Quarto generates any output files:
        # rm -rf _site  # or remove specific files like wrsa25.html

.PHONY: help
help:
	@echo "Available targets:"
	@echo "  preview: Preview $(QMD_FILE) on port $(QUARTO_PORT)"
	@echo "  render:  Render $(QMD_FILE)"
	@echo "  clean:   Remove generated files"
	@echo "  help:    Display this help message"
