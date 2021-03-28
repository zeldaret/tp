lbl_80792604:
/* 80792604  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80792608  7C 08 02 A6 */	mflr r0
/* 8079260C  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80792610  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 80792614  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 80792618  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8079261C  4B BC FB C0 */	b _savegpr_29
/* 80792620  7C 7D 1B 78 */	mr r29, r3
/* 80792624  FF E0 08 90 */	fmr f31, f1
/* 80792628  7C 9E 23 78 */	mr r30, r4
/* 8079262C  7C BF 2B 78 */	mr r31, r5
/* 80792630  38 61 00 2C */	addi r3, r1, 0x2c
/* 80792634  4B 8E 56 34 */	b __ct__11dBgS_LinChkFv
/* 80792638  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8079263C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80792640  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80792644  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80792648  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8079264C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80792650  3C 60 80 7A */	lis r3, lit_4051@ha
/* 80792654  C0 03 86 24 */	lfs f0, lit_4051@l(r3)
/* 80792658  EC 01 00 2A */	fadds f0, f1, f0
/* 8079265C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80792660  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80792664  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80792668  80 63 00 00 */	lwz r3, 0(r3)
/* 8079266C  7F E4 FB 78 */	mr r4, r31
/* 80792670  4B 87 9D 6C */	b mDoMtx_YrotS__FPA4_fs
/* 80792674  3C 60 80 7A */	lis r3, lit_3921@ha
/* 80792678  C0 03 85 E4 */	lfs f0, lit_3921@l(r3)
/* 8079267C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80792680  3C 60 80 7A */	lis r3, lit_4051@ha
/* 80792684  C0 03 86 24 */	lfs f0, lit_4051@l(r3)
/* 80792688  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8079268C  D3 E1 00 28 */	stfs f31, 0x28(r1)
/* 80792690  38 61 00 20 */	addi r3, r1, 0x20
/* 80792694  38 81 00 08 */	addi r4, r1, 8
/* 80792698  4B AD E8 54 */	b MtxPosition__FP4cXyzP4cXyz
/* 8079269C  38 61 00 08 */	addi r3, r1, 8
/* 807926A0  7F C4 F3 78 */	mr r4, r30
/* 807926A4  7C 65 1B 78 */	mr r5, r3
/* 807926A8  4B BB 49 E8 */	b PSVECAdd
/* 807926AC  38 61 00 2C */	addi r3, r1, 0x2c
/* 807926B0  38 81 00 14 */	addi r4, r1, 0x14
/* 807926B4  38 A1 00 08 */	addi r5, r1, 8
/* 807926B8  7F A6 EB 78 */	mr r6, r29
/* 807926BC  4B 8E 56 A8 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 807926C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807926C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807926C8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 807926CC  38 81 00 2C */	addi r4, r1, 0x2c
/* 807926D0  4B 8E 1C E4 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 807926D4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807926D8  41 82 00 18 */	beq lbl_807926F0
/* 807926DC  38 61 00 2C */	addi r3, r1, 0x2c
/* 807926E0  38 80 FF FF */	li r4, -1
/* 807926E4  4B 8E 55 F8 */	b __dt__11dBgS_LinChkFv
/* 807926E8  38 60 00 01 */	li r3, 1
/* 807926EC  48 00 00 14 */	b lbl_80792700
lbl_807926F0:
/* 807926F0  38 61 00 2C */	addi r3, r1, 0x2c
/* 807926F4  38 80 FF FF */	li r4, -1
/* 807926F8  4B 8E 55 E4 */	b __dt__11dBgS_LinChkFv
/* 807926FC  38 60 00 00 */	li r3, 0
lbl_80792700:
/* 80792700  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 80792704  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 80792708  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8079270C  4B BC FB 1C */	b _restgpr_29
/* 80792710  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80792714  7C 08 03 A6 */	mtlr r0
/* 80792718  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8079271C  4E 80 00 20 */	blr 
