VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form FrmMain 
   Caption         =   "Visual Tkinter of Python - cdhigh@sohu.com"
   ClientHeight    =   8130
   ClientLeft      =   60
   ClientTop       =   675
   ClientWidth     =   12960
   Icon            =   "MainForm.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   542
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   864
   StartUpPosition =   2  '��Ļ����
   Begin VisualTkinter.xpcmdbutton CmdAddUsrProperty 
      Height          =   375
      Left            =   2640
      TabIndex        =   12
      Top             =   840
      Width           =   6015
      _ExtentX        =   10610
      _ExtentY        =   661
      Caption         =   "����һ���Զ�������(&P)"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VisualTkinter.xpcmdbutton CmdRefsFormsList 
      Height          =   495
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   873
      Caption         =   "ˢ�´����б�(&R)"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin MSComctlLib.StatusBar stabar 
      Align           =   2  'Align Bottom
      Height          =   375
      Left            =   0
      TabIndex        =   15
      Top             =   7755
      Width           =   12960
      _ExtentX        =   22860
      _ExtentY        =   661
      Style           =   1
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   1
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
         EndProperty
      EndProperty
   End
   Begin VB.ComboBox cmbFrms 
      Height          =   300
      ItemData        =   "MainForm.frx":0CCA
      Left            =   120
      List            =   "MainForm.frx":0CCC
      Style           =   2  'Dropdown List
      TabIndex        =   5
      Top             =   840
      Width           =   2415
   End
   Begin VB.TextBox TxtTips 
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2775
      Left            =   120
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   7
      Top             =   4920
      Width           =   2415
   End
   Begin VB.ListBox LstComps 
      Height          =   3480
      Left            =   120
      TabIndex        =   6
      Top             =   1320
      Width           =   2415
   End
   Begin VisualTkinter.GridOcx LstCfg 
      Height          =   6372
      Left            =   2640
      TabIndex        =   8
      Top             =   1320
      Width           =   6012
      _ExtentX        =   10610
      _ExtentY        =   11245
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.TextBox TxtCode 
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   10.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   6372
      Left            =   8760
      MultiLine       =   -1  'True
      ScrollBars      =   3  'Both
      TabIndex        =   9
      Top             =   1320
      Width           =   4095
   End
   Begin VB.ComboBox cmbEditCombo 
      Height          =   276
      Left            =   6360
      TabIndex        =   13
      Text            =   "Combo1"
      Top             =   720
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.ComboBox cmbEditList 
      Height          =   276
      Left            =   7560
      Style           =   2  'Dropdown List
      TabIndex        =   14
      Top             =   720
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VisualTkinter.xpcmdbutton CmdOutput 
      Height          =   495
      Left            =   2760
      TabIndex        =   1
      Top             =   120
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   873
      Caption         =   "���ɴ���(&G)"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VisualTkinter.xpcmdbutton CmdClip 
      Height          =   495
      Left            =   5340
      TabIndex        =   2
      Top             =   120
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   873
      Caption         =   "������������(&C)"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VisualTkinter.xpcmdbutton CmdSaveFile 
      Height          =   495
      Left            =   7950
      TabIndex        =   3
      Top             =   120
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   873
      Caption         =   "���浽�ļ�(&F)"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VisualTkinter.xpcmdbutton CmdQuit 
      Cancel          =   -1  'True
      Height          =   495
      Left            =   10560
      TabIndex        =   4
      Top             =   120
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   873
      Caption         =   "�˳�(&Q)"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.Label lblCurPrjName 
      Caption         =   "��ǰ���̣�"
      Height          =   348
      Left            =   8760
      TabIndex        =   10
      Top             =   840
      Width           =   1692
   End
   Begin VB.Label lblWP 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000018&
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   348
      Left            =   10560
      TabIndex        =   11
      Top             =   840
      Width           =   2280
   End
   Begin VB.Menu mnuFile 
      Caption         =   "�ļ�(&F)"
      Begin VB.Menu mnuRefreshForms 
         Caption         =   "ˢ�´����б�(&R)"
         Shortcut        =   ^R
      End
      Begin VB.Menu mnuSeparator1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuGenCode 
         Caption         =   "���ɴ���(&G)"
         Shortcut        =   ^G
      End
      Begin VB.Menu mnuSeparator2 
         Caption         =   "-"
      End
      Begin VB.Menu mnuSaveConfig 
         Caption         =   "�������õ��ļ�(&S)"
         Enabled         =   0   'False
      End
      Begin VB.Menu mnuRestoreConfig 
         Caption         =   "���ļ��ָ�����(&L)"
         Enabled         =   0   'False
      End
      Begin VB.Menu mnuSeparator3 
         Caption         =   "-"
      End
      Begin VB.Menu mnuQuit 
         Caption         =   "�˳�(&Q)"
      End
   End
   Begin VB.Menu mnuOptions 
      Caption         =   "ѡ��(&O)"
      Begin VB.Menu mnuOopCode 
         Caption         =   "��������������(&P)"
         Checked         =   -1  'True
      End
      Begin VB.Menu mnuV2andV3Code 
         Caption         =   "����Python 2.x/3.x���ݴ���(&C)"
         Checked         =   -1  'True
      End
      Begin VB.Menu mnuUseTtk 
         Caption         =   "����TTK�����(&T)"
         Checked         =   -1  'True
      End
      Begin VB.Menu mnuRelPos 
         Caption         =   "ʹ���������(&R)"
         Checked         =   -1  'True
      End
      Begin VB.Menu mnuUnicodePrefixU 
         Caption         =   "Unicode�ַ�������ǰ׺u(&U)"
      End
      Begin VB.Menu mnuSeparator4 
         Caption         =   "-"
      End
      Begin VB.Menu mnuPythonExe 
         Caption         =   "����Python.exeλ��(&E)..."
      End
   End
   Begin VB.Menu mnuTools 
      Caption         =   "����(&T)"
      Begin VB.Menu mnuPreview 
         Caption         =   "����Ԥ��(&P)"
         Enabled         =   0   'False
         Shortcut        =   {F5}
      End
   End
   Begin VB.Menu mnuLanguage 
      Caption         =   "����(&L)"
      Begin VB.Menu mnuLng 
         Caption         =   "��������(&C)"
         Index           =   0
      End
   End
   Begin VB.Menu mnuChooseOut 
      Caption         =   "�����ļ�ѡ��"
      Visible         =   0   'False
      Begin VB.Menu mnuOutAll 
         Caption         =   "���ȫ������"
      End
      Begin VB.Menu mnuOutMainOnly 
         Caption         =   "�����main()����"
      End
      Begin VB.Menu mnuOutUiOnly 
         Caption         =   "���������������"
         Visible         =   0   'False
      End
   End
   Begin VB.Menu mnuChosseClip 
      Caption         =   "���������ѡ��"
      Visible         =   0   'False
      Begin VB.Menu mnuClipOutAll 
         Caption         =   "����ȫ������"
      End
      Begin VB.Menu mnuClipOutMainOnly 
         Caption         =   "������main()����"
      End
      Begin VB.Menu mnuClipOutUiOnly 
         Caption         =   "����������������"
         Visible         =   0   'False
      End
   End
End
Attribute VB_Name = "FrmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Public VBE As VBIDE.VBE
Public Connect As Connect

Private m_Comps() As Object             '��LstComps����һ���࣬��Ӧ��������ɵ�ʵ��
Private m_MainMenu As clsMenu              '�˵�����
Private m_PrevCompIdx As Long
Private m_curFrm As Object
Private m_prevsf As String
Private m_nLngNum As Long                   ' ��������
Private m_HasCommonDialog As Boolean
Private m_saTmpFile() As String
Private m_TxtCodeExpanded As Boolean
Private m_TxtTipsExpanded As Boolean

Const NAME_TOPWINDOW = "top"

'����Ϳؼ������л��ַ���������Ӧ���ַ�����������������ҺͶ�Ӧ
Const REGX_INC_FRM_S = "<<<HFS>>>"
Const REGX_INC_FRM_E = "<<<HFE>>>"
Const REGX_INC_CTL_S = "<<<CTS>>>"
Const REGX_INC_CTL_E = "<<<CTE>>>"
Const SEP_NAME_FROM_CONTENT = "<<<SNFC>>>"

