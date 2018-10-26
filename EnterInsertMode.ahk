; Enter vim insert mode (Exit vim normal mode) {{{
#If WinActive("ahk_group " . VimGroupName) && (VimMode == "Vim_Normal")
i::VimSetMode("Insert")


+i::
  Send, {Home}
  Sleep, 200
  VimSetMode("Insert")
Return

a::
  Send, {Right}
  VimSetMode("Insert")
Return

+a::
  Send, {End}
  Sleep, 200
  VimSetMode("Insert")
Return

o::
  Send,{End}{Enter}
  VimSetMode("Insert")
Return

+o::
  Send, {Up}{End}{Enter}
  Sleep, 200
  VimSetMode("Insert")
Return
; }}}
