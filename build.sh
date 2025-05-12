#!/bin/bash
set -e

echo "[*] Cleaning..."
make clean

echo "[*] Building..."
make

echo "[*] Done. Output: libmyarray.a"