Const REGX_PATTERN_FRM = REGX_INC_FRM_S & "(.*[\s\S\n\r\b]*?)" & REGX_INC_FRM_E
Const REGX_PATTERN_CTL = REGX_INC_CTL_S & "(.*[\s\S\n\r\b]*?)" & REGX_INC_CTL_E
Private Declare Function GetSystemDefaultLCID Lib "kernel32" () As Long

Private Sub Form_Load()
    
    Dim s As String
    
    '������֧��
    InitMultiLanguage
    
    LstCfg.Redraw = False
    LstCfg.Editable = True
    LstCfg.EditType = EnterKey Or MouseDblClick Or F2Key
    LstCfg.CheckBoxes = True
    LstCfg.AddColumn "Property", 2260, lgAlignCenterCenter
    LstCfg.AddColumn "Value", 3450, lgAlignCenterCenter
    LstCfg.ColAlignment(0) = lgAlignLeftCenter
    LstCfg.ColAlignment(1) = lgAlignLeftCenter
    LstCfg.SelectBackColor = &HFCC597 'vbHighlight
    LstCfg.Redraw = True
    
    CmdRefsFormsList_Click
    
    Me.Caption = "Visual Tkinter of Python - cdhigh@sohu.com - v" & App.Major & "." & App.Minor & IIf(App.Revision > 0, "." & App.Revision, "")
    
    mnuOopCode.Checked = GetSetting(App.Title, "Settings", "OopCode", "1") = "1"
    mnuV2andV3Code.Checked = GetSetting(App.Title, "Settings", "V2andV3Code", "1") = "1"
    mnuUseTtk.Checked = GetSetting(App.Title, "Settings", "UseTtk", "1") = "1"
    mnuRelPos.Checked = GetSetting(App.Title, "Settings", "RelPos", "1") = "1"
    mnuUnicodePrefixU.Checked = GetSetting(App.Title, "Settings", "UnicodePrefix", "0") = "1"
    g_bUnicodePrefixU = mnuUnicodePrefixU.Checked
    
    g_PythonExe = GetSetting(App.Title, "Settings", "PythonExe", "")
    
    m_HasCommonDialog = False
    m_TxtCodeExpanded = False
    m_TxtTipsExpanded = False
    
    ReDim m_saTmpFile(0) As String
    
    ResizeInit Me
    
    g_DefaultFontName = ""
    
End Sub

'������֧�ֳ�ʼ��
Private Sub InitMultiLanguage()
    
    Dim i As Long, s As String, sa() As String
    
    sa = GetAllLanguageName()
    mnuLng(0).Caption = sa(0)
    m_nLngNum = 1
    For i = 1 To UBound(sa)
        Load mnuLng(i)
        mnuLng(i).Caption = sa(i)
        m_nLngNum = m_nLngNum + 1
    Next
    
    '�л����ԣ�ע�������������ȣ���θ��ݲ���ϵͳѡ��
    s = GetSetting(App.Title, "Settings", "Language", "")
    i = m_nLngNum
    If Len(s) Then                                                              'ѡ��֮ǰ������������࣬������ڵĻ�
        For i = 0 To m_nLngNum - 1
            If mnuLng(i).Caption = s Then
                ChangeLanguage (mnuLng(i).Caption)
                mnuLng(i).Checked = True
                Exit For
            End If
        Next
    End If
    
    '�����жϲ���ϵͳ����
    If i > m_nLngNum - 1 Then
        
        i = GetSystemDefaultLCID()
        If i = &H804 Or i = &H4 Or i = &H1004 Then
            s = "��������"
        ElseIf i = &H404 Or i = &HC04 Then
            s = "���w����"
        ElseIf i Mod 16 = 9 Then
            s = "English"
        Else                                                                    '���������Ȱ�Ӣ�ﴦ��������������û���ѡ����ʵ�����
            s = "English"
        End If
        
        For i = 0 To m_nLngNum - 1
            If InStr(1, mnuLng(i).Caption, s) > 0 Then
                ChangeLanguage (mnuLng(i).Caption)
                mnuLng(i).Checked = True
                Exit For
            End If
        Next
        
        ' �޷��Զ�ȷ�����֣�Ĭ��ѡ���һ��
        If i > m_nLngNum - 1 Then
            ChangeLanguage (mnuLng(0).Caption)
            mnuLng(0).Checked = True
        End If
    End If
    
End Sub

Private Sub CmdQuit_Click()
    Connect.Hide
End Sub

Private Sub cmbFrms_Click()
    
    Dim frm As Object
    
    '���ҵ���Ӧ�Ĵ�������
    Set m_curFrm = Nothing
    If Len(cmbFrms.Text) Then
        For Each frm In VBE.ActiveVBProject.VBComponents
            If frm.Type = vbext_ct_VBForm And frm.Name = cmbFrms.Text Then
                Set m_curFrm = frm
                Exit For
            End If
        Next
    End If
    
    m_PrevCompIdx = -1
    
    '���ؼ���ӵ��б�
    If Not ResetLstComps(m_curFrm) Then
        LstComps.Clear
        LstCfg.Clear
        m_PrevCompIdx = -1
    Else
        LstComps.ListIndex = 0
        LstComps_Click
    End If
    
    If LstComps.ListCount > 0 Then
        CmdOutput.Enabled = True
        CmdClip.Enabled = True
        CmdSaveFile.Enabled = True
        CmdAddUsrProperty.Enabled = True
        mnuSaveConfig.Enabled = True
        mnuRestoreConfig.Enabled = True
        mnuGenCode.Enabled = True
    Else
        CmdOutput.Enabled = False
        CmdClip.Enabled = False
        CmdSaveFile.Enabled = False
        CmdAddUsrProperty.Enabled = False
        mnuSaveConfig.Enabled = False
        mnuRestoreConfig.Enabled = False
        mnuGenCode.Enabled = False
    End If
    
End Sub


'�����Զ�������
Private Sub CmdAddUsrProperty_Click()
    
    Dim s As String, sa() As String, nRow As Long, i As Long
    
    If LstCfg.ItemCount <= 0 Then Exit Sub
    
    s = InputBox(L("l_ProForAddAttr", "���������Ժ���ֵ�ԣ�ʹ��'����=ֵ'����ʽ�����磺x=20 ��\nע��Python�Ǵ�Сд���еġ�"), App.Title)
    s = Trim(s)
    If Len(s) <= 0 Then
        Exit Sub
    End If
    
    sa = Split(s, "=")
    If UBound(sa) < 1 Then Exit Sub
    
    ' �������������Ѿ����ڣ��򸲸�ԭ�е�ֵ
    sa(0) = Trim(sa(0))
    For i = 0 To LstCfg.ItemCount - 1
        If LstCfg.CellText(i, 0) = sa(0) Then
            LstCfg.CellText(i, 1) = Trim(sa(1))
            Exit For
        End If
    Next
    '����һ������
    If i >= LstCfg.ItemCount Then
        i = LstCfg.AddItem(Trim(sa(0)))
        LstCfg.CellText(i, 1) = Trim(sa(1))
    End If
    
    LstCfg.ItemChecked(i) = True
    UpdateCfgtoCls m_PrevCompIdx
    
End Sub

Private Sub CmdClip_Click()
    
    mnuClipOutMainOnly.Visible = Not mnuOopCode.Checked
    mnuClipOutUiOnly.Visible = mnuOopCode.Checked
    
    Me.PopupMenu mnuChosseClip
End Sub

