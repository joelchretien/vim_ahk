; Perform vim leader actions (Then exit to vim normal mode) {{{
#If WinActive("ahk_group " . VimGroupName) && (VimMode == "Vim_Leader")

;Underline
u::
  Send, ^u
  VimSetMode("Vim_Normal")
Return

;Bold
b::
  Send, ^b
  VimSetMode("Vim_Normal")
Return

;Italic
i::
  Send, ^i
  VimSetMode("Vim_Normal")
Return

;MS Word - Insert Comment
m::
  Send, ^!m
  VimSetMode("Vim_Normal")
Return

;MS Word - Insert Hyperlink
k::
  Send, ^k
  VimSetMode("Vim_Normal")
Return

;Print
p::
  Send, ^p
  VimSetMode("Vim_Normal")
Return

;MS Word - Heading 1
1::
  Send, ^!1
  VimSetMode("Vim_Normal")
Return

;MS Word - Heading 1
2::
  Send, ^!2
  VimSetMode("Vim_Normal")
Return
;MS Word - Heading 1
3::
  Send, ^!3
  VimSetMode("Vim_Normal")
Return
;MS Word - Heading 1
4::
  Send, ^!4
  VimSetMode("Vim_Normal")
Return
;MS Word - Heading 1
5::
  Send, ^!5
  VimSetMode("Vim_Normal")
Return

;MS Word - Tab Right
>::
  Send, ^m
  VimSetMode("Vim_Normal")
Return

;MS Word - Tab Left
<::
  Send, ^+m
  VimSetMode("Vim_Normal")
Return

; }}}
