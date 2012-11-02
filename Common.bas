Attribute VB_Name = "Common"
Option Explicit

Private Declare Function GetDC Lib "user32" (ByVal hwnd As Long) As Long
Private Declare Function GetDeviceCaps Lib "gdi32" (ByVal hdc As Long, ByVal nIndex As Long) As Long
Private Declare Function ReleaseDC Lib "user32" (ByVal hwnd As Long, ByVal hdc As Long) As Long
Private Declare Function GetTextExtentPoint32 Lib "gdi32" Alias "GetTextExtentPoint32A" (ByVal hdc As Long, ByVal lpsz As String, ByVal cbString As Long, lpSize As Size) As Long
Private Declare Function lstrlen Lib "kernel32" Alias "lstrlenA" (ByVal lpString As String) As Long
'Private Declare Function OleTranslateColor Lib "olepro32.dll" (ByVal OLE_COLOR As Long, ByVal hPalette As Long, ByRef pccolorref As Long) As Long

Private Const HORZRES = 8
Private Const VERTRES = 10
Private Const LOGPIXELSX = 88
Private Const LOGPIXELSY = 90
Private Const TWIPSPERINCH = 1440
Private Type Size
    cx As Long
    cy As Long
End Type

Public g_bUnicodePrefixU As Boolean

'PYTHON��UNICODE�ַ���ǰ׺�Ĵ�����������ַ����д���˫�ֽ��ַ��������ѡ�������ʵ���ǰ׺
'����ֻ�Ǽ򵥵����ӵ����ţ���ʹ�մ�Ҳ����һ�Ե�����
Public Function U(s As String) As String
    
    Dim nLen As Long
    nLen = Len(s)
    
    If lstrlen(s) > nLen Then  '����˫�ֽ��ַ�
        If g_bUnicodePrefixU Then
            U = IIf(isQuoted(s), "u" & s, "u'" & s & "'")
        Else
            U = IIf(isQuoted(s), s, "'" & s & "'")
        End If
    ElseIf nLen Then
        U = IIf(isQuoted(s), s, "'" & s & "'")
    Else
        U = "''"
    End If
    
End Function

'�ж��ַ����Ƿ��Ѿ��е����Ż�˫������������
Public Function isQuoted(s As String) As Boolean
    isQuoted = (Left$(s, 1) = "'" Or Left$(s, 1) = Chr$(34)) And (Right$(s, 1) = "'" Or Right$(s, 1) = Chr$(34))
End Function

'����ַ��������ţ����Զ�ȥ��
Public Function UnQuote(s As String) As String
    If isQuoted(s) Then
        UnQuote = Mid(s, 2, Len(s) - 2)
    Else
        UnQuote = s
    End If
End Function

'�Զ����ַ���ʹ�õ�����������
Public Function Quote(s As String) As String
    Quote = IIf(isQuoted(s), s, "'" & s & "'")
End Function

'ֱ��ȥ���ַ����ĵ�һ���ַ������һ���ַ����ٶ�Ϊ���ţ�
Public Function UnQuoteFast(s As String) As String
    UnQuoteFast = Mid(s, 2, Len(s) - 2)
End Function

'ֱ�ӽ��ַ���ʹ�õ�����������
Public Function QuoteFast(s As String) As String
    QuoteFast = "'" & s & "'"
End Function

'Ҫ�������Microsoft Activex data objects 2.8 library
Public Sub Utf8File_Write_VB(ByVal sFileName As String, ByVal vVar As String)
    Dim adostream As New ADODB.Stream
    With adostream
        .Type = adTypeText
        .Mode = adModeReadWrite
        .Charset = "utf-8"
        .Open
        .Position = 0
        .WriteText vVar
        .SaveToFile sFileName, adSaveCreateOverWrite
        .Close
    End With
    Set adostream = Nothing
End Sub

'Ҫ�������Microsoft Activex data objects 2.8 library
Public Function Utf8File_Read_VB(ByVal sFileName As String) As String
    Dim adostream As New ADODB.Stream
    With adostream
        .Type = adTypeText
        .Mode = adModeReadWrite
        .Charset = "utf-8"
        .Open
        .LoadFromFile sFileName
        Utf8File_Read_VB = .ReadText
        .Close
    End With
    Set adostream = Nothing
End Function

'��ȡ�ļ��Ķ��������ݵ�һ���ֽ������У����ض�ȡ���ֽ�����0��ʾʧ��
Public Function ReadFileBinaryContent(sFile As String, ByRef abContent() As Byte) As Long
    
    Dim fn As Long, nSize As Long
    
    On Error GoTo FileError
    
    '��ȡ����������
    fn = FreeFile
    Open sFile For Binary As fn
    nSize = LOF(fn)
    ReDim abContent(nSize - 1) As Byte
    Get fn, , abContent
    Close fn
    ReadFileBinaryContent = nSize
    Exit Function
    
