@ECHO
:onCrash
echo [%date% %time%] Starting AH Tool...
cd "D:\EVERYTHING FFXI\My Topaz Server\pytopaz\bin"
"C:\Users\steve\Anaconda3\python.exe" .\broker.py
@ECHO AH-Bot stopped or crashed!
@ECHO %date% %time%> ..\Last_AH-tool_Stop.log
PAUSE
@ECHO ...
GOTO onCrash