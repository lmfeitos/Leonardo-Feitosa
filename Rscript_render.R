#!/usr/bin/env Rscript
# Clean render script for Quarto website

# Remove problematic files before rendering
if (dir.exists("docs/pubs")) {
  unlink("docs/pubs", recursive = TRUE, force = TRUE)
}

# Render the site
quarto::quarto_render()

message("Website rendered successfully!")
