lbl_80243A50:
/* 80243A50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80243A54  7C 08 02 A6 */	mflr r0
/* 80243A58  90 01 00 24 */	stw r0, 0x24(r1)
/* 80243A5C  39 61 00 20 */	addi r11, r1, 0x20
/* 80243A60  48 11 E7 79 */	bl _savegpr_28
/* 80243A64  7C 7E 1B 78 */	mr r30, r3
/* 80243A68  A0 03 21 38 */	lhz r0, 0x2138(r3)
/* 80243A6C  28 00 00 00 */	cmplwi r0, 0
/* 80243A70  41 82 01 58 */	beq lbl_80243BC8
/* 80243A74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80243A78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80243A7C  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80243A80  80 03 2E 0C */	lwz r0, 0x2e0c(r3)
/* 80243A84  28 00 00 00 */	cmplwi r0, 0
/* 80243A88  40 82 00 10 */	bne lbl_80243A98
/* 80243A8C  88 1E 27 98 */	lbz r0, 0x2798(r30)
/* 80243A90  28 00 00 03 */	cmplwi r0, 3
/* 80243A94  40 82 01 34 */	bne lbl_80243BC8
lbl_80243A98:
/* 80243A98  7F C3 F3 78 */	mr r3, r30
/* 80243A9C  48 00 06 B1 */	bl calcPitchLevel__14dMsgScrnHowl_cFv
/* 80243AA0  3B E0 00 00 */	li r31, 0
/* 80243AA4  3B A0 00 00 */	li r29, 0
lbl_80243AA8:
/* 80243AA8  A8 7E 21 30 */	lha r3, 0x2130(r30)
/* 80243AAC  A8 1E 21 36 */	lha r0, 0x2136(r30)
/* 80243AB0  7C 03 00 00 */	cmpw r3, r0
/* 80243AB4  40 80 00 74 */	bge lbl_80243B28
/* 80243AB8  A0 1E 21 38 */	lhz r0, 0x2138(r30)
/* 80243ABC  7C 1F 00 00 */	cmpw r31, r0
/* 80243AC0  40 80 00 4C */	bge lbl_80243B0C
/* 80243AC4  7F C3 F3 78 */	mr r3, r30
/* 80243AC8  7F E4 FB 78 */	mr r4, r31
/* 80243ACC  48 00 08 C1 */	bl getGuideDataType__14dMsgScrnHowl_cFi
/* 80243AD0  7C 7C 1B 78 */	mr r28, r3
/* 80243AD4  7F C3 F3 78 */	mr r3, r30
/* 80243AD8  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 80243ADC  C8 22 B2 80 */	lfd f1, lit_4587(r2)
/* 80243AE0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80243AE4  3C 00 43 30 */	lis r0, 0x4330
/* 80243AE8  90 01 00 08 */	stw r0, 8(r1)
/* 80243AEC  C8 01 00 08 */	lfd f0, 8(r1)
/* 80243AF0  EC 20 08 28 */	fsubs f1, f0, f1
/* 80243AF4  48 00 06 15 */	bl getPlotPitch__14dMsgScrnHowl_cFf
/* 80243AF8  38 1D 0D 80 */	addi r0, r29, 0xd80
/* 80243AFC  7C 3E 05 2E */	stfsx f1, r30, r0
/* 80243B00  38 1F 21 98 */	addi r0, r31, 0x2198
/* 80243B04  7F 9E 01 AE */	stbx r28, r30, r0
/* 80243B08  48 00 00 90 */	b lbl_80243B98
lbl_80243B0C:
/* 80243B0C  C0 02 B2 50 */	lfs f0, lit_4427(r2)
/* 80243B10  38 1D 0D 80 */	addi r0, r29, 0xd80
/* 80243B14  7C 1E 05 2E */	stfsx f0, r30, r0
/* 80243B18  38 60 00 00 */	li r3, 0
/* 80243B1C  38 1F 21 98 */	addi r0, r31, 0x2198
/* 80243B20  7C 7E 01 AE */	stbx r3, r30, r0
/* 80243B24  48 00 00 74 */	b lbl_80243B98
lbl_80243B28:
/* 80243B28  7C 00 18 50 */	subf r0, r0, r3
/* 80243B2C  7C 9F 02 14 */	add r4, r31, r0
/* 80243B30  A0 1E 21 38 */	lhz r0, 0x2138(r30)
/* 80243B34  7C 04 00 00 */	cmpw r4, r0
/* 80243B38  40 80 00 48 */	bge lbl_80243B80
/* 80243B3C  7F C3 F3 78 */	mr r3, r30
/* 80243B40  48 00 08 4D */	bl getGuideDataType__14dMsgScrnHowl_cFi
/* 80243B44  7C 7C 1B 78 */	mr r28, r3
/* 80243B48  7F C3 F3 78 */	mr r3, r30
/* 80243B4C  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 80243B50  C8 22 B2 80 */	lfd f1, lit_4587(r2)
/* 80243B54  90 01 00 0C */	stw r0, 0xc(r1)
/* 80243B58  3C 00 43 30 */	lis r0, 0x4330
/* 80243B5C  90 01 00 08 */	stw r0, 8(r1)
/* 80243B60  C8 01 00 08 */	lfd f0, 8(r1)
/* 80243B64  EC 20 08 28 */	fsubs f1, f0, f1
/* 80243B68  48 00 05 A1 */	bl getPlotPitch__14dMsgScrnHowl_cFf
/* 80243B6C  38 1D 0D 80 */	addi r0, r29, 0xd80
/* 80243B70  7C 3E 05 2E */	stfsx f1, r30, r0
/* 80243B74  38 1F 21 98 */	addi r0, r31, 0x2198
/* 80243B78  7F 9E 01 AE */	stbx r28, r30, r0
/* 80243B7C  48 00 00 1C */	b lbl_80243B98
lbl_80243B80:
/* 80243B80  C0 02 B2 50 */	lfs f0, lit_4427(r2)
/* 80243B84  38 1D 0D 80 */	addi r0, r29, 0xd80
/* 80243B88  7C 1E 05 2E */	stfsx f0, r30, r0
/* 80243B8C  38 60 00 00 */	li r3, 0
/* 80243B90  38 1F 21 98 */	addi r0, r31, 0x2198
/* 80243B94  7C 7E 01 AE */	stbx r3, r30, r0
lbl_80243B98:
/* 80243B98  3B FF 00 01 */	addi r31, r31, 1
/* 80243B9C  2C 1F 01 5E */	cmpwi r31, 0x15e
/* 80243BA0  3B BD 00 04 */	addi r29, r29, 4
/* 80243BA4  41 80 FF 04 */	blt lbl_80243AA8
/* 80243BA8  A8 9E 21 30 */	lha r4, 0x2130(r30)
/* 80243BAC  A0 7E 21 38 */	lhz r3, 0x2138(r30)
/* 80243BB0  A8 1E 21 36 */	lha r0, 0x2136(r30)
/* 80243BB4  7C 03 02 14 */	add r0, r3, r0
/* 80243BB8  7C 04 00 00 */	cmpw r4, r0
/* 80243BBC  40 80 00 0C */	bge lbl_80243BC8
/* 80243BC0  38 04 00 01 */	addi r0, r4, 1
/* 80243BC4  B0 1E 21 30 */	sth r0, 0x2130(r30)
lbl_80243BC8:
/* 80243BC8  39 61 00 20 */	addi r11, r1, 0x20
/* 80243BCC  48 11 E6 59 */	bl _restgpr_28
/* 80243BD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80243BD4  7C 08 03 A6 */	mtlr r0
/* 80243BD8  38 21 00 20 */	addi r1, r1, 0x20
/* 80243BDC  4E 80 00 20 */	blr 
