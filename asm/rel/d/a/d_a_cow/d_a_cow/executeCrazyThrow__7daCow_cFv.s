lbl_8065EBF0:
/* 8065EBF0  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8065EBF4  7C 08 02 A6 */	mflr r0
/* 8065EBF8  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8065EBFC  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8065EC00  4B D0 35 DD */	bl _savegpr_29
/* 8065EC04  7C 7E 1B 78 */	mr r30, r3
/* 8065EC08  3C 60 80 66 */	lis r3, lit_3987@ha /* 0x80662DB0@ha */
/* 8065EC0C  3B E3 2D B0 */	addi r31, r3, lit_3987@l /* 0x80662DB0@l */
/* 8065EC10  38 61 00 30 */	addi r3, r1, 0x30
/* 8065EC14  4B A1 90 55 */	bl __ct__11dBgS_LinChkFv
/* 8065EC18  88 1E 0C 60 */	lbz r0, 0xc60(r30)
/* 8065EC1C  2C 00 00 03 */	cmpwi r0, 3
/* 8065EC20  41 82 03 1C */	beq lbl_8065EF3C
/* 8065EC24  40 80 00 1C */	bge lbl_8065EC40
/* 8065EC28  2C 00 00 01 */	cmpwi r0, 1
/* 8065EC2C  41 82 01 24 */	beq lbl_8065ED50
/* 8065EC30  40 80 01 F8 */	bge lbl_8065EE28
/* 8065EC34  2C 00 00 00 */	cmpwi r0, 0
/* 8065EC38  40 80 00 18 */	bge lbl_8065EC50
/* 8065EC3C  48 00 04 28 */	b lbl_8065F064
lbl_8065EC40:
/* 8065EC40  2C 00 00 05 */	cmpwi r0, 5
/* 8065EC44  41 82 04 08 */	beq lbl_8065F04C
/* 8065EC48  40 80 04 1C */	bge lbl_8065F064
/* 8065EC4C  48 00 03 88 */	b lbl_8065EFD4
lbl_8065EC50:
/* 8065EC50  C0 1E 0C 20 */	lfs f0, 0xc20(r30)
/* 8065EC54  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 8065EC58  C0 1E 0C 24 */	lfs f0, 0xc24(r30)
/* 8065EC5C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8065EC60  C0 1E 0C 28 */	lfs f0, 0xc28(r30)
/* 8065EC64  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 8065EC68  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 8065EC6C  38 63 00 0C */	addi r3, r3, 0xc
/* 8065EC70  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8065EC74  4B CC 97 B9 */	bl checkPass__12J3DFrameCtrlFf
/* 8065EC78  2C 03 00 00 */	cmpwi r3, 0
/* 8065EC7C  41 82 00 2C */	beq lbl_8065ECA8
/* 8065EC80  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050077@ha */
/* 8065EC84  38 03 00 77 */	addi r0, r3, 0x0077 /* 0x00050077@l */
/* 8065EC88  90 01 00 0C */	stw r0, 0xc(r1)
/* 8065EC8C  38 7E 05 7C */	addi r3, r30, 0x57c
/* 8065EC90  38 81 00 0C */	addi r4, r1, 0xc
/* 8065EC94  38 A0 FF FF */	li r5, -1
/* 8065EC98  81 9E 05 7C */	lwz r12, 0x57c(r30)
/* 8065EC9C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8065ECA0  7D 89 03 A6 */	mtctr r12
/* 8065ECA4  4E 80 04 21 */	bctrl 
lbl_8065ECA8:
/* 8065ECA8  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 8065ECAC  38 63 00 0C */	addi r3, r3, 0xc
/* 8065ECB0  C0 3F 01 0C */	lfs f1, 0x10c(r31)
/* 8065ECB4  4B CC 97 79 */	bl checkPass__12J3DFrameCtrlFf
/* 8065ECB8  2C 03 00 00 */	cmpwi r3, 0
/* 8065ECBC  41 82 03 A8 */	beq lbl_8065F064
/* 8065ECC0  38 00 00 01 */	li r0, 1
/* 8065ECC4  98 1E 0C 60 */	stb r0, 0xc60(r30)
/* 8065ECC8  38 00 00 02 */	li r0, 2
/* 8065ECCC  98 1E 0C 62 */	stb r0, 0xc62(r30)
/* 8065ECD0  38 80 00 00 */	li r4, 0
/* 8065ECD4  98 9E 0C 63 */	stb r4, 0xc63(r30)
/* 8065ECD8  C0 1F 01 10 */	lfs f0, 0x110(r31)
/* 8065ECDC  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 8065ECE0  38 00 00 03 */	li r0, 3
/* 8065ECE4  7C 09 03 A6 */	mtctr r0
lbl_8065ECE8:
/* 8065ECE8  38 64 08 8C */	addi r3, r4, 0x88c
/* 8065ECEC  7C 1E 18 2E */	lwzx r0, r30, r3
/* 8065ECF0  60 00 00 01 */	ori r0, r0, 1
/* 8065ECF4  7C 1E 19 2E */	stwx r0, r30, r3
/* 8065ECF8  38 84 01 38 */	addi r4, r4, 0x138
/* 8065ECFC  42 00 FF EC */	bdnz lbl_8065ECE8
/* 8065ED00  88 1E 0C 61 */	lbz r0, 0xc61(r30)
/* 8065ED04  28 00 00 00 */	cmplwi r0, 0
/* 8065ED08  41 82 00 20 */	beq lbl_8065ED28
/* 8065ED0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8065ED10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8065ED14  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8065ED18  A8 63 04 E6 */	lha r3, 0x4e6(r3)
/* 8065ED1C  38 03 70 00 */	addi r0, r3, 0x7000
/* 8065ED20  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8065ED24  48 00 00 1C */	b lbl_8065ED40
lbl_8065ED28:
/* 8065ED28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8065ED2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8065ED30  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8065ED34  A8 63 04 E6 */	lha r3, 0x4e6(r3)
/* 8065ED38  38 03 98 00 */	addi r0, r3, -26624
/* 8065ED3C  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_8065ED40:
/* 8065ED40  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8065ED44  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8065ED48  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8065ED4C  48 00 03 18 */	b lbl_8065F064
lbl_8065ED50:
/* 8065ED50  C0 3E 0C 24 */	lfs f1, 0xc24(r30)
/* 8065ED54  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 8065ED58  EC 01 00 2A */	fadds f0, f1, f0
/* 8065ED5C  D0 1E 0C 24 */	stfs f0, 0xc24(r30)
/* 8065ED60  38 61 00 30 */	addi r3, r1, 0x30
/* 8065ED64  38 9E 0C 20 */	addi r4, r30, 0xc20
/* 8065ED68  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8065ED6C  38 C0 00 00 */	li r6, 0
/* 8065ED70  4B A1 8F F5 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8065ED74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8065ED78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8065ED7C  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 8065ED80  7F A3 EB 78 */	mr r3, r29
/* 8065ED84  38 81 00 30 */	addi r4, r1, 0x30
/* 8065ED88  4B A1 56 2D */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 8065ED8C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8065ED90  41 82 00 90 */	beq lbl_8065EE20
/* 8065ED94  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8065ED98  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 8065ED9C  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 8065EDA0  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8065EDA4  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 8065EDA8  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 8065EDAC  3C 60 80 66 */	lis r3, __vt__8cM3dGPla@ha /* 0x8066344C@ha */
/* 8065EDB0  38 03 34 4C */	addi r0, r3, __vt__8cM3dGPla@l /* 0x8066344C@l */
/* 8065EDB4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8065EDB8  7F A3 EB 78 */	mr r3, r29
/* 8065EDBC  38 81 00 44 */	addi r4, r1, 0x44
/* 8065EDC0  38 A1 00 1C */	addi r5, r1, 0x1c
/* 8065EDC4  4B A1 59 81 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 8065EDC8  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 8065EDCC  C0 5F 00 D8 */	lfs f2, 0xd8(r31)
/* 8065EDD0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8065EDD4  EC 02 00 32 */	fmuls f0, f2, f0
/* 8065EDD8  EC 01 00 2A */	fadds f0, f1, f0
/* 8065EDDC  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 8065EDE0  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 8065EDE4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8065EDE8  EC 02 00 32 */	fmuls f0, f2, f0
/* 8065EDEC  EC 01 00 2A */	fadds f0, f1, f0
/* 8065EDF0  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 8065EDF4  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8065EDF8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8065EDFC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8065EE00  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 8065EE04  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8065EE08  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 8065EE0C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8065EE10  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 8065EE14  3C 60 80 66 */	lis r3, __vt__8cM3dGPla@ha /* 0x8066344C@ha */
/* 8065EE18  38 03 34 4C */	addi r0, r3, __vt__8cM3dGPla@l /* 0x8066344C@l */
/* 8065EE1C  90 01 00 2C */	stw r0, 0x2c(r1)
lbl_8065EE20:
/* 8065EE20  38 00 00 02 */	li r0, 2
/* 8065EE24  98 1E 0C 60 */	stb r0, 0xc60(r30)
lbl_8065EE28:
/* 8065EE28  38 7E 0C 32 */	addi r3, r30, 0xc32
/* 8065EE2C  38 80 00 00 */	li r4, 0
/* 8065EE30  38 A0 08 00 */	li r5, 0x800
/* 8065EE34  4B C1 1D 5D */	bl cLib_chaseAngleS__FPsss
/* 8065EE38  38 00 00 03 */	li r0, 3
/* 8065EE3C  98 1E 0C 62 */	stb r0, 0xc62(r30)
/* 8065EE40  80 1E 06 38 */	lwz r0, 0x638(r30)
/* 8065EE44  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8065EE48  41 82 02 1C */	beq lbl_8065F064
/* 8065EE4C  A8 1E 0C 32 */	lha r0, 0xc32(r30)
/* 8065EE50  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 8065EE54  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002C@ha */
/* 8065EE58  38 03 00 2C */	addi r0, r3, 0x002C /* 0x0006002C@l */
/* 8065EE5C  90 01 00 08 */	stw r0, 8(r1)
/* 8065EE60  38 7E 05 7C */	addi r3, r30, 0x57c
/* 8065EE64  38 81 00 08 */	addi r4, r1, 8
/* 8065EE68  38 A0 00 00 */	li r5, 0
/* 8065EE6C  38 C0 FF FF */	li r6, -1
/* 8065EE70  81 9E 05 7C */	lwz r12, 0x57c(r30)
/* 8065EE74  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8065EE78  7D 89 03 A6 */	mtctr r12
/* 8065EE7C  4E 80 04 21 */	bctrl 
/* 8065EE80  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8065EE84  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8065EE88  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8065EE8C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8065EE90  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8065EE94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8065EE98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8065EE9C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8065EEA0  38 80 00 05 */	li r4, 5
/* 8065EEA4  38 A0 00 1F */	li r5, 0x1f
/* 8065EEA8  38 C1 00 10 */	addi r6, r1, 0x10
/* 8065EEAC  4B A1 0B 79 */	bl StartShock__12dVibration_cFii4cXyz
/* 8065EEB0  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8065EEB4  D0 3E 04 FC */	stfs f1, 0x4fc(r30)
/* 8065EEB8  38 00 00 5A */	li r0, 0x5a
/* 8065EEBC  90 1E 0C 90 */	stw r0, 0xc90(r30)
/* 8065EEC0  38 00 00 03 */	li r0, 3
/* 8065EEC4  98 1E 0C 60 */	stb r0, 0xc60(r30)
/* 8065EEC8  38 00 00 00 */	li r0, 0
/* 8065EECC  98 1E 0C 62 */	stb r0, 0xc62(r30)
/* 8065EED0  38 00 00 02 */	li r0, 2
/* 8065EED4  98 1E 0C B5 */	stb r0, 0xcb5(r30)
/* 8065EED8  88 1E 0C 61 */	lbz r0, 0xc61(r30)
/* 8065EEDC  28 00 00 00 */	cmplwi r0, 0
/* 8065EEE0  41 82 00 30 */	beq lbl_8065EF10
/* 8065EEE4  7F C3 F3 78 */	mr r3, r30
/* 8065EEE8  38 80 00 08 */	li r4, 8
/* 8065EEEC  38 A0 00 02 */	li r5, 2
/* 8065EEF0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8065EEF4  4B FF 98 3D */	bl setBck__7daCow_cFiUcff
/* 8065EEF8  A8 7E 0C 34 */	lha r3, 0xc34(r30)
/* 8065EEFC  38 03 90 00 */	addi r0, r3, -28672
/* 8065EF00  B0 1E 0C 34 */	sth r0, 0xc34(r30)
/* 8065EF04  38 00 FC 18 */	li r0, -1000
/* 8065EF08  B0 1E 0C 76 */	sth r0, 0xc76(r30)
/* 8065EF0C  48 00 01 58 */	b lbl_8065F064
lbl_8065EF10:
/* 8065EF10  7F C3 F3 78 */	mr r3, r30
/* 8065EF14  38 80 00 07 */	li r4, 7
/* 8065EF18  38 A0 00 02 */	li r5, 2
/* 8065EF1C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8065EF20  4B FF 98 11 */	bl setBck__7daCow_cFiUcff
/* 8065EF24  A8 7E 0C 34 */	lha r3, 0xc34(r30)
/* 8065EF28  38 03 70 00 */	addi r0, r3, 0x7000
/* 8065EF2C  B0 1E 0C 34 */	sth r0, 0xc34(r30)
/* 8065EF30  38 00 03 E8 */	li r0, 0x3e8
/* 8065EF34  B0 1E 0C 76 */	sth r0, 0xc76(r30)
/* 8065EF38  48 00 01 2C */	b lbl_8065F064
lbl_8065EF3C:
/* 8065EF3C  A8 7E 0C 34 */	lha r3, 0xc34(r30)
/* 8065EF40  A8 1E 0C 76 */	lha r0, 0xc76(r30)
/* 8065EF44  7C 03 02 14 */	add r0, r3, r0
/* 8065EF48  B0 1E 0C 34 */	sth r0, 0xc34(r30)
/* 8065EF4C  38 7E 0C 76 */	addi r3, r30, 0xc76
/* 8065EF50  38 80 00 00 */	li r4, 0
/* 8065EF54  38 A0 00 1E */	li r5, 0x1e
/* 8065EF58  4B C1 1C 39 */	bl cLib_chaseAngleS__FPsss
/* 8065EF5C  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8065EF60  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8065EF64  C0 5F 00 84 */	lfs f2, 0x84(r31)
/* 8065EF68  4B C1 17 D9 */	bl cLib_chaseF__FPfff
/* 8065EF6C  2C 03 00 00 */	cmpwi r3, 0
/* 8065EF70  41 82 00 F4 */	beq lbl_8065F064
/* 8065EF74  80 1E 0C 90 */	lwz r0, 0xc90(r30)
/* 8065EF78  2C 00 00 00 */	cmpwi r0, 0
/* 8065EF7C  40 82 00 E8 */	bne lbl_8065F064
/* 8065EF80  38 00 00 04 */	li r0, 4
/* 8065EF84  98 1E 0C 60 */	stb r0, 0xc60(r30)
/* 8065EF88  88 1E 0C 61 */	lbz r0, 0xc61(r30)
/* 8065EF8C  28 00 00 00 */	cmplwi r0, 0
/* 8065EF90  41 82 00 20 */	beq lbl_8065EFB0
/* 8065EF94  7F C3 F3 78 */	mr r3, r30
/* 8065EF98  38 80 00 0D */	li r4, 0xd
/* 8065EF9C  38 A0 00 00 */	li r5, 0
/* 8065EFA0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8065EFA4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8065EFA8  4B FF 97 89 */	bl setBck__7daCow_cFiUcff
/* 8065EFAC  48 00 00 1C */	b lbl_8065EFC8
lbl_8065EFB0:
/* 8065EFB0  7F C3 F3 78 */	mr r3, r30
/* 8065EFB4  38 80 00 0C */	li r4, 0xc
/* 8065EFB8  38 A0 00 00 */	li r5, 0
/* 8065EFBC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8065EFC0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8065EFC4  4B FF 97 6D */	bl setBck__7daCow_cFiUcff
lbl_8065EFC8:
/* 8065EFC8  A8 1E 0C 34 */	lha r0, 0xc34(r30)
/* 8065EFCC  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8065EFD0  48 00 00 94 */	b lbl_8065F064
lbl_8065EFD4:
/* 8065EFD4  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 8065EFD8  38 80 00 01 */	li r4, 1
/* 8065EFDC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8065EFE0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8065EFE4  40 82 00 18 */	bne lbl_8065EFFC
/* 8065EFE8  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8065EFEC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8065EFF0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8065EFF4  41 82 00 08 */	beq lbl_8065EFFC
/* 8065EFF8  38 80 00 00 */	li r4, 0
lbl_8065EFFC:
/* 8065EFFC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8065F000  41 82 00 64 */	beq lbl_8065F064
/* 8065F004  88 1E 0C 5F */	lbz r0, 0xc5f(r30)
/* 8065F008  28 00 00 03 */	cmplwi r0, 3
/* 8065F00C  41 82 00 14 */	beq lbl_8065F020
/* 8065F010  7F C3 F3 78 */	mr r3, r30
/* 8065F014  38 80 00 00 */	li r4, 0
/* 8065F018  48 00 07 2D */	bl initCrazyBack__7daCow_cFi
/* 8065F01C  48 00 00 48 */	b lbl_8065F064
lbl_8065F020:
/* 8065F020  7F C3 F3 78 */	mr r3, r30
/* 8065F024  38 80 00 1A */	li r4, 0x1a
/* 8065F028  38 A0 00 02 */	li r5, 2
/* 8065F02C  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8065F030  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8065F034  4B FF 96 FD */	bl setBck__7daCow_cFiUcff
/* 8065F038  38 00 00 05 */	li r0, 5
/* 8065F03C  98 1E 0C 60 */	stb r0, 0xc60(r30)
/* 8065F040  38 00 00 0A */	li r0, 0xa
/* 8065F044  90 1E 0C 90 */	stw r0, 0xc90(r30)
/* 8065F048  48 00 00 1C */	b lbl_8065F064
lbl_8065F04C:
/* 8065F04C  80 1E 0C 90 */	lwz r0, 0xc90(r30)
/* 8065F050  2C 00 00 00 */	cmpwi r0, 0
/* 8065F054  40 82 00 10 */	bne lbl_8065F064
/* 8065F058  7F C3 F3 78 */	mr r3, r30
/* 8065F05C  38 80 00 00 */	li r4, 0
/* 8065F060  48 00 06 E5 */	bl initCrazyBack__7daCow_cFi
lbl_8065F064:
/* 8065F064  38 61 00 30 */	addi r3, r1, 0x30
/* 8065F068  38 80 FF FF */	li r4, -1
/* 8065F06C  4B A1 8C 71 */	bl __dt__11dBgS_LinChkFv
/* 8065F070  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8065F074  4B D0 31 B5 */	bl _restgpr_29
/* 8065F078  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8065F07C  7C 08 03 A6 */	mtlr r0
/* 8065F080  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8065F084  4E 80 00 20 */	blr 
