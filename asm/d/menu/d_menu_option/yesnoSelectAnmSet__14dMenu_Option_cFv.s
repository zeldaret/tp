lbl_801E8AC8:
/* 801E8AC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801E8ACC  7C 08 02 A6 */	mflr r0
/* 801E8AD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801E8AD4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801E8AD8  7C 7F 1B 78 */	mr r31, r3
/* 801E8ADC  88 83 03 FA */	lbz r4, 0x3fa(r3)
/* 801E8AE0  28 04 00 FF */	cmplwi r4, 0xff
/* 801E8AE4  41 82 00 AC */	beq lbl_801E8B90
/* 801E8AE8  38 A0 00 FF */	li r5, 0xff
/* 801E8AEC  38 C0 00 00 */	li r6, 0
/* 801E8AF0  38 E0 00 05 */	li r7, 5
/* 801E8AF4  48 00 01 BD */	bl yesnoWakuAlpahAnmInit__14dMenu_Option_cFUcUcUcUc
/* 801E8AF8  88 1F 03 FA */	lbz r0, 0x3fa(r31)
/* 801E8AFC  54 00 10 3A */	slwi r0, r0, 2
/* 801E8B00  7C 7F 02 14 */	add r3, r31, r0
/* 801E8B04  80 63 01 DC */	lwz r3, 0x1dc(r3)
/* 801E8B08  80 63 00 04 */	lwz r3, 4(r3)
/* 801E8B0C  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 801E8B10  81 83 00 00 */	lwz r12, 0(r3)
/* 801E8B14  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 801E8B18  7D 89 03 A6 */	mtctr r12
/* 801E8B1C  4E 80 04 21 */	bctrl 
/* 801E8B20  88 1F 03 FA */	lbz r0, 0x3fa(r31)
/* 801E8B24  54 04 10 3A */	slwi r4, r0, 2
/* 801E8B28  38 6D 81 B8 */	la r3, OptYnSelEndFrameTbl(r13) /* 80450738-_SDA_BASE_ */
/* 801E8B2C  7C 03 20 2E */	lwzx r0, r3, r4
/* 801E8B30  7C 7F 22 14 */	add r3, r31, r4
/* 801E8B34  90 03 03 C8 */	stw r0, 0x3c8(r3)
/* 801E8B38  88 1F 03 FA */	lbz r0, 0x3fa(r31)
/* 801E8B3C  54 00 10 3A */	slwi r0, r0, 2
/* 801E8B40  7C 7F 02 14 */	add r3, r31, r0
/* 801E8B44  80 03 03 C8 */	lwz r0, 0x3c8(r3)
/* 801E8B48  C8 22 A9 58 */	lfd f1, lit_4520(r2)
/* 801E8B4C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801E8B50  90 01 00 0C */	stw r0, 0xc(r1)
/* 801E8B54  3C 00 43 30 */	lis r0, 0x4330
/* 801E8B58  90 01 00 08 */	stw r0, 8(r1)
/* 801E8B5C  C8 01 00 08 */	lfd f0, 8(r1)
/* 801E8B60  EC 00 08 28 */	fsubs f0, f0, f1
/* 801E8B64  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 801E8B68  D0 03 00 08 */	stfs f0, 8(r3)
/* 801E8B6C  88 1F 03 FA */	lbz r0, 0x3fa(r31)
/* 801E8B70  54 00 10 3A */	slwi r0, r0, 2
/* 801E8B74  7C 7F 02 14 */	add r3, r31, r0
/* 801E8B78  80 63 01 DC */	lwz r3, 0x1dc(r3)
/* 801E8B7C  80 63 00 04 */	lwz r3, 4(r3)
/* 801E8B80  48 10 F4 4D */	bl animationTransform__7J2DPaneFv
/* 801E8B84  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 801E8B88  C0 22 A9 2C */	lfs f1, lit_4068(r2)
/* 801E8B8C  4B FA C7 15 */	bl setAlphaRate__16dSelect_cursor_cFf
lbl_801E8B90:
/* 801E8B90  88 1F 03 F9 */	lbz r0, 0x3f9(r31)
/* 801E8B94  28 00 00 FF */	cmplwi r0, 0xff
/* 801E8B98  41 82 00 8C */	beq lbl_801E8C24
/* 801E8B9C  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 801E8BA0  7C 7F 02 14 */	add r3, r31, r0
/* 801E8BA4  80 63 01 DC */	lwz r3, 0x1dc(r3)
/* 801E8BA8  80 63 00 04 */	lwz r3, 4(r3)
/* 801E8BAC  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 801E8BB0  81 83 00 00 */	lwz r12, 0(r3)
/* 801E8BB4  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 801E8BB8  7D 89 03 A6 */	mtctr r12
/* 801E8BBC  4E 80 04 21 */	bctrl 
/* 801E8BC0  88 1F 03 F9 */	lbz r0, 0x3f9(r31)
/* 801E8BC4  54 04 10 3A */	slwi r4, r0, 2
/* 801E8BC8  38 6D 81 B0 */	la r3, OptYnSelStartFrameTbl(r13) /* 80450730-_SDA_BASE_ */
/* 801E8BCC  7C 03 20 2E */	lwzx r0, r3, r4
/* 801E8BD0  7C 7F 22 14 */	add r3, r31, r4
/* 801E8BD4  90 03 03 C8 */	stw r0, 0x3c8(r3)
/* 801E8BD8  88 1F 03 F9 */	lbz r0, 0x3f9(r31)
/* 801E8BDC  54 00 10 3A */	slwi r0, r0, 2
/* 801E8BE0  7C 7F 02 14 */	add r3, r31, r0
/* 801E8BE4  80 03 03 C8 */	lwz r0, 0x3c8(r3)
/* 801E8BE8  C8 22 A9 58 */	lfd f1, lit_4520(r2)
/* 801E8BEC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801E8BF0  90 01 00 0C */	stw r0, 0xc(r1)
/* 801E8BF4  3C 00 43 30 */	lis r0, 0x4330
/* 801E8BF8  90 01 00 08 */	stw r0, 8(r1)
/* 801E8BFC  C8 01 00 08 */	lfd f0, 8(r1)
/* 801E8C00  EC 00 08 28 */	fsubs f0, f0, f1
/* 801E8C04  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 801E8C08  D0 03 00 08 */	stfs f0, 8(r3)
/* 801E8C0C  88 1F 03 F9 */	lbz r0, 0x3f9(r31)
/* 801E8C10  54 00 10 3A */	slwi r0, r0, 2
/* 801E8C14  7C 7F 02 14 */	add r3, r31, r0
/* 801E8C18  80 63 01 DC */	lwz r3, 0x1dc(r3)
/* 801E8C1C  80 63 00 04 */	lwz r3, 4(r3)
/* 801E8C20  48 10 F3 AD */	bl animationTransform__7J2DPaneFv
lbl_801E8C24:
/* 801E8C24  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801E8C28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801E8C2C  7C 08 03 A6 */	mtlr r0
/* 801E8C30  38 21 00 20 */	addi r1, r1, 0x20
/* 801E8C34  4E 80 00 20 */	blr 
