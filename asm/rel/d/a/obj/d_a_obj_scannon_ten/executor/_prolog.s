lbl_80CCB2A0:
/* 80CCB2A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCB2A4  7C 08 02 A6 */	mflr r0
/* 80CCB2A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCB2AC  3C 60 80 CD */	lis r3, data_80CCCC2C@ha
/* 80CCB2B0  38 63 CC 2C */	addi r3, r3, data_80CCCC2C@l
/* 80CCB2B4  4B 59 7E 98 */	b ModuleConstructorsX
/* 80CCB2B8  4B 59 7D D0 */	b ModuleProlog
/* 80CCB2BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCB2C0  7C 08 03 A6 */	mtlr r0
/* 80CCB2C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCB2C8  4E 80 00 20 */	blr 
