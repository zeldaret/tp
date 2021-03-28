lbl_80082AE0:
/* 80082AE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80082AE4  7C 08 02 A6 */	mflr r0
/* 80082AE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80082AEC  38 A1 00 08 */	addi r5, r1, 8
/* 80082AF0  4B FF C0 81 */	bl getPolyCode__8dBgWKColCFiP5dBgPc
/* 80082AF4  80 01 00 08 */	lwz r0, 8(r1)
/* 80082AF8  54 03 47 3E */	rlwinm r3, r0, 8, 0x1c, 0x1f
/* 80082AFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80082B00  7C 08 03 A6 */	mtlr r0
/* 80082B04  38 21 00 20 */	addi r1, r1, 0x20
/* 80082B08  4E 80 00 20 */	blr 
