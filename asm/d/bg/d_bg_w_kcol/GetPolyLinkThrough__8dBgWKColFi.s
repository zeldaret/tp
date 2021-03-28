lbl_80082BC4:
/* 80082BC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80082BC8  7C 08 02 A6 */	mflr r0
/* 80082BCC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80082BD0  38 A1 00 08 */	addi r5, r1, 8
/* 80082BD4  4B FF BF 9D */	bl getPolyCode__8dBgWKColCFiP5dBgPc
/* 80082BD8  80 01 00 08 */	lwz r0, 8(r1)
/* 80082BDC  54 03 03 DE */	rlwinm r3, r0, 0, 0xf, 0xf
/* 80082BE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80082BE4  7C 08 03 A6 */	mtlr r0
/* 80082BE8  38 21 00 20 */	addi r1, r1, 0x20
/* 80082BEC  4E 80 00 20 */	blr 
