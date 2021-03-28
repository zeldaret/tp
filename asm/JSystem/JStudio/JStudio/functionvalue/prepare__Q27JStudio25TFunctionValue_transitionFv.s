lbl_802824D0:
/* 802824D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802824D4  7C 08 02 A6 */	mflr r0
/* 802824D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802824DC  38 63 00 08 */	addi r3, r3, 8
/* 802824E0  4B FF F4 6D */	bl range_prepare__Q27JStudio29TFunctionValueAttribute_rangeFv
/* 802824E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802824E8  7C 08 03 A6 */	mtlr r0
/* 802824EC  38 21 00 10 */	addi r1, r1, 0x10
/* 802824F0  4E 80 00 20 */	blr 
