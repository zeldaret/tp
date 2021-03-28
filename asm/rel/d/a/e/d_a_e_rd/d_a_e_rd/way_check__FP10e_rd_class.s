lbl_80506890:
/* 80506890  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 80506894  7C 08 02 A6 */	mflr r0
/* 80506898  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 8050689C  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 805068A0  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, 0 /* qr0 */
/* 805068A4  DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 805068A8  F3 C1 00 D8 */	psq_st f30, 216(r1), 0, 0 /* qr0 */
/* 805068AC  DB A1 00 C0 */	stfd f29, 0xc0(r1)
/* 805068B0  F3 A1 00 C8 */	psq_st f29, 200(r1), 0, 0 /* qr0 */
/* 805068B4  39 61 00 C0 */	addi r11, r1, 0xc0
/* 805068B8  4B E5 B9 18 */	b _savegpr_26
/* 805068BC  7C 7C 1B 78 */	mr r28, r3
/* 805068C0  3C 60 80 52 */	lis r3, lit_4208@ha
/* 805068C4  3B C3 85 84 */	addi r30, r3, lit_4208@l
/* 805068C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805068CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805068D0  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 805068D4  38 7D 3E C8 */	addi r3, r29, 0x3ec8
/* 805068D8  3C 80 80 52 */	lis r4, stringBase0@ha
/* 805068DC  38 84 89 68 */	addi r4, r4, stringBase0@l
/* 805068E0  38 84 00 0E */	addi r4, r4, 0xe
/* 805068E4  4B E6 20 B0 */	b strcmp
/* 805068E8  2C 03 00 00 */	cmpwi r3, 0
/* 805068EC  40 82 00 40 */	bne lbl_8050692C
/* 805068F0  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 805068F4  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 805068F8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805068FC  40 80 00 30 */	bge lbl_8050692C
/* 80506900  C0 3C 04 A8 */	lfs f1, 0x4a8(r28)
/* 80506904  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80506908  EC 21 00 28 */	fsubs f1, f1, f0
/* 8050690C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80506910  C0 1C 04 B0 */	lfs f0, 0x4b0(r28)
/* 80506914  EC 40 10 28 */	fsubs f2, f0, f2
/* 80506918  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8050691C  4B D6 0D 58 */	b cM_atan2s__Fff
/* 80506920  B0 7C 05 CC */	sth r3, 0x5cc(r28)
/* 80506924  38 60 00 01 */	li r3, 1
/* 80506928  48 00 01 08 */	b lbl_80506A30
lbl_8050692C:
/* 8050692C  C0 3E 00 98 */	lfs f1, 0x98(r30)
/* 80506930  4B D6 10 24 */	b cM_rndF__Ff
/* 80506934  FC 00 08 1E */	fctiwz f0, f1
/* 80506938  D8 01 00 A0 */	stfd f0, 0xa0(r1)
/* 8050693C  83 61 00 A4 */	lwz r27, 0xa4(r1)
/* 80506940  C3 BE 00 9C */	lfs f29, 0x9c(r30)
/* 80506944  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80506948  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8050694C  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 80506950  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80506954  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80506958  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8050695C  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 80506960  EC 01 00 2A */	fadds f0, f1, f0
/* 80506964  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80506968  3B 40 00 00 */	li r26, 0
/* 8050696C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80506970  3B E3 07 68 */	addi r31, r3, calc_mtx@l
/* 80506974  C3 DE 00 04 */	lfs f30, 4(r30)
/* 80506978  C3 FE 00 A0 */	lfs f31, 0xa0(r30)
lbl_8050697C:
/* 8050697C  3B C0 00 00 */	li r30, 0
lbl_80506980:
/* 80506980  80 7F 00 00 */	lwz r3, 0(r31)
/* 80506984  7F 64 DB 78 */	mr r4, r27
/* 80506988  4B B0 5A 54 */	b mDoMtx_YrotS__FPA4_fs
/* 8050698C  D3 C1 00 20 */	stfs f30, 0x20(r1)
/* 80506990  D3 C1 00 24 */	stfs f30, 0x24(r1)
/* 80506994  D3 A1 00 28 */	stfs f29, 0x28(r1)
/* 80506998  38 61 00 20 */	addi r3, r1, 0x20
/* 8050699C  38 81 00 08 */	addi r4, r1, 8
/* 805069A0  4B D6 A5 4C */	b MtxPosition__FP4cXyzP4cXyz
/* 805069A4  38 61 00 08 */	addi r3, r1, 8
/* 805069A8  38 81 00 14 */	addi r4, r1, 0x14
/* 805069AC  7C 65 1B 78 */	mr r5, r3
/* 805069B0  4B E4 06 E0 */	b PSVECAdd
/* 805069B4  38 61 00 2C */	addi r3, r1, 0x2c
/* 805069B8  4B B7 12 B0 */	b __ct__11dBgS_LinChkFv
/* 805069BC  38 61 00 2C */	addi r3, r1, 0x2c
/* 805069C0  38 81 00 14 */	addi r4, r1, 0x14
/* 805069C4  38 A1 00 08 */	addi r5, r1, 8
/* 805069C8  7F 86 E3 78 */	mr r6, r28
/* 805069CC  4B B7 13 98 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 805069D0  7F A3 EB 78 */	mr r3, r29
/* 805069D4  38 81 00 2C */	addi r4, r1, 0x2c
/* 805069D8  4B B6 D9 DC */	b LineCross__4cBgSFP11cBgS_LinChk
/* 805069DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805069E0  41 82 00 0C */	beq lbl_805069EC
/* 805069E4  3B 7B 10 00 */	addi r27, r27, 0x1000
/* 805069E8  48 00 00 1C */	b lbl_80506A04
lbl_805069EC:
/* 805069EC  B3 7C 05 CC */	sth r27, 0x5cc(r28)
/* 805069F0  38 61 00 2C */	addi r3, r1, 0x2c
/* 805069F4  38 80 FF FF */	li r4, -1
/* 805069F8  4B B7 12 E4 */	b __dt__11dBgS_LinChkFv
/* 805069FC  38 60 00 01 */	li r3, 1
/* 80506A00  48 00 00 30 */	b lbl_80506A30
lbl_80506A04:
/* 80506A04  38 61 00 2C */	addi r3, r1, 0x2c
/* 80506A08  38 80 FF FF */	li r4, -1
/* 80506A0C  4B B7 12 D0 */	b __dt__11dBgS_LinChkFv
/* 80506A10  3B DE 00 01 */	addi r30, r30, 1
/* 80506A14  2C 1E 00 10 */	cmpwi r30, 0x10
/* 80506A18  41 80 FF 68 */	blt lbl_80506980
/* 80506A1C  EF BD F8 28 */	fsubs f29, f29, f31
/* 80506A20  3B 5A 00 01 */	addi r26, r26, 1
/* 80506A24  2C 1A 00 05 */	cmpwi r26, 5
/* 80506A28  41 80 FF 54 */	blt lbl_8050697C
/* 80506A2C  38 60 00 00 */	li r3, 0
lbl_80506A30:
/* 80506A30  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, 0 /* qr0 */
/* 80506A34  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 80506A38  E3 C1 00 D8 */	psq_l f30, 216(r1), 0, 0 /* qr0 */
/* 80506A3C  CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 80506A40  E3 A1 00 C8 */	psq_l f29, 200(r1), 0, 0 /* qr0 */
/* 80506A44  CB A1 00 C0 */	lfd f29, 0xc0(r1)
/* 80506A48  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80506A4C  4B E5 B7 D0 */	b _restgpr_26
/* 80506A50  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 80506A54  7C 08 03 A6 */	mtlr r0
/* 80506A58  38 21 00 F0 */	addi r1, r1, 0xf0
/* 80506A5C  4E 80 00 20 */	blr 
