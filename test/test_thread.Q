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
MacroID=65e6ece1-6638-4162-baff-91558c09e6f7
Description=test_thread
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
//

//��h�������^�������ID���A�ݭn�w�q�����ܼ�
DimEnv �����ID1, �����ID2
�����ID1 = BeginThread(�Ƶ{��1)
�����ID2 = BeginThread(�Ƶ{��2)


// 1  11111     1s    1st 1dddd f
//  2 2s    2st 22222 2dddd f

//�H�U�O�i���եΡj�Ƶ{���Ҥl
Dim i
Sub �Ƶ{��1()
	PauseThread �����ID2
    i=1
    TracePrint "�Ƶ{���Q������ҰʡI" & i
    Delay 500 // process time
    ContinueThread �����ID2
    Delay 1000
End Sub
Sub �Ƶ{��2()
	PauseThread �����ID1
    i=2
    TracePrint "�Ƶ{���Q������ҰʡI" & i
    Delay 500 // process time
    ContinueThread �����ID1
    Delay 1000
End Sub


/*
// 1  11111 f
//  2 2s    2st 22222 2ddddd f

//�H�U�O�i���եΡj�Ƶ{���Ҥl
Dim i
Sub �Ƶ{��1()
	PauseThread �����ID2
    i=1
    TracePrint "�Ƶ{���Q������ҰʡI" & i
    ContinueThread �����ID2
End Sub
Sub �Ƶ{��2()
	PauseThread �����ID1
    i=2
    TracePrint "�Ƶ{���Q������ҰʡI" & i
    ContinueThread �����ID1
    Delay 1000
End Sub
*/

/*
// 1 1 s st 1 f
//  2 2  2dddddddd f

//�H�U�O�i���եΡj�Ƶ{���Ҥl
Dim i
Sub �Ƶ{��1()
    i=1
    TracePrint "�Ƶ{���Q������ҰʡI" & i
End Sub
Sub �Ƶ{��2()
	PauseThread �����ID1
    i=2
    TracePrint "�Ƶ{���Q������ҰʡI" & i
    ContinueThread �����ID1
    Delay 1000
End Sub
*/

/*
// 1 1 s st 1 f
//  2 2  2dddddddd f

//�H�U�O�i���եΡj�Ƶ{���Ҥl
Dim i
Sub �Ƶ{��1()
    i=1
    TracePrint "�Ƶ{���Q������ҰʡI" & i
End Sub
Sub �Ƶ{��2()
	PauseThread �����ID1
    i=2
    TracePrint "�Ƶ{���Q������ҰʡI" & i
    ContinueThread �����ID1
End Sub
*/

//�H�U�O�i�L���j��j��������}������C
Do
    Delay 1000
Loop

//�b�Ұʸ}���ɦ۰ʸ��J�t�m��T
Sub OnScriptLoad()
    //MessageBox "�}���t�m�����I"
End Sub

//�H�U�O�u��i�h���������ɡj���ͪ��ƥ�
Sub OnThreadExit()
    Dim ThreadID
    ThreadID = GetThreadID() //�o����e�������ID
    Select Case ThreadID
    Case �����ID1
        //�o�˴N�i�H�w��Y�Ӱ�����i��ާ@
 //��p�G ����j�z�~���{������
 TracePrint i & " ���e�����(" & ThreadID & ")�w�g����I" & �����ID1  
    Case �����ID2
        //�o�˴N�i�H�w��Y�Ӱ�����i��ާ@
 //��p�G����361�~���{������
 TracePrint i & " ���e�����(" & ThreadID & ")�w�g����I" & �����ID2
    End Select
End Sub

//�H�U�O���}���i��������ɡj���ͪ��ƥ�   
Sub OnScriptExit()
    MessageBox "�}���w�g����I"
End Sub