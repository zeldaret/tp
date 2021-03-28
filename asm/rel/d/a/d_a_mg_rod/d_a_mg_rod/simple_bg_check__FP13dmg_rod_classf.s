lbl_804AD46C:
/* 804AD46C  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 804AD470  7C 08 02 A6 */	mflr r0
/* 804AD474  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 804AD478  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 804AD47C  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 804AD480  39 61 00 C0 */	addi r11, r1, 0xc0
/* 804AD484  4B EB 4D 4C */	b _savegpr_26
/* 804AD488  FF E0 08 90 */	fmr f31, f1
/* 804AD48C  7C 7B 1B 78 */	mr r27, r3
/* 804AD490  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 804AD494  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804AD498  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 804AD49C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804AD4A0  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 804AD4A4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804AD4A8  3C 60 80 4C */	lis r3, lit_4882@ha
/* 804AD4AC  C0 03 B5 8C */	lfs f0, lit_4882@l(r3)
/* 804AD4B0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804AD4B4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804AD4B8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804AD4BC  80 63 00 00 */	lwz r3, 0(r3)
/* 804AD4C0  A8 9B 04 DE */	lha r4, 0x4de(r27)
/* 804AD4C4  4B B5 EF 18 */	b mDoMtx_YrotS__FPA4_fs
/* 804AD4C8  38 61 00 2C */	addi r3, r1, 0x2c
/* 804AD4CC  4B BC A7 9C */	b __ct__11dBgS_LinChkFv
/* 804AD4D0  38 61 00 84 */	addi r3, r1, 0x84
/* 804AD4D4  4B BC BA 0C */	b SetRope__16dBgS_PolyPassChkFv
/* 804AD4D8  3B 40 00 00 */	li r26, 0
/* 804AD4DC  3B E0 00 00 */	li r31, 0
/* 804AD4E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804AD4E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804AD4E8  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 804AD4EC  3C 60 80 4C */	lis r3, c_x@ha
/* 804AD4F0  3B A3 B8 E8 */	addi r29, r3, c_x@l
/* 804AD4F4  3C 60 80 4C */	lis r3, c_z@ha
/* 804AD4F8  3B C3 B8 F4 */	addi r30, r3, c_z@l
lbl_804AD4FC:
/* 804AD4FC  7C 1D FC 2E */	lfsx f0, r29, r31
/* 804AD500  EC 1F 00 32 */	fmuls f0, f31, f0
/* 804AD504  D0 01 00 08 */	stfs f0, 8(r1)
/* 804AD508  7C 1E FC 2E */	lfsx f0, r30, r31
/* 804AD50C  EC 1F 00 32 */	fmuls f0, f31, f0
/* 804AD510  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804AD514  38 61 00 08 */	addi r3, r1, 8
/* 804AD518  38 81 00 14 */	addi r4, r1, 0x14
/* 804AD51C  4B DC 39 D0 */	b MtxPosition__FP4cXyzP4cXyz
/* 804AD520  38 61 00 14 */	addi r3, r1, 0x14
/* 804AD524  38 81 00 20 */	addi r4, r1, 0x20
/* 804AD528  7C 65 1B 78 */	mr r5, r3
/* 804AD52C  4B E9 9B 64 */	b PSVECAdd
/* 804AD530  38 61 00 2C */	addi r3, r1, 0x2c
/* 804AD534  38 81 00 20 */	addi r4, r1, 0x20
/* 804AD538  38 A1 00 14 */	addi r5, r1, 0x14
/* 804AD53C  7F 66 DB 78 */	mr r6, r27
/* 804AD540  4B BC A8 24 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 804AD544  7F 83 E3 78 */	mr r3, r28
/* 804AD548  38 81 00 2C */	addi r4, r1, 0x2c
/* 804AD54C  4B BC 6E 68 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 804AD550  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804AD554  41 82 00 18 */	beq lbl_804AD56C
/* 804AD558  38 61 00 2C */	addi r3, r1, 0x2c
/* 804AD55C  38 80 FF FF */	li r4, -1
/* 804AD560  4B BC A7 7C */	b __dt__11dBgS_LinChkFv
/* 804AD564  38 7A 00 01 */	addi r3, r26, 1
/* 804AD568  48 00 00 24 */	b lbl_804AD58C
lbl_804AD56C:
/* 804AD56C  3B 5A 00 01 */	addi r26, r26, 1
/* 804AD570  2C 1A 00 03 */	cmpwi r26, 3
/* 804AD574  3B FF 00 04 */	addi r31, r31, 4
/* 804AD578  41 80 FF 84 */	blt lbl_804AD4FC
/* 804AD57C  38 61 00 2C */	addi r3, r1, 0x2c
/* 804AD580  38 80 FF FF */	li r4, -1
/* 804AD584  4B BC A7 58 */	b __dt__11dBgS_LinChkFv
/* 804AD588  38 60 00 00 */	li r3, 0
lbl_804AD58C:
/* 804AD58C  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 804AD590  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 804AD594  39 61 00 C0 */	addi r11, r1, 0xc0
/* 804AD598  4B EB 4C 84 */	b _restgpr_26
/* 804AD59C  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 804AD5A0  7C 08 03 A6 */	mtlr r0
/* 804AD5A4  38 21 00 D0 */	addi r1, r1, 0xd0
/* 804AD5A8  4E 80 00 20 */	blr 