'���¸����б�������Ӧ�Ŀؼ���ʵ��, ����false��ʾ��ʼ��ʧ��
Private Function ResetLstComps(frm As Object) As Boolean
    
    Dim Obj As Object, ObjClsModule As Object, i As Long, s As String, j As Long, nScaleWidth As Long, nScaleHeight As Long
    
    ResetLstComps = False
    If frm Is Nothing Then Exit Function
    
    LstComps.Clear
    Erase m_Comps
    Set m_MainMenu = Nothing
    
    '��������ʵ����Ϊ�б��һ��
    ReDim m_Comps(0) As Object
    Set m_Comps(0) = New clsForm
    
    '��ΪScaleX/ScaleYΪ��������з�����ֻ����������ת�������СΪ���ص�λ
    nScaleWidth = Round(ScaleX(frm.Properties("ScaleWidth"), frm.Properties("ScaleMode"), vbPixels))
    nScaleHeight = Round(ScaleY(frm.Properties("ScaleHeight"), frm.Properties("ScaleMode"), vbPixels))
    m_Comps(0).InitConfig frm, nScaleWidth, nScaleHeight
    m_Comps(0).Name = NAME_TOPWINDOW
    LstComps.AddItem m_Comps(0).Name & " (Form)"
    i = 1
    
    m_HasCommonDialog = False
    
    '���ؼ���ӵ��б���
    For Each Obj In frm.Designer.VBControls
        
        CreateObj Obj, ObjClsModule                                             '���ɶ�Ӧ��ģ��ʵ��
        
        If Not ObjClsModule Is Nothing Then
            
            '�����Զ���λת������Ҫ��InitConfig֮ǰ�������ֵ
            ObjClsModule.ScaleMode = frm.Properties("ScaleMode")
            
            '���������ڲ˵��ؼ����򴴽����˵��������˵��ؼ����������еĲ˵���
            If Obj.ClassName = "Menu" And m_MainMenu Is Nothing Then
                ReDim Preserve m_Comps(i) As Object
                Set m_MainMenu = New clsMenu
                Set m_Comps(i) = m_MainMenu
                LstComps.AddItem m_MainMenu.Name & " (MainMenu)"
                m_MainMenu.InitConfig
                i = i + 1
            End If
            
            '��ӿؼ����ؼ��б�
            ReDim Preserve m_Comps(i) As Object
            Set m_Comps(i) = ObjClsModule
            LstComps.AddItem Obj.Properties("Name") & " (" & Obj.ClassName & ")"
            
            '��ʼ�����ؼ���Ӧ����ģ�����
            If Obj.Container Is frm.Designer Then
                m_Comps(i).InitConfig Obj, frm.Properties("ScaleWidth"), frm.Properties("ScaleHeight")
                m_Comps(i).Parent = IIf(Obj.ClassName = "Menu", "MainMenu", NAME_TOPWINDOW)
            ElseIf Obj.Container.ClassName = "Menu" Then  '�Ӳ˵�
                m_Comps(i).InitConfig Obj, 0, 0
                m_Comps(i).Parent = Obj.Container.Properties("Name")
            Else
                On Error Resume Next
                nScaleWidth = Obj.Container.Properties("ScaleWidth")
                nScaleHeight = Obj.Container.Properties("ScaleHeight")
                If Err.Number Then                                     'Frame�͸�������������֧��ScaleWidth���ԣ���ʹ��Width����
                    nScaleWidth = Obj.Container.Properties("Width")
                    nScaleHeight = Obj.Container.Properties("Height")
                End If
                Err.Clear
                On Error GoTo 0
                m_Comps(i).InitConfig Obj, nScaleWidth, nScaleHeight
                m_Comps(i).Parent = Obj.Container.Properties("Name")
            End If
            
            i = i + 1
            ResetLstComps = True
        ElseIf Obj.ClassName = "CommonDialog" Then
            m_HasCommonDialog = True
        Else
            MsgBox L_F("l_msgCtlNotSupport", "��ǰ�ݲ�֧��'{0}'�ؼ�(�ؼ�����{1})\n\n���򽫲����ɴ˿ؼ��Ĵ��롣", Obj.ClassName, Obj.Properties("Name")), vbInformation, App.Title
        End If
    Next  'frm.Designer.VBControls
    
    '���ɲ˵������β�ι�ϵ��Ϊ���ɴ��뽨������
    '���ഢ�游������֣����ഢ���������������
    If Not m_MainMenu Is Nothing Then
        For i = 0 To UBound(m_Comps)
            If TypeName(m_Comps(i)) = "clsMenu" Then
                '�����еĶ���˵���ΪclsMenu���ӿؼ�
                For j = 0 To UBound(m_Comps)
                    If TypeName(m_Comps(j)) = "clsMenuItem" And m_Comps(j).Parent = "MainMenu" Then
                        m_Comps(i).AddChild m_Comps(j)
                    End If
                Next
            ElseIf TypeName(m_Comps(i)) = "clsMenuItem" Then
                '�Ӳ˵��п��ܻ����Ӳ˵�
                For j = 0 To UBound(m_Comps)
                    If TypeName(m_Comps(j)) = "clsMenuItem" And m_Comps(j).Parent = m_Comps(i).Name Then
                        m_Comps(i).AddChild m_Comps(j)
                    End If
                Next
            End If
        Next
    End If
    
End Function

'����һ���ؼ��ַ�ʵ������:����ctlobj:�ؼ�����clsobj:��Ӧ���ַ�������
Private Function CreateObj(ByRef ctlobj As Object, ByRef clsobj As Object) As Object
    
    Select Case ctlobj.ClassName:
        Case "Label"
            Set clsobj = New clsLabel
        Case "CommandButton"
            Set clsobj = New clsButton
        Case "TextBox"
            If ctlobj.Properties("MultiLine") Then Set clsobj = New clsText Else Set clsobj = New clsEntry
        Case "CheckBox"
            Set clsobj = New clsCheckbutton
        Case "OptionButton"
            Set clsobj = New clsRadiobutton
        Case "ComboBox"
            Set clsobj = New clsComboboxAdapter
        Case "ListBox"
            Set clsobj = New clsListbox
        Case "HScrollBar", "VScrollBar"
            Set clsobj = New clsScrollbar
        Case "Slider"
            Set clsobj = New clsScale
        Case "Frame"
            Set clsobj = New clsLabelFrame
        Case "PictureBox"
            Set clsobj = New clsCanvas
        Case "Menu"
            Set clsobj = New clsMenuItem
        Case "ProgressBar"
            Set clsobj = New clsProgressBar                                         '��Ҫ����TTK��֧��
            mnuUseTtk.Checked = True
        Case "TreeView"
            Set clsobj = New clsTreeview                                            '��Ҫ����TTK��֧��
            mnuUseTtk.Checked = True
        Case "TabStrip"
            Set clsobj = New clsNotebook                                            '��Ҫ����TTK��֧��
            mnuUseTtk.Checked = True
        Case "StatusBar"
            Set clsobj = New clsStatusbar
        Case Else:
            Set clsobj = Nothing
    End Select
    
    Set CreateObj = clsobj
    
End Function

