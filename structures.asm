SocketVersion:
    istruc MAKEWORD
    at .bLow,   db 2
    at .bHigh,  db 2
    iend
hints:
    istruc addrinfo
    at .ai_flags,       dd 1
    at .ai_family,      dd 2
    at .ai_socktype,    dd 1
    at .ai_protocol,    dd 6
    at .ai_addrlen,     dq 0
    at .ai_canonname,   dq 0
    at .ai_addr,        dq 0
    at .ai_next,        dq 0
    iend
result:
    istruc addrinfo
    at .ai_flags,       dd 0
    at .ai_family,      dd 0
    at .ai_socktype,    dd 0
    at .ai_protocol,    dd 0
    at .ai_addrlen,     dq 0
    at .ai_canonname,   dq 0
    at .ai_addr,        dq 0
    at .ai_next,        dq 0
    iend
WSADATA:
    istruc  WSAData
    iend