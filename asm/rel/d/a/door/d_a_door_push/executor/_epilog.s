lbl_80677D6C:
/* 80677D6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80677D70  7C 08 02 A6 */	mflr r0
/* 80677D74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80677D78  4B BE B3 14 */	b ModuleEpilog
/* 80677D7C  3C 60 80 68 */	lis r3, data_80678EC8@ha
/* 80677D80  38 63 8E C8 */	addi r3, r3, data_80678EC8@l
/* 80677D84  4B BE B4 0C */	b ModuleDestructorsX
/* 80677D88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80677D8C  7C 08 03 A6 */	mtlr r0
/* 80677D90  38 21 00 10 */	addi r1, r1, 0x10
/* 80677D94  4E 80 00 20 */	blr 
