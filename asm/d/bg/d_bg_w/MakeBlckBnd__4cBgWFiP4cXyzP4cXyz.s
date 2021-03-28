lbl_80079A68:
/* 80079A68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80079A6C  7C 08 02 A6 */	mflr r0
/* 80079A70  90 01 00 24 */	stw r0, 0x24(r1)
/* 80079A74  39 61 00 20 */	addi r11, r1, 0x20
/* 80079A78  48 2E 87 59 */	bl _savegpr_26
/* 80079A7C  7C 7D 1B 78 */	mr r29, r3
/* 80079A80  7C BE 2B 78 */	mr r30, r5
/* 80079A84  7C DF 33 78 */	mr r31, r6
/* 80079A88  80 A3 00 A0 */	lwz r5, 0xa0(r3)
/* 80079A8C  80 E5 00 14 */	lwz r7, 0x14(r5)
/* 80079A90  54 86 08 3C */	slwi r6, r4, 1
/* 80079A94  7D 07 32 2E */	lhzx r8, r7, r6
/* 80079A98  80 65 00 10 */	lwz r3, 0x10(r5)
/* 80079A9C  38 03 FF FF */	addi r0, r3, -1
/* 80079AA0  7C 04 00 00 */	cmpw r4, r0
/* 80079AA4  41 82 00 14 */	beq lbl_80079AB8
/* 80079AA8  7C 67 32 14 */	add r3, r7, r6
/* 80079AAC  A0 63 00 02 */	lhz r3, 2(r3)
/* 80079AB0  3B 63 FF FF */	addi r27, r3, -1
/* 80079AB4  48 00 00 0C */	b lbl_80079AC0
lbl_80079AB8:
/* 80079AB8  80 65 00 08 */	lwz r3, 8(r5)
/* 80079ABC  3B 63 FF FF */	addi r27, r3, -1
lbl_80079AC0:
/* 80079AC0  88 1D 00 89 */	lbz r0, 0x89(r29)
/* 80079AC4  28 00 00 00 */	cmplwi r0, 0
/* 80079AC8  40 82 00 18 */	bne lbl_80079AE0
/* 80079ACC  7F A3 EB 78 */	mr r3, r29
/* 80079AD0  7F C4 F3 78 */	mr r4, r30
/* 80079AD4  7F E5 FB 78 */	mr r5, r31
/* 80079AD8  4B FF FE B5 */	bl MakeBlckTransMinMax__4cBgWFP4cXyzP4cXyz
/* 80079ADC  48 00 00 E8 */	b lbl_80079BC4
lbl_80079AE0:
/* 80079AE0  C0 02 8C FC */	lfs f0, lit_3935(r2)
/* 80079AE4  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80079AE8  D0 1E 00 04 */	stfs f0, 4(r30)
/* 80079AEC  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80079AF0  C0 02 8D 00 */	lfs f0, lit_3936(r2)
/* 80079AF4  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80079AF8  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80079AFC  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80079B00  7D 1A 43 78 */	mr r26, r8
/* 80079B04  1F 88 00 0A */	mulli r28, r8, 0xa
/* 80079B08  48 00 00 68 */	b lbl_80079B70
lbl_80079B0C:
/* 80079B0C  7F A3 EB 78 */	mr r3, r29
/* 80079B10  80 9D 00 A0 */	lwz r4, 0xa0(r29)
/* 80079B14  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80079B18  7C 84 E2 2E */	lhzx r4, r4, r28
/* 80079B1C  7F C5 F3 78 */	mr r5, r30
/* 80079B20  7F E6 FB 78 */	mr r6, r31
/* 80079B24  4B FF FE BD */	bl MakeBlckMinMax__4cBgWFiP4cXyzP4cXyz
/* 80079B28  7F A3 EB 78 */	mr r3, r29
/* 80079B2C  80 9D 00 A0 */	lwz r4, 0xa0(r29)
/* 80079B30  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80079B34  38 1C 00 02 */	addi r0, r28, 2
/* 80079B38  7C 84 02 2E */	lhzx r4, r4, r0
/* 80079B3C  7F C5 F3 78 */	mr r5, r30
/* 80079B40  7F E6 FB 78 */	mr r6, r31
/* 80079B44  4B FF FE 9D */	bl MakeBlckMinMax__4cBgWFiP4cXyzP4cXyz
/* 80079B48  7F A3 EB 78 */	mr r3, r29
/* 80079B4C  80 9D 00 A0 */	lwz r4, 0xa0(r29)
/* 80079B50  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80079B54  38 1C 00 04 */	addi r0, r28, 4
/* 80079B58  7C 84 02 2E */	lhzx r4, r4, r0
/* 80079B5C  7F C5 F3 78 */	mr r5, r30
/* 80079B60  7F E6 FB 78 */	mr r6, r31
/* 80079B64  4B FF FE 7D */	bl MakeBlckMinMax__4cBgWFiP4cXyzP4cXyz
/* 80079B68  3B 5A 00 01 */	addi r26, r26, 1
/* 80079B6C  3B 9C 00 0A */	addi r28, r28, 0xa
lbl_80079B70:
/* 80079B70  7C 1A D8 00 */	cmpw r26, r27
/* 80079B74  40 81 FF 98 */	ble lbl_80079B0C
/* 80079B78  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80079B7C  C0 22 8D 04 */	lfs f1, lit_3937(r2)
/* 80079B80  EC 00 08 28 */	fsubs f0, f0, f1
/* 80079B84  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80079B88  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80079B8C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80079B90  D0 1E 00 04 */	stfs f0, 4(r30)
/* 80079B94  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80079B98  EC 00 08 28 */	fsubs f0, f0, f1
/* 80079B9C  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80079BA0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80079BA4  EC 00 08 2A */	fadds f0, f0, f1
/* 80079BA8  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80079BAC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80079BB0  EC 00 08 2A */	fadds f0, f0, f1
/* 80079BB4  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80079BB8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80079BBC  EC 00 08 2A */	fadds f0, f0, f1
/* 80079BC0  D0 1F 00 08 */	stfs f0, 8(r31)
lbl_80079BC4:
/* 80079BC4  39 61 00 20 */	addi r11, r1, 0x20
/* 80079BC8  48 2E 86 55 */	bl _restgpr_26
/* 80079BCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80079BD0  7C 08 03 A6 */	mtlr r0
/* 80079BD4  38 21 00 20 */	addi r1, r1, 0x20
/* 80079BD8  4E 80 00 20 */	blr 
