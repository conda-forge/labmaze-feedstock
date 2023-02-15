mkdir localtmpdir

set TMPDIR=%cd%\localtmpdir
set TEMP=%cd%\localtmpdir
set TMP=%cd%\localtmpdir

# See https://github.com/conda-forge/labmaze-feedstock/pull/4#issuecomment-1431197953
set CL="/std:c++17"

%PYTHON% -m pip install . -vv --no-deps
if errorlevel 1 exit 1

bazel clean
if errorlevel 1 exit 1

bazel shutdown
if errorlevel 1 exit 1
