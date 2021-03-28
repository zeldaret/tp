lbl_80CCB2F8:
/* 80CCB2F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCB2FC  7C 08 02 A6 */	mflr r0
/* 80CCB300  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCB304  4B 59 7D 8C */	b ModuleUnresolved
/* 80CCB308  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCB30C  7C 08 03 A6 */	mtlr r0
/* 80CCB310  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCB314  4E 80 00 20 */	blr 
