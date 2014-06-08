#include <IE.au3>

$oIE = _IECreate("http://orteil.dashnet.org/cookieclicker/")
$ocookie = _IEGetObjById($oIE, "bigCookie")
ConsoleWrite($ocookie & @CRLF)
While 1
	$cookiemade = _IEAction($ocookie, "click")
	If $cookiemade = 0 Then
		Exit (1)
	EndIf
WEnd
