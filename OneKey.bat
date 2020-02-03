@echo off
echo ***Script***
echo ***For LTE keyboard phone based on BIRD Android Go solution or Yunos Solution***
echo  .
echo devices-type:Philips E*** 4G/BIHEE A16/Kingsun EF-39...
adb devices
echo press "Allow" on your device and continue!
pause
adb kill-server
adb devices
 set IFINST1=n

)
 
set /P IFINST1="#Install tools?[y/n]: "



IF /I "%IFINST1%" EQU "y" (

    adb install FManager.apk
    adb install via.apk
)




 set IFINST1=n

)
 
set /P IFINST1="#Missing volume control keys?[y/n]: "



IF /I "%IFINST1%" EQU "y" (

    adb install volume.apk
)






 set IFINST1=n

)
 
set /P IFINST1="#Disable Wechat cleanup plugins?[y/n]: "



IF /I "%IFINST1%" EQU "y" (
  	 adb shell pm disable-user com.bird.storagecleanup
)



 set IFINST1=

)
 
set /P IFINST1="Install Launcher?(Unstable)[y/n]: "



IF /I "%IFINST1%" EQU "y" (
   adb install Launcher.apk
)





echo Finished!--Press any key to exit.
pause



