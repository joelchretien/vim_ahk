; Search {{{
#If WinActive("ahk_group " . VimGroupName) and (VimMode == "Vim_Normal")
/::
  Send, ^f
  VimSetMode("Inseret")
Return

*::
  bak := ClipboardAll
  Clipboard=
  Send, ^{Left}+^{Right}^c
  ClipWait, 1
  Send, ^f
  Send, ^v!f
  clipboard := bak
  VimSetMode("Inseret")
Return

n::Send, {F3}
+n::Send, +{F3}
; }}} Search
