lbl_8050B0F4:
/* 8050B0F4  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 8050B0F8  7C 08 02 A6 */	mflr r0
/* 8050B0FC  90 01 01 14 */	stw r0, 0x114(r1)
/* 8050B100  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 8050B104  F3 E1 01 08 */	psq_st f31, 264(r1), 0, 0 /* qr0 */
/* 8050B108  DB C1 00 F0 */	stfd f30, 0xf0(r1)
/* 8050B10C  F3 C1 00 F8 */	psq_st f30, 248(r1), 0, 0 /* qr0 */
/* 8050B110  DB A1 00 E0 */	stfd f29, 0xe0(r1)
/* 8050B114  F3 A1 00 E8 */	psq_st f29, 232(r1), 0, 0 /* qr0 */
/* 8050B118  DB 81 00 D0 */	stfd f28, 0xd0(r1)
/* 8050B11C  F3 81 00 D8 */	psq_st f28, 216(r1), 0, 0 /* qr0 */
/* 8050B120  DB 61 00 C0 */	stfd f27, 0xc0(r1)
/* 8050B124  F3 61 00 C8 */	psq_st f27, 200(r1), 0, 0 /* qr0 */
/* 8050B128  39 61 00 C0 */	addi r11, r1, 0xc0
/* 8050B12C  4B E5 70 A5 */	bl _savegpr_26
/* 8050B130  7C 7A 1B 78 */	mr r26, r3
/* 8050B134  3C 60 80 52 */	lis r3, lit_4208@ha /* 0x80518584@ha */
/* 8050B138  3B C3 85 84 */	addi r30, r3, lit_4208@l /* 0x80518584@l */
/* 8050B13C  7F 5C D3 78 */	mr r28, r26
/* 8050B140  38 61 00 2C */	addi r3, r1, 0x2c
/* 8050B144  4B B6 CB 25 */	bl __ct__11dBgS_LinChkFv
/* 8050B148  3B 60 00 00 */	li r27, 0
/* 8050B14C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8050B150  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8050B154  80 63 00 00 */	lwz r3, 0(r3)
/* 8050B158  A8 9A 0A 0E */	lha r4, 0xa0e(r26)
/* 8050B15C  4B B0 12 81 */	bl mDoMtx_YrotS__FPA4_fs
/* 8050B160  3B 40 00 00 */	li r26, 0
/* 8050B164  3B E0 00 00 */	li r31, 0
/* 8050B168  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8050B16C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8050B170  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 8050B174  C3 7E 00 00 */	lfs f27, 0(r30)
/* 8050B178  C3 9E 00 04 */	lfs f28, 4(r30)
/* 8050B17C  C3 BE 01 1C */	lfs f29, 0x11c(r30)
/* 8050B180  C3 DE 00 7C */	lfs f30, 0x7c(r30)
/* 8050B184  C3 FE 01 28 */	lfs f31, 0x128(r30)
/* 8050B188  3C 60 80 52 */	lis r3, kado_check_x@ha /* 0x80518BB0@ha */
/* 8050B18C  3B C3 8B B0 */	addi r30, r3, kado_check_x@l /* 0x80518BB0@l */
lbl_8050B190:
/* 8050B190  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8050B194  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8050B198  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 8050B19C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8050B1A0  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 8050B1A4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8050B1A8  EC 01 D8 2A */	fadds f0, f1, f27
/* 8050B1AC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8050B1B0  D3 81 00 20 */	stfs f28, 0x20(r1)
/* 8050B1B4  D3 81 00 24 */	stfs f28, 0x24(r1)
/* 8050B1B8  D3 A1 00 28 */	stfs f29, 0x28(r1)
/* 8050B1BC  38 61 00 20 */	addi r3, r1, 0x20
/* 8050B1C0  38 81 00 08 */	addi r4, r1, 8
/* 8050B1C4  4B D6 5D 29 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8050B1C8  38 61 00 14 */	addi r3, r1, 0x14
/* 8050B1CC  38 81 00 08 */	addi r4, r1, 8
/* 8050B1D0  7C 65 1B 78 */	mr r5, r3
/* 8050B1D4  4B E3 BE BD */	bl PSVECAdd
/* 8050B1D8  D3 C1 00 24 */	stfs f30, 0x24(r1)
/* 8050B1DC  D3 E1 00 28 */	stfs f31, 0x28(r1)
/* 8050B1E0  7C 1E FC 2E */	lfsx f0, r30, r31
/* 8050B1E4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8050B1E8  38 61 00 20 */	addi r3, r1, 0x20
/* 8050B1EC  38 81 00 08 */	addi r4, r1, 8
/* 8050B1F0  4B D6 5C FD */	bl MtxPosition__FP4cXyzP4cXyz
/* 8050B1F4  38 61 00 08 */	addi r3, r1, 8
/* 8050B1F8  38 81 00 14 */	addi r4, r1, 0x14
/* 8050B1FC  7C 65 1B 78 */	mr r5, r3
/* 8050B200  4B E3 BE 91 */	bl PSVECAdd
/* 8050B204  38 61 00 2C */	addi r3, r1, 0x2c
/* 8050B208  38 81 00 14 */	addi r4, r1, 0x14
/* 8050B20C  38 A1 00 08 */	addi r5, r1, 8
/* 8050B210  7F 86 E3 78 */	mr r6, r28
/* 8050B214  4B B6 CB 51 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8050B218  7F A3 EB 78 */	mr r3, r29
/* 8050B21C  38 81 00 2C */	addi r4, r1, 0x2c
/* 8050B220  4B B6 91 95 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 8050B224  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8050B228  41 82 00 14 */	beq lbl_8050B23C
/* 8050B22C  3C 60 80 52 */	lis r3, kado_bit@ha /* 0x80518BA8@ha */
/* 8050B230  38 63 8B A8 */	addi r3, r3, kado_bit@l /* 0x80518BA8@l */
/* 8050B234  7C 03 F8 2E */	lwzx r0, r3, r31
/* 8050B238  7F 7B 03 78 */	or r27, r27, r0
lbl_8050B23C:
/* 8050B23C  3B 5A 00 01 */	addi r26, r26, 1
/* 8050B240  2C 1A 00 02 */	cmpwi r26, 2
/* 8050B244  3B FF 00 04 */	addi r31, r31, 4
/* 8050B248  41 80 FF 48 */	blt lbl_8050B190
/* 8050B24C  2C 1B 00 03 */	cmpwi r27, 3
/* 8050B250  40 82 00 08 */	bne lbl_8050B258
/* 8050B254  3B 60 00 00 */	li r27, 0
lbl_8050B258:
/* 8050B258  38 61 00 2C */	addi r3, r1, 0x2c
/* 8050B25C  38 80 FF FF */	li r4, -1
/* 8050B260  4B B6 CA 7D */	bl __dt__11dBgS_LinChkFv
/* 8050B264  7F 63 DB 78 */	mr r3, r27
/* 8050B268  E3 E1 01 08 */	psq_l f31, 264(r1), 0, 0 /* qr0 */
/* 8050B26C  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 8050B270  E3 C1 00 F8 */	psq_l f30, 248(r1), 0, 0 /* qr0 */
/* 8050B274  CB C1 00 F0 */	lfd f30, 0xf0(r1)
/* 8050B278  E3 A1 00 E8 */	psq_l f29, 232(r1), 0, 0 /* qr0 */
/* 8050B27C  CB A1 00 E0 */	lfd f29, 0xe0(r1)
/* 8050B280  E3 81 00 D8 */	psq_l f28, 216(r1), 0, 0 /* qr0 */
/* 8050B284  CB 81 00 D0 */	lfd f28, 0xd0(r1)
/* 8050B288  E3 61 00 C8 */	psq_l f27, 200(r1), 0, 0 /* qr0 */
/* 8050B28C  CB 61 00 C0 */	lfd f27, 0xc0(r1)
/* 8050B290  39 61 00 C0 */	addi r11, r1, 0xc0
/* 8050B294  4B E5 6F 89 */	bl _restgpr_26
/* 8050B298  80 01 01 14 */	lwz r0, 0x114(r1)
/* 8050B29C  7C 08 03 A6 */	mtlr r0
/* 8050B2A0  38 21 01 10 */	addi r1, r1, 0x110
/* 8050B2A4  4E 80 00 20 */	blr 