Private Sub CmdOutput_Click()
    
    Dim i As Long, o As Object
    Dim strHead As New cStrBuilder, strOut As New cStrBuilder, strCmd As New cStrBuilder, s As String
    Dim OutOnlyV3 As Boolean, OutOOP As Boolean, OutRelPos As Boolean, usettk As Boolean
    Dim bUnicodePrefix As Boolean  '��ʱ����UNICODEǰ׺��ʽ
    
    If LstComps.ListCount = 0 Or LstCfg.ItemCount = 0 Then Exit Sub
    
    On Error Resume Next
    s = m_curFrm.Name
    If Err.Number Then
        If MsgBox(L("l_msgGetAttrOfFrmFailed", "��ȡ��������ʧ�ܣ���ӦVB�����Ѿ��رգ�\n������ˢ�´����б�����´򿪹������ԡ�" & _
            "\n��������ˢ�´����б���"), vbInformation + vbYesNo) = vbYes Then
            CmdRefsFormsList_Click
        End If
        Exit Sub
    End If
    Err.Clear
    On Error GoTo 0
    
    OutOnlyV3 = Not mnuV2andV3Code.Checked
    OutOOP = mnuOopCode.Checked
    OutRelPos = mnuRelPos.Checked
    usettk = mnuUseTtk.Checked
    
    '��������
    If Not OutRelPos Then
        '���ʹ�þ������꣬��֧��Frame�ؼ�
        For Each o In m_curFrm.Designer.VBControls
            If o.ClassName = "Frame" Then
                MsgBox L("l_msgFrameNotSupportInAbs", "�������겼�ֲ�֧��Frame�ؼ����������������ȥ��Frame�ؼ���"), vbInformation
                Exit Sub
            End If
        Next
    End If
    
    bUnicodePrefix = g_bUnicodePrefixU '���ݴ棬�ں������ָ�
    If OutOnlyV3 Then
        g_bUnicodePrefixU = False  'V3ģʽ�²���Ҫ�κ�ǰ׺
    End If
    
    '���������ǰ�ȸ���һ�µ�ǰ��ʾ������
    UpdateCfgtoCls LstComps.ListIndex
    
    strHead.Append "#!/usr/bin/env python"
    strHead.Append "#-*- coding:utf-8 -*-" & vbCrLf
    strHead.Append "import os, sys"
    
    If OutOnlyV3 Then                                                           '��������PYTHON 3.X�Ĵ���
        strHead.Append "from tkinter import *"
        strHead.Append "from tkinter.font import Font"
        If usettk Then strHead.Append "from tkinter.ttk import *"
        strHead.Append "#Usage:showinfo/warning/error,askquestion/okcancel/yesno/retrycancel"
        strHead.Append "from tkinter.messagebox import *"
        strHead.Append "#Usage:f=tkFileDialog.askopenfilename(initialdir='E:/Python')"
        strHead.Append IIf(m_HasCommonDialog, "", "#") & "import tkinter.filedialog as tkFileDialog"
        strHead.Append IIf(m_HasCommonDialog, "", "#") & "import tkinter.simpledialog as tkSimpleDialog  #askstring()"
        If m_HasCommonDialog Then
            strHead.Append "import tkinter.colorchooser as tkColorChooser  #askcolor()"
        End If
        strHead.Append vbCrLf
    Else
        strHead.Append "try:"
        strHead.Append "    from tkinter import *"
        strHead.Append "except ImportError:  #Python 2.x"
        strHead.Append "    PythonVersion = 2"
        strHead.Append "    from Tkinter import *"
        strHead.Append "    from tkFont import Font"
        If usettk Then
            strHead.Append "    from ttk import *"
        End If
        strHead.Append "    #Usage:showinfo/warning/error,askquestion/okcancel/yesno/retrycancel"
        strHead.Append "    from tkMessageBox import *"
        strHead.Append "    #Usage:f=tkFileDialog.askopenfilename(initialdir='E:/Python')"
        strHead.Append "    " & IIf(m_HasCommonDialog, "", "#") & "import tkFileDialog"
        strHead.Append "    " & IIf(m_HasCommonDialog, "", "#") & "import tkSimpleDialog"
        If m_HasCommonDialog Then
            strHead.Append "    import tkColorChooser  #askcolor()"
        End If
        strHead.Append "else:  #Python 3.x"
        strHead.Append "    PythonVersion = 3"
        strHead.Append "    from tkinter.font import Font"
        If usettk Then
            strHead.Append "    from tkinter.ttk import *"
        End If
        strHead.Append "    from tkinter.messagebox import *"
        strHead.Append "    " & IIf(m_HasCommonDialog, "", "#") & "import tkinter.filedialog as tkFileDialog"
        strHead.Append "    " & IIf(m_HasCommonDialog, "", "#") & "import tkinter.simpledialog as tkSimpleDialog    #askstring()"
        If m_HasCommonDialog Then
            strHead.Append "    import tkinter.colorchooser as tkColorChooser  #askcolor()"
        End If
        strHead.Append vbCrLf
    End If
    
    '�������״̬���ؼ����������״̬���ؼ����ඨ��
    For i = 1 To UBound(m_Comps)  '0�̶�Ϊ���壬�����ж�
        If TypeName(m_Comps(i)) = "clsStatusbar" Then
            strHead.Append m_Comps(i).WidgetCode()
            Exit For
        End If
    Next
    
    If OutOOP Then
        strCmd.Append vbCrLf
        strCmd.Append "class Application(Application_ui):"
        strCmd.Append "    " & L("l_cmtClsApp", "#�����ʵ�־�����¼�����ص��������������ɴ�����Application_ui�С�")
        strCmd.Append "    def __init__(self, master=None):"
        strCmd.Append "        Application_ui.__init__(self, master)" & vbCrLf
        
        strOut.Append "class Application_ui(Frame):"
        strOut.Append "    " & L("l_cmtClsUi", "#������ʵ�ֽ������ɹ��ܣ������¼��������������Application�С�")
        strOut.Append "    def __init__(self, master=None):"
        strOut.Append "        Frame.__init__(self, master)"
        strOut.Append m_Comps(0).toString(strCmd, OutRelPos, OutOOP, usettk)  'm_Comps(0)�̶���Form
        strOut.Append "        self.createWidgets()" & vbCrLf
        strOut.Append "    def createWidgets(self):"
        strOut.Append "        self." & NAME_TOPWINDOW & " = self.winfo_toplevel()" & vbCrLf
        If usettk Then strOut.Append "        self.style = Style()" & vbCrLf
    Else
        strHead.Append L("l_cmtgComps", "#���пؼ��Ϳؼ��󶨱��������ֵ䣬ʹ������ֵ���Ϊ�˷����������������������пؼ���")
        strHead.Append "gComps = {}"
        strHead.Append vbCrLf & vbCrLf
        
        strOut.Append vbCrLf
        strOut.Append "def main(argv):"
        strOut.Append m_Comps(0).toString(strCmd, OutRelPos, OutOOP, usettk)  'm_Comps(0)�̶���Form
        If usettk Then
            strOut.Append "    style = Style()"
            strOut.Append "    gComps['style'] = style" & vbCrLf
        End If
    End If
    
    '�������ؼ����ɸ��ؼ��Լ�����Լ��Ľ������ɴ���
    'Ϊ�˱�֤�����ؼ��������ڲ��Ŀؼ����ɣ����������Ƕ��㴰�ڵĿؼ����зŵ��������
    For i = 1 To UBound(m_Comps)
        If m_Comps(i).Parent = NAME_TOPWINDOW And TypeName(m_Comps(i)) <> "clsMenuItem" Then ' clsMenuItem��clsMenu����
            strOut.Append m_Comps(i).toString(strCmd, OutRelPos, OutOOP, usettk) & vbCrLf
        End If
    Next
    For i = 1 To UBound(m_Comps)
        If m_Comps(i).Parent <> NAME_TOPWINDOW And TypeName(m_Comps(i)) <> "clsMenuItem" Then
            strOut.Append m_Comps(i).toString(strCmd, OutRelPos, OutOOP, usettk) & vbCrLf
        End If
    Next
    
    '������ı���
    If OutOOP Then
        strCmd.Append "if __name__ == ""__main__"":"
        strCmd.Append "    " & NAME_TOPWINDOW & " = Tk()"
        strCmd.Append "    Application(" & NAME_TOPWINDOW & ").mainloop()"
        strCmd.Append "    try: " & NAME_TOPWINDOW & ".destroy()"
        strCmd.Append "    except: pass" & vbCrLf
        TxtCode.Text = strHead.toString(vbCrLf) & strOut.toString(vbCrLf) & strCmd.toString(vbCrLf)
    Else
        strOut.Append "    " & NAME_TOPWINDOW & ".mainloop()"
        strOut.Append "    try: " & NAME_TOPWINDOW & ".destroy()"
        strOut.Append "    except: pass"
        strOut.Append vbCrLf & vbCrLf
        strOut.Append "if __name__ == ""__main__"":"
        strOut.Append "    main(sys.argv)" & vbCrLf
        TxtCode.Text = strHead.toString(vbCrLf) & strCmd.toString(vbCrLf) & strOut.toString(vbCrLf)
    End If
    
    strOut.Reset
    strHead.Reset
    strCmd.Reset
    
    g_bUnicodePrefixU = bUnicodePrefix    '�ָ�UNICODEǰ׺ģʽ
    
End Sub

Private Sub CmdRefsFormsList_Click()
    
    Dim frm As Object
    
    cmbFrms.Clear
    LstComps.Clear
    LstCfg.Clear
    
    If VBE.ActiveVBProject Is Nothing Then
        CmdOutput.Enabled = False
        CmdClip.Enabled = False
        CmdSaveFile.Enabled = False
        CmdAddUsrProperty.Enabled = False
        mnuSaveConfig.Enabled = False
        mnuRestoreConfig.Enabled = False
        mnuGenCode.Enabled = False
        lblWP.Caption = ""
        Exit Sub
    End If
    
    lblWP.Caption = VBE.ActiveVBProject.Name
    
    '���ҹ��������еĴ���,ȫ����ӵ���Ͽ�ѡ�����
    For Each frm In VBE.ActiveVBProject.VBComponents
        If frm.Type = vbext_ct_VBForm Then
            If frm.Properties("ScaleMode") <> vbTwips And frm.Properties("ScaleMode") <> vbPoints And frm.Properties("ScaleMode") <> vbPixels Then
                MsgBox L_F("l_msgFailedScaleMode", "���ҵ�����'{0}'������ScaleMode={1}�������֧��ģʽ1/2/3��", _
                         frm.Properties("Name"), frm.Properties("ScaleMode")), vbInformation
            Else
                cmbFrms.AddItem frm.Name
            End If
        End If
    Next
    
    If cmbFrms.ListCount >= 1 Then
        cmbFrms.ListIndex = 0      '����cmbFrms_Click
    Else
        CmdOutput.Enabled = False
        CmdClip.Enabled = False
        CmdSaveFile.Enabled = False
        CmdAddUsrProperty.Enabled = False
        mnuSaveConfig.Enabled = False
        mnuRestoreConfig.Enabled = False
        mnuGenCode.Enabled = False
    End If
    
