lbl_802F019C:
/* 802F019C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F01A0  7C 08 02 A6 */	mflr r0
/* 802F01A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F01A8  28 05 00 08 */	cmplwi r5, 8
/* 802F01AC  40 80 00 28 */	bge lbl_802F01D4
/* 802F01B0  54 A0 10 3A */	slwi r0, r5, 2
/* 802F01B4  7C 63 02 14 */	add r3, r3, r0
/* 802F01B8  80 63 00 DC */	lwz r3, 0xdc(r3)
/* 802F01BC  28 03 00 00 */	cmplwi r3, 0
/* 802F01C0  41 82 00 14 */	beq lbl_802F01D4
/* 802F01C4  80 03 00 20 */	lwz r0, 0x20(r3)
/* 802F01C8  28 00 00 00 */	cmplwi r0, 0
/* 802F01CC  41 82 00 08 */	beq lbl_802F01D4
/* 802F01D0  4B FE E6 71 */	bl load__10JUTTextureF11_GXTexMapID
lbl_802F01D4:
/* 802F01D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F01D8  7C 08 03 A6 */	mtlr r0
/* 802F01DC  38 21 00 10 */	addi r1, r1, 0x10
/* 802F01E0  4E 80 00 20 */	blr 
