lbl_80082E9C:
/* 80082E9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80082EA0  7C 08 02 A6 */	mflr r0
/* 80082EA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80082EA8  A0 84 00 00 */	lhz r4, 0(r4)
/* 80082EAC  38 A1 00 08 */	addi r5, r1, 8
/* 80082EB0  4B FF BC C1 */	bl getPolyCode__8dBgWKColCFiP5dBgPc
/* 80082EB4  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80082EB8  54 03 C6 3E */	rlwinm r3, r0, 0x18, 0x18, 0x1f
/* 80082EBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80082EC0  7C 08 03 A6 */	mtlr r0
/* 80082EC4  38 21 00 20 */	addi r1, r1, 0x20
/* 80082EC8  4E 80 00 20 */	blr 
