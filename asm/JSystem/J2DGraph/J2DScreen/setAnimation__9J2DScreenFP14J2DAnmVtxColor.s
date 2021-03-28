lbl_802F99A8:
/* 802F99A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F99AC  7C 08 02 A6 */	mflr r0
/* 802F99B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F99B4  4B FF E7 ED */	bl setVtxColorAnimation__7J2DPaneFP14J2DAnmVtxColor
/* 802F99B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F99BC  7C 08 03 A6 */	mtlr r0
/* 802F99C0  38 21 00 10 */	addi r1, r1, 0x10
/* 802F99C4  4E 80 00 20 */	blr 
