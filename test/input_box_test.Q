[General]
SyntaxVersion=2
BeginHotkey=121
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=ae430367-82a8-41f7-99ed-1f0710587b19
Description=input_box_test
Enable=0
AutoRun=0
[Repeat]
Type=0
Number=1
[SetupUI]
Type=2
QUI=
[Relative]
SetupOCXFile=
[Comment]

[Script]
Dim Input
Input = InputBox("��J�W�r")
MsgBox ("��J: " & Input)

Input = Right("00000",5)
MsgBox ("��J: " & Input)

TracePrint TypeName(Input)

number = int(Input)

TracePrint number

str1 = CStr(number)

TracePrint TypeName(str1)

TracePrint 7/8
TracePrint Ceil(7/8)
TracePrint Floor(7/8)

team2ExpNum = InputBox("Enter expedition number for team 2 (1 to 40):", "Team 2")
team3ExpNum = InputBox("Enter expedition number for team 3 (1 to 40):", "Team 3..")
team4ExpNum = InputBox("Enter expedition number for team 4 (1 to 40):", "Team 4....")
TracePrint team2ExpNum
TracePrint team3ExpNum
TracePrint team4ExpNum

team2ExpPage = Ceil(team2ExpNum/8)
team3ExpPage = Ceil(team3ExpNum/8)
team4ExpPage = Ceil(team4ExpNum/8)
TracePrint team2ExpPage
TracePrint team3ExpPage
TracePrint team4ExpPage

Function Ceil(Number)
	//--------------------------------------------------------
	// round up number
    Ceil = Int(Number)
	// if ceil is not equal to the number (means have decimal places)
    if Ceil <> Number then
        // Add one to Ceil
        Ceil = Ceil + 1
    end if
	//--------------------------------------------------------
end function

function Floor(Number)
	//--------------------------------------------------------
	// round down
    Floor = Int(Number)
	//--------------------------------------------------------
end function