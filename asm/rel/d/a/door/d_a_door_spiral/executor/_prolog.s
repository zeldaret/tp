lbl_80467360:
/* 80467360  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80467364  7C 08 02 A6 */	mflr r0
/* 80467368  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046736C  3C 60 80 46 */	lis r3, data_804673D8@ha
/* 80467370  38 63 73 D8 */	addi r3, r3, data_804673D8@l
/* 80467374  4B DF BD D8 */	b ModuleConstructorsX
/* 80467378  4B DF BD 10 */	b ModuleProlog
/* 8046737C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80467380  7C 08 03 A6 */	mtlr r0
/* 80467384  38 21 00 10 */	addi r1, r1, 0x10
/* 80467388  4E 80 00 20 */	blr 
