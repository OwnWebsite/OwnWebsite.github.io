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
title ΢�ź��-Test
cls
:top
echo 1 �����
echo 2 ����
echo 3 �鿴���
echo Ĭ���˳�
echo.
set /p input=Input:
if "%input%" == "1" goto :put
if "%input%" == "2" goto :get
if "%input%" == "3" goto :list
exit /b 200
:put
echo.
set /p username=�ҵ�id:
echo.
set /p yuan=��������Է�Ϊ��λ��
echo.
set /p people=������
echo.
if %yuan% lss %people% echo ����ʧ�ܣ�&echo. &goto :top
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
echo ���ͳɹ���
echo �������ĺ��id��%rand%���뱣�ܺã�
echo.
goto :top
:get
echo.
set /p username=�ҵ�id:
echo.
set /p id=���id:
echo.
md yh\%username%\get
if not exist hb\%id%.hbfile echo �ú�������ڣ� &echo. &goto :top
if exist yh\%username%\put\%id%.hbfile echo ���Ǻ�������ߣ��޷���ȡ�ú����&echo. &goto :top
if exist yh\%username%\get\%id%.hbfile echo ������ȡ���ú�����޷��ٴ���ȡ��&echo. &goto :top
(For /L %%a In (1 1 1) Do Set /P shyuan=)<hb\ye%id%.hbfile
(For /L %%a In (1 1 1) Do Set /P shpeople=)<hb\pe%id%.hbfile
if "%shpeople%" == "0" echo �����ˣ��ú���ѱ����꣡&echo. &goto :top
if "%shpeople%" == "0 " echo �����ˣ��ú���ѱ����꣡&echo. &goto :top
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
echo ��ȡ�ɹ���
set /a ifen=%rand% - (%rand% / 100 * 100)
if %ifen% lss 10 set ifen=0%ifen% 
set /a iyuan=%rand% / 100
echo �㿪��������ˣ�%iyuan%.%ifen%
(For /L %%a In (1 1 3) Do Set /P filetype%%a=)<hb\%id%.hbfile
set /a yuan = %filetype2% / 100
set /a fen = %filetype2% - (%filetype2% / 100 * 100)
if %fen% lss 10 set fen=0%fen% 
echo ����ܹ���$%yuan%.%fen%
set /a uashyuan = %shyuan% + %rand%
set /a uafen=%uashyuan% - (%uashyuan% / 100 * 100)
set /a uayuan=%uashyuan% / 100
if %uafen% lss 10 set uafen=0%uafen% 
echo ���㿪֮ǰ����$%uayuan%.%uafen%
set /a shfen=%shyuan% - (%shyuan% / 100 * 100)
set /a shyuan=%shyuan% / 100
if %shfen% lss 10 set shfen=0%shfen% 
echo �㿪֮��ʣ$%shyuan%.%shfen%
echo һ��%filetype3%�˿�
set /a shp = %filetype3% - %shpeople%
if "%shp:~0,1%" == "-" set shp=%shp:1,1024%
echo ���ǵ�%shp%λ
echo ������滹��%shpeople%�˿�
echo �������ǣ�%filetype1%
echo.
goto :top
:list
echo.
set /p id=��������id:
echo.
(For /L %%a In (1 1 1) Do Set /P shyuan=)<hb\ye%id%.hbfile
(For /L %%a In (1 1 1) Do Set /P shpeople=)<hb\pe%id%.hbfile
(For /L %%a In (1 1 100) Do Set /P filetype%%a=)<hb\%id%.hbfile
echo ���id:%id%
echo ������:%filetype1%
echo һ����%filetype3%������
set /a fen=%filetype2% - (%filetype2% / 100 * 100)
set /a yuan=%filetype2% / 100
if %fen% lss 10 set fen=0%fen% 
echo ����ܹ���$%yuan%.%fen%
set /a np=%filetype3% - %shpeople%
echo ����Ѿ���%np%����ȡ����
set /a shfen=%shyuan% - (%shyuan% / 100 * 100)
set /a shyuan=%shyuan% / 100
if %shfen% lss 10 set shfen=0%shfen% 
echo �����ʣ$%shuyuan%.%shfen%
echo �����Ǻ����ȡ��¼��
echo �û�����%filetype4%
echo ��ȡ��%filetype5%
echo �û�����%filetype6%
echo ��ȡ��%filetype7%
echo �û�����%filetype8%
echo ��ȡ��%filetype9%
echo �û�����%filetype10%
echo ��ȡ��%filetype11%
echo �û�����%filetype12%
echo ��ȡ��%filetype13%
echo �û�����%filetype14%
echo ��ȡ��%filetype15%
echo �û�����%filetype16%
echo ��ȡ��%filetype17%
echo �û�����%filetype18%
echo ��ȡ��%filetype19%
echo �û�����%filetype20%
echo ��ȡ��%filetype21%
echo �û�����%filetype22%
echo ��ȡ��%filetype23%
echo �û�����%filetype24%
echo ��ȡ��%filetype25%
echo �û�����%filetype26%
echo ��ȡ��%filetype27%
echo �û�����%filetype28%
echo ��ȡ��%filetype29%
echo �û�����%filetype30%
echo ��ȡ��%filetype31%
echo �û�����%filetype32%
echo ��ȡ��%filetype33%
echo �û�����%filetype34%
echo ��ȡ��%filetype35%
echo �û�����%filetype36%
echo ��ȡ��%filetype37%
echo �û�����%filetype38%
echo ��ȡ��%filetype39%
echo �û�����%filetype40%
echo ��ȡ��%filetype41%
echo �û�����%filetype42%
echo ��ȡ��%filetype43%
echo �û�����%filetype44%
echo ��ȡ��%filetype45%
echo �û�����%filetype46%
echo ��ȡ��%filetype47%
echo �û�����%filetype48%
echo ��ȡ��%filetype49%
echo �û�����%filetype50%
echo ��ȡ��%filetype51%
echo �û�����%filetype52%
echo ��ȡ��%filetype53%
echo �û�����%filetype54%
echo ��ȡ��%filetype55%
echo �û�����%filetype56%
echo ��ȡ��%filetype57%
echo �û�����%filetype58%
echo ��ȡ��%filetype59%
echo �û�����%filetype60%
echo ��ȡ��%filetype61%
echo �û�����%filetype62%
echo ��ȡ��%filetype63%
echo �û�����%filetype64%
echo ��ȡ��%filetype65%
echo �û�����%filetype66%
echo ��ȡ��%filetype67%
echo �û�����%filetype68%
echo ��ȡ��%filetype69%
echo �û�����%filetype70%
echo ��ȡ��%filetype71%
echo �û�����%filetype72%
echo ��ȡ��%filetype73%
echo �û�����%filetype74%
echo ��ȡ��%filetype75%
echo �û�����%filetype76%
echo ��ȡ��%filetype77%
echo �û�����%filetype78%
echo ��ȡ��%filetype79%
echo �û�����%filetype80%
echo ��ȡ��%filetype81%
echo �û�����%filetype82%
echo ��ȡ��%filetype83%
echo �û�����%filetype84%
echo ��ȡ��%filetype85%
echo �û�����%filetype86%
echo ��ȡ��%filetype87%
echo �û�����%filetype88%
echo ��ȡ��%filetype89%
echo �û�����%filetype90%
echo ��ȡ��%filetype91%
echo �û�����%filetype92%
echo ��ȡ��%filetype93%
echo �û�����%filetype94%
echo ��ȡ��%filetype95%
echo �û�����%filetype96%
echo ��ȡ��%filetype97%
echo �û�����%filetype98%
echo ��ȡ��%filetype99%
echo ���ݹ��ڶ࣬�޷��г�����......
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
