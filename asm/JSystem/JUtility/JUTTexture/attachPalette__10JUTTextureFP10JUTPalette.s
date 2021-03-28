lbl_802DE5B0:
/* 802DE5B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DE5B4  7C 08 02 A6 */	mflr r0
/* 802DE5B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DE5BC  80 A3 00 20 */	lwz r5, 0x20(r3)
/* 802DE5C0  88 05 00 08 */	lbz r0, 8(r5)
/* 802DE5C4  28 00 00 00 */	cmplwi r0, 0
/* 802DE5C8  41 82 00 30 */	beq lbl_802DE5F8
/* 802DE5CC  28 04 00 00 */	cmplwi r4, 0
/* 802DE5D0  40 82 00 18 */	bne lbl_802DE5E8
/* 802DE5D4  80 03 00 28 */	lwz r0, 0x28(r3)
/* 802DE5D8  28 00 00 00 */	cmplwi r0, 0
/* 802DE5DC  41 82 00 0C */	beq lbl_802DE5E8
/* 802DE5E0  90 03 00 2C */	stw r0, 0x2c(r3)
/* 802DE5E4  48 00 00 08 */	b lbl_802DE5EC
lbl_802DE5E8:
/* 802DE5E8  90 83 00 2C */	stw r4, 0x2c(r3)
lbl_802DE5EC:
/* 802DE5EC  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 802DE5F0  88 84 00 0C */	lbz r4, 0xc(r4)
/* 802DE5F4  48 00 01 51 */	bl initTexObj__10JUTTextureF7_GXTlut
lbl_802DE5F8:
/* 802DE5F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DE5FC  7C 08 03 A6 */	mtlr r0
/* 802DE600  38 21 00 10 */	addi r1, r1, 0x10
/* 802DE604  4E 80 00 20 */	blr 
