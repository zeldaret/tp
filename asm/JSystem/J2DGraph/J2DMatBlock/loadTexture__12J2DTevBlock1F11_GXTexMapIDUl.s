lbl_802EC570:
/* 802EC570  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EC574  7C 08 02 A6 */	mflr r0
/* 802EC578  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EC57C  28 05 00 00 */	cmplwi r5, 0
/* 802EC580  40 82 00 28 */	bne lbl_802EC5A8
/* 802EC584  54 A0 10 3A */	slwi r0, r5, 2
/* 802EC588  7C 63 02 14 */	add r3, r3, r0
/* 802EC58C  80 63 00 50 */	lwz r3, 0x50(r3)
/* 802EC590  28 03 00 00 */	cmplwi r3, 0
/* 802EC594  41 82 00 14 */	beq lbl_802EC5A8
/* 802EC598  80 03 00 20 */	lwz r0, 0x20(r3)
/* 802EC59C  28 00 00 00 */	cmplwi r0, 0
/* 802EC5A0  41 82 00 08 */	beq lbl_802EC5A8
/* 802EC5A4  4B FF 22 9D */	bl load__10JUTTextureF11_GXTexMapID
lbl_802EC5A8:
/* 802EC5A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EC5AC  7C 08 03 A6 */	mtlr r0
/* 802EC5B0  38 21 00 10 */	addi r1, r1, 0x10
/* 802EC5B4  4E 80 00 20 */	blr 
