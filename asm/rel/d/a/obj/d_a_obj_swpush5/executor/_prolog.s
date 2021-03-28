lbl_8059B400:
/* 8059B400  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059B404  7C 08 02 A6 */	mflr r0
/* 8059B408  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059B40C  3C 60 80 5A */	lis r3, data_8059C694@ha
/* 8059B410  38 63 C6 94 */	addi r3, r3, data_8059C694@l
/* 8059B414  4B CC 7D 38 */	b ModuleConstructorsX
/* 8059B418  4B CC 7C 70 */	b ModuleProlog
/* 8059B41C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059B420  7C 08 03 A6 */	mtlr r0
/* 8059B424  38 21 00 10 */	addi r1, r1, 0x10
/* 8059B428  4E 80 00 20 */	blr 
