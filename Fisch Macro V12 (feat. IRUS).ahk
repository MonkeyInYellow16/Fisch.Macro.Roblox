﻿#SingleInstance Force
setkeydelay, -1
setmousedelay, -1
setbatchlines, -1
SetTitleMatchMode 2

CoordMode, Tooltip, Relative
CoordMode, Pixel, Relative
CoordMode, Mouse, Relative

;		GUI		==============================================================================================================;

Gui,+AlwaysOnTop
Gui, +Resize +MinSize
Gui, Add, Tab2, w800 h550, General Settings|Shake Settings|Minigame Settings
Gui, Color, 0xFFFFFF

; General Settings Tab ==============================
Gui, Tab, General Settings
Gui, Add, Text, x30 y40, Auto Lower Graphics:
Gui, Add, Checkbox, x170 y40 vAutoLowerGraphics, Enable
Gui, Add, Text, x30 y80, Auto Zoom In:
Gui, Add, Checkbox, x170 y80 vAutoZoomInCamera, Enable
Gui, Add, Text, x30 y120, Auto Enable Camera Mode:
Gui, Add, Checkbox, x170 y120 vAutoEnableCameraMode, Enable
Gui, Add, Text, x30 y160, Auto Look Down:
Gui, Add, Checkbox, x170 y160 vAutoLookDownCamera, Enable
Gui, Add, Text, x30 y200, Auto Blur:
Gui, Add, Checkbox, x170 y200 vAutoBlurCamera, Enable
Gui, Add, Text, x30 y240, Restart Delay (ms):
Gui, Add, Edit, x170 y240 w100 vRestartDelay, 1500
Gui, Add, Text, x30 y280, Hold Rod Cast Duration (ms):
Gui, Add, Edit, x170 y280 w100 vHoldRodCastDuration, 600
Gui, Add, Text, x30 y320, Wait for Bobber to Land (ms):
Gui, Add, Edit, x170 y320 w100 vWaitForBobberDelay, 1000
Gui, Add, Text, x30 y360, Bait Delay (ms):
Gui, Add, Edit, x170 y360 w100 vBaitDelay, 600

Gui, Add, Text, x380 y300, Seraphic Rod Check:
Gui, Add, Checkbox, x500 y300 vSera, Enable
Gui, Add, Text, x380 y320, Only Enable if you're using Seraphic Rod

