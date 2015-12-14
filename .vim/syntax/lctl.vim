" Vim syntax file
" Language: lctl debug logs
" Maintainer: Sushant Mane <sushantmane7@gmail.com>
" Latest Revision:  2015-12-14

if exists("b:current_syntax")
	finish
endif

syn match	lctlBegin	display '^' nextgroup=lctlSubsystem
syn match	lctlSubsystem	contained display '[0-9]*'
				\ nextgroup=lctlColon
syn match	lctlColon	contained display '\:'
				\ nextgroup=lctlDebugMask
syn match	lctlDebugMask	contained display '[0-9]*'
				\ nextgroup=lctlColonA
syn match	lctlColonA	contained display '\:'
				\ nextgroup=lctlSmpProcId
syn match	lctlSmpProcId	contained display '[0-9]\.[0-9][a-zA-Z]*'
				\ nextgroup=lctlColonB
syn match	lctlColonB	contained display '\:'
				\ nextgroup=lctlSecMicro
syn match	lctlSecMicro	contained display '[0-9]*\.[0-9]*'
				\ nextgroup=lctlColonC
syn match	lctlColonC	contained display '\:'
				\ nextgroup=lctlStackSize
syn match	lctlStackSize	contained display '[0-9]*'
				\ nextgroup=lctlColonD
syn match	lctlColonD	contained display '\:'
				\ nextgroup=lctlPid
syn match	lctlPid		contained display '[0-9]*'
				\ nextgroup=lctlColonE
syn match	lctlColonE	contained display '\:'
				\ nextgroup=lctlHostPid
syn match	lctlHostPid	contained display '[0-9]*'
				\ nextgroup=lctlColonF
syn match	lctlColonF	contained display '\:'
				\ nextgroup=lctlOpenParA
syn match	lctlOpenParA	contained display '('
				\ nextgroup=lctlFileName
syn match	lctlFileName	contained display '[\.\_\-a-zA-Z0-9]*'
				\ nextgroup=lctlColonG
syn match	lctlColonG	contained display '\:'
				\ nextgroup=lctlLineNumber
syn match	lctlLineNumber	contained display '[0-9]*'
				\ nextgroup=lctlColonH
syn match	lctlColonH	contained display '\:'
				\ nextgroup=lctlFunction
syn match	lctlFunction	contained display '[\_a-zA-Z0-9]*()'
				\ nextgroup=lctlCloseParA
syn match	lctlCloseParA	contained display ')'
				\ nextgroup=lctlDebugMsg,lctlError skipwhite
syn match	lctlDebugMsg	contained display '.*'
syn match	lctlError       contained '\c.*\<\(FATAL\|ERROR\|ERRORS\|FAILED\|FAILURE\).*'

hi def link lctlSubsystem	Special
hi def link lctlDebugMask	Special
hi def link lctlSmpProcId	Special
hi def link lctlSecMicro	Special
hi def link lctlStackSize	Special
hi def link lctlPid		Special
hi def link lctlHostPid		Special
hi def link lctlFileName	Operator
hi def link lctlLineNumber	Number
hi def link lctlFunction	Function
hi def link lctlDebugMsg	Normal
hi def link lctlError		ErrorMsg

let b:current_syntax = "lctl"
