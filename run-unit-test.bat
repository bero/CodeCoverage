@ECHO OFF

ECHO Running unit tests

CALL "SetupEnvironment.bat"


%PRJ%.exe

POPD