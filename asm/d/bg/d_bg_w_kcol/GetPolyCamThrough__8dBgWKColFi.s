lbl_80082B98:
/* 80082B98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80082B9C  7C 08 02 A6 */	mflr r0
/* 80082BA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80082BA4  38 A1 00 08 */	addi r5, r1, 8
/* 80082BA8  4B FF BF C9 */	bl getPolyCode__8dBgWKColCFiP5dBgPc
/* 80082BAC  80 01 00 08 */	lwz r0, 8(r1)
/* 80082BB0  54 03 04 20 */	rlwinm r3, r0, 0, 0x10, 0x10
/* 80082BB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80082BB8  7C 08 03 A6 */	mtlr r0
/* 80082BBC  38 21 00 20 */	addi r1, r1, 0x20
/* 80082BC0  4E 80 00 20 */	blr 
