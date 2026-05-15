#!/bin/sh

ENTRY=Main.lpr
PROGRAM=cli
EXECUTABLE="$PROGRAM"

CWD=$(cd "$(dirname "$0")" && pwd)

SRC_DIR="${CWD}/src"
BIN_DIR="${CWD}/bin"
INCLUDE_DIR="${CWD}/include"
OBJ_DIR="${CWD}/obj"