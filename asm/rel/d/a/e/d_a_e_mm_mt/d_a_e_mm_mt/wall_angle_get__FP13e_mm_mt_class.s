lbl_807239CC:
/* 807239CC  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 807239D0  7C 08 02 A6 */	mflr r0
/* 807239D4  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 807239D8  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 807239DC  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 807239E0  39 61 00 D0 */	addi r11, r1, 0xd0
/* 807239E4  4B C3 E7 F1 */	bl _savegpr_27
/* 807239E8  3C 80 80 72 */	lis r4, lit_3789@ha /* 0x80725858@ha */
/* 807239EC  3B C4 58 58 */	addi r30, r4, lit_3789@l /* 0x80725858@l */
/* 807239F0  7C 7C 1B 78 */	mr r28, r3
/* 807239F4  38 61 00 44 */	addi r3, r1, 0x44
/* 807239F8  4B 95 42 71 */	bl __ct__11dBgS_LinChkFv
/* 807239FC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80723A00  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80723A04  80 63 00 00 */	lwz r3, 0(r3)
/* 80723A08  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 80723A0C  4B 8E 89 D1 */	bl mDoMtx_YrotS__FPA4_fs
/* 80723A10  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80723A14  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80723A18  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80723A1C  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 80723A20  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80723A24  38 61 00 20 */	addi r3, r1, 0x20
/* 80723A28  38 81 00 14 */	addi r4, r1, 0x14
/* 80723A2C  4B B4 D4 C1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80723A30  38 61 00 14 */	addi r3, r1, 0x14
/* 80723A34  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80723A38  7C 65 1B 78 */	mr r5, r3
/* 80723A3C  4B C2 36 55 */	bl PSVECAdd
/* 80723A40  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 80723A44  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80723A48  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80723A4C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80723A50  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80723A54  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80723A58  3B 60 00 00 */	li r27, 0
/* 80723A5C  3B E0 00 00 */	li r31, 0
/* 80723A60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80723A64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80723A68  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80723A6C  C3 FE 00 34 */	lfs f31, 0x34(r30)
lbl_80723A70:
/* 80723A70  38 61 00 20 */	addi r3, r1, 0x20
/* 80723A74  3B C1 00 2C */	addi r30, r1, 0x2c
/* 80723A78  7F DE FA 14 */	add r30, r30, r31
/* 80723A7C  7F C4 F3 78 */	mr r4, r30
/* 80723A80  4B B4 D4 6D */	bl MtxPosition__FP4cXyzP4cXyz
/* 80723A84  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80723A88  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80723A8C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80723A90  7F C3 F3 78 */	mr r3, r30
/* 80723A94  38 81 00 14 */	addi r4, r1, 0x14
/* 80723A98  7F C5 F3 78 */	mr r5, r30
/* 80723A9C  4B C2 35 F5 */	bl PSVECAdd
/* 80723AA0  38 61 00 44 */	addi r3, r1, 0x44
/* 80723AA4  38 81 00 14 */	addi r4, r1, 0x14
/* 80723AA8  7F C5 F3 78 */	mr r5, r30
/* 80723AAC  7F 86 E3 78 */	mr r6, r28
/* 80723AB0  4B 95 42 B5 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80723AB4  7F A3 EB 78 */	mr r3, r29
/* 80723AB8  38 81 00 44 */	addi r4, r1, 0x44
/* 80723ABC  4B 95 08 F9 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80723AC0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80723AC4  41 82 00 20 */	beq lbl_80723AE4
/* 80723AC8  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80723ACC  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80723AD0  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80723AD4  D0 1E 00 04 */	stfs f0, 4(r30)
/* 80723AD8  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80723ADC  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80723AE0  48 00 00 18 */	b lbl_80723AF8
lbl_80723AE4:
/* 80723AE4  38 61 00 44 */	addi r3, r1, 0x44
/* 80723AE8  38 80 FF FF */	li r4, -1
/* 80723AEC  4B 95 41 F1 */	bl __dt__11dBgS_LinChkFv
/* 80723AF0  38 60 00 23 */	li r3, 0x23
/* 80723AF4  48 00 00 5C */	b lbl_80723B50
lbl_80723AF8:
/* 80723AF8  3B 7B 00 01 */	addi r27, r27, 1
/* 80723AFC  2C 1B 00 02 */	cmpwi r27, 2
/* 80723B00  3B FF 00 0C */	addi r31, r31, 0xc
/* 80723B04  41 80 FF 6C */	blt lbl_80723A70
/* 80723B08  38 61 00 08 */	addi r3, r1, 8
/* 80723B0C  38 81 00 38 */	addi r4, r1, 0x38
/* 80723B10  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80723B14  4B B4 30 21 */	bl __mi__4cXyzCFRC3Vec
/* 80723B18  C0 01 00 08 */	lfs f0, 8(r1)
/* 80723B1C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80723B20  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80723B24  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80723B28  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80723B2C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80723B30  38 61 00 20 */	addi r3, r1, 0x20
/* 80723B34  4B B4 35 F5 */	bl atan2sX_Z__4cXyzCFv
/* 80723B38  38 03 40 00 */	addi r0, r3, 0x4000
/* 80723B3C  7C 1E 07 34 */	extsh r30, r0
/* 80723B40  38 61 00 44 */	addi r3, r1, 0x44
/* 80723B44  38 80 FF FF */	li r4, -1
/* 80723B48  4B 95 41 95 */	bl __dt__11dBgS_LinChkFv
/* 80723B4C  7F C3 F3 78 */	mr r3, r30
lbl_80723B50:
/* 80723B50  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 80723B54  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 80723B58  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80723B5C  4B C3 E6 C5 */	bl _restgpr_27
/* 80723B60  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80723B64  7C 08 03 A6 */	mtlr r0
/* 80723B68  38 21 00 E0 */	addi r1, r1, 0xe0
/* 80723B6C  4E 80 00 20 */	blr 
