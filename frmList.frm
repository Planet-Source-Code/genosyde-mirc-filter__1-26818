VERSION 5.00
Begin VB.Form frmList 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Server List"
   ClientHeight    =   2040
   ClientLeft      =   45
   ClientTop       =   285
   ClientWidth     =   2670
   BeginProperty Font 
      Name            =   "Tahoma"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2040
   ScaleWidth      =   2670
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "Cancel"
      Height          =   255
      Left            =   1560
      TabIndex        =   2
      Top             =   1680
      Width           =   975
   End
   Begin VB.CommandButton cmdAdd 
      Caption         =   "Add"
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   1680
      Width           =   975
   End
   Begin VB.ListBox lstServer 
      BackColor       =   &H80000000&
      ForeColor       =   &H00FFFFFF&
      Height          =   1425
      ItemData        =   "frmList.frx":0000
      Left            =   120
      List            =   "frmList.frx":0010
      TabIndex        =   0
      Top             =   120
      Width           =   2415
   End
End
Attribute VB_Name = "frmList"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cmdAdd_Click()
ErrFix:
strListItem = InputBox("Enter the Server Host and Port in the Format [HostName:Port]", "Add Server", "")
    If InStr(1, strListItem, ":") Then
        Else
        MsgBox "Invalid Format", vbCritical, "Error"
        GoTo ErrFix:
    End If
    intChr = InStr(2, strListItem, ":")
    If Val(Len(Mid(strListItem, Val(intChr) + 1, Len(strListItem)))) > 4 Then
        MsgBox "Port can only be 4 Numbers", vbCritical, "Error"
        GoTo ErrFix:
    End If
lstServer.AddItem strListItem
strListItem = ""
End Sub

Private Sub Command2_Click()
    Unload Me
End Sub

Private Sub Form_Load()
    FormOnTop Me
End Sub

Private Sub lstServer_DblClick()
intChr(0) = InStr(1, lstServer.Text, ":")
strListItem = Mid(lstServer.Text, 1, Val(intChr(0)) - 1)
frmMain.txtServer.Text = strListItem
strListItem = Mid(lstServer.Text, Val(intChr(0)) + 1, 4)
frmMain.txtPort.Text = strListItem
intChr(0) = 0
Unload Me
End Sub
