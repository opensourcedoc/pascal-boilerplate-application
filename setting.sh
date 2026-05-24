IS_WINDOWS ()
{
    case "$(uname -s)" in
        CYGWIN*|MINGW*|MSYS*)
            return 0
            ;;
        *)
            return 1
            ;;
    esac
}

ENTRY=Main.lpr
PROGRAM=cli
if IS_WINDOWS; then
    EXECUTABLE="${PROGRAM}.exe"
else
    EXECUTABLE="$PROGRAM"
fi

CWD=$(CDPATH='' cd -- "$(dirname -- "$0")" && pwd) || exit 1

SRC_DIR="${CWD}/src"
BIN_DIR="${CWD}/bin"
INCLUDE_DIR="${CWD}/include"
OBJ_DIR="${CWD}/obj"