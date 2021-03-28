lbl_80BE90F8:
/* 80BE90F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE90FC  7C 08 02 A6 */	mflr r0
/* 80BE9100  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE9104  4B 67 9F 8C */	b ModuleUnresolved
/* 80BE9108  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE910C  7C 08 03 A6 */	mtlr r0
/* 80BE9110  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE9114  4E 80 00 20 */	blr 
