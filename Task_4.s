.data
.global ram
ram: .zero 256

.text
.global fill_ram
#rax is the sum which is zero at first, rcx is counter
fill_ram:
    movq $0, %rax        
    movq $1, %rcx         

#This is the summing up loop
sum_loop:
    addq %rcx, %rax       
    incq %rcx          
    cmpq $11, %rcx       
    jne sum_loop          

# move value to 0x50
    movb %al, ram+0x50    
    ret
.section .note.GNU-stack,"",@progbits

