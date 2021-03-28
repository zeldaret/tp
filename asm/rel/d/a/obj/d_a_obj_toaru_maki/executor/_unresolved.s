lbl_80D13058:
/* 80D13058  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1305C  7C 08 02 A6 */	mflr r0
/* 80D13060  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D13064  4B 55 00 2C */	b ModuleUnresolved
/* 80D13068  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1306C  7C 08 03 A6 */	mtlr r0
/* 80D13070  38 21 00 10 */	addi r1, r1, 0x10
/* 80D13074  4E 80 00 20 */	blr 
