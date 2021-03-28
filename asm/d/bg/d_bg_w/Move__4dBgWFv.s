lbl_8007B9C0:
/* 8007B9C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007B9C4  7C 08 02 A6 */	mflr r0
/* 8007B9C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007B9CC  88 03 00 BC */	lbz r0, 0xbc(r3)
/* 8007B9D0  60 00 00 01 */	ori r0, r0, 1
/* 8007B9D4  98 03 00 BC */	stb r0, 0xbc(r3)
/* 8007B9D8  4B FF F2 39 */	bl Move__4cBgWFv
/* 8007B9DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007B9E0  7C 08 03 A6 */	mtlr r0
/* 8007B9E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8007B9E8  4E 80 00 20 */	blr 
