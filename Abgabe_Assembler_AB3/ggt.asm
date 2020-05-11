%include "io.inc"
section .data
    result db 0
section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debuggingmov ebp, esp;
    mov eax, 14
    mov ecx, 30
    cmp ecx, eax;a und c register vertauschen, falls c > a
    jb  weiter
    mov [result], eax
    mov eax, ecx
    mov ecx, [result]
weiter:mov [result], eax   ;eax in result sichern
schleife:mov edx, 0
    cmp ecx, 0
    je  fertig  ;verhindert teilen durch 0
    div ecx     ;edx eax / ecx
    cmp edx, 0
    je  fertig  ;fertig wenn modulo(edx) == 0
    mov eax, [result] ;eax wiederherstellen fuer nächste rechnung
    mov ecx, edx    ;teiler auf modulo ergebnis setzten
    jmp schleife
fertig:mov [result], ecx   ;ergebnis in ecx
    ret