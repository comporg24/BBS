.segment "DATA"
message:
    .byte 'H', 'i', '!', $0       ; "Hi!" and newline
msg_length = 4                    ; Total length of the message, including newline

.segment "BSS"
counter: .res 1                    ; Reserve 1 byte for the loop counter

.segment "CODE"
.import _putchar
.import exit
.export _main

_main:
    ldx #0                         ; Initialize X to 0 for indexing message
    lda #msg_length                ; Load the message length into A
    sta counter                    ; Store it in counter

print_loop:
    lda message, x                 ; Load the byte at message[X]
    jsr _putchar                   ; Print the character in A
    inx                            ; Increment X

    dec counter                    ; Decrement counter
    lda counter                    ; Load the updated counter value
    bne print_loop                 ; If counter is not zero, loop again

end:
    lda #0                         ; Set A to 0 for exit code
    jmp exit                       ; Exit program
