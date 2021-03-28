lbl_802DE608:
/* 802DE608  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DE60C  7C 08 02 A6 */	mflr r0
/* 802DE610  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DE614  80 83 00 20 */	lwz r4, 0x20(r3)
/* 802DE618  A0 04 00 0A */	lhz r0, 0xa(r4)
/* 802DE61C  28 00 00 00 */	cmplwi r0, 0
/* 802DE620  40 82 00 0C */	bne lbl_802DE62C
/* 802DE624  48 00 00 35 */	bl initTexObj__10JUTTextureFv
/* 802DE628  48 00 00 20 */	b lbl_802DE648
lbl_802DE62C:
/* 802DE62C  80 03 00 28 */	lwz r0, 0x28(r3)
/* 802DE630  28 00 00 00 */	cmplwi r0, 0
/* 802DE634  41 82 00 14 */	beq lbl_802DE648
/* 802DE638  90 03 00 2C */	stw r0, 0x2c(r3)
/* 802DE63C  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 802DE640  88 84 00 0C */	lbz r4, 0xc(r4)
/* 802DE644  48 00 01 01 */	bl initTexObj__10JUTTextureF7_GXTlut
lbl_802DE648:
/* 802DE648  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DE64C  7C 08 03 A6 */	mtlr r0
/* 802DE650  38 21 00 10 */	addi r1, r1, 0x10
/* 802DE654  4E 80 00 20 */	blr 
