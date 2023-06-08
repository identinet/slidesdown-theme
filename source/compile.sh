#!/usr/bin/env bash
cd "$(dirname "$0")"
npx sass identinet.scss >../identinet.css
