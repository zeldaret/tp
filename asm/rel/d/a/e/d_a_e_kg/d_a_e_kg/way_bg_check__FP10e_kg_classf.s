lbl_806F8328:
/* 806F8328  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 806F832C  7C 08 02 A6 */	mflr r0
/* 806F8330  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 806F8334  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 806F8338  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 806F833C  93 E1 00 AC */	stw r31, 0xac(r1)
/* 806F8340  FF E0 08 90 */	fmr f31, f1
/* 806F8344  7C 7F 1B 78 */	mr r31, r3
/* 806F8348  38 61 00 2C */	addi r3, r1, 0x2c
/* 806F834C  4B 97 F9 1D */	bl __ct__11dBgS_LinChkFv
/* 806F8350  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 806F8354  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806F8358  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 806F835C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 806F8360  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 806F8364  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806F8368  3C 60 80 70 */	lis r3, lit_3853@ha /* 0x806FA3E0@ha */
/* 806F836C  C0 03 A3 E0 */	lfs f0, lit_3853@l(r3)  /* 0x806FA3E0@l */
/* 806F8370  EC 01 00 2A */	fadds f0, f1, f0
/* 806F8374  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806F8378  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806F837C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806F8380  80 63 00 00 */	lwz r3, 0(r3)
/* 806F8384  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 806F8388  4B 91 40 55 */	bl mDoMtx_YrotS__FPA4_fs
/* 806F838C  3C 60 80 70 */	lis r3, lit_3789@ha /* 0x806FA3A8@ha */
/* 806F8390  C0 03 A3 A8 */	lfs f0, lit_3789@l(r3)  /* 0x806FA3A8@l */
/* 806F8394  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806F8398  3C 60 80 70 */	lis r3, lit_3853@ha /* 0x806FA3E0@ha */
/* 806F839C  C0 03 A3 E0 */	lfs f0, lit_3853@l(r3)  /* 0x806FA3E0@l */
/* 806F83A0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806F83A4  D3 E1 00 28 */	stfs f31, 0x28(r1)
/* 806F83A8  38 61 00 20 */	addi r3, r1, 0x20
/* 806F83AC  38 81 00 08 */	addi r4, r1, 8
/* 806F83B0  4B B7 8B 3D */	bl MtxPosition__FP4cXyzP4cXyz
/* 806F83B4  38 61 00 08 */	addi r3, r1, 8
/* 806F83B8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 806F83BC  7C 65 1B 78 */	mr r5, r3
/* 806F83C0  4B C4 EC D1 */	bl PSVECAdd
/* 806F83C4  38 61 00 2C */	addi r3, r1, 0x2c
/* 806F83C8  38 81 00 14 */	addi r4, r1, 0x14
/* 806F83CC  38 A1 00 08 */	addi r5, r1, 8
/* 806F83D0  7F E6 FB 78 */	mr r6, r31
/* 806F83D4  4B 97 F9 91 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 806F83D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806F83DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806F83E0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806F83E4  38 81 00 2C */	addi r4, r1, 0x2c
/* 806F83E8  4B 97 BF CD */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 806F83EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806F83F0  41 82 00 18 */	beq lbl_806F8408
/* 806F83F4  38 61 00 2C */	addi r3, r1, 0x2c
/* 806F83F8  38 80 FF FF */	li r4, -1
/* 806F83FC  4B 97 F8 E1 */	bl __dt__11dBgS_LinChkFv
/* 806F8400  38 60 00 01 */	li r3, 1
/* 806F8404  48 00 00 14 */	b lbl_806F8418
lbl_806F8408:
/* 806F8408  38 61 00 2C */	addi r3, r1, 0x2c
/* 806F840C  38 80 FF FF */	li r4, -1
/* 806F8410  4B 97 F8 CD */	bl __dt__11dBgS_LinChkFv
/* 806F8414  38 60 00 00 */	li r3, 0
lbl_806F8418:
/* 806F8418  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 806F841C  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 806F8420  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 806F8424  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 806F8428  7C 08 03 A6 */	mtlr r0
/* 806F842C  38 21 00 C0 */	addi r1, r1, 0xc0
/* 806F8430  4E 80 00 20 */	blr 
