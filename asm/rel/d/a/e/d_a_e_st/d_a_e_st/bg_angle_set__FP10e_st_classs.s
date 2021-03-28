lbl_8079EC90:
/* 8079EC90  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 8079EC94  7C 08 02 A6 */	mflr r0
/* 8079EC98  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8079EC9C  39 61 00 E0 */	addi r11, r1, 0xe0
/* 8079ECA0  4B BC 35 38 */	b _savegpr_28
/* 8079ECA4  7C 7D 1B 78 */	mr r29, r3
/* 8079ECA8  7C 9E 23 78 */	mr r30, r4
/* 8079ECAC  3C 60 80 7A */	lis r3, lit_3903@ha
/* 8079ECB0  3B E3 68 24 */	addi r31, r3, lit_3903@l
/* 8079ECB4  38 61 00 5C */	addi r3, r1, 0x5c
/* 8079ECB8  4B 8D 8F B0 */	b __ct__11dBgS_LinChkFv
/* 8079ECBC  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 8079ECC0  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 8079ECC4  C0 7D 04 D8 */	lfs f3, 0x4d8(r29)
/* 8079ECC8  38 60 00 00 */	li r3, 0
/* 8079ECCC  4B AD 21 90 */	b MtxTrans__FfffUc
/* 8079ECD0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8079ECD4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8079ECD8  80 63 00 00 */	lwz r3, 0(r3)
/* 8079ECDC  A8 9D 06 9E */	lha r4, 0x69e(r29)
/* 8079ECE0  4B 86 D7 54 */	b mDoMtx_YrotM__FPA4_fs
/* 8079ECE4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8079ECE8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8079ECEC  80 63 00 00 */	lwz r3, 0(r3)
/* 8079ECF0  A8 9D 06 9C */	lha r4, 0x69c(r29)
/* 8079ECF4  4B 86 D6 A8 */	b mDoMtx_XrotM__FPA4_fs
/* 8079ECF8  4B AD 22 24 */	b MtxPush__Fv
/* 8079ECFC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8079ED00  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8079ED04  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8079ED08  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8079ED0C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8079ED10  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8079ED14  38 61 00 50 */	addi r3, r1, 0x50
/* 8079ED18  38 81 00 38 */	addi r4, r1, 0x38
/* 8079ED1C  4B AD 21 D0 */	b MtxPosition__FP4cXyzP4cXyz
/* 8079ED20  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 8079ED24  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8079ED28  38 61 00 50 */	addi r3, r1, 0x50
/* 8079ED2C  38 81 00 2C */	addi r4, r1, 0x2c
/* 8079ED30  4B AD 21 BC */	b MtxPosition__FP4cXyzP4cXyz
/* 8079ED34  38 61 00 5C */	addi r3, r1, 0x5c
/* 8079ED38  38 81 00 38 */	addi r4, r1, 0x38
/* 8079ED3C  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8079ED40  38 C0 00 00 */	li r6, 0
/* 8079ED44  4B 8D 90 20 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8079ED48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8079ED4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8079ED50  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 8079ED54  7F 83 E3 78 */	mr r3, r28
/* 8079ED58  38 81 00 5C */	addi r4, r1, 0x5c
/* 8079ED5C  4B 8D 56 58 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 8079ED60  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8079ED64  41 82 00 AC */	beq lbl_8079EE10
/* 8079ED68  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 8079ED6C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8079ED70  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 8079ED74  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8079ED78  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 8079ED7C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8079ED80  38 61 00 14 */	addi r3, r1, 0x14
/* 8079ED84  38 81 00 20 */	addi r4, r1, 0x20
/* 8079ED88  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8079ED8C  4B AC 7D A8 */	b __mi__4cXyzCFRC3Vec
/* 8079ED90  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8079ED94  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8079ED98  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8079ED9C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8079EDA0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8079EDA4  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8079EDA8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8079EDAC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8079EDB0  80 63 00 00 */	lwz r3, 0(r3)
/* 8079EDB4  A8 1D 06 9C */	lha r0, 0x69c(r29)
/* 8079EDB8  7C 00 00 D0 */	neg r0, r0
/* 8079EDBC  7C 04 07 34 */	extsh r4, r0
/* 8079EDC0  4B 86 D5 84 */	b mDoMtx_XrotS__FPA4_fs
/* 8079EDC4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8079EDC8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8079EDCC  80 63 00 00 */	lwz r3, 0(r3)
/* 8079EDD0  A8 1D 06 9E */	lha r0, 0x69e(r29)
/* 8079EDD4  7C 00 00 D0 */	neg r0, r0
/* 8079EDD8  7C 04 07 34 */	extsh r4, r0
/* 8079EDDC  4B 86 D6 58 */	b mDoMtx_YrotM__FPA4_fs
/* 8079EDE0  38 61 00 50 */	addi r3, r1, 0x50
/* 8079EDE4  38 81 00 44 */	addi r4, r1, 0x44
/* 8079EDE8  4B AD 21 04 */	b MtxPosition__FP4cXyzP4cXyz
/* 8079EDEC  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 8079EDF0  C0 41 00 4C */	lfs f2, 0x4c(r1)
/* 8079EDF4  4B AC 88 80 */	b cM_atan2s__Fff
/* 8079EDF8  7C 03 00 D0 */	neg r0, r3
/* 8079EDFC  7C 04 07 34 */	extsh r4, r0
/* 8079EE00  38 7D 06 A4 */	addi r3, r29, 0x6a4
/* 8079EE04  38 A0 00 04 */	li r5, 4
/* 8079EE08  7F C6 F3 78 */	mr r6, r30
/* 8079EE0C  4B AD 17 FC */	b cLib_addCalcAngleS2__FPssss
lbl_8079EE10:
/* 8079EE10  4B AD 21 48 */	b MtxPull__Fv
/* 8079EE14  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8079EE18  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8079EE1C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8079EE20  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8079EE24  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8079EE28  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8079EE2C  38 61 00 50 */	addi r3, r1, 0x50
/* 8079EE30  38 81 00 38 */	addi r4, r1, 0x38
/* 8079EE34  4B AD 20 B8 */	b MtxPosition__FP4cXyzP4cXyz
/* 8079EE38  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 8079EE3C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8079EE40  38 61 00 50 */	addi r3, r1, 0x50
/* 8079EE44  38 81 00 2C */	addi r4, r1, 0x2c
/* 8079EE48  4B AD 20 A4 */	b MtxPosition__FP4cXyzP4cXyz
/* 8079EE4C  38 61 00 5C */	addi r3, r1, 0x5c
/* 8079EE50  38 81 00 38 */	addi r4, r1, 0x38
/* 8079EE54  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8079EE58  38 C0 00 00 */	li r6, 0
/* 8079EE5C  4B 8D 8F 08 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8079EE60  7F 83 E3 78 */	mr r3, r28
/* 8079EE64  38 81 00 5C */	addi r4, r1, 0x5c
/* 8079EE68  4B 8D 55 4C */	b LineCross__4cBgSFP11cBgS_LinChk
/* 8079EE6C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8079EE70  41 82 00 A8 */	beq lbl_8079EF18
/* 8079EE74  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 8079EE78  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8079EE7C  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 8079EE80  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8079EE84  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 8079EE88  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8079EE8C  38 61 00 08 */	addi r3, r1, 8
/* 8079EE90  38 81 00 20 */	addi r4, r1, 0x20
/* 8079EE94  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8079EE98  4B AC 7C 9C */	b __mi__4cXyzCFRC3Vec
/* 8079EE9C  C0 01 00 08 */	lfs f0, 8(r1)
/* 8079EEA0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8079EEA4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8079EEA8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8079EEAC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8079EEB0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8079EEB4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8079EEB8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8079EEBC  80 63 00 00 */	lwz r3, 0(r3)
/* 8079EEC0  A8 1D 06 9C */	lha r0, 0x69c(r29)
/* 8079EEC4  7C 00 00 D0 */	neg r0, r0
/* 8079EEC8  7C 04 07 34 */	extsh r4, r0
/* 8079EECC  4B 86 D4 78 */	b mDoMtx_XrotS__FPA4_fs
/* 8079EED0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8079EED4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8079EED8  80 63 00 00 */	lwz r3, 0(r3)
/* 8079EEDC  A8 1D 06 9E */	lha r0, 0x69e(r29)
/* 8079EEE0  7C 00 00 D0 */	neg r0, r0
/* 8079EEE4  7C 04 07 34 */	extsh r4, r0
/* 8079EEE8  4B 86 D5 4C */	b mDoMtx_YrotM__FPA4_fs
/* 8079EEEC  38 61 00 50 */	addi r3, r1, 0x50
/* 8079EEF0  38 81 00 44 */	addi r4, r1, 0x44
/* 8079EEF4  4B AD 1F F8 */	b MtxPosition__FP4cXyzP4cXyz
/* 8079EEF8  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 8079EEFC  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 8079EF00  4B AC 87 74 */	b cM_atan2s__Fff
/* 8079EF04  7C 64 07 34 */	extsh r4, r3
/* 8079EF08  38 7D 06 A2 */	addi r3, r29, 0x6a2
/* 8079EF0C  38 A0 00 04 */	li r5, 4
/* 8079EF10  7F C6 F3 78 */	mr r6, r30
/* 8079EF14  4B AD 16 F4 */	b cLib_addCalcAngleS2__FPssss
lbl_8079EF18:
/* 8079EF18  38 61 00 5C */	addi r3, r1, 0x5c
/* 8079EF1C  38 80 FF FF */	li r4, -1
/* 8079EF20  4B 8D 8D BC */	b __dt__11dBgS_LinChkFv
/* 8079EF24  39 61 00 E0 */	addi r11, r1, 0xe0
/* 8079EF28  4B BC 32 FC */	b _restgpr_28
/* 8079EF2C  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8079EF30  7C 08 03 A6 */	mtlr r0
/* 8079EF34  38 21 00 E0 */	addi r1, r1, 0xe0
/* 8079EF38  4E 80 00 20 */	blr 
