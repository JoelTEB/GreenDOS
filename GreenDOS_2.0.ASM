;----------------------------------------------;
;
; The first version of GreenDOS_2.0... Not to 
; get confused with GreenDOS_2. It is an update
; to GreenDOS_1.4.
;
; nasm -f bin GreenDOS_2.0.ASM -o GreenDOS_2.0.BIN
;
; @JoelTEB
;
;----------------------------------------------;

                org        0x7c00               ; BIOS loads at this address

                bits       16                   ; 16 bits real mode

; Print a welcome message.
; We have no DOS nor Linux kernel here.
; Therefore, we will use bios int 0x10.

start:
                cli                             ; disable interrupts

                mov     si, msg                 ; SI points to message
                mov     ah, 0x0e                ; print char service
.loop           lodsb                           ; AL <- [DS:SI] && SI++
                or      al, al                  ; end of string?
                jz      halt
                int     0x10                    ; print char
                jmp     .loop                   ; next char

halt:           hlt                             ; halt


msg:            db        "Hello. Welcome to GreenDOS_2.0. It will include actuall content soon.", 0


;----------------------------------------------;
; Bootloader signature must be located
; at bytes #511 and #512.
; Fill with 0 in between.
; $  = address of the current line
; $$ = address of the 1st instruction
;----------------------------------------------;

                times 510 - ($-$$) db 0
                dw        0xaa55
				
