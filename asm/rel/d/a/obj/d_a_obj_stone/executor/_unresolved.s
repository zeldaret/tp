lbl_80CE9058:
/* 80CE9058  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE905C  7C 08 02 A6 */	mflr r0
/* 80CE9060  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE9064  4B 57 A0 2C */	b ModuleUnresolved
/* 80CE9068  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE906C  7C 08 03 A6 */	mtlr r0
/* 80CE9070  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE9074  4E 80 00 20 */	blr 
