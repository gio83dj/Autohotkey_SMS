;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;FUNZIONI ;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


^ESC::ExitApp  

^1::
SoundBeep  
SoundBeep, 750, 500
clipboard = GENTILE CLIENTE, LA INFORMIAMO CHE IL SUO APPARECCHIO E' PRONTO PER IL RITIRO.  RADIOFRANCO ORARI LUN-VEN 9.00 13.00 - 16.00 18.30.
Send, {CTRLDOWN}v{CTRLUP}
return

^2::
SoundBeep  
SoundBeep, 750, 500
clipboard = SALVE LE COMUNICHIAMO IL PREVENTIVO PER LA RIPARAZIONE DEL SUO PRODOTTO. EURO (IVATO). CI COMUNICHI RISPOSTA CHIAMANDO ALLO 0932 255855. RADIOFRANCO
Send, {CTRLDOWN}v{CTRLUP}
return

^3::
SoundBeep  
SoundBeep, 750, 500  
clipboard = GENTILE CLIENTE, LA INFORMIAMO CHE IL RICAMBIO DA LEI ORDINATO E' ARRIVATO. RADIOFRANCO ORARI LUN-VEN 9.00 13.00 - 16.00 18.30
Send, {CTRLDOWN}v{CTRLUP}
return


;INCOLLA SU NOKIA PC SUITE
^F1::
gosub INVIA_MESSAGGI
FileDelete, \\GIORGIO\Users\Public\SMS.txt
SoundBeep, 750, 300  ; Play a higher pitch for half a second
FileDelete, C:\Documents and Settings\alex\Desktop\INRETE\SMS.txt
SoundBeep, 500, 700
sleep, 500
SoundBeep, 500, 500
sleep, 500
SoundBeep, 500, 500
sleep, 500
click
RETURN

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; SUBROUTINE ;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


INVIA_MESSAGGI:
WinWait, Nokia Communication Centre, 
IfWinNotActive, Nokia Communication Centre, , WinActivate, Nokia Communication Centre, 
WinWaitActive, Nokia Communication Centre, 
MouseClick, left,  348,  538
Sleep, 100
WinWait, Nokia Communication Centre - Editor dei messaggi - N93i, 
IfWinNotActive, Nokia Communication Centre - Editor dei messaggi - N93i, , WinActivate, Nokia Communication Centre - Editor dei messaggi - N93i, 
WinWaitActive, Nokia Communication Centre - Editor dei messaggi - N93i, 
;MANDA CONTENUTO FILE SMS
SoundBeep  
SoundBeep, 750, 500
FileRead, Clipboard, C:\Documents and Settings\alex\Desktop\INRETE\SMS.txt
Send, {CTRLDOWN}v{CTRLUP}
MouseClick, left,  327,  244
Sleep, 100
clipboard = GENTILE CLIENTE, LA INFORMIAMO CHE IL SUO APPARECCHIO E' PRONTO PER IL RITIRO. SI PREGA DI PORTARE LA RICEVUTA. RADIOFRANCO ORARI LUN-VEN 9.00 13.00 - 16.00 19.00.
Send, {CTRLDOWN}v{CTRLUP}
MouseMove, 458,  457
Sleep, 100
SoundBeep, 750, 500
SoundBeep  
RETURN

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;GIORGIO LEGGIO;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;