lbl_802EED1C:
/* 802EED1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EED20  7C 08 02 A6 */	mflr r0
/* 802EED24  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EED28  28 05 00 04 */	cmplwi r5, 4
/* 802EED2C  40 80 00 28 */	bge lbl_802EED54
/* 802EED30  54 A0 10 3A */	slwi r0, r5, 2
/* 802EED34  7C 63 02 14 */	add r3, r3, r0
/* 802EED38  80 63 00 8C */	lwz r3, 0x8c(r3)
/* 802EED3C  28 03 00 00 */	cmplwi r3, 0
/* 802EED40  41 82 00 14 */	beq lbl_802EED54
/* 802EED44  80 03 00 20 */	lwz r0, 0x20(r3)
/* 802EED48  28 00 00 00 */	cmplwi r0, 0
/* 802EED4C  41 82 00 08 */	beq lbl_802EED54
/* 802EED50  4B FE FA F1 */	bl load__10JUTTextureF11_GXTexMapID
lbl_802EED54:
/* 802EED54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EED58  7C 08 03 A6 */	mtlr r0
/* 802EED5C  38 21 00 10 */	addi r1, r1, 0x10
/* 802EED60  4E 80 00 20 */	blr 
