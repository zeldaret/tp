lbl_80D5B258:
/* 80D5B258  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5B25C  7C 08 02 A6 */	mflr r0
/* 80D5B260  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5B264  4B 50 7E 2C */	b ModuleUnresolved
/* 80D5B268  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5B26C  7C 08 03 A6 */	mtlr r0
/* 80D5B270  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5B274  4E 80 00 20 */	blr 
