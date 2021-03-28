lbl_802E9CC4:
/* 802E9CC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E9CC8  7C 08 02 A6 */	mflr r0
/* 802E9CCC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E9CD0  88 03 00 01 */	lbz r0, 1(r3)
/* 802E9CD4  28 00 00 00 */	cmplwi r0, 0
/* 802E9CD8  40 82 00 30 */	bne lbl_802E9D08
/* 802E9CDC  80 83 00 04 */	lwz r4, 4(r3)
/* 802E9CE0  80 03 00 08 */	lwz r0, 8(r3)
/* 802E9CE4  90 81 00 08 */	stw r4, 8(r1)
/* 802E9CE8  90 01 00 0C */	stw r0, 0xc(r1)
/* 802E9CEC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 802E9CF0  90 01 00 10 */	stw r0, 0x10(r1)
/* 802E9CF4  38 83 00 10 */	addi r4, r3, 0x10
/* 802E9CF8  38 A1 00 08 */	addi r5, r1, 8
/* 802E9CFC  38 C3 00 24 */	addi r6, r3, 0x24
/* 802E9D00  48 00 00 2D */	bl getTextureMtx__9J2DTexMtxFRC17J2DTextureSRTInfo3VecPA4_f
/* 802E9D04  48 00 00 18 */	b lbl_802E9D1C
lbl_802E9D08:
/* 802E9D08  28 00 00 01 */	cmplwi r0, 1
/* 802E9D0C  40 82 00 10 */	bne lbl_802E9D1C
/* 802E9D10  38 83 00 10 */	addi r4, r3, 0x10
/* 802E9D14  38 A3 00 24 */	addi r5, r3, 0x24
/* 802E9D18  48 00 01 A5 */	bl getTextureMtxMaya__9J2DTexMtxFRC17J2DTextureSRTInfoPA4_f
lbl_802E9D1C:
/* 802E9D1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E9D20  7C 08 03 A6 */	mtlr r0
/* 802E9D24  38 21 00 20 */	addi r1, r1, 0x20
/* 802E9D28  4E 80 00 20 */	blr 
