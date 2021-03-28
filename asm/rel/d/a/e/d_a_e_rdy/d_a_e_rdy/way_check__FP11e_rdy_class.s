lbl_8076D24C:
/* 8076D24C  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 8076D250  7C 08 02 A6 */	mflr r0
/* 8076D254  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 8076D258  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 8076D25C  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, 0 /* qr0 */
/* 8076D260  DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 8076D264  F3 C1 00 D8 */	psq_st f30, 216(r1), 0, 0 /* qr0 */
/* 8076D268  DB A1 00 C0 */	stfd f29, 0xc0(r1)
/* 8076D26C  F3 A1 00 C8 */	psq_st f29, 200(r1), 0, 0 /* qr0 */
/* 8076D270  39 61 00 C0 */	addi r11, r1, 0xc0
/* 8076D274  4B BF 4F 5C */	b _savegpr_26
/* 8076D278  7C 7C 1B 78 */	mr r28, r3
/* 8076D27C  3C 60 80 78 */	lis r3, lit_4018@ha
/* 8076D280  3B C3 9D FC */	addi r30, r3, lit_4018@l
/* 8076D284  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 8076D288  4B AF A6 CC */	b cM_rndF__Ff
/* 8076D28C  FC 00 08 1E */	fctiwz f0, f1
/* 8076D290  D8 01 00 A0 */	stfd f0, 0xa0(r1)
/* 8076D294  83 61 00 A4 */	lwz r27, 0xa4(r1)
/* 8076D298  C3 BE 00 94 */	lfs f29, 0x94(r30)
/* 8076D29C  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8076D2A0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8076D2A4  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 8076D2A8  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8076D2AC  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 8076D2B0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8076D2B4  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 8076D2B8  EC 01 00 2A */	fadds f0, f1, f0
/* 8076D2BC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8076D2C0  3B 40 00 00 */	li r26, 0
/* 8076D2C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8076D2C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8076D2CC  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 8076D2D0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8076D2D4  3B E3 07 68 */	addi r31, r3, calc_mtx@l
/* 8076D2D8  C3 DE 00 04 */	lfs f30, 4(r30)
/* 8076D2DC  C3 FE 00 98 */	lfs f31, 0x98(r30)
lbl_8076D2E0:
/* 8076D2E0  3B C0 00 00 */	li r30, 0
lbl_8076D2E4:
/* 8076D2E4  80 7F 00 00 */	lwz r3, 0(r31)
/* 8076D2E8  7F 64 DB 78 */	mr r4, r27
/* 8076D2EC  4B 89 F0 F0 */	b mDoMtx_YrotS__FPA4_fs
/* 8076D2F0  D3 C1 00 08 */	stfs f30, 8(r1)
/* 8076D2F4  D3 C1 00 0C */	stfs f30, 0xc(r1)
/* 8076D2F8  D3 A1 00 10 */	stfs f29, 0x10(r1)
/* 8076D2FC  38 61 00 08 */	addi r3, r1, 8
/* 8076D300  38 81 00 14 */	addi r4, r1, 0x14
/* 8076D304  4B B0 3B E8 */	b MtxPosition__FP4cXyzP4cXyz
/* 8076D308  38 61 00 14 */	addi r3, r1, 0x14
/* 8076D30C  38 81 00 20 */	addi r4, r1, 0x20
/* 8076D310  7C 65 1B 78 */	mr r5, r3
/* 8076D314  4B BD 9D 7C */	b PSVECAdd
/* 8076D318  38 61 00 2C */	addi r3, r1, 0x2c
/* 8076D31C  4B 90 A9 4C */	b __ct__11dBgS_LinChkFv
/* 8076D320  38 61 00 2C */	addi r3, r1, 0x2c
/* 8076D324  38 81 00 20 */	addi r4, r1, 0x20
/* 8076D328  38 A1 00 14 */	addi r5, r1, 0x14
/* 8076D32C  7F 86 E3 78 */	mr r6, r28
/* 8076D330  4B 90 AA 34 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8076D334  7F A3 EB 78 */	mr r3, r29
/* 8076D338  38 81 00 2C */	addi r4, r1, 0x2c
/* 8076D33C  4B 90 70 78 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 8076D340  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8076D344  41 82 00 0C */	beq lbl_8076D350
/* 8076D348  3B 7B 10 00 */	addi r27, r27, 0x1000
/* 8076D34C  48 00 00 1C */	b lbl_8076D368
lbl_8076D350:
/* 8076D350  B3 7C 05 C8 */	sth r27, 0x5c8(r28)
/* 8076D354  38 61 00 2C */	addi r3, r1, 0x2c
/* 8076D358  38 80 FF FF */	li r4, -1
/* 8076D35C  4B 90 A9 80 */	b __dt__11dBgS_LinChkFv
/* 8076D360  38 60 00 01 */	li r3, 1
/* 8076D364  48 00 00 30 */	b lbl_8076D394
lbl_8076D368:
/* 8076D368  38 61 00 2C */	addi r3, r1, 0x2c
/* 8076D36C  38 80 FF FF */	li r4, -1
/* 8076D370  4B 90 A9 6C */	b __dt__11dBgS_LinChkFv
/* 8076D374  3B DE 00 01 */	addi r30, r30, 1
/* 8076D378  2C 1E 00 10 */	cmpwi r30, 0x10
/* 8076D37C  41 80 FF 68 */	blt lbl_8076D2E4
/* 8076D380  EF BD F8 28 */	fsubs f29, f29, f31
/* 8076D384  3B 5A 00 01 */	addi r26, r26, 1
/* 8076D388  2C 1A 00 05 */	cmpwi r26, 5
/* 8076D38C  41 80 FF 54 */	blt lbl_8076D2E0
/* 8076D390  38 60 00 00 */	li r3, 0
lbl_8076D394:
/* 8076D394  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, 0 /* qr0 */
/* 8076D398  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 8076D39C  E3 C1 00 D8 */	psq_l f30, 216(r1), 0, 0 /* qr0 */
/* 8076D3A0  CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 8076D3A4  E3 A1 00 C8 */	psq_l f29, 200(r1), 0, 0 /* qr0 */
/* 8076D3A8  CB A1 00 C0 */	lfd f29, 0xc0(r1)
/* 8076D3AC  39 61 00 C0 */	addi r11, r1, 0xc0
/* 8076D3B0  4B BF 4E 6C */	b _restgpr_26
/* 8076D3B4  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 8076D3B8  7C 08 03 A6 */	mtlr r0
/* 8076D3BC  38 21 00 F0 */	addi r1, r1, 0xf0
/* 8076D3C0  4E 80 00 20 */	blr 
