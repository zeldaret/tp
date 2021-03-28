lbl_8059C980:
/* 8059C980  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059C984  7C 08 02 A6 */	mflr r0
/* 8059C988  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059C98C  3C 60 80 5A */	lis r3, data_8059DE70@ha
/* 8059C990  38 63 DE 70 */	addi r3, r3, data_8059DE70@l
/* 8059C994  4B CC 67 B8 */	b ModuleConstructorsX
/* 8059C998  4B CC 66 F0 */	b ModuleProlog
/* 8059C99C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059C9A0  7C 08 03 A6 */	mtlr r0
/* 8059C9A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8059C9A8  4E 80 00 20 */	blr 
