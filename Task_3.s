.data
.global ram
ram: .zero 256

.text
.global fill_ram

#start at 0x50 location
fill_ram:
    leaq ram+0x50, %rbx  
    movq $9, %rcx         

# loop here
clear_loop:
    movb $0x00, (%rbx)    
    incq %rbx
    loop clear_loop
    ret

.section .note.GNU-stack,"",@progbits
