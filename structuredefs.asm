;1byte
;2word
;4dword
struc               addrinfo
    .ai_flags:      resd 1
    .ai_family:     resd 1
    .ai_socktype:   resd 1
    .ai_protocol:   resd 1
    .ai_addrlen:    resq 1
    .ai_canonname:  resq 1
    .ai_addr:       resq 1
    .ai_next:       resq 1
endstruc
struc       MAKEWORD
    .bLow:  resb 1
    .bHigh: resb 1
endstruc
struc                   WSAData
    .wVersion:          resw 1
    .wHighVersion:      resw 1
    .iMaxSockets:       resw 1
    .iMaxUdpDg:         resw 1
    .lpVendorInfo:      resq 1
    .scDescription:     resb 257
    .szSystemStatus:    resb 129
endstruc