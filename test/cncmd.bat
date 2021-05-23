echo on
cls
if "%1" == "-cmd" goto :cmd
if "%1" == "-gui" goto :gui
echo Bit 1 parameter error, bit 1 parameter value is %1.
exit /b 200
:cmd
if "%2" == "输出" echo %3 &exit /b 200
if "%2" == "设置标题" title %3 &exit /b 200
if "%2" == "设置页面颜色" color %3 &exit /b 200
if "%2" == "按任意键继续" pause &exit /b 200
exit /b 404