End Sub

Private Sub CmdSaveFile_Click()
    
    mnuOutMainOnly.Visible = Not mnuOopCode.Checked
    mnuOutUiOnly.Visible = mnuOopCode.Checked
    
    Me.PopupMenu mnuChooseOut
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
    Dim i As Long
    If TxtCode.Width = Me.ScaleWidth Then
        TxtCode_DblClick
        Cancel = True
    ElseIf TxtTips.Width = Me.ScaleWidth Then
        TxtTips_DblClick
        Cancel = True
    ElseIf UBound(m_saTmpFile) > 0 Then 'ɾ������Ԥ������ʱ�ļ�
        On Error Resume Next
        For i = 0 To UBound(m_saTmpFile)
            If Len(m_saTmpFile(i)) Then
                Kill m_saTmpFile(i)
            End If
        Next
        On Error GoTo 0
        ReDim m_saTmpFile(0) As String
    End If
End Sub

Private Sub Form_Resize()
    
    Dim sLstCfgWidth As Single
    
    If Me.WindowState = vbMinimized Then
        Exit Sub
    End If
    
    If m_TxtCodeExpanded Then
        TxtCode_DblClick
    ElseIf m_TxtTipsExpanded Then
        TxtTips_DblClick
    End If
    
    If Me.Width < 9000 Then Me.Width = 9000
    If Me.Height < 6750 Then Me.Height = 6750
    
    If LstCfg.ItemCount > 0 Then LstCfg.TopRow = 0  '��ܴ˿ؼ���һ��BUG�����BUG���ܻᵼ�²�����Ŀ��ʾ��ȫ
    
    ResizeForm Me
    
    '���������б����п��
    sLstCfgWidth = GetOrignalWidth(LstCfg)
    If LstCfg.Width < sLstCfgWidth Then
        LstCfg.ColWidth(0) = 2260
        LstCfg.ColWidth(1) = 3450
    ElseIf sLstCfgWidth > 1 Then 'ȷ�Ͽ��ֵ��Ч
        LstCfg.ColWidth(0) = 2260 * LstCfg.Width / sLstCfgWidth
        LstCfg.ColWidth(1) = 3450 * LstCfg.Width / sLstCfgWidth
    End If
    
End Sub

Private Sub lblWP_Click()
    MsgBox L("l_msgCtlsSupported", "֧�ֿؼ��б�") & vbCrLf & "Menu, Label, TextBox, PictureBox, Frame, CommandButton, CheckBox, OptionButton, " & vbCrLf & _
    "ComboBox, ListBox, HScrollBar, VScrollBar, Slider, ProgressBar, TreeView, StatusBar, CommonDialog"
End Sub

Private Sub LstCfg_ItemChecked(Row As Long)
    If InStr(1, " x, y, relx, rely, width, height, relwidth, relheight,", " " & LstCfg.CellText(Row, 0) & ",") Then
        LstCfg.ItemChecked(Row) = True
    End If
    
    '�����б��е���ֵ��ʵ�����������
    UpdateCfgtoCls m_PrevCompIdx
    
End Sub

Private Sub LstCfg_RequestEdit(ByVal Row As Long, ByVal Col As Long, Cancel As Boolean)
    
    '�Զ�������������ѡ������ڿ�ѡ�б�ʱ���������б���ѡ�񣬷����л����ı���
    FillcmbEdit Row, Col
    
    If Col = 0 Or InStr(1, " x, y, relx, rely, width, height, relwidth, relheight, ", " " & LstCfg.CellText(Row, 0) & ",") Then Cancel = True
End Sub

Private Sub LstCfg_RequestUpdate(ByVal Row As Long, ByVal Col As Long, NewValue As String, Cancel As Boolean)
    If NewValue <> "" Then
        LstCfg.ItemChecked(Row) = True
    End If
End Sub

Private Sub LstCfg_RowColChanged()
    If LstComps.ListIndex >= 0 Then
        TxtTips.Text = m_Comps(LstComps.ListIndex).Tips(LstCfg.CellText(LstCfg.Row, 0))
    End If
End Sub

Private Sub LstComps_Click()
    
    Dim ctl As Object, s As String
    
    If LstComps.ListCount = 0 Or LstComps.ListIndex < 0 Then Exit Sub
    
    On Error Resume Next
    s = m_curFrm.Name
    If Err.Number Then
        If MsgBox(L("l_msgGetAttrOfFrmFailed", "��ȡ��������ʧ�ܣ���ӦVB�����Ѿ��رգ�\n������ˢ�´����б�����´򿪹������ԡ�" & _
            "\n��������ˢ�´����б���"), vbInformation + vbYesNo) = vbYes Then
            CmdRefsFormsList_Click
        End If
        Exit Sub
    End If
    Err.Clear
    On Error GoTo 0
    
    '�����б��е���ֵ��ʵ������
    UpdateCfgtoCls m_PrevCompIdx
    
    FetchCfgFromCls LstComps.ListIndex
    
    m_PrevCompIdx = LstComps.ListIndex
    
    '��ʾ�ؼ�����
    TxtTips.Text = m_Comps(LstComps.ListIndex).Description
    
    'ѡ���Ӧ�Ŀؼ�
    m_curFrm.Designer.SelectedVBControls.Clear
    For Each ctl In m_curFrm.Designer.VBControls
        If ctl.Properties("Name") = Left(LstComps.List(LstComps.ListIndex), InStr(1, LstComps.List(LstComps.ListIndex), " ") - 1) Then
            ctl.InSelection = True
            Exit For
        End If
    Next
    
End Sub

'�ڶ����л�ȡ������Ϣ���б��
Private Sub FetchCfgFromCls(idx As Long)
    
    Dim nRow As Long, cfg As Variant, cItms As Collection
    
    If idx < 0 Or idx > UBound(m_Comps) Then Exit Sub
    
    LstCfg.Redraw = False
    If LstCfg.ItemCount > 0 Then LstCfg.TopRow = 0  '���������Ϊ�˹��GridOcx�Ĺ�����BUG�������л��ؼ����в�����Ŀ�޷�������ʾ
    LstCfg.Clear
    Set cItms = m_Comps(idx).Allitems()
    For Each cfg In cItms
        nRow = LstCfg.AddItem(Left(cfg, InStr(1, cfg, "|") - 1))
        LstCfg.CellText(nRow, 1) = Mid(cfg, InStr(1, cfg, "|") + 1, InStrRev(cfg, "|") - InStr(1, cfg, "|") - 1)
        LstCfg.ItemChecked(nRow) = CLng(Mid(cfg, InStrRev(cfg, "|") + 1))
    Next
    LstCfg.Redraw = True
    
End Sub

'�������õ�ʵ������,idx��ʾ��ǰ��LstCfg����ʾ�������������ĸ��ؼ��ġ�
Private Sub UpdateCfgtoCls(idx As Long)
    Dim s As String, i As Long
    
    If idx < 0 Or idx > UBound(m_Comps) Then Exit Sub
    
    s = ""
    For i = 0 To LstCfg.ItemCount - 1
        If LstCfg.ItemChecked(i) Then
            s = s & IIf(i > 0, "|", "") & LstCfg.CellText(i, 0) & "|" & LstCfg.CellText(i, 1)
        End If
    Next
    
    If Len(s) Then m_Comps(idx).SetConfig s
    
End Sub

Private Sub mnuClipOutAll_Click()
    Clipboard.Clear
    Clipboard.SetText TxtCode.Text
End Sub

