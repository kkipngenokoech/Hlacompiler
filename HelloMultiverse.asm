// Assembly code emitted by HLA compiler
// Version 1.104 build 20857 (prototype)
// HLA compiler written by Randall Hyde
// GAS compatible output






  .text


        .global    QuitMain__hla_
        .global    DfltExHndlr__hla_
        .global    _HLAMain
        .global    InstallSignals__hla_
        .extern    MEM_SIZE
        .extern    STDOUT_NEWLN
        .extern    DefaultExceptionHandler__hla_
        .extern    abstract__hla_
        .extern    HardwareException__hla_
        .extern    excepts_install_signals
        .extern    BuildExcepts__hla_
        .extern    STDOUT_PUTS
        .extern    Raise__hla_
        .extern    BLOB_LENGTH
        .extern    shortDfltExcept__hla_






  .data

        .extern    ExceptionPtr__hla_
        .extern    MainPgmCoroutine__hla_
        .balign    (4)


 .data
 .global _envp__hla_
 .global _argc__hla_
 .global _argv__hla_
_argc__hla_: .long 0
_argv__hla_: .long 0
_envp__hla_: .long 0




  .text


        .balign    (4)
len__hla_2108 :.long      0x38
        .long      0x38
str__hla_2108:

 .ascii "Helllo HelloMultiverse, and welcome to kip's imagination"
 .byte 0

 .byte 0
 .byte 0
 .byte 0


        .type      InstallSignals__hla_,@function

InstallSignals__hla_:
        jmp        excepts_install_signals
End_InstallSignals__hla__2106:
  .size InstallSignals__hla_,End_InstallSignals__hla__2106-InstallSignals__hla_



        .type      DfltExHndlr__hla_,@function

DfltExHndlr__hla_:
        jmp        DefaultExceptionHandler__hla_
End_DfltExHndlr__hla__2107:
  .size DfltExHndlr__hla_,End_DfltExHndlr__hla__2107-DfltExHndlr__hla_





        .type      _HLAMain,@function

_HLAMain:
 .global _start
_start:
        .byte      0x89
        .byte      0xe0
_findEnvp_$$_:
        .byte      0x83
        .byte      0xc0
        .byte      0x4
        .byte      0x83
        .byte      0x38
        .byte      0x0
        jne        _findEnvp_$$_
        .byte      0x83
        .byte      0xc0
        .byte      0x4
        .byte      0xa3
        .long      (_envp__hla_+0)
        .byte      0x8d
        .byte      0x44
        .byte      0x24
        .byte      0x4
        .byte      0xa3
        .long      (_argv__hla_+0)
        .byte      0x8b
        .byte      0x4
        .byte      0x24
        .byte      0xa3
        .long      (_argc__hla_+0)
        call       BuildExcepts__hla_
        .byte      0x6a
        .byte      0x0
        .byte      0x89
        .byte      0xe5
        .byte      0x55


        .byte      0x68
        .long      str__hla_2108
        call       STDOUT_PUTS
QuitMain__hla_:
        .byte      0xb8
        .long      0x1
        .byte      0x31
        .byte      0xdb
        .word      0x80cd
End__HLAMain_2109:
  .size _HLAMain,End__HLAMain_2109-_HLAMain





