#!/bin/sh
set -e

terraform-docs markdown modules/TODO/ > modules/TODO/README.md
