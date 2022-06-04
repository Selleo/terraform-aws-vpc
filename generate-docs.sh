#!/bin/sh
set -e

terraform-docs markdown modules/vpc/ > modules/vpc/README.md