Private Sub mnuClipOutMainOnly_Click()
    
    Dim s As String, nm As Long, nf As Long
    
    '�������룬����ȡmain(),ʹ��������ʽҲ���ԣ���������ʹ�ü��ַ�������
    s = TxtCode.Text
    nm = InStr(1, s, "def main(argv):")
    nf = InStr(1, s, "if __name__")
    If nm > 0 And nf > 0 Then
        Clipboard.Clear
        Clipboard.SetText Mid(s, nm, nf - nm)
    Else
        MsgBox L("l_msgNoMain", "�������Ҳ���main()������"), vbInformation
    End If
    
End Sub

Private Sub mnuClipOutUiOnly_Click()
    
    Dim s As String, nui As Long, napp As Long
    
    '�������룬����ȡApplication_ui(),ʹ��������ʽҲ���ԣ���������ʹ�ü��ַ�������
    s = TxtCode.Text
    nui = InStr(1, s, "class Application_ui(Frame):")
    napp = InStr(1, s, "class Application(Application_ui):")
    If nui > 0 And napp > 0 Then
        Clipboard.Clear
        Clipboard.SetText Mid(s, nui, napp - nui)
    Else
        MsgBox L("l_msgNoClsUi", "�������Ҳ���Application_ui�࣡"), vbInformation
    End If
    
End Sub

Private Sub mnuFile_Click()
    mnuSaveConfig.Enabled = LstComps.ListCount > 0
    mnuRestoreConfig.Enabled = LstComps.ListCount > 0
    mnuGenCode.Enabled = LstComps.ListCount > 0
End Sub

Private Sub mnuGenCode_Click()
    CmdOutput_Click
End Sub

Private Sub mnuLng_Click(Index As Integer)
    
    Dim i As Long
    
    For i = 0 To m_nLngNum - 1
        mnuLng(i).Checked = False
    Next
    
    mnuLng(Index).Checked = True
    SaveSetting App.Title, "Settings", "Language", mnuLng(Index).Caption
    
    ChangeLanguage (mnuLng(Index).Caption)
    
End Sub

Private Sub mnuOopCode_Click()
    mnuOopCode.Checked = Not mnuOopCode.Checked
    SaveSetting App.Title, "Settings", "OopCode", IIf(mnuOopCode.Checked, "1", "0")
End Sub

Private Sub mnuOutAll_Click()
    
    Dim sF As String
    sF = FileDialog(Me, True, L("l_fdSave", "��Python�ļ����浽��"), "*.py", m_prevsf)
    
    If Len(sF) Then
        If Len(FileExt(sF)) = 0 Then sF = sF & ".py"  '����ļ���û����չ�����Զ����.py��չ��
        Utf8File_Write_VB sF, TxtCode.Text
    End If
    
    m_prevsf = sF
    
End Sub

'�����main()����������֮ǰ�Ѿ����ÿ�ܣ�����Ҳд��һЩ���룬�����޸Ŀռ䲼�֣�����Ӱ����������
Private Sub mnuOutMainOnly_Click()
    
    Dim sF As String, s As String, nm As Long, nf As Long
    
    '�������룬����ȡmain(),ʹ��������ʽҲ���ԣ���������ʹ�ü��ַ�������
    s = TxtCode.Text
    nm = InStr(1, s, "def main(argv):")
    nf = InStr(1, s, "if __name__")
    If nm > 0 And nf > 0 Then
        sF = FileDialog(Me, True, L("l_fdSave", "��Python�ļ����浽��"), "*.py", m_prevsf)
        If Len(sF) Then
            If Len(FileExt(sF)) = 0 Then sF = sF & ".py"  '����ļ���û����չ�����Զ����.py��չ��
            Utf8File_Write_VB sF, Mid(s, nm, nf - nm)
        End If
    Else
        MsgBox L("l_msgNoMain", "�������Ҳ���main()������"), vbInformation
    End If
    
    m_prevsf = sF
    
End Sub

'��������������࣬����֮ǰ�Ѿ����ÿ�ܣ�����Ҳд��һЩ���룬�����޸Ŀռ䲼�֣�����Ӱ����������
Private Sub mnuOutUiOnly_Click()
    
    Dim sF As String, s As String, nui As Long, napp As Long
    
    '�������룬����ȡmain(),ʹ��������ʽҲ���ԣ���������ʹ�ü��ַ�������
    s = TxtCode.Text
    nui = InStr(1, s, "class Application_ui(Frame):")
    napp = InStr(1, s, "class Application(Application_ui):")
    If nui > 0 And napp > 0 Then
        sF = FileDialog(Me, True, "��Python�ļ����浽��", "*.py", m_prevsf)
        If Len(sF) Then
            If Len(FileExt(sF)) = 0 Then sF = sF & ".py"  '����ļ���û����չ�����Զ����.py��չ��
            Utf8File_Write_VB sF, Mid(s, nui, napp - nui)
        End If
    Else
        MsgBox L("l_msgNoClsUi", "�������Ҳ���Application_ui�࣡"), vbInformation
    End If
    
    m_prevsf = sF
    
End Sub

Private Sub mnuPreview_Click()
    
    Dim bExeExisted As Boolean, sTmpFile As String
    
    '�����ж�PYTHONEXE�Ƿ����
    If Len(g_PythonExe) = 0 Then
        mnuPythonExe_Click
    ElseIf Dir(g_PythonExe) = "" Then
        g_PythonExe = ""
        mnuPythonExe_Click  '���û������python.exeλ�ã����ȴ����ý����������
    Else
        bExeExisted = True
    End If
    
    'ǰ�����ú���ȷ���Ƿ���ȷ������ȷ���˳�
    If Not bExeExisted And Len(g_PythonExe) = 0 Then
        Exit Sub
    End If
    
    '����һ����ʱ�ļ�
    sTmpFile = CreateTempFile("vt")
    If Len(sTmpFile) Then
        '�ݴ���ʱ�ļ�������ADDIN�˳�ʱȫ��ɾ��
        ReDim Preserve m_saTmpFile(UBound(m_saTmpFile) + 1) As String
        m_saTmpFile(UBound(m_saTmpFile)) = sTmpFile
        
        Utf8File_Write_VB sTmpFile, TxtCode.Text
        Shell Chr(34) & g_PythonExe & """ """ & sTmpFile & Chr(34)
    Else
        MsgBox L("l_msgCreateTempFileFailed", "������ʱ�ļ�ʧ�ܣ�"), vbInformation
    End If
    
End Sub

Private Sub mnuPythonExe_Click()
    Dim sExe As String, sExes() As String, i As Long
    
    Load frmOption
    
    '��ϵͳ�������Ѿ���װ��Python����ӵ���Ͽ����ṩѡ��
    frmOption.cmbPythonExe.Clear
    sExes = GetAllInstalledPython()
    If UBound(sExes) >= 0 Then
        For i = 0 To UBound(sExes)
            frmOption.cmbPythonExe.AddItem sExes(i)
        Next
    End If
    
    '��ע����ж�ȡ���������
    sExe = GetSetting(App.Title, "Settings", "PythonExe", "")
    If Len(sExe) > 0 Then
        If Dir(sExe) = "" Then
            sExe = ""
        End If
    End If
    
    If Len(sExe) Then
        frmOption.cmbPythonExe.Text = sExe
    ElseIf frmOption.cmbPythonExe.ListCount > 0 Then
        frmOption.cmbPythonExe.ListIndex = 0
    End If
    
    frmOption.Show vbModal  '��frmOption�����л�����g_PythonExe���������浽ע���
    
End Sub

Private Sub mnuQuit_Click()
    Connect.Hide
End Sub

Private Sub mnuRefreshForms_Click()
    CmdRefsFormsList_Click
End Sub

Private Sub mnuRelPos_Click()
    
    Dim o As Object
    
    mnuRelPos.Checked = Not mnuRelPos.Checked
    
    '��������
    If Not mnuRelPos.Checked And Not m_curFrm Is Nothing Then
        '���ʹ�þ������꣬��֧��Frame�ؼ�
        For Each o In m_curFrm.Designer.VBControls
            If o.ClassName = "Frame" Then
                MsgBox L("l_msgFrameNotSupportInAbs", "�������겼�ֲ�֧��Frame�ؼ����������������ȥ��Frame�ؼ���"), vbInformation
                mnuRelPos.Checked = True
                Exit For
            End If
        Next
    End If
    
    SaveSetting App.Title, "Settings", "RelPos", IIf(mnuRelPos.Checked, "1", "0")
End Sub

