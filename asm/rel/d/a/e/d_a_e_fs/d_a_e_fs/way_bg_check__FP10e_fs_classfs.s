lbl_806BBCDC:
/* 806BBCDC  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 806BBCE0  7C 08 02 A6 */	mflr r0
/* 806BBCE4  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 806BBCE8  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 806BBCEC  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 806BBCF0  93 E1 00 AC */	stw r31, 0xac(r1)
/* 806BBCF4  93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 806BBCF8  FF E0 08 90 */	fmr f31, f1
/* 806BBCFC  7C 9E 23 78 */	mr r30, r4
/* 806BBD00  7C 7F 1B 78 */	mr r31, r3
/* 806BBD04  38 61 00 2C */	addi r3, r1, 0x2c
/* 806BBD08  4B 9B BF 60 */	b __ct__11dBgS_LinChkFv
/* 806BBD0C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 806BBD10  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806BBD14  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 806BBD18  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 806BBD1C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 806BBD20  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806BBD24  3C 60 80 6C */	lis r3, lit_3917@ha
/* 806BBD28  C0 03 E4 8C */	lfs f0, lit_3917@l(r3)
/* 806BBD2C  EC 01 00 2A */	fadds f0, f1, f0
/* 806BBD30  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806BBD34  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806BBD38  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 806BBD3C  80 63 00 00 */	lwz r3, 0(r3)
/* 806BBD40  7F C4 F3 78 */	mr r4, r30
/* 806BBD44  4B 95 06 98 */	b mDoMtx_YrotS__FPA4_fs
/* 806BBD48  3C 60 80 6C */	lis r3, lit_3918@ha
/* 806BBD4C  C0 03 E4 90 */	lfs f0, lit_3918@l(r3)
/* 806BBD50  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806BBD54  3C 60 80 6C */	lis r3, lit_3917@ha
/* 806BBD58  C0 03 E4 8C */	lfs f0, lit_3917@l(r3)
/* 806BBD5C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806BBD60  D3 E1 00 28 */	stfs f31, 0x28(r1)
/* 806BBD64  38 61 00 20 */	addi r3, r1, 0x20
/* 806BBD68  38 81 00 08 */	addi r4, r1, 8
/* 806BBD6C  4B BB 51 80 */	b MtxPosition__FP4cXyzP4cXyz
/* 806BBD70  38 61 00 08 */	addi r3, r1, 8
/* 806BBD74  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 806BBD78  7C 65 1B 78 */	mr r5, r3
/* 806BBD7C  4B C8 B3 14 */	b PSVECAdd
/* 806BBD80  38 61 00 2C */	addi r3, r1, 0x2c
/* 806BBD84  38 81 00 14 */	addi r4, r1, 0x14
/* 806BBD88  38 A1 00 08 */	addi r5, r1, 8
/* 806BBD8C  7F E6 FB 78 */	mr r6, r31
/* 806BBD90  4B 9B BF D4 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 806BBD94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806BBD98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806BBD9C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806BBDA0  38 81 00 2C */	addi r4, r1, 0x2c
/* 806BBDA4  4B 9B 86 10 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 806BBDA8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806BBDAC  41 82 00 18 */	beq lbl_806BBDC4
/* 806BBDB0  38 61 00 2C */	addi r3, r1, 0x2c
/* 806BBDB4  38 80 FF FF */	li r4, -1
/* 806BBDB8  4B 9B BF 24 */	b __dt__11dBgS_LinChkFv
/* 806BBDBC  38 60 00 01 */	li r3, 1
/* 806BBDC0  48 00 00 14 */	b lbl_806BBDD4
lbl_806BBDC4:
/* 806BBDC4  38 61 00 2C */	addi r3, r1, 0x2c
/* 806BBDC8  38 80 FF FF */	li r4, -1
/* 806BBDCC  4B 9B BF 10 */	b __dt__11dBgS_LinChkFv
/* 806BBDD0  38 60 00 00 */	li r3, 0
lbl_806BBDD4:
/* 806BBDD4  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 806BBDD8  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 806BBDDC  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 806BBDE0  83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 806BBDE4  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 806BBDE8  7C 08 03 A6 */	mtlr r0
/* 806BBDEC  38 21 00 C0 */	addi r1, r1, 0xc0
/* 806BBDF0  4E 80 00 20 */	blr 
