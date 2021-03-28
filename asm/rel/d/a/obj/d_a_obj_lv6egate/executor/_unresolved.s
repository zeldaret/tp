lbl_80C82058:
/* 80C82058  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8205C  7C 08 02 A6 */	mflr r0
/* 80C82060  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C82064  4B 5E 10 2C */	b ModuleUnresolved
/* 80C82068  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8206C  7C 08 03 A6 */	mtlr r0
/* 80C82070  38 21 00 10 */	addi r1, r1, 0x10
/* 80C82074  4E 80 00 20 */	blr 
