#!/usr/bin/env bash
# Specify SUITE_DIR to be used in script
export SUITE_DIR="cloud-app-sanity"
# Get the download script, which downloads and extracts repo tarball into $SUITE_DIR
curl https://raw.github.com/jlaska/cloud-app-sanity/master/tools/download_suite.sh | bash
cd $SUITE_DIR && {
  make test  # Do the dirty stuff
}
