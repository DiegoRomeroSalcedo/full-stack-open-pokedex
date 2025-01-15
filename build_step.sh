#!/bin/bash

set -e

install_and_build() {
    echo "Instaling dependencies..."
    npm install
    echo "Building application..."
    npm run build
}
start_production_app() {
    echo "Starting application..."
    npm run start-prod
}

case "$1" in
    install-and-build)
        install_and_build
        ;;
    start)
        start_production_app
        ;;
    *)
        echo "Invalid argument. Use 'install-and-build' or 'start'."
        exit 1
        ;;
esac