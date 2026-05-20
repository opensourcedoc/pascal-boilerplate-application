ENTRY=Main.lpr
PROGRAM=cdsl
EXECUTABLE="$PROGRAM"

CWD=$(CDPATH='' cd -- "$(dirname -- "$0")" && pwd) || exit 1

SRC_DIR="${CWD}/src"
BIN_DIR="${CWD}/bin"
INCLUDE_DIR="${CWD}/include"
OBJ_DIR="${CWD}/obj"