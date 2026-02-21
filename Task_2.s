.data
.global ram
ram: .zero 256

.text
.global fill_ram

# loading 0x50 to be rbx
fill_ram:
    leaq ram+0x50, %rbx   
    movq $9, %rcx         

# Move FFH into pointed address, increase rbx and loop
loop_task2:
    movb $0xFF, (%rbx)   
    incq %rbx            
    loop loop_task2      
    ret

.section .note.GNU-stack,"",@progbits
