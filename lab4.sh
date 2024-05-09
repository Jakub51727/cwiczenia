#!/bin/bash

if [ "$1" == "--date" ]; then
	echo "Dzis jest $(date)"
	exit 0
fi
