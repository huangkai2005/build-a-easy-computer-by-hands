movl $3, %eax
movl %eax, %edx
movl $0, %eax
movl %edx, (%eax)
movl $6, %eax
movl %eax, %edx
movl $1, %eax
movl %edx, (%eax)
movl $2, %eax
movl $0, (%eax)
movl $0, %eax
movl (%eax) ,%edx
movl $25, %eax
cmpl $0, %edx; jl (%eax)
movl $1, %eax
subl $1, (%eax)
movl (%eax) ,%edx
movl $25, %eax
cmpl $0, %edx; jl (%eax)
movl $0, %eax
movl (%eax) ,%edx
movl $2, %eax
addl %edx, (%eax)
movl $14, %eax
movl $25, %eax
jmp (%eax)
