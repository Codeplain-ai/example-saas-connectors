#!/bin/bash

# Initialize VERBOSE to 0
VERBOSE=0

# Function to display usage
usage() {
  echo "Usage: $0 [-v|--verbose] [-h|--help] <saas_label>"
  exit 1
}

# Parse flags and arguments
while [[ "$1" != "" ]]; do
  case $1 in
    -v | --verbose )
      VERBOSE=1
      echo "Running plain2code in verbose mode."
      ;;
    -h | --help )
      usage
      ;;
    -* )
      echo "Unknown option: $1"
      usage
      ;;
    * )
      saas_label=$1
      ;;
  esac
  shift
done

# Check if saas_label is provided
if [ -z "$saas_label" ]; then
  usage
fi

if [ "$VERBOSE" -eq 1 ]; then
    echo "Rendering $saas_label SaaS client..."
fi


# Check if PLAIN2CODE_RENDERER variable is set
if [ -z "${PLAIN2CODE_RENDERER_DIR:-}" ]; then
    echo "Error: PLAIN2CODE_RENDERER_DIR variable is not set. Please set the PLAIN2CODE_RENDERER_DIR variable to the directory containing the plain2code.py script."
    exit 1
fi

# Removing all the conformance tests before rendering.
rm -rf clients/$saas_label/conformance_tests

python $PLAIN2CODE_RENDERER_DIR/plain2code.py clients/$saas_label-client.plain --build-folder=clients/$saas_label/build --unittests-script=$PLAIN2CODE_RENDERER_DIR/test_scripts/run_unittests_python.sh --conformance-tests-script=$PLAIN2CODE_RENDERER_DIR/test_scripts/run_conformance_tests_python.sh --conformance-tests-folder=clients/$saas_label/conformance_tests --debug ${VERBOSE:+-v}
