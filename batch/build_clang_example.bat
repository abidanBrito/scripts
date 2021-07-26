@echo off
setlocal EnableDelayedExpansion

rem create build directory
if not exist ..\build mkdir ..\build
pushd ..\build

rem Get all source files.
set sourceFiles =
for /r %%f in (*.c) do (
    set sourceFiles =! sourceFiles! %%f
)
rem echo "Source files: " %sourceFiles%

rem Compiler setup
set assembly = engine
set compilerFlags = -g -shared -Wvarargs -Wall -Werror
set includeFlags = -Isrc -I%VULKAN_SDK%/Include
set linkerFlags = -luser32 -lvulkan-1 -L%VULKAN_SDK%/Lib
set defines = -D_DEBUG -DKEXPORT -D_CRT_SECURE_NO_WARNINGS

rem compile and link and generate executable file
echo "-- Building %assembly%% --"
clang %sourceFiles% %compilerFlags% -o ../bin/%assembly%.dll %defines% %includeFlags% %linkerFlags%

rem jump back to original directory
popd