; Mini guide
Gui, Add, Link, x380 y40, <a href="https://discord.com/invite/mangos"> Join White Sands Macros</a>
Gui, Add, Link, x380 y60, <a href="https://discord.com/channels/1322430437536170037/1323672910640185415">Check out the pre-setup before you begin (Only available in the discord above)</a>
Gui, Add, Text, x380 y80, If you can see the top of your head, you're using the wrong Roblox app
Gui, Add, Text, x380 y120, Click the camera icon top right in case it doesn't work
Gui, Add, Text, x380 y200, If you're wondering, this will open the menu after enabling camera mode
Gui, Add, Text, x380 y240, Adjust wait time before restarting the macro
Gui, Add, Text, x380 y280, Increase the Hold duration if you have high ping
Gui, Add, Text, x380 y360, If you cant load or save settings, Right click the macro and choose Run as Admin `n( requires AutoHotkey v2 )

; Shake Settings Tab =====================================
Gui, Tab, Shake Settings
Gui, Add, Text, x30 y40, Navigation Key:
Gui, Add, Edit, x190 y40 w100 vNavigationKey, \
Gui, Add, Text, x30 y80, Shake Mode:
Gui, Add, ComboBox, x190 y80 w100 vShakeMode, Click|Navigation
Gui, Add, Text, x30 y120, Shake Failsafe (sec):
Gui, Add, Edit, x190 y120 w100 vShakeFailsafe, 20

Gui, Add, Text, x380 y40, Check your Navigation Key in the Roblox settings
Gui, Add, Text, x380 y80, If you already set it up, to ensure Shake Mode works:
Gui, Add, Text, x380 y100, Load settings -> Save settings -> Start Macro
Gui, Add, Text, x380 y120, How many seconds before restarting if failed to shake

; Click set
Gui, Add, Text, x30 y160, Click Shake Color Tolerance:
Gui, Add, Edit, x190 y160 w100 vClickShakeColorTolerance, 3
Gui, Add, Text, x30 y200, Click Scan Delay (ms):
Gui, Add, Edit, x190 y200 w100 vClickScanDelay, 10
Gui, Add, Text, x380 y200, Adjust the Click Speed

; Nav set
Gui, Add, Text, x30 y240, Navigation Spam Delay (ms):
Gui, Add, Edit, x190 y240 w100 vNavigationSpamDelay, 10
Gui, Add, Text, x380 y240, Adjust the Navigation spam speed


; Minigame Settings Tab	============================
Gui, Tab, Minigame Settings

; Bar calc
Gui, Add, Text, x30 y40, !!!!! Set at 0 to Auto Calculate Bar size !!!!!
Gui, Add, Text, x30 y60, Manual Bar Size:
Gui, Add, Edit, x180 y60 w100 vManualBarSize, 0
Gui, Add, Text, x30 y100, Bar Calculation Failsafe (sec):
Gui, Add, Edit, x180 y100 w100 vBarCalculationFailsafe, 10
Gui, Add, Text, x30 y140, Bar Size Tolerance:
Gui, Add, Edit, x180 y140 w100 vBarSizeCalculationColorTolerance, 15
Gui, Add, Text, x30 y180, Fish Bar Tolerance:
Gui, Add, Edit, x180 y180 w100 vFishBarColorTolerance, 5
Gui, Add, Text, x30 y220, White Bar Tolerance:
Gui, Add, Edit, x180 y220 w100 vWhiteBarColorTolerance, 16
Gui, Add, Text, x30 y260, Arrow Tolerance:
Gui, Add, Edit, x180 y260 w100 vArrowColorTolerance, 6

; Bar control
Gui, Add, Text, x30 y300, Scan Delay:
Gui, Add, Edit, x180 y300 w100 vScanDelay, 10
Gui, Add, Text, x30 y340, Side Bar Ratio:
Gui, Add, Edit, x180 y340 w100 vSideBarRatio, 0.8
Gui, Add, Text, x30 y380, Side Bar Delay:
Gui, Add, Edit, x180 y380 w100 vSideDelay, 800

; Stable
Gui, Add, Text, x400 y40, Stable Right Multiplier:
Gui, Add, Edit, x550 y40 w100 vStableRightMultiplier, 2.360
Gui, Add, Text, x400 y80, Stable Right Division:
Gui, Add, Edit, x550 y80 w100 vStableRightDivision, 1.55
Gui, Add, Text, x400 y120, Stable Left Multiplier:
Gui, Add, Edit, x550 y120 w100 vStableLeftMultiplier, 1.211
Gui, Add, Text, x400 y160, Stable Left Division:
Gui, Add, Edit, x550 y160 w100 vStableLeftDivision, 1.12

; Unstable
Gui, Add, Text, x400 y200, Unstable Right Multiplier:
Gui, Add, Edit, x550 y200 w100 vUnstableRightMultiplier, 2.665
Gui, Add, Text, x400 y240, Unstable Right Division:
Gui, Add, Edit, x550 y240 w100 vUnstableRightDivision, 1.5
Gui, Add, Text, x400 y280, Unstable Left Multiplier:
Gui, Add, Edit, x550 y280 w100 vUnstableLeftMultiplier, 2.190
Gui, Add, Text, x400 y320, Unstable Left Division:
Gui, Add, Edit, x550 y320 w100 vUnstableLeftDivision, 0.9

Gui, Add, Link, x30 y430, <a href="https://docs.google.com/document/d/1V2ahBQhzkFwZgpPdOJz0qpVSXPwTyQ92uIGbeyUILac/edit?usp=sharing">Minigame Settings Guide</a>
Gui, Add, Text, x30 y450, Make your own config or use others'

; Buttons
Gui, Tab
Gui, Add, Button, x200 y500 w80 h30 gSaveSettings, Save settings
Gui, Add, Button, x300 y500 w80 h30 gLoadSettings, Load settings
Gui, Add, Button, x400 y500 w80 h30 gExitScript, Exit
Gui, Add, Button, x500 y500 w80 h30 gLaunch, Start Macro
Gui, Add, Text, x30 y480 , Config file name (You dont have to put .ini)
Gui, Add, Edit, x30 y500 w100 h25 VLoadSettingsFileName GSettingFileUpdate , settings
	Gui, Submit, NoHide
	SettingsFileName := % LoadSettingsFileName . ".ini"
Gui, Show,, Settings
If (FileExist(A_ScriptDir . "\%SettingsFileName%")) {
    Goto, LoadSettings
}
Return
	
	SettingFileUpdate:
	Gui, Submit, NoHide
	SettingsFileName := % LoadSettingsFileName . ".ini"
	return
; Save settings
SaveSettings:
    Gui, Submit, NoHide
    IniWrite, %AutoLowerGraphics%, %SettingsFileName%, General, AutoLowerGraphics
    IniWrite, %AutoZoomInCamera%, %SettingsFileName%, General, AutoZoomInCamera
    IniWrite, %AutoEnableCameraMode%, %SettingsFileName%, General, AutoEnableCameraMode
    IniWrite, %AutoLookDownCamera%, %SettingsFileName%, General, AutoLookDownCamera
    IniWrite, %AutoBlurCamera%, %SettingsFileName%, General, AutoBlurCamera

    IniWrite, %RestartDelay%, %SettingsFileName%, General, RestartDelay
    IniWrite, %HoldRodCastDuration%, %SettingsFileName%, General, HoldRodCastDuration
    IniWrite, %WaitForBobberDelay%, %SettingsFileName%, General, WaitForBobberDelay
	IniWrite, %BaitDelay%, %SettingsFileName%, General, BaitDelay
	IniWrite, %Sera%, %SettingsFileName%, General, Sera

    IniWrite, %NavigationKey%, %SettingsFileName%, Shake, NavigationKey
    IniWrite, %ShakeMode%, %SettingsFileName%, Shake, ShakeMode
    IniWrite, %ShakeFailsafe%, %SettingsFileName%, Shake, ShakeFailsafe

    IniWrite, %ClickShakeColorTolerance%, %SettingsFileName%, Shake, ClickShakeColorTolerance
    IniWrite, %ClickScanDelay%, %SettingsFileName%, Shake, ClickScanDelay
    IniWrite, %NavigationSpamDelay%, %SettingsFileName%, Shake, NavigationSpamDelay

    IniWrite, %ManualBarSize%, %SettingsFileName%, Minigame, ManualBarSize
    IniWrite, %BarCalculationFailsafe%, %SettingsFileName%, Minigame, BarCalculationFailsafe
    IniWrite, %BarSizeCalculationColorTolerance%, %SettingsFileName%, Minigame, BarSizeCalculationColorTolerance
    IniWrite, %FishBarColorTolerance%, %SettingsFileName%, Minigame, FishBarColorTolerance
    IniWrite, %WhiteBarColorTolerance%, %SettingsFileName%, Minigame, WhiteBarColorTolerance
    IniWrite, %ArrowColorTolerance%, %SettingsFileName%, Minigame, ArrowColorTolerance

    IniWrite, %ScanDelay%, %SettingsFileName%, Minigame, ScanDelay
    IniWrite, %SideBarRatio%, %SettingsFileName%, Minigame, SideBarRatio
    IniWrite, %SideDelay%, %SettingsFileName%, Minigame, SideDelay

    IniWrite, %StableRightMultiplier%, %SettingsFileName%, Minigame, StableRightMultiplier
    IniWrite, %StableRightDivision%, %SettingsFileName%, Minigame, StableRightDivision
    IniWrite, %StableLeftMultiplier%, %SettingsFileName%, Minigame, StableLeftMultiplier
    IniWrite, %StableLeftDivision%, %SettingsFileName%, Minigame, StableLeftDivision

    IniWrite, %UnstableRightMultiplier%, %SettingsFileName%, Minigame, UnstableRightMultiplier
    IniWrite, %UnstableRightDivision%, %SettingsFileName%, Minigame, UnstableRightDivision
    IniWrite, %UnstableLeftMultiplier%, %SettingsFileName%, Minigame, UnstableLeftMultiplier
    IniWrite, %UnstableLeftDivision%, %SettingsFileName%, Minigame, UnstableLeftDivision
	
    ; Done
	Gui, -AlwaysOnTop
	MsgBox, 0x40040, Saved, Settings saved successfully as %SettingsFileName% !, 0.8
	Gui, +AlwaysOnTop
Return

; Load settings
LoadSettings:
	IniRead, lAutoLowerGraphics, %SettingsFileName%, General, AutoLowerGraphics
	IniRead, lAutoZoomInCamera, %SettingsFileName%, General, AutoZoomInCamera
	IniRead, lAutoEnableCameraMode, %SettingsFileName%, General, AutoEnableCameraMode
	IniRead, lAutoLookDownCamera, %SettingsFileName%, General, AutoLookDownCamera
	IniRead, lAutoBlurCamera, %SettingsFileName%, General, AutoBlurCamera

	IniRead, lRestartDelay, %SettingsFileName%, General, RestartDelay
	IniRead, lHoldRodCastDuration, %SettingsFileName%, General, HoldRodCastDuration
	IniRead, lWaitForBobberDelay, %SettingsFileName%, General, WaitForBobberDelay
	IniRead, lBaitDelay, %SettingsFileName%, General, BaitDelay
	IniRead, lSera, %SettingsFileName%, General, Sera

	IniRead, lNavigationKey, %SettingsFileName%, Shake, NavigationKey
	IniRead, lShakeMode, %SettingsFileName%, Shake, ShakeMode
	IniRead, lShakeFailsafe, %SettingsFileName%, Shake, ShakeFailsafe

	IniRead, lClickShakeColorTolerance, %SettingsFileName%, Shake, ClickShakeColorTolerance
	IniRead, lClickScanDelay, %SettingsFileName%, Shake, ClickScanDelay
	IniRead, lNavigationSpamDelay, %SettingsFileName%, Shake, NavigationSpamDelay

	IniRead, lManualBarSize, %SettingsFileName%, Minigame, ManualBarSize
	IniRead, lBarCalculationFailsafe, %SettingsFileName%, Minigame, BarCalculationFailsafe
	IniRead, lBarSizeCalculationColorTolerance, %SettingsFileName%, Minigame, BarSizeCalculationColorTolerance
	IniRead, lFishBarColorTolerance, %SettingsFileName%, Minigame, FishBarColorTolerance
	IniRead, lWhiteBarColorTolerance, %SettingsFileName%, Minigame, WhiteBarColorTolerance
	IniRead, lArrowColorTolerance, %SettingsFileName%, Minigame, ArrowColorTolerance

	IniRead, lScanDelay, %SettingsFileName%, Minigame, ScanDelay
	IniRead, lSideBarRatio, %SettingsFileName%, Minigame, SideBarRatio
	IniRead, lSideDelay, %SettingsFileName%, Minigame, SideDelay

	IniRead, lStableRightMultiplier, %SettingsFileName%, Minigame, StableRightMultiplier
	IniRead, lStableRightDivision, %SettingsFileName%, Minigame, StableRightDivision
	IniRead, lStableLeftMultiplier, %SettingsFileName%, Minigame, StableLeftMultiplier
	IniRead, lStableLeftDivision, %SettingsFileName%, Minigame, StableLeftDivision

	IniRead, lUnstableRightMultiplier, %SettingsFileName%, Minigame, UnstableRightMultiplier
	IniRead, lUnstableRightDivision, %SettingsFileName%, Minigame, UnstableRightDivision
	IniRead, lUnstableLeftMultiplier, %SettingsFileName%, Minigame, UnstableLeftMultiplier
	IniRead, lUnstableLeftDivision, %SettingsFileName%, Minigame, UnstableLeftDivision

	; Update GUI
	if FileExist(SettingsFileName) {
	Gui, Submit, NoHide
	GuiControl,, AutoLowerGraphics, %lAutoLowerGraphics%
	GuiControl,, AutoZoomInCamera, %lAutoZoomInCamera%
	GuiControl,, AutoEnableCameraMode, %lAutoEnableCameraMode%
	GuiControl,, AutoLookDownCamera, %lAutoLookDownCamera%
	GuiControl,, AutoBlurCamera, %lAutoBlurCamera%

	GuiControl,, RestartDelay, %lRestartDelay%
	GuiControl,, HoldRodCastDuration, %lHoldRodCastDuration%
	GuiControl,, WaitForBobberDelay, %lWaitForBobberDelay%
	GuiControl,, BaitDelay, %lBaitDelay%
	GuiControl,, Sera, %lSera%

	GuiControl,, NavigationKey, %lNavigationKey%
	GuiControl,Choose, ShakeMode, %lShakeMode%
GuiControl,, ShakeFailsafe, %lShakeFailsafe%

	GuiControl,, ClickShakeColorTolerance, %lClickShakeColorTolerance%
	GuiControl,, ClickScanDelay, %lClickScanDelay%
	GuiControl,, NavigationSpamDelay, %lNavigationSpamDelay%

	GuiControl,, ManualBarSize, %lManualBarSize%
	GuiControl,, BarCalculationFailsafe, %lBarCalculationFailsafe%
	GuiControl,, BarSizeCalculationColorTolerance, %lBarSizeCalculationColorTolerance%
	GuiControl,, FishBarColorTolerance, %lFishBarColorTolerance%
	GuiControl,, WhiteBarColorTolerance, %lWhiteBarColorTolerance%
	GuiControl,, ArrowColorTolerance, %lArrowColorTolerance%

	GuiControl,, ScanDelay, %lScanDelay%
	GuiControl,, SideBarRatio, %lSideBarRatio%
	GuiControl,, SideDelay, %lSideDelay%

	GuiControl,, StableRightMultiplier, %lStableRightMultiplier%
	GuiControl,, StableRightDivision, %lStableRightDivision%
	GuiControl,, StableLeftMultiplier, %lStableLeftMultiplier%
	GuiControl,, StableLeftDivision, %lStableLeftDivision%

	GuiControl,, UnstableRightMultiplier, %lUnstableRightMultiplier%
	GuiControl,, UnstableRightDivision, %lUnstableRightDivision%
	GuiControl,, UnstableLeftMultiplier, %lUnstableLeftMultiplier%
	GuiControl,, UnstableLeftDivision, %lUnstableLeftDivision%
	
	; Done
	Gui, -AlwaysOnTop
	MsgBox, 0x40040, Loaded, Loaded %SettingsFileName% !, 0.8
	Gui, +AlwaysOnTop
	} else {
	Gui, -AlwaysOnTop
	MsgBox, 0x40030, Loaded, Settings Failed to load. Make sure to watch the tutorial !
	Gui, +AlwaysOnTop
	}
Return

ExitScript:
    ExitApp
Return

GuiClose:
ExitApp

;====================================================================================================;
Launch:
Gui, Hide
	IniRead, lAutoLowerGraphics, %SettingsFileName%, General, AutoLowerGraphics
	IniRead, lAutoZoomInCamera, %SettingsFileName%, General, AutoZoomInCamera
	IniRead, lAutoEnableCameraMode, %SettingsFileName%, General, AutoEnableCameraMode
	IniRead, lAutoLookDownCamera, %SettingsFileName%, General, AutoLookDownCamera
	IniRead, lAutoBlurCamera, %SettingsFileName%, General, AutoBlurCamera
	IniRead, lRestartDelay, %SettingsFileName%, General, RestartDelay
	IniRead, lHoldRodCastDuration, %SettingsFileName%, General, HoldRodCastDuration
	IniRead, lWaitForBobberDelay, %SettingsFileName%, General, WaitForBobberDelay
	IniRead, lBaitDelay, %SettingsFileName%, General, BaitDelay
	IniRead, lSera, %SettingsFileName%, General, Sera

	IniRead, lNavigationKey, %SettingsFileName%, Shake, NavigationKey
	IniRead, lShakeMode, %SettingsFileName%, Shake, ShakeMode
	IniRead, lShakeFailsafe, %SettingsFileName%, Shake, ShakeFailsafe

	IniRead, lClickShakeColorTolerance, %SettingsFileName%, Shake, ClickShakeColorTolerance
	IniRead, lClickScanDelay, %SettingsFileName%, Shake, ClickScanDelay
	IniRead, lNavigationSpamDelay, %SettingsFileName%, Shake, NavigationSpamDelay

	IniRead, lManualBarSize, %SettingsFileName%, Minigame, ManualBarSize
	IniRead, lBarCalculationFailsafe, %SettingsFileName%, Minigame, BarCalculationFailsafe
	IniRead, lBarSizeCalculationColorTolerance, %SettingsFileName%, Minigame, BarSizeCalculationColorTolerance
	IniRead, lFishBarColorTolerance, %SettingsFileName%, Minigame, FishBarColorTolerance
	IniRead, lWhiteBarColorTolerance, %SettingsFileName%, Minigame, WhiteBarColorTolerance
	IniRead, lArrowColorTolerance, %SettingsFileName%, Minigame, ArrowColorTolerance

	IniRead, lScanDelay, %SettingsFileName%, Minigame, ScanDelay
	IniRead, lSideBarRatio, %SettingsFileName%, Minigame, SideBarRatio
	IniRead, lSideDelay, %SettingsFileName%, Minigame, SideDelay

	IniRead, lStableRightMultiplier, %SettingsFileName%, Minigame, StableRightMultiplier
	IniRead, lStableRightDivision, %SettingsFileName%, Minigame, StableRightDivision
	IniRead, lStableLeftMultiplier, %SettingsFileName%, Minigame, StableLeftMultiplier
	IniRead, lStableLeftDivision, %SettingsFileName%, Minigame, StableLeftDivision

	IniRead, lUnstableRightMultiplier, %SettingsFileName%, Minigame, UnstableRightMultiplier
	IniRead, lUnstableRightDivision, %SettingsFileName%, Minigame, UnstableRightDivision
	IniRead, lUnstableLeftMultiplier, %SettingsFileName%, Minigame, UnstableLeftMultiplier
	IniRead, lUnstableLeftDivision, %SettingsFileName%, Minigame, UnstableLeftDivision
	
if (ShakeMode != "Navigation" and ShakeMode != "Click")
	{
	msgbox, Shake Mode wasn't saved, remember to Save before you Start
	exitapp
	}

;====================================================================================================;

WinActivate, Roblox
if WinActive("Roblox")
	{
	WinMaximize, Roblox
	}
else
	{
	msgbox, where roblox bruh
	exitapp
	}
	
;====================================================================================================;

send {lbutton up}
send {rbutton up}
send {shift up}

;====================================================================================================;

Calculations:
WinGetActiveStats, Title, WindowWidth, WindowHeight, WindowLeft, WindowTop

CameraCheckLeft := WindowWidth/2.8444
CameraCheckRight := WindowWidth/1.5421
CameraCheckTop := WindowHeight/1.28
CameraCheckBottom := WindowHeight

ClickShakeLeft := WindowWidth/4.6545
ClickShakeRight := WindowWidth/1.2736
ClickShakeTop := WindowHeight/9
ClickShakeBottom := WindowHeight/1.3409

FishBarLeft := WindowWidth/3.3160
FishBarRight := WindowWidth/1.4317
FishBarTop := WindowHeight/1.1871
FishBarBottom := WindowHeight/1.1512

ProgressAreaLeft := WindowWidth/2.55
ProgressAreaRight := WindowWidth/1.63
ProgressAreaTop := WindowHeight/1.13
ProgressAreaBottom := WindowHeight/1.08

FishBarTooltipHeight := WindowHeight/1.0626

; Thanks Lunar res calculation
ResolutionScaling := WindowWidth / (WindowWidth * 2.37)

LookDownX := WindowWidth/2
LookDownY := WindowHeight/4

runtimeS := 0
runtimeM := 0
runtimeH := 0
FishCaught := 0
FishLost := 0
LostVar := false
IntervalReset := 0

PixelScaling := 1034/(FishBarRight-FishBarLeft)

TooltipX := WindowWidth/20
Tooltip1 := (WindowHeight/2)-(20*9)
Tooltip2 := (WindowHeight/2)-(20*8)
Tooltip3 := (WindowHeight/2)-(20*7)
Tooltip4 := (WindowHeight/2)-(20*6)
Tooltip5 := (WindowHeight/2)-(20*5)
Tooltip6 := (WindowHeight/2)-(20*4)
Tooltip7 := (WindowHeight/2)-(20*3)
Tooltip8 := (WindowHeight/2)-(20*2)
Tooltip9 := (WindowHeight/2)-(20*1)
Tooltip10 := (WindowHeight/2)
Tooltip11 := (WindowHeight/2)+(20*1)
Tooltip12 := (WindowHeight/2)+(20*2)
Tooltip13 := (WindowHeight/2)+(20*3)
Tooltip14 := (WindowHeight/2)+(20*4)
Tooltip15 := (WindowHeight/2)+(20*5)
Tooltip16 := (WindowHeight/2)+(20*6)
Tooltip17 := (WindowHeight/2)+(20*7)
Tooltip18 := (WindowHeight/2)+(20*8)
Tooltip19 := (WindowHeight/2)+(20*9)
Tooltip20 := (WindowHeight/2)+(20*10)

tooltip, Made By AsphaltCake, %TooltipX%, %Tooltip1%, 1
tooltip, Fisch Macro V12, %TooltipX%, %Tooltip2%, 2
tooltip, Runtime: 0h 0m 0s, %TooltipX%, %Tooltip3%, 3

tooltip, Press "P" to Start, %TooltipX%, %Tooltip4%, 4
tooltip, Press "O" to Reload, %TooltipX%, %Tooltip5%, 5
tooltip, Press "M" to Exit, %TooltipX%, %Tooltip6%, 6

if (AutoLowerGraphics == true)
	{
	tooltip, AutoLowerGraphics: true, %TooltipX%, %Tooltip8%, 8
	}
else
	{
	tooltip, AutoLowerGraphics: false, %TooltipX%, %Tooltip8%, 8
	}
	
if (AutoEnableCameraMode == true)
	{
	tooltip, AutoEnableCameraMode: true, %TooltipX%, %Tooltip9%, 9
	}
else
	{
	tooltip, AutoEnableCameraMode: false, %TooltipX%, %Tooltip9%, 9
	}
	
if (AutoZoomInCamera == true)
	{
	tooltip, AutoZoomInCamera: true, %TooltipX%, %Tooltip10%, 10
	}
else
	{
	tooltip, AutoZoomInCamera: false, %TooltipX%, %Tooltip10%, 10
	}
	
if (AutoLookDownCamera == true)
	{
	tooltip, AutoLookDownCamera: true, %TooltipX%, %Tooltip11%, 11
	}
else
	{
	tooltip, AutoLookDownCamera: false, %TooltipX%, %Tooltip11%, 11
	}
	
if (AutoBlurCamera == true)
	{
	tooltip, AutoBlurCamera: true, %TooltipX%, %Tooltip12%, 12
	}
else
	{
	tooltip, AutoBlurCamera: false, %TooltipX%, %Tooltip12%, 12
	}

tooltip, Navigation Key: "%NavigationKey%", %TooltipX%, %Tooltip14%, 14

if (ShakeMode == "Click")
	{
	tooltip, Shake Mode: "Click", %TooltipX%, %Tooltip16%, 16
	}
else
	{
	tooltip, Shake Mode: "Navigation", %TooltipX%, %Tooltip16%, 16
	}
return

;====================================================================================================;

; Thanks Lunar
runtime:
    runtimeS++
    if (runtimeS >= 60)
    {
        runtimeS := 0
        runtimeM++
    }
    if (runtimeM >= 60)
    {
        runtimeM := 0
        runtimeH++
    }

    tooltip, Runtime: %runtimeH%h %runtimeM%m %runtimeS%s, %TooltipX%, %Tooltip3%, 3

    if (WinExist("ahk_exe RobloxPlayerBeta.exe")) {
        if (!WinActive("ahk_exe RobloxPlayerBeta.exe")) {
            WinActivate
        }
    }
    else {
		MsgBox, 0x40030, Error, Make sure you are using the Roblox Player (not from Microsoft)
        exitapp
    }
return

;====================================================================================================;

#IfWinNotActive, ahk_class AutoHotkeyGUI
$o::Reload
$m::ExitApp
$p:: goto StartCalculation
#IfWinNotActive

StartCalculation:
;====================================================================================================;

gosub, Calculations
settimer, runtime, 1000

tooltip, Press "O" to Reload, %TooltipX%, %Tooltip4%, 4
tooltip, Press "M" to Exit, %TooltipX%, %Tooltip5%, 5

tooltip, , , , 6
tooltip, , , , 10
tooltip, , , , 11
tooltip, , , , 12
tooltip, , , , 14
tooltip, , , , 16

tooltip, Current Task: AutoLowerGraphics, %TooltipX%, %Tooltip7%, 7
tooltip, F10 Count: 0/20, %TooltipX%, %Tooltip9%, 9
f10counter := 0
if (AutoLowerGraphics == true)
	{
	send {shift}
	tooltip, Action: Press Shift, %TooltipX%, %Tooltip8%, 8
	sleep 50
	send {shift down}
	tooltip, Action: Hold Shift, %TooltipX%, %Tooltip8%, 8
	sleep 50
	loop, 20
		{
		f10counter++
		tooltip, F10 Count: %f10counter%/20, %TooltipX%, %Tooltip9%, 9
		send {f10}
		tooltip, Action: Press F10, %TooltipX%, %Tooltip8%, 8
		sleep 50
		}
	send {shift up}
	tooltip, Action: Release Shift, %TooltipX%, %Tooltip8%, 8
	sleep 50
	}

tooltip, Current Task: AutoZoomInCamera, %TooltipX%, %Tooltip7%, 7
tooltip, Scroll In: 0/20, %TooltipX%, %Tooltip9%, 9
tooltip, Scroll Out: 0/1, %TooltipX%, %Tooltip10%, 10
scrollcounter := 0
if (AutoZoomInCamera == true)
	{
	sleep 50
	loop, 20
		{
		scrollcounter++
		tooltip, Scroll In: %scrollcounter%/20, %TooltipX%, %Tooltip9%, 9
		send {wheelup}
		tooltip, Action: Scroll In, %TooltipX%, %Tooltip8%, 8
		sleep 50
		}
	send {wheeldown}
	tooltip, Scroll Out: 1/1, %TooltipX%, %Tooltip10%, 10
	tooltip, Action: Scroll Out, %TooltipX%, %Tooltip8%, 8
	AutoZoomDelay := AutoZoomDelay*5
	sleep 50
	}
	
tooltip, , , , 10

tooltip, Current Task: AutoEnableCameraMode, %TooltipX%, %Tooltip7%, 7
tooltip, Right Count: 0/10, %TooltipX%, %Tooltip9%, 9
rightcounter := 0
if (AutoEnableCameraMode == true)
	{
	PixelSearch, , , CameraCheckLeft, CameraCheckTop, CameraCheckRight, CameraCheckBottom, 0xFFFFFF, 0, Fast
	if !ErrorLevel
		{
		sleep 150
		send {2}
		tooltip, Action: Presss 2, %TooltipX%, %Tooltip8%, 8
		sleep 150
		send {1}
		tooltip, Action: Press 1, %TooltipX%, %Tooltip8%, 8
		sleep 150
		send {%NavigationKey%}
		tooltip, Action: Press %NavigationKey%, %TooltipX%, %Tooltip8%, 8
		sleep 150
		loop, 10
			{
			rightcounter++
			tooltip, Right Count: %rightcounter%/10, %TooltipX%, %Tooltip9%, 9
			send {right}
			tooltip, Action: Press Right, %TooltipX%, %Tooltip8%, 8
			sleep 150
			}
		send {enter}
		tooltip, Action: Press Enter, %TooltipX%, %Tooltip8%, 8
		sleep 150
		}
	}

RestartMacro:

tooltip, , , , 9
tooltip, Current Task: AutoLookDownCamera, %TooltipX%, %Tooltip7%, 7
if (AutoLookDownCamera == true)
	{
	send {rbutton up}
	sleep 100
	mousemove, LookDownX, LookDownY
	tooltip, Action: Position Mouse, %TooltipX%, %Tooltip8%, 8
	sleep 100
	send {rbutton down}
	tooltip, Action: Hold Right Click, %TooltipX%, %Tooltip8%, 8
	sleep 100
	DllCall("mouse_event", "UInt", 0x01, "UInt", 0, "UInt", 10000)
	tooltip, Action: Move Mouse Down, %TooltipX%, %Tooltip8%, 8
	sleep 100
	send {rbutton up}
	tooltip, Action: Release Right Click, %TooltipX%, %Tooltip8%, 8
	sleep 100
	mousemove, LookDownX, LookDownY
	tooltip, Action: Position Mouse, %TooltipX%, %Tooltip8%, 8
	sleep 100
	}
	
tooltip, Current Task: AutoBlurCamera, %TooltipX%, %Tooltip7%, 7	
if (AutoBlurCamera == true)
	{
	sleep 50
	send {m}
	tooltip, Action: Press M, %TooltipX%, %Tooltip8%, 8
	sleep 50
	}

tooltip, Current Task: Casting Rod, %TooltipX%, %Tooltip7%, 7
send {lbutton down}
tooltip, Action: Casting For %HoldRodCastDuration%ms, %TooltipX%, %Tooltip8%, 8
sleep %HoldRodCastDuration%
send {lbutton up}
tooltip, Action: Waiting For Bobber (%WaitForBobberDelay%ms), %TooltipX%, %Tooltip8%, 8
sleep %WaitForBobberDelay%

if (ShakeMode == "Click")
goto ClickShakeMode
else if (ShakeMode == "Navigation")
goto NavigationShakeMode

;====================================================================================================;

ClickShakeFailsafe:
ClickFailsafeCount++
tooltip, Failsafe: %ClickFailsafeCount%/%ShakeFailsafe%, %TooltipX%, %Tooltip14%, 14
if (ClickFailsafeCount >= ShakeFailsafe)
	{
	settimer, ClickShakeFailsafe, off
	ForceReset := true
	}
return

ClickShakeMode:

tooltip, Current Task: Shaking, %TooltipX%, %Tooltip7%, 7
tooltip, Click X: None, %TooltipX%, %Tooltip8%, 8
tooltip, Click Y: None, %TooltipX%, %Tooltip9%, 9

tooltip, Click Count: 0, %TooltipX%, %Tooltip11%, 11
tooltip, Bypass Count: 0/10, %TooltipX%, %Tooltip12%, 12

tooltip, Failsafe: 0/%ShakeFailsafe%, %TooltipX%, %Tooltip14%, 14

ClickFailsafeCount := 0
ClickCount := 0
ClickShakeRepeatBypassCounter := 0
MemoryX := 0
MemoryY := 0
ForceReset := false

settimer, ClickShakeFailsafe, 1000

ClickShakeModeRedo:
if (ForceReset == true)
	{
	tooltip, , , , 11
	tooltip, , , , 12
	tooltip, , , , 14
	goto RestartMacro
	}
sleep %ClickScanDelay%
PixelSearch, , , FishBarLeft, FishBarTop, FishBarRight, FishBarBottom, 0x5B4B43, %FishBarColorTolerance%, Fast
if !ErrorLevel
	{
	settimer, ClickShakeFailsafe, off
	tooltip, , , , 9
	tooltip, , , , 11
	tooltip, , , , 12
	tooltip, , , , 14
	goto BarMinigame
	}
else
	{
	PixelSearch, ClickX, ClickY, ClickShakeLeft, ClickShakeTop, ClickShakeRight, ClickShakeBottom, 0xFFFFFF, %ClickShakeColorTolerance%, Fast
	if !ErrorLevel
		{

		tooltip, Click X: %ClickX%, %TooltipX%, %Tooltip8%, 8
		tooltip, Click Y: %ClickY%, %TooltipX%, %Tooltip9%, 9

		if (ClickX != MemoryX and ClickY != MemoryY)
			{
			ClickShakeRepeatBypassCounter := 0
			tooltip, Bypass Count: %ClickShakeRepeatBypassCounter%/10, %TooltipX%, %Tooltip12%, 12
			ClickCount++
			click, %ClickX%, %ClickY%
			tooltip, Click Count: %ClickCount%, %TooltipX%, %Tooltip11%, 11
			MemoryX := ClickX
			MemoryY := ClickY
			goto ClickShakeModeRedo
			}
		else
			{
			ClickShakeRepeatBypassCounter++
			tooltip, Bypass Count: %ClickShakeRepeatBypassCounter%/10, %TooltipX%, %Tooltip12%, 12
			if (ClickShakeRepeatBypassCounter >= 10)
				{
				MemoryX := 0
				MemoryY := 0
				}
			goto ClickShakeModeRedo
			}
		}
	else
		{
		goto ClickShakeModeRedo
		}
	}

;====================================================================================================;

NavigationShakeFailsafe:
NavigationFailsafeCount++
tooltip, Failsafe: %NavigationFailsafeCount%/%ShakeFailsafe%, %TooltipX%, %Tooltip10%, 10
if (NavigationFailsafeCount >= ShakeFailsafe)
	{
	settimer, NavigationShakeFailsafe, off
	ForceReset := true
	}
return

NavigationShakeMode:

tooltip, Current Task: Shaking, %TooltipX%, %Tooltip7%, 7
tooltip, Attempt Count: 0, %TooltipX%, %Tooltip8%, 8

tooltip, Failsafe: 0/%ShakeFailsafe%, %TooltipX%, %Tooltip10%, 10

NavigationFailsafeCount := 0
NavigationCounter := 0
ForceReset := false
settimer, NavigationShakeFailsafe, 1000
send {%NavigationKey%}
NavigationShakeModeRedo:
if (ForceReset == true)
	{
	tooltip, , , , 10
	goto RestartMacro
	}
sleep %NavigationSpamDelay%
PixelSearch, , , FishBarLeft, FishBarTop, FishBarRight, FishBarBottom, 0x5B4B43, %FishBarColorTolerance%, Fast
if !ErrorLevel
	{
	settimer, NavigationShakeFailsafe, off
	goto BarMinigame
	}
else
	{
	NavigationCounter++
	tooltip, Attempt Count: %NavigationCounter%, %TooltipX%, %Tooltip8%, 8
	sleep 1
	send {s}
	sleep 1
	send {enter}
	goto NavigationShakeModeRedo
	}

;=========== BAR ====================================================================================================;

BarCalculationFailsafe:
BarCalcFailsafeCounter++
tooltip, Failsafe: %BarCalcFailsafeCounter%/%BarCalculationFailsafe%, %TooltipX%, %Tooltip10%, 10
if (BarCalcFailsafeCounter >= BarCalculationFailsafe)
	{
	settimer, BarCalculationFailsafe, off
	ForceReset := true
	}
return

BarMinigame:
sleep %BaitDelay%
if (Sera == true)
	{
		tooltip, Current Task: Stablizing Seraphic, %TooltipX%, %Tooltip7%, 7
		tooltip, , , , 8
		loop, 25
		{
			send {lbutton down}
			sleep 50
			send {lbutton up}
			sleep 30
		}
		send {lbutton down}
		sleep 800
		send {lbutton up}
	}

tooltip, Current Task: Calculating Bar Size, %TooltipX%, %Tooltip7%, 7
tooltip, Bar Size: Not Found, %TooltipX%, %Tooltip8%, 8
tooltip, Don't stand on snow, %TooltipX%, %Tooltip8%, 8
tooltip, Failsafe: 0/%BarCalculationFailsafe%, %TooltipX%, %Tooltip10%, 10

ForceReset := false
BarCalcFailsafeCounter := 0
settimer, BarCalculationFailsafe, 1000

BarMinigameRedo:
if (ForceReset == true)
	{
	tooltip, , , , 10
	goto RestartMacro
	}
PixelSearch, BarX, , FishBarLeft, FishBarTop, FishBarRight, FishBarBottom, 0xFFFFFF, %BarSizeCalculationColorTolerance%, Fast
if !ErrorLevel
	{
	settimer, BarCalculationFailsafe, off
	if (ManualBarSize != 0)
		{
		WhiteBarSize := ManualBarSize
		goto BarMinigameSingle
		}
	WhiteBarSize := (FishBarRight-(BarX-FishBarLeft))-BarX
	goto BarMinigameSingle
	}
sleep 1
goto BarMinigameRedo

;====================================================================================================;

BarMinigameSingle:

	EndMinigame := false
	tooltip, Current Task: Playing Bar Minigame, %TooltipX%, %Tooltip7%, 7
	tooltip, Bar Size: %WhiteBarSize%, %TooltipX%, %Tooltip8%, 8
	HalfBarSize := WhiteBarSize/2
	Deadzone := WhiteBarSize*0.1
	
	MaxLeftBar := FishBarLeft+(WhiteBarSize*SideBarRatio)
	MaxRightBar := FishBarRight-(WhiteBarSize*SideBarRatio)
	settimer, BarMinigame2, %ScanDelay%

BarMinigameAction:
if (EndMinigame == true)
	{
		sleep %RestartDelay%
		goto RestartMacro
	}
if (Action == 0)
	{
		SideToggle := false
		send {lbutton down}
		sleep 10
		send {lbutton up}
		sleep 10
	}
else if (Action == 1)
	{
		SideToggle := false
		send {lbutton up}
		if (AnkleBreak == false)
		{
			sleep %AnkleBreakDuration%
			AnkleBreakDuration := 0
		}
		Duration := Abs(Direction)*StableLeftMultiplier*PixelScaling
		sleep %Duration%
		send {lbutton down}
		CounterStrafe := Duration/StableLeftDivision
		sleep %CounterStrafe%
		AnkleBreak := true
		AnkleBreakDuration := AnkleBreakDuration+(Duration-CounterStrafe)
	}
else if (Action == 2)
	{
		SideToggle := false
		send {lbutton down}
		if (AnkleBreak == true)
		{
			sleep %AnkleBreakDuration%
			AnkleBreakDuration := 0
		}
		Duration := Abs(Direction)*StableRightMultiplier*PixelScaling
		sleep %Duration%
		send {lbutton up}
		CounterStrafe := Duration/StableRightDivision
		sleep %CounterStrafe%
		AnkleBreak := false
		AnkleBreakDuration := AnkleBreakDuration+(Duration-CounterStrafe)
	}
else if (Action == 3)
	{
		if (SideToggle == false)
		{
			AnkleBreak := none
			AnkleBreakDuration := 0
			SideToggle := true
			send {lbutton down}
			send {lbutton up}
			sleep %SideDelay%
		}
		sleep %ScanDelay%
	}
else if (Action == 4)
	{
		if (SideToggle == false)
		{
			AnkleBreak := none
			AnkleBreakDuration := 0
			SideToggle := true
			send {lbutton down}
			sleep %SideDelay%
		}
		sleep %ScanDelay%
	}
else if (Action == 5)
	{
		SideToggle := false
		send {lbutton up}
		if (AnkleBreak == false)
		{
			sleep %AnkleBreakDuration%
			AnkleBreakDuration := 0
		}
		Duration := Abs(Direction)*UnstableLeftMultiplier*PixelScaling
		sleep %Duration%
		send {lbutton down}
		CounterStrafe := Duration/UnstableLeftDivision
		sleep %CounterStrafe%
		AnkleBreak := true
		AnkleBreakDuration := AnkleBreakDuration+(Duration-CounterStrafe)
	}
else if (Action == 6)
	{
		SideToggle := false
		send {lbutton down}
		if (AnkleBreak == true)
		{
			sleep %AnkleBreakDuration%
			AnkleBreakDuration := 0
		}
		Duration := Abs(Direction)*UnstableRightMultiplier*PixelScaling
		sleep %Duration%
		send {lbutton up}
		CounterStrafe := Duration/UnstableRightDivision
		sleep %CounterStrafe%
		AnkleBreak := false
		AnkleBreakDuration := AnkleBreakDuration+(Duration-CounterStrafe)
	}
else if (Action == 7)
	{
		send {lbutton down}
		sleep %SideDelay%
	}
else
	{
		sleep %ScanDelay%
	}
goto BarMinigameAction

BarMinigame2:
sleep 1
PixelSearch, FishX, , FishBarLeft, FishBarTop, FishBarRight, FishBarBottom, 0x5B4B43, %FishBarColorTolerance%, Fast
if !ErrorLevel
	{
	tooltip, +, %FishX%, %FishBarTooltipHeight%, 20
	if (FishX < MaxLeftBar)
		{
			Action := 3
			tooltip, |, %MaxLeftBar%, %FishBarTooltipHeight%, 19
			tooltip, , , , 9
			tooltip, Direction: Max Left, %TooltipX%, %Tooltip10%, 10
			return
		}
	else if (FishX > MaxRightBar)
		{
			Action := 4
			tooltip, |, %MaxRightBar%, %FishBarTooltipHeight%, 19
			tooltip, , , , 9
			tooltip, Direction: Max Right, %TooltipX%, %Tooltip10%, 10
			if (Sera == true)
			{
				PixelSearch, BarX, , FishBarLeft, FishBarTop, FishBarRight, FishBarBottom, 0xFFFFFF, %WhiteBarColorTolerance%, Fast
				if !ErrorLevel
				{
					if (FishX > BarX)
					{	
						Action := 7
					}
				}
			}
			return
		}
	PixelSearch, BarX, , FishBarLeft, FishBarTop, FishBarRight, FishBarBottom, 0xFFFFFF, %WhiteBarColorTolerance%, Fast
	if !ErrorLevel
		{
		BarX := BarX+(WhiteBarSize/2)
		Direction := BarX-FishX
		if (Direction > Deadzone)
			{
				Action := 1
				tooltip, , , , 9
				tooltip, Tracking direction: <, %TooltipX%, %Tooltip10%, 10
				tooltip, <, %BarX%, %FishBarTooltipHeight%, 19
			}
		else if (Direction < -Deadzone)
			{
				Action := 2
				tooltip, , , , 9
				tooltip, Tracking direction: >, %TooltipX%, %Tooltip10%, 10
				tooltip, >, %BarX%, %FishBarTooltipHeight%, 19
			}
		else
			{
				Action := 0
				tooltip, Stablizing, %TooltipX%, %Tooltip9%, 9
				tooltip, ., %BarX%, %FishBarTooltipHeight%, 19
			}
		}
	else
		{
			Direction := HalfBarSize
			PixelSearch, ArrowX, , FishBarLeft, FishBarTop, FishBarRight, FishBarBottom, 0x878584, %ArrowColorTolerance%, Fast
			ArrowX := ArrowX-FishX
			if (ArrowX > 0)
			{	
				Action := 5
				tooltip, , , , 9
				BarX := FishX+HalfBarSize
				tooltip, <, %BarX%, %FishBarTooltipHeight%, 19
			}
			else
			{	
				Action := 6
				tooltip, , , , 9
				BarX := FishX-HalfBarSize
				tooltip, >, %BarX%, %FishBarTooltipHeight%, 19
			}
		}
	}
else
	{
		tooltip, , , , 10
		tooltip, , , , 11
		tooltip, , , , 12
		tooltip, , , , 13
		tooltip, , , , 14
		tooltip, , , , 15
		tooltip, , , , 17
		tooltip, , , , 18
		tooltip, , , , 19
		tooltip, , , , 20
		EndMinigame := true
		settimer, BarMinigame2, Off
	}
