lbl_80A8ED58:
/* 80A8ED58  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 80A8ED5C  7C 08 02 A6 */	mflr r0
/* 80A8ED60  90 01 01 14 */	stw r0, 0x114(r1)
/* 80A8ED64  39 61 01 10 */	addi r11, r1, 0x110
/* 80A8ED68  4B 8D 34 71 */	bl _savegpr_28
/* 80A8ED6C  7C 7E 1B 78 */	mr r30, r3
/* 80A8ED70  3C 60 80 A9 */	lis r3, lit_3990@ha /* 0x80A9241C@ha */
/* 80A8ED74  3B E3 24 1C */	addi r31, r3, lit_3990@l /* 0x80A9241C@l */
/* 80A8ED78  3B A0 00 00 */	li r29, 0
/* 80A8ED7C  38 00 00 05 */	li r0, 5
/* 80A8ED80  B0 1E 06 56 */	sth r0, 0x656(r30)
/* 80A8ED84  A8 1E 06 46 */	lha r0, 0x646(r30)
/* 80A8ED88  2C 00 00 01 */	cmpwi r0, 1
/* 80A8ED8C  41 82 00 A8 */	beq lbl_80A8EE34
/* 80A8ED90  40 80 01 7C */	bge lbl_80A8EF0C
/* 80A8ED94  2C 00 00 00 */	cmpwi r0, 0
/* 80A8ED98  40 80 00 08 */	bge lbl_80A8EDA0
/* 80A8ED9C  48 00 01 70 */	b lbl_80A8EF0C
lbl_80A8EDA0:
/* 80A8EDA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A8EDA4  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A8EDA8  80 7C 5D B4 */	lwz r3, 0x5db4(r28)
/* 80A8EDAC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A8EDB0  81 8C 00 E0 */	lwz r12, 0xe0(r12)
/* 80A8EDB4  7D 89 03 A6 */	mtctr r12
/* 80A8EDB8  4E 80 04 21 */	bctrl 
/* 80A8EDBC  FC 40 08 90 */	fmr f2, f1
/* 80A8EDC0  7F C3 F3 78 */	mr r3, r30
/* 80A8EDC4  38 80 00 17 */	li r4, 0x17
/* 80A8EDC8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80A8EDCC  38 A0 00 00 */	li r5, 0
/* 80A8EDD0  4B FF 9F 45 */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8EDD4  80 7C 5D B4 */	lwz r3, 0x5db4(r28)
/* 80A8EDD8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A8EDDC  81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 80A8EDE0  7D 89 03 A6 */	mtctr r12
/* 80A8EDE4  4E 80 04 21 */	bctrl 
/* 80A8EDE8  FC 00 08 1E */	fctiwz f0, f1
/* 80A8EDEC  D8 01 00 F0 */	stfd f0, 0xf0(r1)
/* 80A8EDF0  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 80A8EDF4  7C 00 07 34 */	extsh r0, r0
/* 80A8EDF8  C8 3F 00 A0 */	lfd f1, 0xa0(r31)
/* 80A8EDFC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A8EE00  90 01 00 FC */	stw r0, 0xfc(r1)
/* 80A8EE04  3C 00 43 30 */	lis r0, 0x4330
/* 80A8EE08  90 01 00 F8 */	stw r0, 0xf8(r1)
/* 80A8EE0C  C8 01 00 F8 */	lfd f0, 0xf8(r1)
/* 80A8EE10  EC 00 08 28 */	fsubs f0, f0, f1
/* 80A8EE14  80 7E 05 E8 */	lwz r3, 0x5e8(r30)
/* 80A8EE18  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80A8EE1C  38 00 00 14 */	li r0, 0x14
/* 80A8EE20  B0 1E 06 4C */	sth r0, 0x64c(r30)
/* 80A8EE24  A8 7E 06 46 */	lha r3, 0x646(r30)
/* 80A8EE28  38 03 00 01 */	addi r0, r3, 1
/* 80A8EE2C  B0 1E 06 46 */	sth r0, 0x646(r30)
/* 80A8EE30  48 00 00 DC */	b lbl_80A8EF0C
lbl_80A8EE34:
/* 80A8EE34  80 7E 05 E8 */	lwz r3, 0x5e8(r30)
/* 80A8EE38  38 63 00 0C */	addi r3, r3, 0xc
/* 80A8EE3C  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80A8EE40  4B 89 95 ED */	bl checkPass__12J3DFrameCtrlFf
/* 80A8EE44  2C 03 00 00 */	cmpwi r3, 0
/* 80A8EE48  41 82 00 30 */	beq lbl_80A8EE78
/* 80A8EE4C  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050004@ha */
/* 80A8EE50  38 03 00 04 */	addi r0, r3, 0x0004 /* 0x00050004@l */
/* 80A8EE54  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A8EE58  38 7E 06 0C */	addi r3, r30, 0x60c
/* 80A8EE5C  38 81 00 0C */	addi r4, r1, 0xc
/* 80A8EE60  38 A0 00 00 */	li r5, 0
/* 80A8EE64  38 C0 FF FF */	li r6, -1
/* 80A8EE68  81 9E 06 1C */	lwz r12, 0x61c(r30)
/* 80A8EE6C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80A8EE70  7D 89 03 A6 */	mtctr r12
/* 80A8EE74  4E 80 04 21 */	bctrl 
lbl_80A8EE78:
/* 80A8EE78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A8EE7C  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A8EE80  80 7C 5D B4 */	lwz r3, 0x5db4(r28)
/* 80A8EE84  80 03 05 80 */	lwz r0, 0x580(r3)
/* 80A8EE88  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 80A8EE8C  41 82 00 80 */	beq lbl_80A8EF0C
/* 80A8EE90  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A8EE94  81 8C 00 E0 */	lwz r12, 0xe0(r12)
/* 80A8EE98  7D 89 03 A6 */	mtctr r12
/* 80A8EE9C  4E 80 04 21 */	bctrl 
/* 80A8EEA0  FC 40 08 90 */	fmr f2, f1
/* 80A8EEA4  7F C3 F3 78 */	mr r3, r30
/* 80A8EEA8  38 80 00 17 */	li r4, 0x17
/* 80A8EEAC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80A8EEB0  38 A0 00 00 */	li r5, 0
/* 80A8EEB4  4B FF 9E 61 */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8EEB8  80 7C 5D B4 */	lwz r3, 0x5db4(r28)
/* 80A8EEBC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A8EEC0  81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 80A8EEC4  7D 89 03 A6 */	mtctr r12
/* 80A8EEC8  4E 80 04 21 */	bctrl 
/* 80A8EECC  FC 00 08 1E */	fctiwz f0, f1
/* 80A8EED0  D8 01 00 F8 */	stfd f0, 0xf8(r1)
/* 80A8EED4  80 01 00 FC */	lwz r0, 0xfc(r1)
/* 80A8EED8  7C 00 07 34 */	extsh r0, r0
/* 80A8EEDC  C8 3F 00 A0 */	lfd f1, 0xa0(r31)
/* 80A8EEE0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A8EEE4  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80A8EEE8  3C 00 43 30 */	lis r0, 0x4330
/* 80A8EEEC  90 01 00 F0 */	stw r0, 0xf0(r1)
/* 80A8EEF0  C8 01 00 F0 */	lfd f0, 0xf0(r1)
/* 80A8EEF4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80A8EEF8  80 7E 05 E8 */	lwz r3, 0x5e8(r30)
/* 80A8EEFC  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80A8EF00  A8 7E 06 46 */	lha r3, 0x646(r30)
/* 80A8EF04  38 03 00 01 */	addi r0, r3, 1
/* 80A8EF08  B0 1E 06 46 */	sth r0, 0x646(r30)
lbl_80A8EF0C:
/* 80A8EF0C  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 80A8EF10  D0 1E 06 90 */	stfs f0, 0x690(r30)
/* 80A8EF14  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80A8EF18  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80A8EF1C  40 82 01 08 */	bne lbl_80A8F024
/* 80A8EF20  38 00 00 02 */	li r0, 2
/* 80A8EF24  B0 1E 06 42 */	sth r0, 0x642(r30)
/* 80A8EF28  38 00 00 00 */	li r0, 0
/* 80A8EF2C  B0 1E 06 46 */	sth r0, 0x646(r30)
/* 80A8EF30  38 61 00 98 */	addi r3, r1, 0x98
/* 80A8EF34  4B 5E 86 49 */	bl __ct__11dBgS_GndChkFv
/* 80A8EF38  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80A8EF3C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A8EF40  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80A8EF44  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80A8EF48  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80A8EF4C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A8EF50  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80A8EF54  EC 01 00 2A */	fadds f0, f1, f0
/* 80A8EF58  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A8EF5C  38 61 00 98 */	addi r3, r1, 0x98
/* 80A8EF60  38 81 00 1C */	addi r4, r1, 0x1c
/* 80A8EF64  4B 7D 8D C5 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80A8EF68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A8EF6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A8EF70  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 80A8EF74  7F 83 E3 78 */	mr r3, r28
/* 80A8EF78  38 81 00 98 */	addi r4, r1, 0x98
/* 80A8EF7C  4B 5E 55 25 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80A8EF80  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80A8EF84  EC 00 08 28 */	fsubs f0, f0, f1
/* 80A8EF88  FC 00 02 10 */	fabs f0, f0
/* 80A8EF8C  FC 20 00 18 */	frsp f1, f0
/* 80A8EF90  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80A8EF94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8EF98  40 80 00 28 */	bge lbl_80A8EFC0
/* 80A8EF9C  7F 83 E3 78 */	mr r3, r28
/* 80A8EFA0  38 81 00 98 */	addi r4, r1, 0x98
/* 80A8EFA4  4B 5E 54 FD */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80A8EFA8  D0 3E 04 D4 */	stfs f1, 0x4d4(r30)
/* 80A8EFAC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80A8EFB0  D0 1E 09 1C */	stfs f0, 0x91c(r30)
/* 80A8EFB4  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80A8EFB8  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80A8EFBC  48 00 00 5C */	b lbl_80A8F018
lbl_80A8EFC0:
/* 80A8EFC0  38 00 00 0F */	li r0, 0xf
/* 80A8EFC4  B0 1E 06 42 */	sth r0, 0x642(r30)
/* 80A8EFC8  38 00 00 00 */	li r0, 0
/* 80A8EFCC  B0 1E 06 46 */	sth r0, 0x646(r30)
/* 80A8EFD0  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050003@ha */
/* 80A8EFD4  38 03 00 03 */	addi r0, r3, 0x0003 /* 0x00050003@l */
/* 80A8EFD8  90 01 00 08 */	stw r0, 8(r1)
/* 80A8EFDC  38 7E 06 0C */	addi r3, r30, 0x60c
/* 80A8EFE0  38 81 00 08 */	addi r4, r1, 8
/* 80A8EFE4  38 A0 00 00 */	li r5, 0
/* 80A8EFE8  38 C0 FF FF */	li r6, -1
/* 80A8EFEC  81 9E 06 1C */	lwz r12, 0x61c(r30)
/* 80A8EFF0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80A8EFF4  7D 89 03 A6 */	mtctr r12
/* 80A8EFF8  4E 80 04 21 */	bctrl 
/* 80A8EFFC  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 80A8F000  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80A8F004  38 61 00 98 */	addi r3, r1, 0x98
/* 80A8F008  38 80 FF FF */	li r4, -1
/* 80A8F00C  4B 5E 85 E5 */	bl __dt__11dBgS_GndChkFv
/* 80A8F010  38 60 00 00 */	li r3, 0
/* 80A8F014  48 00 00 D0 */	b lbl_80A8F0E4
lbl_80A8F018:
/* 80A8F018  38 61 00 98 */	addi r3, r1, 0x98
/* 80A8F01C  38 80 FF FF */	li r4, -1
/* 80A8F020  4B 5E 85 D1 */	bl __dt__11dBgS_GndChkFv
lbl_80A8F024:
/* 80A8F024  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80A8F028  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80A8F02C  A8 1E 06 4C */	lha r0, 0x64c(r30)
/* 80A8F030  2C 00 00 00 */	cmpwi r0, 0
/* 80A8F034  41 82 00 14 */	beq lbl_80A8F048
/* 80A8F038  3B A0 00 01 */	li r29, 1
/* 80A8F03C  C0 1F 01 28 */	lfs f0, 0x128(r31)
/* 80A8F040  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80A8F044  48 00 00 08 */	b lbl_80A8F04C
lbl_80A8F048:
/* 80A8F048  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_80A8F04C:
/* 80A8F04C  38 00 00 0A */	li r0, 0xa
/* 80A8F050  98 1E 06 F0 */	stb r0, 0x6f0(r30)
/* 80A8F054  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A8F058  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A8F05C  83 83 5D AC */	lwz r28, 0x5dac(r3)
/* 80A8F060  38 61 00 28 */	addi r3, r1, 0x28
/* 80A8F064  4B 5E 8C 05 */	bl __ct__11dBgS_LinChkFv
/* 80A8F068  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80A8F06C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A8F070  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80A8F074  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80A8F078  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80A8F07C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A8F080  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80A8F084  EC 01 00 2A */	fadds f0, f1, f0
/* 80A8F088  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A8F08C  38 61 00 28 */	addi r3, r1, 0x28
/* 80A8F090  38 9C 05 38 */	addi r4, r28, 0x538
/* 80A8F094  38 A1 00 10 */	addi r5, r1, 0x10
/* 80A8F098  7F C6 F3 78 */	mr r6, r30
/* 80A8F09C  4B 5E 8C C9 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80A8F0A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A8F0A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A8F0A8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80A8F0AC  38 81 00 28 */	addi r4, r1, 0x28
/* 80A8F0B0  4B 5E 53 05 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80A8F0B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A8F0B8  41 82 00 1C */	beq lbl_80A8F0D4
/* 80A8F0BC  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80A8F0C0  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80A8F0C4  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80A8F0C8  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80A8F0CC  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80A8F0D0  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
lbl_80A8F0D4:
/* 80A8F0D4  38 61 00 28 */	addi r3, r1, 0x28
/* 80A8F0D8  38 80 FF FF */	li r4, -1
/* 80A8F0DC  4B 5E 8C 01 */	bl __dt__11dBgS_LinChkFv
/* 80A8F0E0  7F A3 EB 78 */	mr r3, r29
lbl_80A8F0E4:
/* 80A8F0E4  39 61 01 10 */	addi r11, r1, 0x110
/* 80A8F0E8  4B 8D 31 3D */	bl _restgpr_28
/* 80A8F0EC  80 01 01 14 */	lwz r0, 0x114(r1)
/* 80A8F0F0  7C 08 03 A6 */	mtlr r0
/* 80A8F0F4  38 21 01 10 */	addi r1, r1, 0x110
/* 80A8F0F8  4E 80 00 20 */	blr 
