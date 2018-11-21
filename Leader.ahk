VimToNormal() {
  if(VimMode == "Vim_Leader_N") {
    VimSetMode("Vim_Normal")
  } else {
    VimSetMode("Vim_Visual")
  }
}

; Perform vim leader actions (any rich text editor), then exit to vim normal mode {{{
#If WinActive("ahk_group " . VimGroupName) && (InStr(VimMode, "Vim_Leader"))

;Underline
u::
  Send, ^u
  VimToNormal()
Return

;Bold
b::
  Send, ^b
  VimToNormal()
Return

;Italic
i::
  Send, ^i
  VimToNormal()
Return
; }}}

; Perform vim leader actions (Outlook-specific), then exit to vim normal mode {{{
#If WinActive("ahk_exe outlook.exe") && (InStr(VimMode, "Vim_Leader"))
;Highlight
h::
  Send, ^!h
  VimToNormal()
Return

r::
  Send, ^r
  VimToNormal()
; }}}

; Perform vim leader actions (Word-specific), then exit to vim normal mode {{{
#If WinActive("ahk_exe WINWORD.exe") && (InStr(VimMode, "Vim_Leader"))
;Highlight
h::
  Send, ^!h
  VimToNormal()
Return

; Bullet
t::
  Send, !h
  Send, u
  Send, {Right}
  Send, {Enter}
  VimToNormal()
Return

; Insert Comment
m::
  Send, ^!m
  VimToNormal()
Return

; Insert Hyperlink
k::
  Send, ^k
  VimToNormal()
Return

;Print
p::
  Send, ^p
  VimToNormal()
Return

; Heading 1
1::
  Send, ^!1
  VimToNormal()
Return

; Heading 2
2::
  Send, ^!2
  VimToNormal()
Return
; Heading 3
3::
  Send, ^!3
  VimToNormal()
Return
; Heading 4
4::
  Send, ^!4
  VimToNormal()
Return
; Heading 5
5::
  Send, ^!5
  VimToNormal()
Return

; Tab Right
>::
  Send, ^m
  VimToNormal()
Return

; Tab Left
<::
  Send, ^+m
  VimToNormal()
Return

; }}}
