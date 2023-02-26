section .data
    time_format db "%H:%M:%S", 0
    time_buffer db "00:00:00", 0

section .text
    global _start
    
_start:
    ; Print the current time
    call get_time_string
    mov edx, time_buffer
    mov ecx, time_format
    mov ebx, 1
    mov eax, 4
    int 0x80
    
    ; Wait for one second
    mov ebx, 0
    mov eax, 1
    int 0x80
    
    ; Clear the console
    mov ebx, 0
    mov eax, 0x1B5B1B5B
    mov ecx, 0x204A5B1B
    mov edx, 0x204A5B1B
    int 0x80
    
    ; Loop back to the beginning
    jmp _start

get_time_string:
    ; Get the current time
    mov eax, 0x2
    xor ebx, ebx
    int 0x80
    
    ; Format the time as a string
    mov ebx, eax
    mov ecx, time_buffer
    mov edx, 8
    mov esi, time_format
    call strftime
    ret
    
strftime:
    push ebp
    mov ebp, esp
    push ebx
    push ecx
    push esi
    mov eax, 0x76
    int 0x80
    pop esi
    pop ecx
    pop ebx
    mov esp, ebp
    pop ebp
    ret

