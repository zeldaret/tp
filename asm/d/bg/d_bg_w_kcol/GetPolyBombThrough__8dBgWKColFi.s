lbl_80082CA0:
/* 80082CA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80082CA4  7C 08 02 A6 */	mflr r0
/* 80082CA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80082CAC  38 A1 00 08 */	addi r5, r1, 8
/* 80082CB0  4B FF BE C1 */	bl getPolyCode__8dBgWKColCFiP5dBgPc
/* 80082CB4  80 01 00 08 */	lwz r0, 8(r1)
/* 80082CB8  54 03 02 10 */	rlwinm r3, r0, 0, 8, 8
/* 80082CBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80082CC0  7C 08 03 A6 */	mtlr r0
/* 80082CC4  38 21 00 20 */	addi r1, r1, 0x20
/* 80082CC8  4E 80 00 20 */	blr 
