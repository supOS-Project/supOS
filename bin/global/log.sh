#!/bin/bash

RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # 无色

warn() {
    echo -e "${YELLOW}WARN：$1${NC}" >&2
}

error() {
    echo -e "${RED}ERROR：$1${NC}" >&2
}