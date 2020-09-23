Attribute VB_Name = "modFilter"
Option Explicit
Declare Function SetWindowPos Lib "user32" (ByVal H%, ByVal hb%, ByVal x%, ByVal y%, ByVal cx%, ByVal cy%, ByVal F%) As Integer

Global LvAdd                As ListItem
Global intX                 As Integer
Global intChr(3)            As Integer
Global strBufferSet         As String
Global strString(3)         As String
Global strUserName          As String
Public strListItem          As String


Function AddList(strAction As String, strInfo As String)
Set LvAdd = frmMain.Lv1.ListItems.Add(, , CStr(Time))
    LvAdd.SubItems(1) = strAction
    LvAdd.SubItems(2) = strInfo
End Function

Function RemoveNullChr(strDataString As String) As String
For intX = 1 To Len(strDataString)
    intChr = Asc(Mid(strDataString, intX, 1))
    If intChr = "0" Then
        strBufferSet = strBufferSet & ""
        Else
        strBufferSet = strBufferSet & Chr(intChr)
    End If
Next intX
RemoveNullChr = strBufferSet
End Function

Function ResetSockets(SocketA As Winsock, SocketB As Winsock)
With SocketA
    .Close
    .Listen
    AddList "Listening", "mIRC Socket Listening: " & SocketA.LocalPort
End With
SocketB.Close
End Function

Function FormOnTop(TheForm As Form)
On Error GoTo ErrTrap:
    SetWindowPos TheForm.hWnd, -1, 0, 0, 0, 0, 2 Or 1
    Exit Function
ErrTrap:
    MsgBox "FormOnTop Function Failed - ID" & Err.Number, vbCritical, "Error"
End Function
