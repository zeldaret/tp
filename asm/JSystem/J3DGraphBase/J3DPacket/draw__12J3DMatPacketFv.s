lbl_80312A9C:
/* 80312A9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80312AA0  7C 08 02 A6 */	mflr r0
/* 80312AA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80312AA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80312AAC  7C 7F 1B 78 */	mr r31, r3
/* 80312AB0  80 63 00 30 */	lwz r3, 0x30(r3)
/* 80312AB4  81 83 00 00 */	lwz r12, 0(r3)
/* 80312AB8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80312ABC  7D 89 03 A6 */	mtctr r12
/* 80312AC0  4E 80 04 21 */	bctrl 
/* 80312AC4  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80312AC8  4B FF FB 51 */	bl callDL__17J3DDisplayListObjCFv
/* 80312ACC  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 80312AD0  7C 7F 1B 78 */	mr r31, r3
/* 80312AD4  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80312AD8  48 00 28 29 */	bl loadPreDrawSetting__8J3DShapeCFv
/* 80312ADC  48 00 00 20 */	b lbl_80312AFC
lbl_80312AE0:
/* 80312AE0  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80312AE4  28 03 00 00 */	cmplwi r3, 0
/* 80312AE8  41 82 00 08 */	beq lbl_80312AF0
/* 80312AEC  4B FF FB 2D */	bl callDL__17J3DDisplayListObjCFv
lbl_80312AF0:
/* 80312AF0  7F E3 FB 78 */	mr r3, r31
/* 80312AF4  48 00 04 C9 */	bl drawFast__14J3DShapePacketFv
/* 80312AF8  83 FF 00 04 */	lwz r31, 4(r31)
lbl_80312AFC:
/* 80312AFC  28 1F 00 00 */	cmplwi r31, 0
/* 80312B00  40 82 FF E0 */	bne lbl_80312AE0
/* 80312B04  38 00 00 00 */	li r0, 0
/* 80312B08  90 0D 90 50 */	stw r0, sOldVcdVatCmd__8J3DShape(r13)
/* 80312B0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80312B10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80312B14  7C 08 03 A6 */	mtlr r0
/* 80312B18  38 21 00 10 */	addi r1, r1, 0x10
/* 80312B1C  4E 80 00 20 */	blr 
