mkdir localtmpdir

set TMPDIR=%cd%\localtmpdir
set TEMP=%cd%\localtmpdir
set TMP=%cd%\localtmpdir

set "BAZEL_CXXOPTS=/std=c++17"

%PYTHON% -m pip install . -vv --no-deps
if errorlevel 1 exit 1

bazel clean
if errorlevel 1 exit 1

bazel shutdown
if errorlevel 1 exit 1
