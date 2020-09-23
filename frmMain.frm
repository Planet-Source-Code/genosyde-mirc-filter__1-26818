VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form frmMain 
   Caption         =   "Citadel [v1.1] - mIRC Filter"
   ClientHeight    =   4635
   ClientLeft      =   60
   ClientTop       =   315
   ClientWidth     =   7200
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
   ScaleHeight     =   4635
   ScaleWidth      =   7200
   StartUpPosition =   3  'Windows Default
   Begin MSWinsockLib.Winsock Socket2 
      Left            =   120
      Top             =   4200
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Socket1 
      Left            =   0
      Top             =   4200
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   3615
      Left            =   360
      TabIndex        =   2
      Top             =   480
      Width           =   6855
      _ExtentX        =   12091
      _ExtentY        =   6376
      _Version        =   393216
      TabOrientation  =   1
      Style           =   1
      Tabs            =   2
      TabsPerRow      =   2
      TabHeight       =   520
      TabCaption(0)   =   "Filter Log"
      TabPicture(0)   =   "frmMain.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Lv1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      TabCaption(1)   =   "Raw Data"
      TabPicture(1)   =   "frmMain.frx":001C
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "txtDataOut"
      Tab(1).Control(1)=   "txtDataIn"
      Tab(1).Control(2)=   "Line9"
      Tab(1).Control(3)=   "Line8"
      Tab(1).Control(4)=   "Line7"
      Tab(1).Control(5)=   "Line6"
      Tab(1).Control(6)=   "Label5"
      Tab(1).Control(7)=   "Line5"
      Tab(1).Control(8)=   "Line4"
      Tab(1).Control(9)=   "Label4"
      Tab(1).Control(10)=   "Line3"
      Tab(1).Control(11)=   "Line2"
      Tab(1).ControlCount=   12
      Begin VB.TextBox txtDataOut 
         Height          =   1215
         Left            =   -74880
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   11
         Top             =   1920
         Width           =   6615
      End
      Begin VB.TextBox txtDataIn 
         Height          =   1215
         Left            =   -74880
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   9
         Top             =   360
         Width           =   6615
      End
      Begin MSComctlLib.ListView Lv1 
         Height          =   3015
         Left            =   120
         TabIndex        =   3
         Top             =   120
         Width           =   6615
         _ExtentX        =   11668
         _ExtentY        =   5318
         View            =   3
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         FullRowSelect   =   -1  'True
         GridLines       =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   12632256
         BorderStyle     =   1
         Appearance      =   1
         NumItems        =   3
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "Time"
            Object.Width           =   1818
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Action"
            Object.Width           =   2893
         EndProperty
         BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   2
            Text            =   "Information"
            Object.Width           =   9279
         EndProperty
      End
      Begin VB.Line Line9 
         BorderColor     =   &H00FFFFFF&
         X1              =   -73800
         X2              =   -68280
         Y1              =   1800
         Y2              =   1800
      End
      Begin VB.Line Line8 
         BorderColor     =   &H00808080&
         BorderWidth     =   2
         X1              =   -73800
         X2              =   -68280
         Y1              =   1800
         Y2              =   1800
      End
      Begin VB.Line Line7 
         BorderColor     =   &H00FFFFFF&
         X1              =   -74880
         X2              =   -74640
         Y1              =   1800
         Y2              =   1800
      End
      Begin VB.Line Line6 
         BorderColor     =   &H00808080&
         BorderWidth     =   2
         X1              =   -74880
         X2              =   -74640
         Y1              =   1800
         Y2              =   1800
      End
      Begin VB.Label Label5 
         Caption         =   "Outgoing"
         Height          =   255
         Left            =   -74520
         TabIndex        =   10
         Top             =   1680
         Width           =   735
      End
      Begin VB.Line Line5 
         BorderColor     =   &H00FFFFFF&
         X1              =   -73800
         X2              =   -68280
         Y1              =   240
         Y2              =   240
      End
      Begin VB.Line Line4 
         BorderColor     =   &H00808080&
         BorderWidth     =   2
         X1              =   -73800
         X2              =   -68280
         Y1              =   240
         Y2              =   240
      End
      Begin VB.Label Label4 
         Caption         =   "Incoming"
         Height          =   255
         Left            =   -74520
         TabIndex        =   8
         Top             =   120
         Width           =   735
      End
      Begin VB.Line Line3 
         BorderColor     =   &H00FFFFFF&
         X1              =   -74880
         X2              =   -74640
         Y1              =   240
         Y2              =   240
      End
      Begin VB.Line Line2 
         BorderColor     =   &H00808080&
         BorderWidth     =   2
         X1              =   -74880
         X2              =   -74640
         Y1              =   240
         Y2              =   240
      End
   End
   Begin VB.PictureBox Picture2 
      BackColor       =   &H00000080&
      BorderStyle     =   0  'None
      Height          =   3615
      Left            =   0
      ScaleHeight     =   3615
      ScaleWidth      =   375
      TabIndex        =   1
      Top             =   480
      Width           =   375
   End
   Begin VB.PictureBox Picture1 
      BackColor       =   &H00800000&
      BorderStyle     =   0  'None
      Height          =   495
      Left            =   0
      ScaleHeight     =   495
      ScaleWidth      =   7215
      TabIndex        =   0
      Top             =   0
      Width           =   7215
      Begin VB.TextBox txtPort 
         BackColor       =   &H00800000&
         BorderStyle     =   0  'None
         ForeColor       =   &H00FFFFFF&
         Height          =   285
         Left            =   6600
         TabIndex        =   7
         Text            =   "6667"
         Top             =   120
         Width           =   495
      End
      Begin VB.TextBox txtServer 
         BackColor       =   &H00800000&
         BorderStyle     =   0  'None
         ForeColor       =   &H00FFFFFF&
         Height          =   285
         Left            =   4680
         TabIndex        =   5
         Text            =   "us.rr.efnet.net"
         Top             =   120
         Width           =   1335
      End
      Begin VB.Label lblUserID 
         BackColor       =   &H00800000&
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   120
         TabIndex        =   12
         Top             =   120
         Width           =   3615
      End
      Begin VB.Label Label3 
         BackColor       =   &H00800000&
         Caption         =   "Port:"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   6120
         TabIndex        =   6
         Top             =   120
         Width           =   495
      End
      Begin VB.Label Label2 
         BackColor       =   &H00800000&
         Caption         =   "Server:"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   3960
         TabIndex        =   4
         Top             =   120
         Width           =   615
      End
      Begin VB.Line Line1 
         X1              =   3840
         X2              =   3840
         Y1              =   120
         Y2              =   360
      End
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
'Created by BlackArchon
'This is filtering the basic stuff of IRC Data
'I have began v1.2 and its going to be the advanced string parsing
'IE: the 3 digit commands "320" "325" "001" which set values and give information
'those will be done pretty soon and posted.

