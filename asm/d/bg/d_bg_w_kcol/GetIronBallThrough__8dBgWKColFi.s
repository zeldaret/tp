lbl_80082E14:
/* 80082E14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80082E18  7C 08 02 A6 */	mflr r0
/* 80082E1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80082E20  38 A1 00 08 */	addi r5, r1, 8
/* 80082E24  4B FF BD 4D */	bl getPolyCode__8dBgWKColCFiP5dBgPc
/* 80082E28  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80082E2C  54 03 01 CE */	rlwinm r3, r0, 0, 7, 7
/* 80082E30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80082E34  7C 08 03 A6 */	mtlr r0
/* 80082E38  38 21 00 20 */	addi r1, r1, 0x20
/* 80082E3C  4E 80 00 20 */	blr 
