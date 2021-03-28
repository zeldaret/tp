lbl_80082C48:
/* 80082C48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80082C4C  7C 08 02 A6 */	mflr r0
/* 80082C50  90 01 00 24 */	stw r0, 0x24(r1)
/* 80082C54  38 A1 00 08 */	addi r5, r1, 8
/* 80082C58  4B FF BF 19 */	bl getPolyCode__8dBgWKColCFiP5dBgPc
/* 80082C5C  80 01 00 08 */	lwz r0, 8(r1)
/* 80082C60  54 03 03 18 */	rlwinm r3, r0, 0, 0xc, 0xc
/* 80082C64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80082C68  7C 08 03 A6 */	mtlr r0
/* 80082C6C  38 21 00 20 */	addi r1, r1, 0x20
/* 80082C70  4E 80 00 20 */	blr 