Private Sub Form_Load()
Me.Height = 4470
AddList "Creation", "Citadel v1.1 (TM) created by BlackArchon (IRC)"
With Socket1 'Set our Socket to Listen on port 6666
    .LocalPort = (6666)
    .Listen
End With
AddList "Listening", "mIRC Socket Listening: [6666]"
End Sub

Private Sub Form_Resize()
If Me.WindowState = 0 Or Me.WindowState = 2 Then 'Fix resize so nothing gets screwed
    Me.Width = 7320
    Me.Height = 4470
End If
End Sub

Private Sub Socket2_Connect() 'We got connected
AddList "Connected", "Connected to IRC Server: " & Socket2.RemoteHost
End Sub

Private Sub Socket1_ConnectionRequest(ByVal requestID As Long)
AddList "Connecting", "Connection Request [" & requestID & "]"
If Socket1.State <> sckClosed Then Socket1.Close
Socket1.Accept (requestID) 'Grab request ID#
Socket2.RemotePort = txtPort.Text
Socket2.RemoteHost = txtServer.Text
Socket2.Connect
Do Until Socket2.State = sckConnected 'Wait till connected to further on
    DoEvents
Loop
End Sub

Private Sub Socket1_DataArrival(ByVal bytesTotal As Long)
Dim strDataOut As String
Socket1.GetData strDataOut, vbString 'Get incoming Data
Do Until Socket2.State = sckConnected 'Make sure we are connected so we don't error
    DoEvents
Loop

txtDataOut = txtDataOut & vbNewLine & strDataOut 'Add Data to TextBox
Select Case Mid(strDataOut, 1, 5) 'Look at first 5 Characters
    Case "USER "
        intChr(0) = InStr(1, strDataOut, " ") 'Get position of..
        strString(0) = Mid(strDataOut, Val(intChr(0)) + 1, Len(strDataOut) - 6) 'Take string
        AddList "User ID", strString(0) 'Show string
        lblUserID.Caption = (strString(0))
    Case "NICK "
        intChr(0) = InStr(1, strDataOut, " ")
        strString(0) = Mid(strDataOut, Val(intChr(0)) + 1, Len(strDataOut) - 6)
        AddList "User Host", "You have logged in as: " & strString(0)
        strUserName = strString(0)
    Case "PONG "
        intChr(0) = InStr(1, strDataOut, ":")
        strString(0) = Mid(strDataOut, Val(intChr(0)) + 1, Len(strDataOut) - 7)
        AddList "Ping Pong", "You have been Pinged [" & strString(0) & "]"
