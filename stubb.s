/* use Orr to toggle case */
.global _start
_start

_read:
@ read syscall
  mov r7, #3  @syscall number
  mov r0, #0  @stdin is keyboard
  mov r2, #1  @number of characters to read
  ldr r1,=string  @string at string:
  swi 0



_write:
  @write syscall
    mov r7, #4  @syscall number
    mov r0, #1  @stdout is monitor
    mov r2, #1  @number of characters in string
    ldr, r1, =string
    swi 0

_exit:
  @exit syscall
    mov r7, #1
    swi 0

.data
  string: .ascii " "
