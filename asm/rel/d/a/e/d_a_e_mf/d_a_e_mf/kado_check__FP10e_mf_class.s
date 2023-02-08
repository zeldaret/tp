lbl_8070ED10:
/* 8070ED10  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 8070ED14  7C 08 02 A6 */	mflr r0
/* 8070ED18  90 01 01 14 */	stw r0, 0x114(r1)
/* 8070ED1C  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 8070ED20  F3 E1 01 08 */	psq_st f31, 264(r1), 0, 0 /* qr0 */
/* 8070ED24  DB C1 00 F0 */	stfd f30, 0xf0(r1)
/* 8070ED28  F3 C1 00 F8 */	psq_st f30, 248(r1), 0, 0 /* qr0 */
/* 8070ED2C  DB A1 00 E0 */	stfd f29, 0xe0(r1)
/* 8070ED30  F3 A1 00 E8 */	psq_st f29, 232(r1), 0, 0 /* qr0 */
/* 8070ED34  DB 81 00 D0 */	stfd f28, 0xd0(r1)
/* 8070ED38  F3 81 00 D8 */	psq_st f28, 216(r1), 0, 0 /* qr0 */
/* 8070ED3C  DB 61 00 C0 */	stfd f27, 0xc0(r1)
/* 8070ED40  F3 61 00 C8 */	psq_st f27, 200(r1), 0, 0 /* qr0 */
/* 8070ED44  39 61 00 C0 */	addi r11, r1, 0xc0
/* 8070ED48  4B C5 34 89 */	bl _savegpr_26
/* 8070ED4C  7C 7A 1B 78 */	mr r26, r3
/* 8070ED50  3C 60 80 71 */	lis r3, lit_3828@ha /* 0x80713974@ha */
/* 8070ED54  3B C3 39 74 */	addi r30, r3, lit_3828@l /* 0x80713974@l */
/* 8070ED58  7F 5C D3 78 */	mr r28, r26
/* 8070ED5C  38 61 00 2C */	addi r3, r1, 0x2c
/* 8070ED60  4B 96 8F 09 */	bl __ct__11dBgS_LinChkFv
/* 8070ED64  3B 60 00 00 */	li r27, 0
/* 8070ED68  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8070ED6C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8070ED70  80 63 00 00 */	lwz r3, 0(r3)
/* 8070ED74  A8 9A 07 06 */	lha r4, 0x706(r26)
/* 8070ED78  4B 8F D6 65 */	bl mDoMtx_YrotS__FPA4_fs
/* 8070ED7C  3B 40 00 00 */	li r26, 0
/* 8070ED80  3B E0 00 00 */	li r31, 0
/* 8070ED84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8070ED88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8070ED8C  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 8070ED90  C3 7E 00 00 */	lfs f27, 0(r30)
/* 8070ED94  C3 9E 00 04 */	lfs f28, 4(r30)
/* 8070ED98  C3 BE 00 F8 */	lfs f29, 0xf8(r30)
/* 8070ED9C  C3 DE 00 44 */	lfs f30, 0x44(r30)
/* 8070EDA0  C3 FE 00 FC */	lfs f31, 0xfc(r30)
/* 8070EDA4  3C 60 80 71 */	lis r3, kado_check_x@ha /* 0x80713BC8@ha */
/* 8070EDA8  3B C3 3B C8 */	addi r30, r3, kado_check_x@l /* 0x80713BC8@l */
lbl_8070EDAC:
/* 8070EDAC  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8070EDB0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8070EDB4  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 8070EDB8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8070EDBC  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 8070EDC0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8070EDC4  EC 01 D8 2A */	fadds f0, f1, f27
/* 8070EDC8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8070EDCC  D3 81 00 20 */	stfs f28, 0x20(r1)
/* 8070EDD0  D3 81 00 24 */	stfs f28, 0x24(r1)
/* 8070EDD4  D3 A1 00 28 */	stfs f29, 0x28(r1)
/* 8070EDD8  38 61 00 20 */	addi r3, r1, 0x20
/* 8070EDDC  38 81 00 08 */	addi r4, r1, 8
/* 8070EDE0  4B B6 21 0D */	bl MtxPosition__FP4cXyzP4cXyz
/* 8070EDE4  38 61 00 14 */	addi r3, r1, 0x14
/* 8070EDE8  38 81 00 08 */	addi r4, r1, 8
/* 8070EDEC  7C 65 1B 78 */	mr r5, r3
/* 8070EDF0  4B C3 82 A1 */	bl PSVECAdd
/* 8070EDF4  D3 C1 00 24 */	stfs f30, 0x24(r1)
/* 8070EDF8  D3 E1 00 28 */	stfs f31, 0x28(r1)
/* 8070EDFC  7C 1E FC 2E */	lfsx f0, r30, r31
/* 8070EE00  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8070EE04  38 61 00 20 */	addi r3, r1, 0x20
/* 8070EE08  38 81 00 08 */	addi r4, r1, 8
/* 8070EE0C  4B B6 20 E1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8070EE10  38 61 00 08 */	addi r3, r1, 8
/* 8070EE14  38 81 00 14 */	addi r4, r1, 0x14
/* 8070EE18  7C 65 1B 78 */	mr r5, r3
/* 8070EE1C  4B C3 82 75 */	bl PSVECAdd
/* 8070EE20  38 61 00 2C */	addi r3, r1, 0x2c
/* 8070EE24  38 81 00 14 */	addi r4, r1, 0x14
/* 8070EE28  38 A1 00 08 */	addi r5, r1, 8
/* 8070EE2C  7F 86 E3 78 */	mr r6, r28
/* 8070EE30  4B 96 8F 35 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8070EE34  7F A3 EB 78 */	mr r3, r29
/* 8070EE38  38 81 00 2C */	addi r4, r1, 0x2c
/* 8070EE3C  4B 96 55 79 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 8070EE40  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8070EE44  41 82 00 14 */	beq lbl_8070EE58
/* 8070EE48  3C 60 80 71 */	lis r3, kado_bit@ha /* 0x80713BC0@ha */
/* 8070EE4C  38 63 3B C0 */	addi r3, r3, kado_bit@l /* 0x80713BC0@l */
/* 8070EE50  7C 03 F8 2E */	lwzx r0, r3, r31
/* 8070EE54  7F 7B 03 78 */	or r27, r27, r0
lbl_8070EE58:
/* 8070EE58  3B 5A 00 01 */	addi r26, r26, 1
/* 8070EE5C  2C 1A 00 02 */	cmpwi r26, 2
/* 8070EE60  3B FF 00 04 */	addi r31, r31, 4
/* 8070EE64  41 80 FF 48 */	blt lbl_8070EDAC
/* 8070EE68  2C 1B 00 03 */	cmpwi r27, 3
/* 8070EE6C  40 82 00 08 */	bne lbl_8070EE74
/* 8070EE70  3B 60 00 00 */	li r27, 0
lbl_8070EE74:
/* 8070EE74  38 61 00 2C */	addi r3, r1, 0x2c
/* 8070EE78  38 80 FF FF */	li r4, -1
/* 8070EE7C  4B 96 8E 61 */	bl __dt__11dBgS_LinChkFv
/* 8070EE80  7F 63 DB 78 */	mr r3, r27
/* 8070EE84  E3 E1 01 08 */	psq_l f31, 264(r1), 0, 0 /* qr0 */
/* 8070EE88  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 8070EE8C  E3 C1 00 F8 */	psq_l f30, 248(r1), 0, 0 /* qr0 */
/* 8070EE90  CB C1 00 F0 */	lfd f30, 0xf0(r1)
/* 8070EE94  E3 A1 00 E8 */	psq_l f29, 232(r1), 0, 0 /* qr0 */
/* 8070EE98  CB A1 00 E0 */	lfd f29, 0xe0(r1)
/* 8070EE9C  E3 81 00 D8 */	psq_l f28, 216(r1), 0, 0 /* qr0 */
/* 8070EEA0  CB 81 00 D0 */	lfd f28, 0xd0(r1)
/* 8070EEA4  E3 61 00 C8 */	psq_l f27, 200(r1), 0, 0 /* qr0 */
/* 8070EEA8  CB 61 00 C0 */	lfd f27, 0xc0(r1)
/* 8070EEAC  39 61 00 C0 */	addi r11, r1, 0xc0
/* 8070EEB0  4B C5 33 6D */	bl _restgpr_26
/* 8070EEB4  80 01 01 14 */	lwz r0, 0x114(r1)
/* 8070EEB8  7C 08 03 A6 */	mtlr r0
/* 8070EEBC  38 21 01 10 */	addi r1, r1, 0x110
/* 8070EEC0  4E 80 00 20 */	blr 