End Select

If Mid(strDataOut, 1, 7) = "NOTICE " Then 'check if notice is present
    intChr(0) = InStr(1, strDataOut, ":")
    Select Case Mid(strDataOut, Val(intChr(0)) + 1, 5) 'if present, look at 5 chr's
        Case "PING"
            strString(0) = Mid(strDataOut, 1, Val(intChr(0))) 'get string
            strString(1) = "PING " 'set string
            strString(2) = "Citadel [v1.1] Denied Ping Request" & Chr(1) & Chr(10) 'replace ping #'s
            strDataOut = strString(0) & strString(1) & strString(2) 'build string
        Case "TIME"
            strString(0) = Mid(strDataOut, 1, Val(intChr(0)))
            strString(1) = "TIME "
            strString(2) = "Citadel [v1.1] Denied Time Request" & Chr(1) & Chr(10)
            strDataOut = strString(0) & strString(1) & strString(2)
        Case "VERS"
            strString(0) = Mid(strDataOut, 1, Val(intChr(0)))
            strString(1) = "VERSION "
            strString(2) = "Citadel [v1.1] Denied Version Request" & Chr(1) & Chr(10)
            strDataOut = strString(0) & strString(1) & strString(2)
    End Select
End If

For intX = 0 To 3 'resetting our indexed variables
    strString(intX) = ""
    intChr(intX) = 0
Next intX
    
Socket2.SendData strDataOut
End Sub

Private Sub Socket2_DataArrival(ByVal bytesTotal As Long)
Dim strDataIn As String
Socket2.GetData strDataIn, vbString

txtDataIn = txtDataIn & vbNewLine & strDataIn
If Mid(strDataIn, 1, 7) = "ERROR :" Then 'If we got an error, show it and close it!
    strString(0) = Mid(strDataIn, 8, Len(strDataIn))
    MsgBox strString(0), vbExclamation, "Error - Closing"
    ResetSockets Socket1, Socket2: Exit Sub
End If

If InStr(1, strDataIn, "PRIVMSG " & strUserName & " :PING") Then 'basic finding string
    intChr(0) = InStr(1, strDataIn, "!") 'getting position
    strString(0) = Mid(strDataIn, 2, Val(intChr(0)) - 2) 'parsing string out
    intChr(1) = InStr(1, strDataIn, " ") 'more position
    intChr(2) = Val(intChr(1)) - Val(intChr(0)) 'mathmatics
    strString(1) = Mid(strDataIn, Val(intChr(0)) + 1, Val(intChr(2)) - 1) 'parsing more
    AddList "User Ping", "Pinged by: " & strString(0) & " [" & strString(1) & "]" 'showing string
End If

If InStr(1, strDataIn, "PRIVMSG " & strUserName & " :TIME") Then
    intChr(0) = InStr(1, strDataIn, "!")
    strString(0) = Mid(strDataIn, 2, Val(intChr(0)) - 2)
    intChr(1) = InStr(1, strDataIn, " ")
    intChr(2) = Val(intChr(1)) - Val(intChr(0))
    strString(1) = Mid(strDataIn, Val(intChr(0)) + 1, Val(intChr(2)) - 1)
    AddList "Request", "Time Request by: " & strString(0) & " [" & strString(1) & "]"
End If
    
If InStr(1, strDataIn, "PRIVMSG " & strUserName & " :VERSION") Then
    intChr(0) = InStr(1, strDataIn, "!")
    strString(0) = Mid(strDataIn, 2, Val(intChr(0)) - 2)
    intChr(1) = InStr(1, strDataIn, " ")
    intChr(2) = Val(intChr(1)) - Val(intChr(0))
    strString(1) = Mid(strDataIn, Val(intChr(0)) + 1, Val(intChr(2)) - 1)
    AddList "Request", "Version Request by: " & strString(0) & " [" & strString(1) & "]"
End If

For intX = 0 To 3
    strString(intX) = ""
    intChr(intX) = 0
Next intX

Socket1.SendData strDataIn
End Sub

Private Sub txtServer_DblClick()
    frmList.Show
End Sub
