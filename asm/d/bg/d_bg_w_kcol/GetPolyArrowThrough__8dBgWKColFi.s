lbl_80082BF0:
/* 80082BF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80082BF4  7C 08 02 A6 */	mflr r0
/* 80082BF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80082BFC  38 A1 00 08 */	addi r5, r1, 8
/* 80082C00  4B FF BF 71 */	bl getPolyCode__8dBgWKColCFiP5dBgPc
/* 80082C04  80 01 00 08 */	lwz r0, 8(r1)
/* 80082C08  54 03 03 9C */	rlwinm r3, r0, 0, 0xe, 0xe
/* 80082C0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80082C10  7C 08 03 A6 */	mtlr r0
/* 80082C14  38 21 00 20 */	addi r1, r1, 0x20
/* 80082C18  4E 80 00 20 */	blr 
