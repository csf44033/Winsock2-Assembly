; setup
default rel
global main
%include    "externals.asm"

; main data
segment .data
    %include    "structuredefs.asm"
    %include    "structures.asm"
    %include    "variables.asm"
; main code
section .text
main:
; homespace
    sub     rsp, 0x28
; WSA Startup
    mov     cx, word [SocketVersion]; wVersionRequired
    mov     rdx, WSADATA;lpWSAData
    call    WSAStartup
; check scDescription
    mov     rcx, format1
    lea     rdx, [WSADATA + WSAData.scDescription]
    call    printf
; check szSystemStatus
    mov     rcx, format1
    lea     rdx, [WSADATA + WSAData.szSystemStatus]
    call    printf
; call getaddrinfo
    xor     rcx, rcx
    mov     rdx, DEFAULT_PORT
    mov     r8, hints
    mov     r9, result
    call    getaddrinfo
; call socket
    mov     ecx, 2
    mov     edx, 1
    mov     r8d, 6
    call    socket
; bind
    mov     rcx, rax
    mov     rbx, [result]
    mov     rdx, [rbx + addrinfo.ai_addr]
    mov     r8, [rbx + addrinfo.ai_addrlen]
    call    bind
    mov     rcx, rbx
    call    freeaddrinfo
; clear stack
    add     rsp, 0x28
    ret