lbl_8010EAC4:
/* 8010EAC4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8010EAC8  7C 08 02 A6 */	mflr r0
/* 8010EACC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8010EAD0  39 61 00 30 */	addi r11, r1, 0x30
/* 8010EAD4  48 25 37 05 */	bl _savegpr_28
/* 8010EAD8  7C 7D 1B 78 */	mr r29, r3
/* 8010EADC  7C 9E 23 78 */	mr r30, r4
/* 8010EAE0  80 63 07 18 */	lwz r3, 0x718(r3)
/* 8010EAE4  4B F9 A7 65 */	bl simpleAnmPlay__9daAlink_cFP10J3DAnmBase
/* 8010EAE8  80 7D 07 1C */	lwz r3, 0x71c(r29)
/* 8010EAEC  4B F9 A7 5D */	bl simpleAnmPlay__9daAlink_cFP10J3DAnmBase
/* 8010EAF0  2C 1E 00 00 */	cmpwi r30, 0
/* 8010EAF4  40 82 00 10 */	bne lbl_8010EB04
/* 8010EAF8  A0 1D 1F BC */	lhz r0, 0x1fbc(r29)
/* 8010EAFC  28 00 02 47 */	cmplwi r0, 0x247
/* 8010EB00  40 82 00 10 */	bne lbl_8010EB10
lbl_8010EB04:
/* 8010EB04  3B FD 20 48 */	addi r31, r29, 0x2048
/* 8010EB08  A3 9D 1F BC */	lhz r28, 0x1fbc(r29)
/* 8010EB0C  48 00 00 0C */	b lbl_8010EB18
lbl_8010EB10:
/* 8010EB10  3B FD 1F D0 */	addi r31, r29, 0x1fd0
/* 8010EB14  A3 9D 1F 58 */	lhz r28, 0x1f58(r29)
lbl_8010EB18:
/* 8010EB18  7F A3 EB 78 */	mr r3, r29
/* 8010EB1C  38 80 01 00 */	li r4, 0x100
/* 8010EB20  4B F9 D9 31 */	bl getMainBckData__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 8010EB24  A0 63 00 00 */	lhz r3, 0(r3)
/* 8010EB28  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 8010EB2C  7C 00 18 40 */	cmplw r0, r3
/* 8010EB30  40 82 02 B8 */	bne lbl_8010EDE8
/* 8010EB34  7F E3 FB 78 */	mr r3, r31
/* 8010EB38  48 04 F9 95 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8010EB3C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010EB40  41 82 02 70 */	beq lbl_8010EDB0
/* 8010EB44  2C 1E 00 00 */	cmpwi r30, 0
/* 8010EB48  41 82 00 30 */	beq lbl_8010EB78
/* 8010EB4C  7F A3 EB 78 */	mr r3, r29
/* 8010EB50  38 80 01 01 */	li r4, 0x101
/* 8010EB54  4B F9 D8 FD */	bl getMainBckData__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 8010EB58  A0 83 00 02 */	lhz r4, 2(r3)
/* 8010EB5C  7F A3 EB 78 */	mr r3, r29
/* 8010EB60  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8010EB64  4B F9 E8 11 */	bl setUpperAnimeBaseMorf__9daAlink_cFUsf
/* 8010EB68  7F A3 EB 78 */	mr r3, r29
/* 8010EB6C  38 80 01 01 */	li r4, 0x101
/* 8010EB70  4B FA 0F A5 */	bl setFacePriAnime__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 8010EB74  48 00 00 14 */	b lbl_8010EB88
lbl_8010EB78:
/* 8010EB78  7F A3 EB 78 */	mr r3, r29
/* 8010EB7C  38 80 01 01 */	li r4, 0x101
/* 8010EB80  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8010EB84  4B F9 E4 2D */	bl setSingleAnimeBaseMorf__9daAlink_cFQ29daAlink_c11daAlink_ANMf
lbl_8010EB88:
/* 8010EB88  38 00 00 00 */	li r0, 0
/* 8010EB8C  B0 1D 30 18 */	sth r0, 0x3018(r29)
/* 8010EB90  A0 7D 2F DC */	lhz r3, 0x2fdc(r29)
/* 8010EB94  28 03 00 6A */	cmplwi r3, 0x6a
/* 8010EB98  41 82 01 F8 */	beq lbl_8010ED90
/* 8010EB9C  28 03 00 9F */	cmplwi r3, 0x9f
/* 8010EBA0  41 82 01 F0 */	beq lbl_8010ED90
/* 8010EBA4  28 03 00 7C */	cmplwi r3, 0x7c
/* 8010EBA8  41 82 01 E8 */	beq lbl_8010ED90
/* 8010EBAC  28 03 00 7D */	cmplwi r3, 0x7d
/* 8010EBB0  40 82 00 24 */	bne lbl_8010EBD4
/* 8010EBB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8010EBB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8010EBBC  C0 23 5D C0 */	lfs f1, 0x5dc0(r3)
/* 8010EBC0  C0 02 93 8C */	lfs f0, lit_8783(r2)
/* 8010EBC4  EC 01 00 2A */	fadds f0, f1, f0
/* 8010EBC8  D0 03 5D C0 */	stfs f0, 0x5dc0(r3)
/* 8010EBCC  98 03 5E B6 */	stb r0, 0x5eb6(r3)
/* 8010EBD0  48 00 01 C0 */	b lbl_8010ED90
lbl_8010EBD4:
/* 8010EBD4  28 03 00 7E */	cmplwi r3, 0x7e
/* 8010EBD8  40 82 00 24 */	bne lbl_8010EBFC
/* 8010EBDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8010EBE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8010EBE4  C0 23 5D C0 */	lfs f1, 0x5dc0(r3)
/* 8010EBE8  C0 02 94 04 */	lfs f0, lit_13794(r2)
/* 8010EBEC  EC 01 00 2A */	fadds f0, f1, f0
/* 8010EBF0  D0 03 5D C0 */	stfs f0, 0x5dc0(r3)
/* 8010EBF4  98 03 5E B6 */	stb r0, 0x5eb6(r3)
/* 8010EBF8  48 00 01 98 */	b lbl_8010ED90
lbl_8010EBFC:
/* 8010EBFC  28 03 00 7F */	cmplwi r3, 0x7f
/* 8010EC00  40 82 00 24 */	bne lbl_8010EC24
/* 8010EC04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8010EC08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8010EC0C  C0 23 5D C0 */	lfs f1, 0x5dc0(r3)
/* 8010EC10  C0 02 94 28 */	lfs f0, lit_14621(r2)
/* 8010EC14  EC 01 00 2A */	fadds f0, f1, f0
/* 8010EC18  D0 03 5D C0 */	stfs f0, 0x5dc0(r3)
/* 8010EC1C  98 03 5E B6 */	stb r0, 0x5eb6(r3)
/* 8010EC20  48 00 01 70 */	b lbl_8010ED90
lbl_8010EC24:
/* 8010EC24  28 03 00 76 */	cmplwi r3, 0x76
/* 8010EC28  40 82 00 54 */	bne lbl_8010EC7C
/* 8010EC2C  38 00 00 03 */	li r0, 3
/* 8010EC30  98 1D 2F D3 */	stb r0, 0x2fd3(r29)
/* 8010EC34  88 7D 2F 9C */	lbz r3, 0x2f9c(r29)
/* 8010EC38  4B F1 F9 89 */	bl dComIfGp_getSelectItemNum__Fi
/* 8010EC3C  7C 60 07 34 */	extsh r0, r3
/* 8010EC40  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 8010EC44  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8010EC48  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010EC4C  3C 00 43 30 */	lis r0, 0x4330
/* 8010EC50  90 01 00 10 */	stw r0, 0x10(r1)
/* 8010EC54  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8010EC58  EC 20 08 28 */	fsubs f1, f0, f1
/* 8010EC5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8010EC60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8010EC64  C0 03 5D C0 */	lfs f0, 0x5dc0(r3)
/* 8010EC68  EC 00 08 2A */	fadds f0, f0, f1
/* 8010EC6C  D0 03 5D C0 */	stfs f0, 0x5dc0(r3)
/* 8010EC70  38 00 00 00 */	li r0, 0
/* 8010EC74  98 03 5E B6 */	stb r0, 0x5eb6(r3)
/* 8010EC78  48 00 01 18 */	b lbl_8010ED90
lbl_8010EC7C:
/* 8010EC7C  28 03 00 61 */	cmplwi r3, 0x61
/* 8010EC80  41 82 00 14 */	beq lbl_8010EC94
/* 8010EC84  28 03 00 78 */	cmplwi r3, 0x78
/* 8010EC88  41 82 00 0C */	beq lbl_8010EC94
/* 8010EC8C  28 03 00 69 */	cmplwi r3, 0x69
/* 8010EC90  40 82 00 28 */	bne lbl_8010ECB8
lbl_8010EC94:
/* 8010EC94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8010EC98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8010EC9C  C0 23 5D C0 */	lfs f1, 0x5dc0(r3)
/* 8010ECA0  C0 02 94 28 */	lfs f0, lit_14621(r2)
/* 8010ECA4  EC 01 00 2A */	fadds f0, f1, f0
/* 8010ECA8  D0 03 5D C0 */	stfs f0, 0x5dc0(r3)
/* 8010ECAC  38 00 00 00 */	li r0, 0
/* 8010ECB0  98 03 5E B6 */	stb r0, 0x5eb6(r3)
/* 8010ECB4  48 00 00 DC */	b lbl_8010ED90
lbl_8010ECB8:
/* 8010ECB8  28 03 00 64 */	cmplwi r3, 0x64
/* 8010ECBC  41 82 00 0C */	beq lbl_8010ECC8
/* 8010ECC0  28 03 00 65 */	cmplwi r3, 0x65
/* 8010ECC4  40 82 00 28 */	bne lbl_8010ECEC
lbl_8010ECC8:
/* 8010ECC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8010ECCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8010ECD0  C0 23 5D C0 */	lfs f1, 0x5dc0(r3)
/* 8010ECD4  C0 02 93 1C */	lfs f0, lit_7448(r2)
/* 8010ECD8  EC 01 00 2A */	fadds f0, f1, f0
/* 8010ECDC  D0 03 5D C0 */	stfs f0, 0x5dc0(r3)
/* 8010ECE0  38 00 00 00 */	li r0, 0
/* 8010ECE4  98 03 5E B6 */	stb r0, 0x5eb6(r3)
/* 8010ECE8  48 00 00 A8 */	b lbl_8010ED90
lbl_8010ECEC:
/* 8010ECEC  28 03 00 63 */	cmplwi r3, 0x63
/* 8010ECF0  41 82 00 14 */	beq lbl_8010ED04
/* 8010ECF4  28 03 00 79 */	cmplwi r3, 0x79
/* 8010ECF8  41 82 00 0C */	beq lbl_8010ED04
/* 8010ECFC  28 03 00 6B */	cmplwi r3, 0x6b
/* 8010ED00  40 82 00 44 */	bne lbl_8010ED44
lbl_8010ED04:
/* 8010ED04  4B F1 EF A5 */	bl dComIfGs_getMaxLifeGauge__Fv
/* 8010ED08  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8010ED0C  C8 22 96 08 */	lfd f1, lit_32072(r2)
/* 8010ED10  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010ED14  3C 00 43 30 */	lis r0, 0x4330
/* 8010ED18  90 01 00 10 */	stw r0, 0x10(r1)
/* 8010ED1C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8010ED20  EC 20 08 28 */	fsubs f1, f0, f1
/* 8010ED24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8010ED28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8010ED2C  C0 03 5D C0 */	lfs f0, 0x5dc0(r3)
/* 8010ED30  EC 00 08 2A */	fadds f0, f0, f1
/* 8010ED34  D0 03 5D C0 */	stfs f0, 0x5dc0(r3)
/* 8010ED38  38 00 00 00 */	li r0, 0
/* 8010ED3C  98 03 5E B6 */	stb r0, 0x5eb6(r3)
/* 8010ED40  48 00 00 50 */	b lbl_8010ED90
lbl_8010ED44:
/* 8010ED44  28 03 00 77 */	cmplwi r3, 0x77
/* 8010ED48  41 82 00 0C */	beq lbl_8010ED54
/* 8010ED4C  28 03 00 73 */	cmplwi r3, 0x73
/* 8010ED50  40 82 00 40 */	bne lbl_8010ED90
lbl_8010ED54:
/* 8010ED54  4B F1 EF 55 */	bl dComIfGs_getMaxLifeGauge__Fv
/* 8010ED58  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8010ED5C  C8 22 96 08 */	lfd f1, lit_32072(r2)
/* 8010ED60  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010ED64  3C 00 43 30 */	lis r0, 0x4330
/* 8010ED68  90 01 00 10 */	stw r0, 0x10(r1)
/* 8010ED6C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8010ED70  EC 20 08 28 */	fsubs f1, f0, f1
/* 8010ED74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8010ED78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8010ED7C  C0 03 5D C0 */	lfs f0, 0x5dc0(r3)
/* 8010ED80  EC 00 08 2A */	fadds f0, f0, f1
/* 8010ED84  D0 03 5D C0 */	stfs f0, 0x5dc0(r3)
/* 8010ED88  38 00 00 00 */	li r0, 0
/* 8010ED8C  98 03 5E B6 */	stb r0, 0x5eb6(r3)
lbl_8010ED90:
/* 8010ED90  7F A3 EB 78 */	mr r3, r29
/* 8010ED94  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010019@ha */
/* 8010ED98  38 84 00 19 */	addi r4, r4, 0x0019 /* 0x00010019@l */
/* 8010ED9C  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8010EDA0  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8010EDA4  7D 89 03 A6 */	mtctr r12
/* 8010EDA8  4E 80 04 21 */	bctrl 
/* 8010EDAC  48 00 06 94 */	b lbl_8010F440
lbl_8010EDB0:
/* 8010EDB0  7F E3 FB 78 */	mr r3, r31
/* 8010EDB4  C0 22 93 00 */	lfs f1, lit_6895(r2)
/* 8010EDB8  48 21 96 75 */	bl checkPass__12J3DFrameCtrlFf
/* 8010EDBC  2C 03 00 00 */	cmpwi r3, 0
/* 8010EDC0  41 82 06 80 */	beq lbl_8010F440
/* 8010EDC4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8010EDC8  80 7D 07 1C */	lwz r3, 0x71c(r29)
/* 8010EDCC  D0 03 00 08 */	stfs f0, 8(r3)
/* 8010EDD0  80 7D 07 08 */	lwz r3, 0x708(r29)
/* 8010EDD4  80 63 00 04 */	lwz r3, 4(r3)
/* 8010EDD8  38 63 00 58 */	addi r3, r3, 0x58
/* 8010EDDC  80 9D 07 1C */	lwz r4, 0x71c(r29)
/* 8010EDE0  48 22 0E E5 */	bl entryTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
/* 8010EDE4  48 00 06 5C */	b lbl_8010F440
lbl_8010EDE8:
/* 8010EDE8  7F A3 EB 78 */	mr r3, r29
/* 8010EDEC  38 80 01 01 */	li r4, 0x101
/* 8010EDF0  4B F9 D6 61 */	bl getMainBckData__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 8010EDF4  A0 63 00 00 */	lhz r3, 0(r3)
/* 8010EDF8  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 8010EDFC  7C 00 18 40 */	cmplw r0, r3
/* 8010EE00  40 82 03 20 */	bne lbl_8010F120
/* 8010EE04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8010EE08  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 8010EE0C  A0 7F 00 02 */	lhz r3, 2(r31)
/* 8010EE10  A0 1F 5E 16 */	lhz r0, 0x5e16(r31)
/* 8010EE14  7C 00 18 40 */	cmplw r0, r3
/* 8010EE18  40 82 06 28 */	bne lbl_8010F440
/* 8010EE1C  38 00 00 00 */	li r0, 0
/* 8010EE20  90 1D 07 0C */	stw r0, 0x70c(r29)
/* 8010EE24  A0 1D 2F DC */	lhz r0, 0x2fdc(r29)
/* 8010EE28  28 00 00 64 */	cmplwi r0, 0x64
/* 8010EE2C  40 82 00 90 */	bne lbl_8010EEBC
/* 8010EE30  2C 1E 00 00 */	cmpwi r30, 0
/* 8010EE34  41 82 00 3C */	beq lbl_8010EE70
/* 8010EE38  7F A3 EB 78 */	mr r3, r29
/* 8010EE3C  38 80 01 02 */	li r4, 0x102
/* 8010EE40  4B F9 D6 11 */	bl getMainBckData__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 8010EE44  A0 83 00 02 */	lhz r4, 2(r3)
/* 8010EE48  7F A3 EB 78 */	mr r3, r29
/* 8010EE4C  38 A0 00 02 */	li r5, 2
/* 8010EE50  3C C0 80 39 */	lis r6, m__20daAlinkHIO_bottle_c0@ha
/* 8010EE54  38 C6 E9 0C */	addi r6, r6, m__20daAlinkHIO_bottle_c0@l
/* 8010EE58  38 C6 00 14 */	addi r6, r6, 0x14
/* 8010EE5C  4B F9 E8 95 */	bl setUpperAnimeParam__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERPC16daAlinkHIO_anm_c
/* 8010EE60  7F A3 EB 78 */	mr r3, r29
/* 8010EE64  38 80 01 02 */	li r4, 0x102
/* 8010EE68  4B FA 0C AD */	bl setFacePriAnime__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 8010EE6C  48 00 00 1C */	b lbl_8010EE88
lbl_8010EE70:
/* 8010EE70  7F A3 EB 78 */	mr r3, r29
/* 8010EE74  38 80 01 02 */	li r4, 0x102
/* 8010EE78  3C A0 80 39 */	lis r5, m__20daAlinkHIO_bottle_c0@ha
/* 8010EE7C  38 A5 E9 0C */	addi r5, r5, m__20daAlinkHIO_bottle_c0@l
/* 8010EE80  38 A5 00 14 */	addi r5, r5, 0x14
/* 8010EE84  4B F9 E2 71 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
lbl_8010EE88:
/* 8010EE88  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 8010EE8C  80 7D 07 2C */	lwz r3, 0x72c(r29)
/* 8010EE90  D0 03 00 08 */	stfs f0, 8(r3)
/* 8010EE94  A0 1D 06 04 */	lhz r0, 0x604(r29)
/* 8010EE98  2C 00 00 05 */	cmpwi r0, 5
/* 8010EE9C  40 82 05 A4 */	bne lbl_8010F440
/* 8010EEA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8010EEA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8010EEA8  38 63 00 9C */	addi r3, r3, 0x9c
/* 8010EEAC  88 9D 2F 9C */	lbz r4, 0x2f9c(r29)
/* 8010EEB0  38 A0 00 65 */	li r5, 0x65
/* 8010EEB4  4B F2 46 E5 */	bl setEquipBottleItemIn__17dSv_player_item_cFUcUc
/* 8010EEB8  48 00 05 88 */	b lbl_8010F440
lbl_8010EEBC:
/* 8010EEBC  A8 1D 30 0C */	lha r0, 0x300c(r29)
/* 8010EEC0  2C 00 00 00 */	cmpwi r0, 0
/* 8010EEC4  40 82 00 24 */	bne lbl_8010EEE8
/* 8010EEC8  38 00 00 01 */	li r0, 1
/* 8010EECC  B0 1D 30 0C */	sth r0, 0x300c(r29)
/* 8010EED0  80 7D 07 08 */	lwz r3, 0x708(r29)
/* 8010EED4  80 63 00 04 */	lwz r3, 4(r3)
/* 8010EED8  38 63 00 58 */	addi r3, r3, 0x58
/* 8010EEDC  80 9D 07 20 */	lwz r4, 0x720(r29)
/* 8010EEE0  48 22 0D E5 */	bl entryTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
/* 8010EEE4  48 00 05 5C */	b lbl_8010F440
lbl_8010EEE8:
/* 8010EEE8  80 7D 07 20 */	lwz r3, 0x720(r29)
/* 8010EEEC  4B F9 A3 5D */	bl simpleAnmPlay__9daAlink_cFP10J3DAnmBase
/* 8010EEF0  2C 03 00 00 */	cmpwi r3, 0
/* 8010EEF4  41 82 05 4C */	beq lbl_8010F440
/* 8010EEF8  A0 1D 2F DC */	lhz r0, 0x2fdc(r29)
/* 8010EEFC  28 00 00 6A */	cmplwi r0, 0x6a
/* 8010EF00  40 82 00 78 */	bne lbl_8010EF78
/* 8010EF04  A3 FF 00 02 */	lhz r31, 2(r31)
/* 8010EF08  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 8010EF0C  28 00 00 02 */	cmplwi r0, 2
/* 8010EF10  41 81 00 10 */	bgt lbl_8010EF20
/* 8010EF14  4B F1 ED 95 */	bl dComIfGs_getMaxLifeGauge__Fv
/* 8010EF18  B0 7D 30 18 */	sth r3, 0x3018(r29)
/* 8010EF1C  48 00 00 EC */	b lbl_8010F008
lbl_8010EF20:
/* 8010EF20  28 00 00 04 */	cmplwi r0, 4
/* 8010EF24  41 81 00 18 */	bgt lbl_8010EF3C
/* 8010EF28  4B F1 ED 81 */	bl dComIfGs_getMaxLifeGauge__Fv
/* 8010EF2C  54 60 FC 7E */	rlwinm r0, r3, 0x1f, 0x11, 0x1f
/* 8010EF30  7C 1F 00 50 */	subf r0, r31, r0
/* 8010EF34  B0 1D 30 18 */	sth r0, 0x3018(r29)
/* 8010EF38  48 00 00 D0 */	b lbl_8010F008
lbl_8010EF3C:
/* 8010EF3C  4B F1 ED 6D */	bl dComIfGs_getMaxLifeGauge__Fv
/* 8010EF40  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8010EF44  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 8010EF48  7C 00 18 40 */	cmplw r0, r3
/* 8010EF4C  41 82 00 14 */	beq lbl_8010EF60
/* 8010EF50  48 15 89 1D */	bl cM_rnd__Fv
/* 8010EF54  C0 02 92 98 */	lfs f0, lit_5943(r2)
/* 8010EF58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010EF5C  40 80 00 10 */	bge lbl_8010EF6C
lbl_8010EF60:
/* 8010EF60  38 00 FF FC */	li r0, -4
/* 8010EF64  B0 1D 30 18 */	sth r0, 0x3018(r29)
/* 8010EF68  48 00 00 A0 */	b lbl_8010F008
lbl_8010EF6C:
/* 8010EF6C  38 00 00 04 */	li r0, 4
/* 8010EF70  B0 1D 30 18 */	sth r0, 0x3018(r29)
/* 8010EF74  48 00 00 94 */	b lbl_8010F008
lbl_8010EF78:
/* 8010EF78  28 00 00 7C */	cmplwi r0, 0x7c
/* 8010EF7C  40 82 00 7C */	bne lbl_8010EFF8
/* 8010EF80  C0 22 93 44 */	lfs f1, lit_7977(r2)
/* 8010EF84  48 15 89 D1 */	bl cM_rndF__Ff
/* 8010EF88  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 8010EF8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010EF90  40 80 00 10 */	bge lbl_8010EFA0
/* 8010EF94  4B F1 ED 15 */	bl dComIfGs_getMaxLifeGauge__Fv
/* 8010EF98  B0 7D 30 18 */	sth r3, 0x3018(r29)
/* 8010EF9C  48 00 00 6C */	b lbl_8010F008
lbl_8010EFA0:
/* 8010EFA0  C0 02 93 14 */	lfs f0, lit_7307(r2)
/* 8010EFA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010EFA8  40 80 00 2C */	bge lbl_8010EFD4
/* 8010EFAC  A0 7F 00 02 */	lhz r3, 2(r31)
/* 8010EFB0  38 03 FF FF */	addi r0, r3, -1
/* 8010EFB4  7C 00 00 D0 */	neg r0, r0
/* 8010EFB8  B0 1D 30 18 */	sth r0, 0x3018(r29)
/* 8010EFBC  A8 1D 30 18 */	lha r0, 0x3018(r29)
/* 8010EFC0  2C 00 00 00 */	cmpwi r0, 0
/* 8010EFC4  40 82 00 44 */	bne lbl_8010F008
/* 8010EFC8  38 00 FF FF */	li r0, -1
/* 8010EFCC  B0 1D 30 18 */	sth r0, 0x3018(r29)
/* 8010EFD0  48 00 00 38 */	b lbl_8010F008
lbl_8010EFD4:
/* 8010EFD4  C0 02 93 24 */	lfs f0, lit_7450(r2)
/* 8010EFD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010EFDC  40 80 00 10 */	bge lbl_8010EFEC
/* 8010EFE0  38 00 FF FC */	li r0, -4
/* 8010EFE4  B0 1D 30 18 */	sth r0, 0x3018(r29)
/* 8010EFE8  48 00 00 20 */	b lbl_8010F008
lbl_8010EFEC:
/* 8010EFEC  38 00 00 04 */	li r0, 4
/* 8010EFF0  B0 1D 30 18 */	sth r0, 0x3018(r29)
/* 8010EFF4  48 00 00 14 */	b lbl_8010F008
lbl_8010EFF8:
/* 8010EFF8  28 00 00 9F */	cmplwi r0, 0x9f
/* 8010EFFC  40 82 00 0C */	bne lbl_8010F008
/* 8010F000  38 00 FF FC */	li r0, -4
/* 8010F004  B0 1D 30 18 */	sth r0, 0x3018(r29)
lbl_8010F008:
/* 8010F008  A8 1D 30 18 */	lha r0, 0x3018(r29)
/* 8010F00C  2C 00 00 00 */	cmpwi r0, 0
/* 8010F010  41 80 00 10 */	blt lbl_8010F020
/* 8010F014  A0 1D 2F DC */	lhz r0, 0x2fdc(r29)
/* 8010F018  28 00 00 76 */	cmplwi r0, 0x76
/* 8010F01C  40 82 00 60 */	bne lbl_8010F07C
lbl_8010F020:
/* 8010F020  2C 1E 00 00 */	cmpwi r30, 0
/* 8010F024  41 82 00 3C */	beq lbl_8010F060
/* 8010F028  7F A3 EB 78 */	mr r3, r29
/* 8010F02C  38 80 01 03 */	li r4, 0x103
/* 8010F030  4B F9 D4 21 */	bl getMainBckData__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 8010F034  A0 83 00 02 */	lhz r4, 2(r3)
/* 8010F038  7F A3 EB 78 */	mr r3, r29
/* 8010F03C  38 A0 00 02 */	li r5, 2
/* 8010F040  3C C0 80 39 */	lis r6, m__20daAlinkHIO_bottle_c0@ha
/* 8010F044  38 C6 E9 0C */	addi r6, r6, m__20daAlinkHIO_bottle_c0@l
/* 8010F048  38 C6 00 8C */	addi r6, r6, 0x8c
/* 8010F04C  4B F9 E6 A5 */	bl setUpperAnimeParam__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERPC16daAlinkHIO_anm_c
/* 8010F050  7F A3 EB 78 */	mr r3, r29
/* 8010F054  38 80 01 03 */	li r4, 0x103
/* 8010F058  4B FA 0A BD */	bl setFacePriAnime__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 8010F05C  48 00 00 78 */	b lbl_8010F0D4
lbl_8010F060:
/* 8010F060  7F A3 EB 78 */	mr r3, r29
/* 8010F064  38 80 01 03 */	li r4, 0x103
/* 8010F068  3C A0 80 39 */	lis r5, m__20daAlinkHIO_bottle_c0@ha
/* 8010F06C  38 A5 E9 0C */	addi r5, r5, m__20daAlinkHIO_bottle_c0@l
/* 8010F070  38 A5 00 8C */	addi r5, r5, 0x8c
/* 8010F074  4B F9 E0 81 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 8010F078  48 00 00 5C */	b lbl_8010F0D4
lbl_8010F07C:
/* 8010F07C  2C 1E 00 00 */	cmpwi r30, 0
/* 8010F080  41 82 00 3C */	beq lbl_8010F0BC
/* 8010F084  7F A3 EB 78 */	mr r3, r29
/* 8010F088  38 80 01 02 */	li r4, 0x102
/* 8010F08C  4B F9 D3 C5 */	bl getMainBckData__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 8010F090  A0 83 00 02 */	lhz r4, 2(r3)
/* 8010F094  7F A3 EB 78 */	mr r3, r29
/* 8010F098  38 A0 00 02 */	li r5, 2
/* 8010F09C  3C C0 80 39 */	lis r6, m__20daAlinkHIO_bottle_c0@ha
/* 8010F0A0  38 C6 E9 0C */	addi r6, r6, m__20daAlinkHIO_bottle_c0@l
/* 8010F0A4  38 C6 00 14 */	addi r6, r6, 0x14
/* 8010F0A8  4B F9 E6 49 */	bl setUpperAnimeParam__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERPC16daAlinkHIO_anm_c
/* 8010F0AC  7F A3 EB 78 */	mr r3, r29
/* 8010F0B0  38 80 01 02 */	li r4, 0x102
/* 8010F0B4  4B FA 0A 61 */	bl setFacePriAnime__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 8010F0B8  48 00 00 1C */	b lbl_8010F0D4
lbl_8010F0BC:
/* 8010F0BC  7F A3 EB 78 */	mr r3, r29
/* 8010F0C0  38 80 01 02 */	li r4, 0x102
/* 8010F0C4  3C A0 80 39 */	lis r5, m__20daAlinkHIO_bottle_c0@ha
/* 8010F0C8  38 A5 E9 0C */	addi r5, r5, m__20daAlinkHIO_bottle_c0@l
/* 8010F0CC  38 A5 00 14 */	addi r5, r5, 0x14
/* 8010F0D0  4B F9 E0 25 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
lbl_8010F0D4:
/* 8010F0D4  C0 02 93 14 */	lfs f0, lit_7307(r2)
/* 8010F0D8  80 7D 07 2C */	lwz r3, 0x72c(r29)
/* 8010F0DC  D0 03 00 08 */	stfs f0, 8(r3)
/* 8010F0E0  A0 1D 06 04 */	lhz r0, 0x604(r29)
/* 8010F0E4  2C 00 00 05 */	cmpwi r0, 5
/* 8010F0E8  40 82 00 18 */	bne lbl_8010F100
/* 8010F0EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8010F0F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8010F0F4  38 63 00 9C */	addi r3, r3, 0x9c
/* 8010F0F8  88 9D 2F 9C */	lbz r4, 0x2f9c(r29)
/* 8010F0FC  4B F2 45 C1 */	bl setEquipBottleItemEmpty__17dSv_player_item_cFUc
lbl_8010F100:
/* 8010F100  A0 1D 2F DC */	lhz r0, 0x2fdc(r29)
/* 8010F104  28 00 00 77 */	cmplwi r0, 0x77
/* 8010F108  41 82 00 0C */	beq lbl_8010F114
/* 8010F10C  28 00 00 73 */	cmplwi r0, 0x73
/* 8010F110  40 82 03 30 */	bne lbl_8010F440
lbl_8010F114:
/* 8010F114  38 00 01 FE */	li r0, 0x1fe
/* 8010F118  B0 1D 05 6E */	sth r0, 0x56e(r29)
/* 8010F11C  48 00 03 24 */	b lbl_8010F440
lbl_8010F120:
/* 8010F120  7F A3 EB 78 */	mr r3, r29
/* 8010F124  38 80 01 02 */	li r4, 0x102
/* 8010F128  4B F9 D3 29 */	bl getMainBckData__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 8010F12C  A0 63 00 00 */	lhz r3, 0(r3)
/* 8010F130  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 8010F134  7C 00 18 40 */	cmplw r0, r3
/* 8010F138  41 82 00 20 */	beq lbl_8010F158
/* 8010F13C  7F A3 EB 78 */	mr r3, r29
/* 8010F140  38 80 01 03 */	li r4, 0x103
/* 8010F144  4B F9 D3 0D */	bl getMainBckData__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 8010F148  A0 63 00 00 */	lhz r3, 0(r3)
/* 8010F14C  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 8010F150  7C 00 18 40 */	cmplw r0, r3
/* 8010F154  40 82 02 20 */	bne lbl_8010F374
lbl_8010F158:
/* 8010F158  7F E3 FB 78 */	mr r3, r31
/* 8010F15C  48 04 F3 71 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8010F160  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010F164  41 82 00 48 */	beq lbl_8010F1AC
/* 8010F168  80 1D 06 14 */	lwz r0, 0x614(r29)
/* 8010F16C  28 00 00 2A */	cmplwi r0, 0x2a
/* 8010F170  40 82 00 20 */	bne lbl_8010F190
/* 8010F174  7F A3 EB 78 */	mr r3, r29
/* 8010F178  38 80 00 EE */	li r4, 0xee
/* 8010F17C  3C A0 80 39 */	lis r5, m__20daAlinkHIO_pickUp_c0@ha
/* 8010F180  38 A5 E8 40 */	addi r5, r5, m__20daAlinkHIO_pickUp_c0@l
/* 8010F184  38 A5 00 14 */	addi r5, r5, 0x14
/* 8010F188  4B F9 DF 6D */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 8010F18C  48 00 02 B4 */	b lbl_8010F440
lbl_8010F190:
/* 8010F190  7F A3 EB 78 */	mr r3, r29
/* 8010F194  A0 1D 30 CE */	lhz r0, 0x30ce(r29)
/* 8010F198  20 00 00 48 */	subfic r0, r0, 0x48
/* 8010F19C  7C 00 00 34 */	cntlzw r0, r0
/* 8010F1A0  54 04 DE 3E */	rlwinm r4, r0, 0x1b, 0x18, 0x1f
/* 8010F1A4  4B FA A6 99 */	bl allUnequip__9daAlink_cFi
/* 8010F1A8  48 00 02 98 */	b lbl_8010F440
lbl_8010F1AC:
/* 8010F1AC  7F E3 FB 78 */	mr r3, r31
/* 8010F1B0  C0 22 94 B4 */	lfs f1, lit_17382(r2)
/* 8010F1B4  48 21 92 79 */	bl checkPass__12J3DFrameCtrlFf
/* 8010F1B8  2C 03 00 00 */	cmpwi r3, 0
/* 8010F1BC  41 82 00 1C */	beq lbl_8010F1D8
/* 8010F1C0  80 7D 07 08 */	lwz r3, 0x708(r29)
/* 8010F1C4  80 63 00 04 */	lwz r3, 4(r3)
/* 8010F1C8  38 63 00 58 */	addi r3, r3, 0x58
/* 8010F1CC  80 9D 07 18 */	lwz r4, 0x718(r29)
/* 8010F1D0  48 22 0A F5 */	bl entryTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
/* 8010F1D4  48 00 02 6C */	b lbl_8010F440
lbl_8010F1D8:
/* 8010F1D8  A8 1D 30 18 */	lha r0, 0x3018(r29)
/* 8010F1DC  2C 00 00 00 */	cmpwi r0, 0
/* 8010F1E0  41 80 00 7C */	blt lbl_8010F25C
/* 8010F1E4  7F E3 FB 78 */	mr r3, r31
/* 8010F1E8  C0 22 93 F0 */	lfs f1, lit_13382(r2)
/* 8010F1EC  48 21 92 41 */	bl checkPass__12J3DFrameCtrlFf
/* 8010F1F0  2C 03 00 00 */	cmpwi r3, 0
/* 8010F1F4  41 82 00 68 */	beq lbl_8010F25C
/* 8010F1F8  A8 9D 30 18 */	lha r4, 0x3018(r29)
/* 8010F1FC  7C 80 07 35 */	extsh. r0, r4
/* 8010F200  40 81 00 3C */	ble lbl_8010F23C
/* 8010F204  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8010F208  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8010F20C  C0 43 5D C0 */	lfs f2, 0x5dc0(r3)
/* 8010F210  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 8010F214  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8010F218  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010F21C  3C 00 43 30 */	lis r0, 0x4330
/* 8010F220  90 01 00 10 */	stw r0, 0x10(r1)
/* 8010F224  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8010F228  EC 00 08 28 */	fsubs f0, f0, f1
/* 8010F22C  EC 02 00 2A */	fadds f0, f2, f0
/* 8010F230  D0 03 5D C0 */	stfs f0, 0x5dc0(r3)
/* 8010F234  38 00 00 00 */	li r0, 0
/* 8010F238  98 03 5E B6 */	stb r0, 0x5eb6(r3)
lbl_8010F23C:
/* 8010F23C  7F A3 EB 78 */	mr r3, r29
/* 8010F240  3C 80 00 01 */	lis r4, 0x0001 /* 0x0001001A@ha */
/* 8010F244  38 84 00 1A */	addi r4, r4, 0x001A /* 0x0001001A@l */
/* 8010F248  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8010F24C  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8010F250  7D 89 03 A6 */	mtctr r12
/* 8010F254  4E 80 04 21 */	bctrl 
/* 8010F258  48 00 01 E8 */	b lbl_8010F440
lbl_8010F25C:
/* 8010F25C  A8 1D 30 18 */	lha r0, 0x3018(r29)
/* 8010F260  2C 00 00 00 */	cmpwi r0, 0
/* 8010F264  40 80 01 DC */	bge lbl_8010F440
/* 8010F268  7F E3 FB 78 */	mr r3, r31
/* 8010F26C  C0 22 92 9C */	lfs f1, lit_5944(r2)
/* 8010F270  48 21 91 BD */	bl checkPass__12J3DFrameCtrlFf
/* 8010F274  2C 03 00 00 */	cmpwi r3, 0
/* 8010F278  41 82 00 24 */	beq lbl_8010F29C
/* 8010F27C  7F A3 EB 78 */	mr r3, r29
/* 8010F280  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010026@ha */
/* 8010F284  38 84 00 26 */	addi r4, r4, 0x0026 /* 0x00010026@l */
/* 8010F288  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8010F28C  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8010F290  7D 89 03 A6 */	mtctr r12
/* 8010F294  4E 80 04 21 */	bctrl 
/* 8010F298  48 00 01 A8 */	b lbl_8010F440
lbl_8010F29C:
/* 8010F29C  7F E3 FB 78 */	mr r3, r31
/* 8010F2A0  C0 22 94 94 */	lfs f1, lit_16210(r2)
/* 8010F2A4  48 21 91 89 */	bl checkPass__12J3DFrameCtrlFf
/* 8010F2A8  2C 03 00 00 */	cmpwi r3, 0
/* 8010F2AC  41 82 01 94 */	beq lbl_8010F440
/* 8010F2B0  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020061@ha */
/* 8010F2B4  38 03 00 61 */	addi r0, r3, 0x0061 /* 0x00020061@l */
/* 8010F2B8  90 01 00 08 */	stw r0, 8(r1)
/* 8010F2BC  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8010F2C0  38 81 00 08 */	addi r4, r1, 8
/* 8010F2C4  38 A0 00 00 */	li r5, 0
/* 8010F2C8  38 C0 00 00 */	li r6, 0
/* 8010F2CC  38 E0 00 00 */	li r7, 0
/* 8010F2D0  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 8010F2D4  FC 40 08 90 */	fmr f2, f1
/* 8010F2D8  C0 62 92 BC */	lfs f3, lit_6041(r2)
/* 8010F2DC  FC 80 18 90 */	fmr f4, f3
/* 8010F2E0  39 00 00 00 */	li r8, 0
/* 8010F2E4  48 19 C6 A1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8010F2E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8010F2EC  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 8010F2F0  A0 64 00 02 */	lhz r3, 2(r4)
/* 8010F2F4  A8 BD 30 18 */	lha r5, 0x3018(r29)
/* 8010F2F8  7C 05 00 D0 */	neg r0, r5
/* 8010F2FC  7C 03 00 00 */	cmpw r3, r0
/* 8010F300  41 81 00 40 */	bgt lbl_8010F340
/* 8010F304  C0 44 5D C0 */	lfs f2, 0x5dc0(r4)
/* 8010F308  38 03 FF FF */	addi r0, r3, -1
/* 8010F30C  7C 00 00 D0 */	neg r0, r0
/* 8010F310  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 8010F314  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8010F318  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010F31C  3C 00 43 30 */	lis r0, 0x4330
/* 8010F320  90 01 00 10 */	stw r0, 0x10(r1)
/* 8010F324  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8010F328  EC 00 08 28 */	fsubs f0, f0, f1
/* 8010F32C  EC 02 00 2A */	fadds f0, f2, f0
/* 8010F330  D0 04 5D C0 */	stfs f0, 0x5dc0(r4)
/* 8010F334  38 00 00 00 */	li r0, 0
/* 8010F338  98 04 5E B6 */	stb r0, 0x5eb6(r4)
/* 8010F33C  48 00 01 04 */	b lbl_8010F440
lbl_8010F340:
/* 8010F340  C0 44 5D C0 */	lfs f2, 0x5dc0(r4)
/* 8010F344  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 8010F348  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 8010F34C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010F350  3C 00 43 30 */	lis r0, 0x4330
/* 8010F354  90 01 00 10 */	stw r0, 0x10(r1)
/* 8010F358  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8010F35C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8010F360  EC 02 00 2A */	fadds f0, f2, f0
/* 8010F364  D0 04 5D C0 */	stfs f0, 0x5dc0(r4)
/* 8010F368  38 00 00 00 */	li r0, 0
/* 8010F36C  98 04 5E B6 */	stb r0, 0x5eb6(r4)
/* 8010F370  48 00 00 D0 */	b lbl_8010F440
lbl_8010F374:
/* 8010F374  7F A3 EB 78 */	mr r3, r29
/* 8010F378  38 80 00 EE */	li r4, 0xee
/* 8010F37C  4B F9 D0 D5 */	bl getMainBckData__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 8010F380  A0 63 00 00 */	lhz r3, 0(r3)
/* 8010F384  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 8010F388  7C 00 18 40 */	cmplw r0, r3
/* 8010F38C  40 82 00 6C */	bne lbl_8010F3F8
/* 8010F390  7F E3 FB 78 */	mr r3, r31
/* 8010F394  48 04 F1 39 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8010F398  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010F39C  41 82 00 3C */	beq lbl_8010F3D8
/* 8010F3A0  7F A3 EB 78 */	mr r3, r29
/* 8010F3A4  38 80 00 02 */	li r4, 2
/* 8010F3A8  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 8010F3AC  4B F9 E3 79 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 8010F3B0  28 1D 00 00 */	cmplwi r29, 0
/* 8010F3B4  41 82 00 0C */	beq lbl_8010F3C0
/* 8010F3B8  83 BD 00 04 */	lwz r29, 4(r29)
/* 8010F3BC  48 00 00 08 */	b lbl_8010F3C4
lbl_8010F3C0:
/* 8010F3C0  3B A0 FF FF */	li r29, -1
lbl_8010F3C4:
/* 8010F3C4  48 07 22 7D */	bl dCam_getBody__Fv
/* 8010F3C8  7F A4 EB 78 */	mr r4, r29
/* 8010F3CC  4B F7 97 F1 */	bl EndEventCamera__9dCamera_cFi
/* 8010F3D0  38 60 00 01 */	li r3, 1
/* 8010F3D4  48 00 00 70 */	b lbl_8010F444
lbl_8010F3D8:
/* 8010F3D8  7F E3 FB 78 */	mr r3, r31
/* 8010F3DC  C0 22 93 34 */	lfs f1, lit_7710(r2)
/* 8010F3E0  48 21 90 4D */	bl checkPass__12J3DFrameCtrlFf
/* 8010F3E4  2C 03 00 00 */	cmpwi r3, 0
/* 8010F3E8  41 82 00 58 */	beq lbl_8010F440
/* 8010F3EC  7F A3 EB 78 */	mr r3, r29
/* 8010F3F0  4B FB 04 95 */	bl returnKeepItemData__9daAlink_cFv
/* 8010F3F4  48 00 00 4C */	b lbl_8010F440
lbl_8010F3F8:
/* 8010F3F8  A0 1D 2F DC */	lhz r0, 0x2fdc(r29)
/* 8010F3FC  28 00 00 FF */	cmplwi r0, 0xff
/* 8010F400  41 82 00 0C */	beq lbl_8010F40C
/* 8010F404  28 00 00 48 */	cmplwi r0, 0x48
/* 8010F408  40 82 00 38 */	bne lbl_8010F440
lbl_8010F40C:
/* 8010F40C  7F A3 EB 78 */	mr r3, r29
/* 8010F410  38 80 00 02 */	li r4, 2
/* 8010F414  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 8010F418  4B F9 E3 0D */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 8010F41C  A0 1D 2F DC */	lhz r0, 0x2fdc(r29)
/* 8010F420  28 00 00 FF */	cmplwi r0, 0xff
/* 8010F424  40 82 00 0C */	bne lbl_8010F430
/* 8010F428  7F A3 EB 78 */	mr r3, r29
/* 8010F42C  4B FB 04 59 */	bl returnKeepItemData__9daAlink_cFv
lbl_8010F430:
/* 8010F430  7F A3 EB 78 */	mr r3, r29
/* 8010F434  48 00 88 5D */	bl resetSpecialEvent__9daAlink_cFv
/* 8010F438  38 60 00 01 */	li r3, 1
/* 8010F43C  48 00 00 08 */	b lbl_8010F444
lbl_8010F440:
/* 8010F440  38 60 00 00 */	li r3, 0
lbl_8010F444:
/* 8010F444  39 61 00 30 */	addi r11, r1, 0x30
/* 8010F448  48 25 2D DD */	bl _restgpr_28
/* 8010F44C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8010F450  7C 08 03 A6 */	mtlr r0
/* 8010F454  38 21 00 30 */	addi r1, r1, 0x30
/* 8010F458  4E 80 00 20 */	blr 
