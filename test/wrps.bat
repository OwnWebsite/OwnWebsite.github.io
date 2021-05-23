::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFBNRTwyHAE+/Fb4I5/jHvqrK4sj0m2TDtMHS2bvu
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFBNRTwyHAE+/Fb4I5/jH+PiXsQMYTOdf
::YB416Ek+Zm8=
::
::
::978f952a14a936cc963da21a135fa983
echo off
cls
if "%1" == "-put" goto :call-put
if "%1" == "-get" goto :call-get
if "%1" == "-list" goto :call-list
if "%1" == "-help" goto :help
if "%1" == "-gui" goto :gui
if "%1" == "-find" goto :find
echo Bit 1 parameter error, bit 1 parameter value is %1.
exit /b 200
:gui
color 0a
md hb
md yh
title 微信红包-Test
cls
:top
echo 1 发红包
echo 2 领红包
echo 3 查看红包
echo 默认退出
echo.
set /p input=Input:
if "%input%" == "1" goto :put
if "%input%" == "2" goto :get
if "%input%" == "3" goto :list
exit /b 200
:put
echo.
set /p username=我的id:
echo.
set /p yuan=红包金额：（以分为单位）
echo.
set /p people=人数：
echo.
if %yuan% lss %people% echo 发送失败！&echo. &goto :top
md yh\%username%\put
:a
set rand=%random%%random%%random%%random%%random%
if exist hb\%rand%.hbfile goto :a
echo %rand% >yh\%username%\put\%rand%.hbfile
echo %username% >hb\%rand%.hbfile
echo %yuan% >>hb\%rand%.hbfile
echo %people% >>hb\%rand%.hbfile
echo %yuan% >hb\ye%rand%.hbfile
echo %people% >hb\pe%rand%.hbfile
echo 发送成功！
echo 这个红包的红包id是%rand%，请保管好！
echo.
goto :top
:get
echo.
set /p username=我的id:
echo.
set /p id=红包id:
echo.
md yh\%username%\get
if not exist hb\%id%.hbfile echo 该红包不存在！ &echo. &goto :top
if exist yh\%username%\put\%id%.hbfile echo 您是红包发布者，无法领取该红包！&echo. &goto :top
if exist yh\%username%\get\%id%.hbfile echo 您已领取过该红包，无法再次领取！&echo. &goto :top
(For /L %%a In (1 1 1) Do Set /P shyuan=)<hb\ye%id%.hbfile
(For /L %%a In (1 1 1) Do Set /P shpeople=)<hb\pe%id%.hbfile
if "%shpeople%" == "0" echo 手慢了，该红包已被派完！&echo. &goto :top
if "%shpeople%" == "0 " echo 手慢了，该红包已被派完！&echo. &goto :top
set /a result=%shyuan% / %shpeople% * 2
set /a tmp=%shyuan% - %shpeople%
set /a randa = %random% * %random%
set /a rand=%randa% - (%randa% / %result% * %result%)
set /a rand=%rand% + 1
if "%shpeople%" == "1" set rand=%shyuan%
if "%shpeople%" == "1 " set rand=%shyuan%
if %tmp% lss %result% set rand=1 
set /a shyuan = %shyuan% - %rand%
echo %shyuan% >hb\ye%id%.hbfile
set /a shpeople = %shpeople% - 1
echo %shpeople% >hb\pe%id%.hbfile
echo %username% >>hb\%id%.hbfile
echo %rand% >>hb\%id%.hbfile
echo. >yh\%username%\get\%id%.hbfile
echo 领取成功！
set /a ifen=%rand% - (%rand% / 100 * 100)
if %ifen% lss 10 set ifen=0%ifen% 
set /a iyuan=%rand% / 100
echo 你开红包开到了￥%iyuan%.%ifen%
(For /L %%a In (1 1 3) Do Set /P filetype%%a=)<hb\%id%.hbfile
set /a yuan = %filetype2% / 100
set /a fen = %filetype2% - (%filetype2% / 100 * 100)
if %fen% lss 10 set fen=0%fen% 
echo 红包总共有$%yuan%.%fen%
set /a uashyuan = %shyuan% + %rand%
set /a uafen=%uashyuan% - (%uashyuan% / 100 * 100)
set /a uayuan=%uashyuan% / 100
if %uafen% lss 10 set uafen=0%uafen% 
echo 在你开之前还有$%uayuan%.%uafen%
set /a shfen=%shyuan% - (%shyuan% / 100 * 100)
set /a shyuan=%shyuan% / 100
if %shfen% lss 10 set shfen=0%shfen% 
echo 你开之后还剩$%shyuan%.%shfen%
echo 一共%filetype3%人开
set /a shp = %filetype3% - %shpeople%
if "%shp:~0,1%" == "-" set shp=%shp:1,1024%
echo 你是第%shp%位
echo 在你后面还有%shpeople%人开
echo 发送者是：%filetype1%
echo.
goto :top
:list
echo.
set /p id=请输入红包id:
echo.
(For /L %%a In (1 1 1) Do Set /P shyuan=)<hb\ye%id%.hbfile
(For /L %%a In (1 1 1) Do Set /P shpeople=)<hb\pe%id%.hbfile
(For /L %%a In (1 1 100) Do Set /P filetype%%a=)<hb\%id%.hbfile
echo 红包id:%id%
echo 发送者:%filetype1%
echo 一共有%filetype3%个名额
set /a fen=%filetype2% - (%filetype2% / 100 * 100)
set /a yuan=%filetype2% / 100
if %fen% lss 10 set fen=0%fen% 
echo 红包总共有$%yuan%.%fen%
set /a np=%filetype3% - %shpeople%
echo 红包已经有%np%人领取过了
set /a shfen=%shyuan% - (%shyuan% / 100 * 100)
set /a shyuan=%shyuan% / 100
if %shfen% lss 10 set shfen=0%shfen% 
echo 红包还剩$%shuyuan%.%shfen%
echo 下面是红包领取记录：
echo 用户名：%filetype4%
echo 领取金额：%filetype5%
echo 用户名：%filetype6%
echo 领取金额：%filetype7%
echo 用户名：%filetype8%
echo 领取金额：%filetype9%
echo 用户名：%filetype10%
echo 领取金额：%filetype11%
echo 用户名：%filetype12%
echo 领取金额：%filetype13%
echo 用户名：%filetype14%
echo 领取金额：%filetype15%
echo 用户名：%filetype16%
echo 领取金额：%filetype17%
echo 用户名：%filetype18%
echo 领取金额：%filetype19%
echo 用户名：%filetype20%
echo 领取金额：%filetype21%
echo 用户名：%filetype22%
echo 领取金额：%filetype23%
echo 用户名：%filetype24%
echo 领取金额：%filetype25%
echo 用户名：%filetype26%
echo 领取金额：%filetype27%
echo 用户名：%filetype28%
echo 领取金额：%filetype29%
echo 用户名：%filetype30%
echo 领取金额：%filetype31%
echo 用户名：%filetype32%
echo 领取金额：%filetype33%
echo 用户名：%filetype34%
echo 领取金额：%filetype35%
echo 用户名：%filetype36%
echo 领取金额：%filetype37%
echo 用户名：%filetype38%
echo 领取金额：%filetype39%
echo 用户名：%filetype40%
echo 领取金额：%filetype41%
echo 用户名：%filetype42%
echo 领取金额：%filetype43%
echo 用户名：%filetype44%
echo 领取金额：%filetype45%
echo 用户名：%filetype46%
echo 领取金额：%filetype47%
echo 用户名：%filetype48%
echo 领取金额：%filetype49%
echo 用户名：%filetype50%
echo 领取金额：%filetype51%
echo 用户名：%filetype52%
echo 领取金额：%filetype53%
echo 用户名：%filetype54%
echo 领取金额：%filetype55%
echo 用户名：%filetype56%
echo 领取金额：%filetype57%
echo 用户名：%filetype58%
echo 领取金额：%filetype59%
echo 用户名：%filetype60%
echo 领取金额：%filetype61%
echo 用户名：%filetype62%
echo 领取金额：%filetype63%
echo 用户名：%filetype64%
echo 领取金额：%filetype65%
echo 用户名：%filetype66%
echo 领取金额：%filetype67%
echo 用户名：%filetype68%
echo 领取金额：%filetype69%
echo 用户名：%filetype70%
echo 领取金额：%filetype71%
echo 用户名：%filetype72%
echo 领取金额：%filetype73%
echo 用户名：%filetype74%
echo 领取金额：%filetype75%
echo 用户名：%filetype76%
echo 领取金额：%filetype77%
echo 用户名：%filetype78%
echo 领取金额：%filetype79%
echo 用户名：%filetype80%
echo 领取金额：%filetype81%
echo 用户名：%filetype82%
echo 领取金额：%filetype83%
echo 用户名：%filetype84%
echo 领取金额：%filetype85%
echo 用户名：%filetype86%
echo 领取金额：%filetype87%
echo 用户名：%filetype88%
echo 领取金额：%filetype89%
echo 用户名：%filetype90%
echo 领取金额：%filetype91%
echo 用户名：%filetype92%
echo 领取金额：%filetype93%
echo 用户名：%filetype94%
echo 领取金额：%filetype95%
echo 用户名：%filetype96%
echo 领取金额：%filetype97%
echo 用户名：%filetype98%
echo 领取金额：%filetype99%
echo 数据过于多，无法列出所有......
echo.
goto :top
:call-put
set username=%2
set yuan=%3
set people=%4
if %yuan% lss %people% echo Error,because there is no guarantee that everyone will get 0.01 yuan.&exit /b 400
md yh\%username%\put
:a1
set rand=%random%%random%%random%%random%%random%
if exist hb\%rand%.hbfile goto :a1
echo %rand% >yh\%username%\put\%rand%.hbfile
echo %username% >hb\%rand%.hbfile
echo %yuan% >>hb\%rand%.hbfile
echo %people% >>hb\%rand%.hbfile
echo %yuan% >hb\ye%rand%.hbfile
echo %people% >hb\pe%rand%.hbfile
cls
echo OK,Red envelope number is %rand%.
exit /b 200
:call-get
set username=%2
set id=%3
md yh\%username%\get
cls
if not exist hb\%id%.hbfile echo Error,because the red packet does not exist.&exit /b 400
if exist yh\%username%\put\%id%.hbfile echo Error,because you are the red packet publisher,cannot claim the red packet!&exit /b 400
if exist yh\%username%\get\%id%.hbfile echo Error,because you have received the red envelope,you can't get it again!&exit /b 400
(For /L %%a In (1 1 1) Do Set /P shyuan=)<hb\ye%id%.hbfile
(For /L %%a In (1 1 1) Do Set /P shpeople=)<hb\pe%id%.hbfile
if "%shpeople%" == "0" echo Error,because your hand is slow,the red envelope has been sent out!&exit /b 400
if "%shpeople%" == "0 " echo Error,because your hand is slow,the red envelope has been sent out!&echo. &exit /b 400
set /a result=%shyuan% / %shpeople% * 2
set /a randa = %random% * %random%
set /a rand=%randa% - (%randa% / %result% * %result%)
set /a rand=%rand% + 1
if "%shpeople%" == "1" set rand=%shyuan%
if "%shpeople%" == "1 " set rand=%shyuan%
set /a shyuan = %shyuan% - %rand%
echo %shyuan% >hb\ye%id%.hbfile
set /a shpeople = %shpeople% - 1
echo %shpeople% >hb\pe%id%.hbfile
echo %username% >>hb\%id%.hbfile
echo %rand% >>hb\%id%.hbfile
echo. >yh\%username%\get\%id%.hbfile
set /a ifen=%rand% - (%rand% / 100 * 100)
if %ifen% lss 10 set ifen=0%ifen% 
set /a iyuan=%rand% / 100
echo OK,$%iyuan%.%ifen%
exit /b 200
:help
cls
echo The full name of WRPS command is Wechat Red Packet Simulator.
echo Its usage is as follows:
echo.
echo wrps -help 
echo Get help with the wrps command.
echo.
echo wrps -put [username] [Amount of money sent] [Number of people]
echo Send out a red envelope.
echo.
echo wrps -get [username] [Red envelope number]
echo Get a red envelope.
echo.
echo wrps -gui
echo Using the interactive interface.
echo.
echo wrps -list [Red envelope number]
echo Display brief information of red envelope.
echo.
echo wrps -find [Red envelope number] [type] [data]
echo Types:-username,-money
echo -username queries the money received by the other party through ID.
echo -money checks the ID of the other party through the money received from the red envelope.
echo Please pass the username / money through the data parameter.
echo.
exit /b 200
:call-list
set id=%2
cls
echo OK!
(For /L %%a In (1 1 1) Do Set /P shyuan=)<hb\ye%id%.hbfile
(For /L %%a In (1 1 1) Do Set /P shpeople=)<hb\pe%id%.hbfile
(For /L %%a In (1 1 100) Do Set /P filetype%%a=)<hb\%id%.hbfile
echo Red envelope number:%id%
echo Sender:%filetype1%
echo Number of people:%filetype3%
set /a fen=%filetype2% - (%filetype2% / 100 * 100)
set /a yuan=%filetype2% / 100
if %fen% lss 10 set fen=0%fen% 
echo There is a total of $%yuan%.%fen% yuan in the red envelope.
set /a np=%filetype3% - %shpeople%
echo %np% person has already received the red envelope.
set /a shfen=%shyuan% - (%shyuan% / 100 * 100)
set /a shyuan=%shyuan% / 100
if %shfen% lss 10 set shfen=0%shfen% 
echo There is %shyuan%.%shfen% money left in the red envelope.
exit /b 200
:find
(For /L %%a In (1 1 101) Do Set /P str%%a=)<hb\%id%.hbfile
set id=%2
set type=%3
set number=%4
if "%type%" == "-username" goto :find-username
if "%type%" == "-money" goto :find-money
echo Bit 3 parameter error, bit 3 parameter value is %3.
exit /b 400
:find-username
echo OK.
echo Unit: points
if "%number%" == "%str4%" echo Username:%str4%&echo GetMoney:%str5%
if "%number%" == "%str6%" echo Username:%str6%&echo GetMoney:%str7%
if "%number%" == "%str8%" echo Username:%str8%&echo GetMoney:%str9%
if "%number%" == "%str10%" echo Username:%str10%&echo GetMoney:%str11%
if "%number%" == "%str12%" echo Username:%str12%&echo GetMoney:%str13%
if "%number%" == "%str14%" echo Username:%str14%&echo GetMoney:%str15%
if "%number%" == "%str16%" echo Username:%str16%&echo GetMoney:%str17%
if "%number%" == "%str18%" echo Username:%str18%&echo GetMoney:%str19%
if "%number%" == "%str20%" echo Username:%str20%&echo GetMoney:%str21%
if "%number%" == "%str22%" echo Username:%str22%&echo GetMoney:%str23%
if "%number%" == "%str24%" echo Username:%str24%&echo GetMoney:%str25%
if "%number%" == "%str26%" echo Username:%str26%&echo GetMoney:%str27%
if "%number%" == "%str28%" echo Username:%str28%&echo GetMoney:%str29%
if "%number%" == "%str30%" echo Username:%str30%&echo GetMoney:%str31%
if "%number%" == "%str32%" echo Username:%str32%&echo GetMoney:%str33%
if "%number%" == "%str34%" echo Username:%str34%&echo GetMoney:%str35%
if "%number%" == "%str36%" echo Username:%str36%&echo GetMoney:%str37%
if "%number%" == "%str38%" echo Username:%str38%&echo GetMoney:%str39%
if "%number%" == "%str40%" echo Username:%str40%&echo GetMoney:%str41%
if "%number%" == "%str42%" echo Username:%str42%&echo GetMoney:%str43%
if "%number%" == "%str44%" echo Username:%str44%&echo GetMoney:%str45%
if "%number%" == "%str46%" echo Username:%str46%&echo GetMoney:%str47%
if "%number%" == "%str48%" echo Username:%str48%&echo GetMoney:%str49%
if "%number%" == "%str50%" echo Username:%str50%&echo GetMoney:%str51%
if "%number%" == "%str52%" echo Username:%str52%&echo GetMoney:%str53%
if "%number%" == "%str54%" echo Username:%str54%&echo GetMoney:%str55%
if "%number%" == "%str56%" echo Username:%str56%&echo GetMoney:%str57%
if "%number%" == "%str58%" echo Username:%str58%&echo GetMoney:%str59%
if "%number%" == "%str60%" echo Username:%str60%&echo GetMoney:%str61%
if "%number%" == "%str62%" echo Username:%str62%&echo GetMoney:%str63%
if "%number%" == "%str64%" echo Username:%str64%&echo GetMoney:%str65%
if "%number%" == "%str66%" echo Username:%str66%&echo GetMoney:%str67%
if "%number%" == "%str68%" echo Username:%str68%&echo GetMoney:%str69%
if "%number%" == "%str70%" echo Username:%str70%&echo GetMoney:%str71%
if "%number%" == "%str72%" echo Username:%str72%&echo GetMoney:%str73%
if "%number%" == "%str74%" echo Username:%str74%&echo GetMoney:%str75%
if "%number%" == "%str76%" echo Username:%str76%&echo GetMoney:%str77%
if "%number%" == "%str78%" echo Username:%str78%&echo GetMoney:%str79%
if "%number%" == "%str80%" echo Username:%str80%&echo GetMoney:%str81%
if "%number%" == "%str82%" echo Username:%str82%&echo GetMoney:%str83%
if "%number%" == "%str84%" echo Username:%str84%&echo GetMoney:%str85%
if "%number%" == "%str86%" echo Username:%str86%&echo GetMoney:%str87%
if "%number%" == "%str88%" echo Username:%str88%&echo GetMoney:%str89%
if "%number%" == "%str90%" echo Username:%str90%&echo GetMoney:%str91%
if "%number%" == "%str92%" echo Username:%str92%&echo GetMoney:%str93%
if "%number%" == "%str94%" echo Username:%str94%&echo GetMoney:%str95%
if "%number%" == "%str96%" echo Username:%str96%&echo GetMoney:%str97%
if "%number%" == "%str98%" echo Username:%str98%&echo GetMoney:%str99%
if "%number%" == "%str100%" echo Username:%str100%&echo GetMoney:%str101%
if "%number% " == "%str4%" echo Username:%str4%&echo GetMoney:%str5%
if "%number% " == "%str6%" echo Username:%str6%&echo GetMoney:%str7%
if "%number% " == "%str8%" echo Username:%str8%&echo GetMoney:%str9%
if "%number% " == "%str10%" echo Username:%str10%&echo GetMoney:%str11%
if "%number% " == "%str12%" echo Username:%str12%&echo GetMoney:%str13%
if "%number% " == "%str14%" echo Username:%str14%&echo GetMoney:%str15%
if "%number% " == "%str16%" echo Username:%str16%&echo GetMoney:%str17%
if "%number% " == "%str18%" echo Username:%str18%&echo GetMoney:%str19%
if "%number% " == "%str20%" echo Username:%str20%&echo GetMoney:%str21%
if "%number% " == "%str22%" echo Username:%str22%&echo GetMoney:%str23%
if "%number% " == "%str24%" echo Username:%str24%&echo GetMoney:%str25%
if "%number% " == "%str26%" echo Username:%str26%&echo GetMoney:%str27%
if "%number% " == "%str28%" echo Username:%str28%&echo GetMoney:%str29%
if "%number% " == "%str30%" echo Username:%str30%&echo GetMoney:%str31%
if "%number% " == "%str32%" echo Username:%str32%&echo GetMoney:%str33%
if "%number% " == "%str34%" echo Username:%str34%&echo GetMoney:%str35%
if "%number% " == "%str36%" echo Username:%str36%&echo GetMoney:%str37%
if "%number% " == "%str38%" echo Username:%str38%&echo GetMoney:%str39%
if "%number% " == "%str40%" echo Username:%str40%&echo GetMoney:%str41%
if "%number% " == "%str42%" echo Username:%str42%&echo GetMoney:%str43%
if "%number% " == "%str44%" echo Username:%str44%&echo GetMoney:%str45%
if "%number% " == "%str46%" echo Username:%str46%&echo GetMoney:%str47%
if "%number% " == "%str48%" echo Username:%str48%&echo GetMoney:%str49%
if "%number% " == "%str50%" echo Username:%str50%&echo GetMoney:%str51%
if "%number% " == "%str52%" echo Username:%str52%&echo GetMoney:%str53%
if "%number% " == "%str54%" echo Username:%str54%&echo GetMoney:%str55%
if "%number% " == "%str56%" echo Username:%str56%&echo GetMoney:%str57%
if "%number% " == "%str58%" echo Username:%str58%&echo GetMoney:%str59%
if "%number% " == "%str60%" echo Username:%str60%&echo GetMoney:%str61%
if "%number% " == "%str62%" echo Username:%str62%&echo GetMoney:%str63%
if "%number% " == "%str64%" echo Username:%str64%&echo GetMoney:%str65%
if "%number% " == "%str66%" echo Username:%str66%&echo GetMoney:%str67%
if "%number% " == "%str68%" echo Username:%str68%&echo GetMoney:%str69%
if "%number% " == "%str70%" echo Username:%str70%&echo GetMoney:%str71%
if "%number% " == "%str72%" echo Username:%str72%&echo GetMoney:%str73%
if "%number% " == "%str74%" echo Username:%str74%&echo GetMoney:%str75%
if "%number% " == "%str76%" echo Username:%str76%&echo GetMoney:%str77%
if "%number% " == "%str78%" echo Username:%str78%&echo GetMoney:%str79%
if "%number% " == "%str80%" echo Username:%str80%&echo GetMoney:%str81%
if "%number% " == "%str82%" echo Username:%str82%&echo GetMoney:%str83%
if "%number% " == "%str84%" echo Username:%str84%&echo GetMoney:%str85%
if "%number% " == "%str86%" echo Username:%str86%&echo GetMoney:%str87%
if "%number% " == "%str88%" echo Username:%str88%&echo GetMoney:%str89%
if "%number% " == "%str90%" echo Username:%str90%&echo GetMoney:%str91%
if "%number% " == "%str92%" echo Username:%str92%&echo GetMoney:%str93%
if "%number% " == "%str94%" echo Username:%str94%&echo GetMoney:%str95%
if "%number% " == "%str96%" echo Username:%str96%&echo GetMoney:%str97%
if "%number% " == "%str98%" echo Username:%str98%&echo GetMoney:%str99%
if "%number% " == "%str100%" echo Username:%str100%&echo GetMoney:%str101%
exit /b 200
:find-money
echo OK.
echo Unit: points
if "%number%" == "%str5%" echo Username:%str4%&echo GetMoney:%str5%
if "%number%" == "%str7%" echo Username:%str6%&echo GetMoney:%str7%
if "%number%" == "%str9%" echo Username:%str8%&echo GetMoney:%str9%
if "%number%" == "%str11%" echo Username:%str10%&echo GetMoney:%str11%
if "%number%" == "%str13%" echo Username:%str12%&echo GetMoney:%str13%
if "%number%" == "%str15%" echo Username:%str14%&echo GetMoney:%str15%
if "%number%" == "%str17%" echo Username:%str16%&echo GetMoney:%str17%
if "%number%" == "%str19%" echo Username:%str18%&echo GetMoney:%str19%
if "%number%" == "%str21%" echo Username:%str20%&echo GetMoney:%str21%
if "%number%" == "%str23%" echo Username:%str22%&echo GetMoney:%str23%
if "%number%" == "%str25%" echo Username:%str24%&echo GetMoney:%str25%
if "%number%" == "%str27%" echo Username:%str26%&echo GetMoney:%str27%
if "%number%" == "%str29%" echo Username:%str28%&echo GetMoney:%str29%
if "%number%" == "%str31%" echo Username:%str30%&echo GetMoney:%str31%
if "%number%" == "%str33%" echo Username:%str32%&echo GetMoney:%str33%
if "%number%" == "%str35%" echo Username:%str34%&echo GetMoney:%str35%
if "%number%" == "%str37%" echo Username:%str36%&echo GetMoney:%str37%
if "%number%" == "%str39%" echo Username:%str38%&echo GetMoney:%str39%
if "%number%" == "%str41%" echo Username:%str40%&echo GetMoney:%str41%
if "%number%" == "%str43%" echo Username:%str42%&echo GetMoney:%str43%
if "%number%" == "%str45%" echo Username:%str44%&echo GetMoney:%str45%
if "%number%" == "%str47%" echo Username:%str46%&echo GetMoney:%str47%
if "%number%" == "%str49%" echo Username:%str48%&echo GetMoney:%str49%
if "%number%" == "%str51%" echo Username:%str50%&echo GetMoney:%str51%
if "%number%" == "%str53%" echo Username:%str52%&echo GetMoney:%str53%
if "%number%" == "%str55%" echo Username:%str54%&echo GetMoney:%str55%
if "%number%" == "%str57%" echo Username:%str56%&echo GetMoney:%str57%
if "%number%" == "%str59%" echo Username:%str58%&echo GetMoney:%str59%
if "%number%" == "%str61%" echo Username:%str60%&echo GetMoney:%str61%
if "%number%" == "%str63%" echo Username:%str62%&echo GetMoney:%str63%
if "%number%" == "%str65%" echo Username:%str64%&echo GetMoney:%str65%
if "%number%" == "%str67%" echo Username:%str66%&echo GetMoney:%str67%
if "%number%" == "%str69%" echo Username:%str68%&echo GetMoney:%str69%
if "%number%" == "%str71%" echo Username:%str70%&echo GetMoney:%str71%
if "%number%" == "%str73%" echo Username:%str72%&echo GetMoney:%str73%
if "%number%" == "%str75%" echo Username:%str74%&echo GetMoney:%str75%
if "%number%" == "%str77%" echo Username:%str76%&echo GetMoney:%str77%
if "%number%" == "%str79%" echo Username:%str78%&echo GetMoney:%str79%
if "%number%" == "%str81%" echo Username:%str80%&echo GetMoney:%str81%
if "%number%" == "%str83%" echo Username:%str82%&echo GetMoney:%str83%
if "%number%" == "%str85%" echo Username:%str84%&echo GetMoney:%str85%
if "%number%" == "%str87%" echo Username:%str86%&echo GetMoney:%str87%
if "%number%" == "%str89%" echo Username:%str88%&echo GetMoney:%str89%
if "%number%" == "%str91%" echo Username:%str90%&echo GetMoney:%str91%
if "%number%" == "%str93%" echo Username:%str92%&echo GetMoney:%str93%
if "%number%" == "%str95%" echo Username:%str94%&echo GetMoney:%str95%
if "%number%" == "%str97%" echo Username:%str96%&echo GetMoney:%str97%
if "%number%" == "%str99%" echo Username:%str98%&echo GetMoney:%str99%
if "%number%" == "%str101%" echo Username:%str100%&echo GetMoney:%str101%
if "%number% " == "%str5%" echo Username:%str4%&echo GetMoney:%str5%
if "%number% " == "%str7%" echo Username:%str6%&echo GetMoney:%str7%
if "%number% " == "%str9%" echo Username:%str8%&echo GetMoney:%str9%
if "%number% " == "%str11%" echo Username:%str10%&echo GetMoney:%str11%
if "%number% " == "%str13%" echo Username:%str12%&echo GetMoney:%str13%
if "%number% " == "%str15%" echo Username:%str14%&echo GetMoney:%str15%
if "%number% " == "%str17%" echo Username:%str16%&echo GetMoney:%str17%
if "%number% " == "%str19%" echo Username:%str18%&echo GetMoney:%str19%
if "%number% " == "%str21%" echo Username:%str20%&echo GetMoney:%str21%
if "%number% " == "%str23%" echo Username:%str22%&echo GetMoney:%str23%
if "%number% " == "%str25%" echo Username:%str24%&echo GetMoney:%str25%
if "%number% " == "%str27%" echo Username:%str26%&echo GetMoney:%str27%
if "%number% " == "%str29%" echo Username:%str28%&echo GetMoney:%str29%
if "%number% " == "%str31%" echo Username:%str30%&echo GetMoney:%str31%
if "%number% " == "%str33%" echo Username:%str32%&echo GetMoney:%str33%
if "%number% " == "%str35%" echo Username:%str34%&echo GetMoney:%str35%
if "%number% " == "%str37%" echo Username:%str36%&echo GetMoney:%str37%
if "%number% " == "%str39%" echo Username:%str38%&echo GetMoney:%str39%
if "%number% " == "%str41%" echo Username:%str40%&echo GetMoney:%str41%
if "%number% " == "%str43%" echo Username:%str42%&echo GetMoney:%str43%
if "%number% " == "%str45%" echo Username:%str44%&echo GetMoney:%str45%
if "%number% " == "%str47%" echo Username:%str46%&echo GetMoney:%str47%
if "%number% " == "%str49%" echo Username:%str48%&echo GetMoney:%str49%
if "%number% " == "%str51%" echo Username:%str50%&echo GetMoney:%str51%
if "%number% " == "%str53%" echo Username:%str52%&echo GetMoney:%str53%
if "%number% " == "%str55%" echo Username:%str54%&echo GetMoney:%str55%
if "%number% " == "%str57%" echo Username:%str56%&echo GetMoney:%str57%
if "%number% " == "%str59%" echo Username:%str58%&echo GetMoney:%str59%
if "%number% " == "%str61%" echo Username:%str60%&echo GetMoney:%str61%
if "%number% " == "%str63%" echo Username:%str62%&echo GetMoney:%str63%
if "%number% " == "%str65%" echo Username:%str64%&echo GetMoney:%str65%
if "%number% " == "%str67%" echo Username:%str66%&echo GetMoney:%str67%
if "%number% " == "%str69%" echo Username:%str68%&echo GetMoney:%str69%
if "%number% " == "%str71%" echo Username:%str70%&echo GetMoney:%str71%
if "%number% " == "%str73%" echo Username:%str72%&echo GetMoney:%str73%
if "%number% " == "%str75%" echo Username:%str74%&echo GetMoney:%str75%
if "%number% " == "%str77%" echo Username:%str76%&echo GetMoney:%str77%
if "%number% " == "%str79%" echo Username:%str78%&echo GetMoney:%str79%
if "%number% " == "%str81%" echo Username:%str80%&echo GetMoney:%str81%
if "%number% " == "%str83%" echo Username:%str82%&echo GetMoney:%str83%
if "%number% " == "%str85%" echo Username:%str84%&echo GetMoney:%str85%
if "%number% " == "%str87%" echo Username:%str86%&echo GetMoney:%str87%
if "%number% " == "%str89%" echo Username:%str88%&echo GetMoney:%str89%
if "%number% " == "%str91%" echo Username:%str90%&echo GetMoney:%str91%
if "%number% " == "%str93%" echo Username:%str92%&echo GetMoney:%str93%
if "%number% " == "%str95%" echo Username:%str94%&echo GetMoney:%str95%
if "%number% " == "%str97%" echo Username:%str96%&echo GetMoney:%str97%
if "%number% " == "%str99%" echo Username:%str98%&echo GetMoney:%str99%
if "%number% " == "%str101%" echo Username:%str100%&echo GetMoney:%str101%
exit /b 200
