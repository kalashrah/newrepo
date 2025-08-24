#!/bin/bash
cd "$(dirname "$0")"
dpkg-scanpackages -m debs /dev/null > Packages
gzip -c Packages > Packages.gz
echo "Packages.gz updated."