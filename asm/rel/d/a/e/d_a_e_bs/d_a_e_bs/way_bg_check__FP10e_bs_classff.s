lbl_8068E534:
/* 8068E534  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 8068E538  7C 08 02 A6 */	mflr r0
/* 8068E53C  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8068E540  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 8068E544  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 8068E548  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 8068E54C  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, 0 /* qr0 */
/* 8068E550  93 E1 00 AC */	stw r31, 0xac(r1)
/* 8068E554  FF C0 08 90 */	fmr f30, f1
/* 8068E558  FF E0 10 90 */	fmr f31, f2
/* 8068E55C  7C 7F 1B 78 */	mr r31, r3
/* 8068E560  38 61 00 2C */	addi r3, r1, 0x2c
/* 8068E564  4B 9E 97 04 */	b __ct__11dBgS_LinChkFv
/* 8068E568  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8068E56C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8068E570  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 8068E574  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8068E578  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8068E57C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8068E580  EC 01 F8 2A */	fadds f0, f1, f31
/* 8068E584  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8068E588  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8068E58C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8068E590  80 63 00 00 */	lwz r3, 0(r3)
/* 8068E594  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8068E598  4B 97 DE 44 */	b mDoMtx_YrotS__FPA4_fs
/* 8068E59C  3C 60 80 69 */	lis r3, lit_3789@ha
/* 8068E5A0  C0 03 0D DC */	lfs f0, lit_3789@l(r3)
/* 8068E5A4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8068E5A8  D3 E1 00 24 */	stfs f31, 0x24(r1)
/* 8068E5AC  D3 C1 00 28 */	stfs f30, 0x28(r1)
/* 8068E5B0  38 61 00 20 */	addi r3, r1, 0x20
/* 8068E5B4  38 81 00 08 */	addi r4, r1, 8
/* 8068E5B8  4B BE 29 34 */	b MtxPosition__FP4cXyzP4cXyz
/* 8068E5BC  38 61 00 08 */	addi r3, r1, 8
/* 8068E5C0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8068E5C4  7C 65 1B 78 */	mr r5, r3
/* 8068E5C8  4B CB 8A C8 */	b PSVECAdd
/* 8068E5CC  38 61 00 2C */	addi r3, r1, 0x2c
/* 8068E5D0  38 81 00 14 */	addi r4, r1, 0x14
/* 8068E5D4  38 A1 00 08 */	addi r5, r1, 8
/* 8068E5D8  7F E6 FB 78 */	mr r6, r31
/* 8068E5DC  4B 9E 97 88 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8068E5E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8068E5E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8068E5E8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8068E5EC  38 81 00 2C */	addi r4, r1, 0x2c
/* 8068E5F0  4B 9E 5D C4 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 8068E5F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8068E5F8  41 82 00 18 */	beq lbl_8068E610
/* 8068E5FC  38 61 00 2C */	addi r3, r1, 0x2c
/* 8068E600  38 80 FF FF */	li r4, -1
/* 8068E604  4B 9E 96 D8 */	b __dt__11dBgS_LinChkFv
/* 8068E608  38 60 00 01 */	li r3, 1
/* 8068E60C  48 00 00 14 */	b lbl_8068E620
lbl_8068E610:
/* 8068E610  38 61 00 2C */	addi r3, r1, 0x2c
/* 8068E614  38 80 FF FF */	li r4, -1
/* 8068E618  4B 9E 96 C4 */	b __dt__11dBgS_LinChkFv
/* 8068E61C  38 60 00 00 */	li r3, 0
lbl_8068E620:
/* 8068E620  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 8068E624  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 8068E628  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, 0 /* qr0 */
/* 8068E62C  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 8068E630  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 8068E634  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 8068E638  7C 08 03 A6 */	mtlr r0
/* 8068E63C  38 21 00 D0 */	addi r1, r1, 0xd0
/* 8068E640  4E 80 00 20 */	blr 
