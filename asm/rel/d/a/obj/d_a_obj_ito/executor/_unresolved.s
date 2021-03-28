lbl_8047B258:
/* 8047B258  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047B25C  7C 08 02 A6 */	mflr r0
/* 8047B260  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047B264  4B DE 7E 2C */	b ModuleUnresolved
/* 8047B268  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8047B26C  7C 08 03 A6 */	mtlr r0
/* 8047B270  38 21 00 10 */	addi r1, r1, 0x10
/* 8047B274  4E 80 00 20 */	blr 
