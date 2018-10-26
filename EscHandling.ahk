#If WinActive("ahk_group " . VimGroupName) and (InStr(VimMode, "Insert")) and (VimJJ == 1)
~j up:: ; jj: go to Normal mode.
  Input, jout, I T0.1 V L1, j
  if(ErrorLevel == "EndKey:J"){
    SendInput, {BackSpace 2}
    VimSetNormal()
  }
Return
; }}}

#If WinActive("ahk_group " . VimGroupName) and (InStr(VimMode, "Insert")) and (VimJK == 1)
j & k::
k & j::
  SendInput, {BackSpace 1}
  VimSetNormal()
Return
; }}}

#If WinActive("ahk_group " . VimGroupName) and (InStr(VimMode, "Insert")) and (VimSD == 1)
s & d::
d & s::
  SendInput, {BackSpace 1}
  VimSetNormal()
Return
; }}}
