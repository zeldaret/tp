lbl_8007B3D8:
/* 8007B3D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007B3DC  7C 08 02 A6 */	mflr r0
/* 8007B3E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007B3E4  A0 84 00 00 */	lhz r4, 0(r4)
/* 8007B3E8  38 A0 3F C0 */	li r5, 0x3fc0
/* 8007B3EC  38 C0 00 06 */	li r6, 6
/* 8007B3F0  4B FF FF 1D */	bl GetPolyInf0__4cBgWCFiUlUl
/* 8007B3F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007B3F8  7C 08 03 A6 */	mtlr r0
/* 8007B3FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8007B400  4E 80 00 20 */	blr 
