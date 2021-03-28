lbl_80AD0B20:
/* 80AD0B20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD0B24  7C 08 02 A6 */	mflr r0
/* 80AD0B28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD0B2C  3C 60 80 AD */	lis r3, data_80AD4A4C@ha
/* 80AD0B30  38 63 4A 4C */	addi r3, r3, data_80AD4A4C@l
/* 80AD0B34  4B 79 26 18 */	b ModuleConstructorsX
/* 80AD0B38  4B 79 25 50 */	b ModuleProlog
/* 80AD0B3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD0B40  7C 08 03 A6 */	mtlr r0
/* 80AD0B44  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD0B48  4E 80 00 20 */	blr 
