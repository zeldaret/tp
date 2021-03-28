lbl_8082E3C0:
/* 8082E3C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8082E3C4  7C 08 02 A6 */	mflr r0
/* 8082E3C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8082E3CC  4B FF FF 31 */	bl execute__8daE_ZH_cFv
/* 8082E3D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8082E3D4  7C 08 03 A6 */	mtlr r0
/* 8082E3D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8082E3DC  4E 80 00 20 */	blr 
