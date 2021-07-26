@echo off

set CommonCompilerFlags = -Fewin.exe -Zi -D "UNICODE" -D "_UNICODE" -nologo -Wv:18
set CommonLinkerFlags = user32.lib gdi32.lib opengl32.lib

rem If the `cl` command is not recognized, we will need to set up the path by running vcvarsall
call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvarsall.bat" x64

rem mkdir "%~dp0build"
rem pushd "%~dp0build"

cl %CommonCompilerFlags% %CommonLinkerFlags% "win32_test.c"

rem popd