'���ļ��лָ�����
Private Sub mnuRestoreConfig_Click()
    
    Dim cSerial As New clsSerialization
    Dim sIn As String, i As Long, s As String, sF As String
    Dim re As RegExp, Matches As MatchCollection, Mth As Match
    Dim csa() As String
    
    If Len(cmbFrms.Text) = 0 Or LstComps.ListCount = 0 Or LstCfg.ItemCount = 0 Then
        MsgBox L("l_msgChooseAForm", "����ѡ��һ�����壡"), vbInformation
        Exit Sub
    End If
    
    '�ж��Ƿ�װ��������ʽ���VBScript.dll
    On Error Resume Next
    Set re = New RegExp
    If Err.Number <> 0 Then
        MsgBox L("l_msgNoRegExp", "ϵͳû��ע��VBScript.dll������ʽ������޷�ִ�д˹��ܣ�"), vbInformation
        mnuRestoreConfig.Enabled = False
        mnuSaveConfig.Enabled = False
        Exit Sub
    End If
    Err.Clear
    
    sF = m_curFrm.FileNames(1) & ".save"
    
    On Error GoTo 0
    
    If sF = "" Or sF = ".save" Then
        MsgBox L("l_msgFrmNoSaved", "��ƴ�����δ���棬���ȱ�����ƴ��塣"), vbInformation
        Exit Sub
    End If
    
    If Len(Dir(sF)) = 0 Then
        MsgBox L_F("l_msgFileNotExist", "{0} �ļ������ڣ�", sF), vbInformation
        Exit Sub
    End If
    
    sIn = Utf8File_Read_VB(sF)
    
    re.MultiLine = True
    re.Global = True
    
    'On Error Resume Next
    're.Pattern = REGX_PATTERN_FRM
    'Set Matches = re.Execute(sIn)
    'Set Mth = Matches(0)
    'cSerial.SerialString = Mth.SubMatches(0)
    'cSerial.Deserializer m_curFrm.Caption, m_curFrm.ScaleWidth, m_curFrm.ScaleHeight
    
    re.Pattern = REGX_PATTERN_CTL
    Set Matches = re.Execute(sIn)
    For Each Mth In Matches
        csa = Split(Mth, SEP_NAME_FROM_CONTENT)
        csa(0) = Replace(csa(0), REGX_INC_CTL_S, "")
        csa(1) = Replace(csa(1), REGX_INC_CTL_E, "")
        For i = 0 To UBound(m_Comps)
            If m_Comps(i).Name = csa(0) Then
                cSerial.SerialString = csa(1)
                cSerial.Deserializer m_Comps(i)
                Exit For
            End If
        Next
    Next
    
    '���⸲�ǣ��Ȼ�ȡ��һ���ؼ����ݵ����
    FetchCfgFromCls 0
    m_PrevCompIdx = 0
    LstComps.ListIndex = 0
    
    Set re = Nothing
    
    MsgBox L_F("l_msgRestoreCfgSuccesed", "�Ѿ��ɹ����ļ�\n{0}\n�ָ��Զ������ã�", sF), vbInformation
    
End Sub

'���浱ǰ���õ�����ͬ���ļ�
Private Sub mnuSaveConfig_Click()
    
    Dim sOut As New cStrBuilder, i As Long, s As String, sF As String
    Dim cSerial As New clsSerialization
    
    On Error Resume Next
    sF = m_curFrm.FileNames(1) & ".save"
    On Error GoTo 0
    
    If sF = "" Or sF = ".save" Then
        MsgBox L("l_msgFrmNoSaved", "��ƴ�����δ���棬���ȱ�����ƴ��塣"), vbInformation
        Exit Sub
    End If
    
    If Len(cmbFrms.Text) = 0 Or LstComps.ListCount = 0 Or LstCfg.ItemCount = 0 Then
        MsgBox L("l_msgHasNoCfgToSave", "��ǰû�п��Ա�������ã�"), vbInformation
        Exit Sub
    End If
    
    '�ȱ�������������
    'sOut.Append REGX_INC_FRM_S
    'cSerial.Serializer m_curFrm.Caption, m_curFrm.ScaleWidth, m_curFrm.ScaleHeight
    'sOut.Append cSerial.SerialString()
    'sOut.Append REGX_INC_FRM_E
    
    For i = 0 To UBound(m_Comps)
        sOut.Append REGX_INC_CTL_S
        sOut.Append m_Comps(i).Name
        sOut.Append SEP_NAME_FROM_CONTENT
        
        cSerial.Reset
        cSerial.Serializer m_Comps(i)
        
        sOut.Append cSerial.SerialString()
        sOut.Append REGX_INC_CTL_E
    Next
    
    '���浽�ļ�
    Utf8File_Write_VB sF, sOut.toString()
    MsgBox L_F("l_msgCfgSaved", "�����Ѿ����浽��\n{0}", sF), vbInformation
    
End Sub

Private Sub mnuUnicodePrefixU_Click()
    
    mnuUnicodePrefixU.Checked = Not mnuUnicodePrefixU.Checked
    
    g_bUnicodePrefixU = mnuUnicodePrefixU.Checked
    
    SaveSetting App.Title, "Settings", "UnicodePrefix", IIf(mnuUnicodePrefixU.Checked, "1", "0")
    
End Sub

Private Sub mnuUseTtk_Click()
    Dim i As Long, s As String
    
    If LstComps.ListCount > 0 And LstComps.ListIndex >= 0 Then
        If InStr(1, LstComps.List(LstComps.ListIndex), "ComboBox") Then
            LstComps_Click                                                      '�ȱ������ã�������һ��Ͽ��л������ò���
        End If
    End If
    
    mnuUseTtk.Checked = Not mnuUseTtk.Checked
    
    '�ж��Ƿ���TTK���еĿؼ�������У�������ȡ��TTKѡ��
    If Not mnuUseTtk.Checked Then
        For i = 0 To LstComps.ListCount - 1
            s = Mid(LstComps.List(i), InStr(1, LstComps.List(i), "(") + 1)
            s = Left(s, Len(s) - 1)
            If InStr(1, " ProgressBar, TreeView, TabStrip, ", " " & s & ",") > 0 Then
                MsgBox L("l_msgCantCancelTTK", "�������в��ֿؼ�����TTK���д��ڣ�����ȡ��TTKѡ�"), vbInformation
                mnuUseTtk.Checked = True
                Exit For
            End If
        Next
    End If
    
    '�л���Ͽ���������TTK����
    If LstComps.ListCount > 0 Then
        For i = 0 To UBound(m_Comps)
            If TypeName(m_Comps(i)) = "clsComboboxAdapter" Then
                m_Comps(i).TTK = mnuUseTtk.Checked
            End If
        Next
        
        If LstComps.ListIndex >= 0 Then
            If InStr(1, LstComps.List(LstComps.ListIndex), "ComboBox") Then
                FetchCfgFromCls LstComps.ListIndex                              '���»�ȡ��Ͽ���Ϣ
            End If
        End If
        LstComps_Click
    End If
    
    SaveSetting App.Title, "Settings", "UseTtk", IIf(mnuUseTtk.Checked, "1", "0")
    
End Sub

Private Sub mnuV2andV3Code_Click()
    mnuV2andV3Code.Checked = Not mnuV2andV3Code.Checked
    SaveSetting App.Title, "Settings", "V2andV3Code", IIf(mnuV2andV3Code.Checked, "1", "0")
End Sub

'�Զ����༭�õ���Ͽ�����
Private Sub FillcmbEdit(Row As Long, Col As Long)
    
    Dim sa() As String, i As Long, nEditType As Long
    
    If LstComps.ListCount = 0 Or LstComps.ListIndex < 0 Then Exit Sub
    
    '0��ʾ�����ı��༭��1��ʾ���������б�2��ʾ�����б���ı�����
    nEditType = m_Comps(LstComps.ListIndex).GetAttrValueList(LstCfg.CellText(Row, 0), sa)
    
    If nEditType = 0 Then
        LstCfg.BindControl 1, Nothing  'ʹ�������ı��༭��
    ElseIf nEditType = 1 Then
        LstCfg.BindControl 1, cmbEditList
        cmbEditList.Clear
        cmbEditList.AddItem ""  '�ڵ�һ�з�һ�����ַ����������Ϳ��Բ����ö�Ӧ�Ĳ�����
        If LstCfg.CellText(Row, Col) = "" Then cmbEditList.ListIndex = 0
        For i = 0 To UBound(sa)
            cmbEditList.AddItem sa(i)
            If sa(i) = LstCfg.CellText(Row, Col) Then
                cmbEditList.ListIndex = i + 1
            End If
        Next
    Else
        LstCfg.BindControl 1, cmbEditCombo
        cmbEditCombo.Clear
        For i = 0 To UBound(sa)
            cmbEditCombo.AddItem sa(i)
            If sa(i) = LstCfg.CellText(Row, Col) Then
                cmbEditCombo.ListIndex = i
            End If
        Next
    End If
    
