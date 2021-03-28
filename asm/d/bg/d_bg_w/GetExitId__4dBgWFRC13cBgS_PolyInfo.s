lbl_8007B3AC:
/* 8007B3AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007B3B0  7C 08 02 A6 */	mflr r0
/* 8007B3B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007B3B8  A0 84 00 00 */	lhz r4, 0(r4)
/* 8007B3BC  38 A0 00 3F */	li r5, 0x3f
/* 8007B3C0  38 C0 00 00 */	li r6, 0
/* 8007B3C4  4B FF FF 49 */	bl GetPolyInf0__4cBgWCFiUlUl
/* 8007B3C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007B3CC  7C 08 03 A6 */	mtlr r0
/* 8007B3D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8007B3D4  4E 80 00 20 */	blr 
