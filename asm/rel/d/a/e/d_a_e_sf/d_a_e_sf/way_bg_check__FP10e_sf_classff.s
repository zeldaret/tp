lbl_80785770:
/* 80785770  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80785774  7C 08 02 A6 */	mflr r0
/* 80785778  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8078577C  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 80785780  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 80785784  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 80785788  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, 0 /* qr0 */
/* 8078578C  93 E1 00 AC */	stw r31, 0xac(r1)
/* 80785790  FF C0 08 90 */	fmr f30, f1
/* 80785794  FF E0 10 90 */	fmr f31, f2
/* 80785798  7C 7F 1B 78 */	mr r31, r3
/* 8078579C  38 61 00 2C */	addi r3, r1, 0x2c
/* 807857A0  4B 8F 24 C8 */	b __ct__11dBgS_LinChkFv
/* 807857A4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 807857A8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807857AC  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 807857B0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 807857B4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 807857B8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807857BC  EC 01 F8 2A */	fadds f0, f1, f31
/* 807857C0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807857C4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807857C8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807857CC  80 63 00 00 */	lwz r3, 0(r3)
/* 807857D0  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 807857D4  4B 88 6C 08 */	b mDoMtx_YrotS__FPA4_fs
/* 807857D8  3C 60 80 79 */	lis r3, lit_3909@ha
/* 807857DC  C0 03 9C 3C */	lfs f0, lit_3909@l(r3)
/* 807857E0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807857E4  D3 E1 00 24 */	stfs f31, 0x24(r1)
/* 807857E8  D3 C1 00 28 */	stfs f30, 0x28(r1)
/* 807857EC  38 61 00 20 */	addi r3, r1, 0x20
/* 807857F0  38 81 00 08 */	addi r4, r1, 8
/* 807857F4  4B AE B6 F8 */	b MtxPosition__FP4cXyzP4cXyz
/* 807857F8  38 61 00 08 */	addi r3, r1, 8
/* 807857FC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80785800  7C 65 1B 78 */	mr r5, r3
/* 80785804  4B BC 18 8C */	b PSVECAdd
/* 80785808  38 61 00 2C */	addi r3, r1, 0x2c
/* 8078580C  38 81 00 14 */	addi r4, r1, 0x14
/* 80785810  38 A1 00 08 */	addi r5, r1, 8
/* 80785814  7F E6 FB 78 */	mr r6, r31
/* 80785818  4B 8F 25 4C */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8078581C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80785820  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80785824  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80785828  38 81 00 2C */	addi r4, r1, 0x2c
/* 8078582C  4B 8E EB 88 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80785830  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80785834  41 82 00 18 */	beq lbl_8078584C
/* 80785838  38 61 00 2C */	addi r3, r1, 0x2c
/* 8078583C  38 80 FF FF */	li r4, -1
/* 80785840  4B 8F 24 9C */	b __dt__11dBgS_LinChkFv
/* 80785844  38 60 00 01 */	li r3, 1
/* 80785848  48 00 00 14 */	b lbl_8078585C
lbl_8078584C:
/* 8078584C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80785850  38 80 FF FF */	li r4, -1
/* 80785854  4B 8F 24 88 */	b __dt__11dBgS_LinChkFv
/* 80785858  38 60 00 00 */	li r3, 0
lbl_8078585C:
/* 8078585C  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 80785860  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 80785864  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, 0 /* qr0 */
/* 80785868  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 8078586C  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 80785870  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80785874  7C 08 03 A6 */	mtlr r0
/* 80785878  38 21 00 D0 */	addi r1, r1, 0xd0
/* 8078587C  4E 80 00 20 */	blr 