End Sub

Private Sub TxtCode_Change()
    mnuPreview.Enabled = (Len(TxtCode.Text) > 0)
End Sub

Private Sub TxtCode_DblClick()
    Static s_l As Single, s_t As Single, s_w As Single, s_h As Single
    Static s_txt As String
    
    If m_TxtCodeExpanded Then
        TxtCode.Move s_l, s_t, s_w, s_h
        m_TxtCodeExpanded = False
    Else
        s_l = TxtCode.Left
        s_t = TxtCode.Top
        s_w = TxtCode.Width
        s_h = TxtCode.Height
        TxtCode.ZOrder 0
        TxtCode.Move 0, 0, Me.ScaleWidth, Me.ScaleHeight
        m_TxtCodeExpanded = True
    End If
End Sub

Private Sub TxtCode_KeyUp(KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyEscape And TxtCode.Width = Me.ScaleWidth Then
        TxtCode_DblClick
    End If
End Sub

'�鿴���Ͱ�����Ϣ����
Private Sub TxtTips_DblClick()
    Static s_l As Single, s_t As Single, s_w As Single, s_h As Single
    Static s_txt As String
    
    Dim s As String
    s = TxtTips.Text
    If Len(s) Then
        If Left(s, Len("bindcommand")) = "bindcommand" Then
            s_l = TxtTips.Left
            s_t = TxtTips.Top
            s_w = TxtTips.Width
            s_h = TxtTips.Height
            TxtTips.ZOrder 0
            TxtTips.Move 0, 0, Me.ScaleWidth, Me.ScaleHeight
            s_txt = TxtTips.Text
            m_TxtTipsExpanded = True
            TxtTips.Text = "<�ٴ�˫������>" & vbCrLf & _
            "bindcommand" & vbCrLf & _
            "ʹ��bind()�󶨵��¼������¼��б���Ҫ�󶨶����ʹ�ö��ŷָ����������Ҫ�����ա�" & vbCrLf & _
            "�����¼��б����£�" & vbCrLf & _
            "<ButtonPress-n> : ��갴ťn���£�n:1(���);2(�м�);3(�Ҽ�)" & vbCrLf & _
            "<Button-n>,<n> : ����<ButtonPress-n>�ļ���ʽ" & vbCrLf & _
            "<ButtonRelease-n> : ��갴ťn���ɿ�" & vbCrLf & _
            "<Bn-Motion> : �ڰ�ס��ťn��ͬʱ����귢���ƶ�" & vbCrLf & _
            "<Double-Button-n> : ��갴ťn˫��" & vbCrLf & _
            "<Triple-Button-n> : ��갴ťn����" & vbCrLf & _
            "<Enter> : ���ָ��������" & vbCrLf & _
            "<Leave> : ���ָ���뿪���" & vbCrLf & _
            "<KeyPress> : ���������" & vbCrLf & _
            "<KeyRelease> : �ɿ������" & vbCrLf & _
            "<KeyPress-key> : ����key������<KeyPress-H>��ʾ����H�������Լ�Ϊʹ��˫���Ŵ�������Ž��ַ������������磺""H""��" & vbCrLf & _
            "<KeyRelease-key> : �ɿ�key" & vbCrLf & _
            "<Key> : �����������" & vbCrLf & _
            "<Key-key> : <KeyPress-key>�ļ���ʽ������<Key-H>��" & vbCrLf & _
            "<key> : ʹ�ú󸽵�����������滻key����ʾ�����ض�����" & vbCrLf & _
            "<Prefix-key> : �ڰ�סPrefix��ͬʱ������key������ʹ��Alt,Shift,Control�ĵ�������ϱ���<Control-Alt-key>" & vbCrLf
            
            TxtTips.Text = TxtTips.Text & "<Configure> : �ؼ���С�ı�󴥷���" & vbCrLf & _
            "��ȫ����������壺" & vbCrLf & _
            "Cancel,Break,BackSpace,Tab,Return," & vbCrLf & _
            "Sift_L , Shift_R, Control_L, Control_R, Alt_L, Alt_R, Pause" & vbCrLf & _
            "Caps_Loack,Escape,Prior(PageUp),Next(PageDown),End,Home,Left,Up,Right,Down,Print," & vbCrLf & _
            "Insert,Delete,F1-12,Num_Lock,Scroll_Lock,space,less"
        ElseIf Left(s, Len("<�ٴ�˫������>")) = "<�ٴ�˫������>" Then
            TxtTips.Move s_l, s_t, s_w, s_h
            TxtTips.Text = s_txt
            m_TxtTipsExpanded = False
        End If
    End If
End Sub

'���ܵ�ǰ�����굥λ��ʲô��ת��Ϊ����
Private Sub Convert2Pixel(ByRef nWidth As Long, ByRef nHeight As Long)
    nWidth = ScaleX(nWidth, Me.ScaleMode, vbPixels)
    nHeight = ScaleY(nHeight, Me.ScaleMode, vbPixels)
End Sub

Private Sub TxtTips_KeyUp(KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyEscape And TxtTips.Width = Me.ScaleWidth Then
        TxtTips_DblClick
    End If
End Sub

Private Sub TxtTips_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    stabar.SimpleText = L("l_staTips", "���Խ������ڣ�����Щ����״̬�¿���˫�����")
End Sub

Private Sub CmdSerializer_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    stabar.SimpleText = L("l_staSrl", "ע�⣺��������Щ��ѡ��ѡ��򱻴򹴣��������")
End Sub

Private Sub LstComps_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    stabar.SimpleText = L("l_staComps", "�ؼ��б��ڣ��г���Ӧ���������пؼ����Ϳؼ����͡�")
End Sub

Private Sub cmbFrms_GotFocus()
    stabar.SimpleText = L("l_staFrms", "�����б�������֧�ֶ����ƴ��ڡ�")
End Sub

Private Sub CmdAddUsrProperty_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    stabar.SimpleText = L("l_staAddAttr", "Ŀǰ�б��е�ѡ����������������������ԣ������Ҫ�����Ը����ֲ��ֹ�����������ԡ�")
End Sub

Private Sub CmdClip_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    stabar.SimpleText = L("l_staCopyCode", "�������뵽�����壬����ѡ�񿽱�ȫ�����ǽ������������ɲ��֡�")
End Sub

Private Sub CmdDeserializer_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    stabar.SimpleText = L("l_staRestoreCfg", "���ָ���Щͬ������Ŀؼ�����������Ŀؼ�����Ӱ�졣")
End Sub

Private Sub CmdOutput_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    stabar.SimpleText = L("l_staCmdGenCode", "ȫ���Ŀؼ����Զ�������ɺ�ʹ�������ť����Python���롣")
End Sub

Private Sub CmdQuit_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    stabar.SimpleText = L("l_staQuit", "ֱ���˳���")
End Sub

Private Sub CmdRefsFormsList_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    stabar.SimpleText = L("l_staRefsFrms", "ˢ�´���Ϳؼ������������к��޸��˴���Ϳؼ�����ˢ�º����������ɴ��롣")
End Sub

Private Sub CmdSaveFile_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    stabar.SimpleText = L("l_staCmdSaveFile", "�����Ҫ������ѡ����뱣�浽�ļ�(UTF-8��BOM��ʽ)��")
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    stabar.SimpleText = ""
End Sub

Private Sub LstCfg_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    stabar.SimpleText = L("l_staLstCfg", "�����б��ڣ�˫������ֵ��F2�����Ա༭������ֻ���ɶ�Ӧǰ��򹳵����ԵĴ��롣")
End Sub

Private Sub TxtCode_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    stabar.SimpleText = L("l_staTxtCode", "����Ԥ�����ڣ�˫�����ԷŴ������Ҫ��Ҳ����ֱ���������޸Ĵ��롣")
End Sub

