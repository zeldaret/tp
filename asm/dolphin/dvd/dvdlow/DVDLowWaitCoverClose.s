lbl_80347F44:
/* 80347F44  38 00 00 01 */	li r0, 1
/* 80347F48  90 6D 91 98 */	stw r3, Callback(r13)
/* 80347F4C  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC006000@ha */
/* 80347F50  90 0D 91 AC */	stw r0, WaitingCoverClose(r13)
/* 80347F54  38 00 00 00 */	li r0, 0
/* 80347F58  38 83 60 00 */	addi r4, r3, 0x6000 /* 0xCC006000@l */
/* 80347F5C  90 0D 91 90 */	stw r0, StopAtNextInt(r13)
/* 80347F60  38 00 00 02 */	li r0, 2
/* 80347F64  38 60 00 01 */	li r3, 1
/* 80347F68  90 04 00 04 */	stw r0, 4(r4)
/* 80347F6C  4E 80 00 20 */	blr 