FileError:
    Close fn
    ReadFileBinaryContent = 0
    
End Function
        

'��ȡ�ļ�����������չ����������·����
Public Function FileFullName(ByVal sF As String) As String
    Dim ns As Long
    
    ns = InStrRev(sF, "\")
    If ns <= 0 Then
        FileFullName = sF
    Else
        FileFullName = Right$(sF, Len(sF) - ns)
    End If
End Function

'��ȡ�ļ���չ��
Public Function FileExt(sF As String) As String
    Dim sFName As String, ns As Long
    sFName = FileFullName(sF)
    ns = InStrRev(sFName, ".")
    If ns > 0 Then
        FileExt = Right$(sFName, Len(sFName) - ns)
    End If
End Function

'��ȡ·��������������"\"
Public Function PathName(sF As String) As String
    Dim ns As Long
    
    ns = InStrRev(sF, "\")
    If ns <= 0 Then
        PathName = ""
    Else
        PathName = Left$(sF, ns)
    End If
    
End Function

Function getDPI(bX As Boolean) As Integer                                       '��ȡ��Ļ�ֱ���
    Dim hdc As Long, RetVal As Long
    hdc = GetDC(0)
    If bX = True Then
        getDPI = GetDeviceCaps(hdc, LOGPIXELSX)
    Else
        getDPI = GetDeviceCaps(hdc, LOGPIXELSY)
    End If
    RetVal = ReleaseDC(0, hdc)
End Function
Function Twip2PixelX(x As Long) As Long                                         'ˮƽ����TwipתPixel
    Twip2PixelX = x / TWIPSPERINCH * getDPI(True)
End Function
Function Twip2PixelY(x As Long) As Long                                         '��ֱ����TwipתPixel
    Twip2PixelY = x / TWIPSPERINCH * getDPI(False)
End Function
Function Point2PixelX(x As Long) As Long                                        'ˮƽ����PointתPixel
    Point2PixelX = Twip2PixelX(x * 20)
End Function
Function Point2PixelY(x As Long) As Long                                        '��ֱ����PointתPixel
    Point2PixelY = Twip2PixelY(x * 20)
End Function
Function getScreenX() As Long                                                   '��ȡ��Ļ��
    Dim hdc As Long, RetVal As Long
    hdc = GetDC(0)
    getScreenX = GetDeviceCaps(hdc, HORZRES)
    RetVal = ReleaseDC(0, hdc)
End Function
Function getScreenY() As Long                                                   '��ȡ��Ļ��
    Dim hdc As Long, RetVal As Long
    hdc = GetDC(0)
    getScreenY = GetDeviceCaps(hdc, VERTRES)
    RetVal = ReleaseDC(0, hdc)
End Function

Public Function CharWidth() As Long                '��ȡĬ�������ַ����(����)
    Dim hdc As Long, RetVal As Long
    Dim typSize     As Size
    Dim lngX     As Long
    Dim lngY     As Long
    
    hdc = GetDC(0)
    RetVal = GetTextExtentPoint32(hdc, "ABli", 4, typSize)
    CharWidth = typSize.cx / 4
    RetVal = ReleaseDC(0, hdc)
End Function

'VB��ɫתPython��RGB��ɫ
'Ҫʹ�õ�ɫ�����ɫ����ת��ΪRGB��ɫ��ʹ��ϵͳ��ɫ�޷�ת��
Public Function ColorToRGBStr(ByVal dwColor As Long) As String
    Dim clrHex As String
    If dwColor > 0 Then
        clrHex = Replace(Format(Hex$(dwColor), "@@@@@@"), " ", "0")
        ColorToRGBStr = "'#" & Mid$(clrHex, 5, 2) & Mid$(clrHex, 3, 2) & Mid$(clrHex, 1, 2) & "'"
    End If
End Function

'VB��ɫתPython��RGB��ɫ
'����ʹ�õ�ɫ�廹��ϵͳ��ɫ��������ת��ΪRGB��ɫ
'Public Function TranslateColor(ByVal dwColor As OLE_COLOR) As String
'    Dim nColor As Long, hPalette As Long, clrHex As String
'    If OleTranslateColor(dwColor, hPalette, nColor) = 0 Then
'        clrHex = Replace(Format(Hex$(nColor), "@@@@@@"), " ", "0")
'        TranslateColor = "'#" & Mid$(clrHex, 5, 2) & Mid$(clrHex, 3, 2) & Mid$(clrHex, 1, 2) & "'"
'    End If
'End Function


