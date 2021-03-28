lbl_80082A80:
/* 80082A80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80082A84  7C 08 02 A6 */	mflr r0
/* 80082A88  90 01 00 24 */	stw r0, 0x24(r1)
/* 80082A8C  A0 84 00 00 */	lhz r4, 0(r4)
/* 80082A90  38 A1 00 08 */	addi r5, r1, 8
/* 80082A94  4B FF C0 DD */	bl getPolyCode__8dBgWKColCFiP5dBgPc
/* 80082A98  80 01 00 08 */	lwz r0, 8(r1)
/* 80082A9C  54 03 5F FE */	rlwinm r3, r0, 0xb, 0x1f, 0x1f
/* 80082AA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80082AA4  7C 08 03 A6 */	mtlr r0
/* 80082AA8  38 21 00 20 */	addi r1, r1, 0x20
/* 80082AAC  4E 80 00 20 */	blr 
