lbl_807B85DC:
/* 807B85DC  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 807B85E0  7C 08 02 A6 */	mflr r0
/* 807B85E4  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 807B85E8  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 807B85EC  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 807B85F0  93 E1 00 AC */	stw r31, 0xac(r1)
/* 807B85F4  93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 807B85F8  FF E0 08 90 */	fmr f31, f1
/* 807B85FC  3C 80 80 7C */	lis r4, lit_3762@ha
/* 807B8600  3B E4 A2 6C */	addi r31, r4, lit_3762@l
/* 807B8604  7C 7E 1B 78 */	mr r30, r3
/* 807B8608  38 61 00 2C */	addi r3, r1, 0x2c
/* 807B860C  4B 8B F6 5C */	b __ct__11dBgS_LinChkFv
/* 807B8610  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807B8614  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807B8618  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 807B861C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 807B8620  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 807B8624  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807B8628  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 807B862C  EC 01 00 28 */	fsubs f0, f1, f0
/* 807B8630  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807B8634  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807B8638  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807B863C  80 63 00 00 */	lwz r3, 0(r3)
/* 807B8640  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 807B8644  4B 85 3D 98 */	b mDoMtx_YrotS__FPA4_fs
/* 807B8648  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 807B864C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807B8650  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 807B8654  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807B8658  D3 E1 00 28 */	stfs f31, 0x28(r1)
/* 807B865C  38 61 00 20 */	addi r3, r1, 0x20
/* 807B8660  38 81 00 08 */	addi r4, r1, 8
/* 807B8664  4B AB 88 88 */	b MtxPosition__FP4cXyzP4cXyz
/* 807B8668  38 61 00 08 */	addi r3, r1, 8
/* 807B866C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 807B8670  7C 65 1B 78 */	mr r5, r3
/* 807B8674  4B B8 EA 1C */	b PSVECAdd
/* 807B8678  38 61 00 2C */	addi r3, r1, 0x2c
/* 807B867C  38 81 00 14 */	addi r4, r1, 0x14
/* 807B8680  38 A1 00 08 */	addi r5, r1, 8
/* 807B8684  7F C6 F3 78 */	mr r6, r30
/* 807B8688  4B 8B F6 DC */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 807B868C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807B8690  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807B8694  38 63 0F 38 */	addi r3, r3, 0xf38
/* 807B8698  38 81 00 2C */	addi r4, r1, 0x2c
/* 807B869C  4B 8B BD 18 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 807B86A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807B86A4  41 82 00 18 */	beq lbl_807B86BC
/* 807B86A8  38 61 00 2C */	addi r3, r1, 0x2c
/* 807B86AC  38 80 FF FF */	li r4, -1
/* 807B86B0  4B 8B F6 2C */	b __dt__11dBgS_LinChkFv
/* 807B86B4  38 60 00 01 */	li r3, 1
/* 807B86B8  48 00 00 14 */	b lbl_807B86CC
lbl_807B86BC:
/* 807B86BC  38 61 00 2C */	addi r3, r1, 0x2c
/* 807B86C0  38 80 FF FF */	li r4, -1
/* 807B86C4  4B 8B F6 18 */	b __dt__11dBgS_LinChkFv
/* 807B86C8  38 60 00 00 */	li r3, 0
lbl_807B86CC:
/* 807B86CC  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 807B86D0  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 807B86D4  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 807B86D8  83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 807B86DC  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 807B86E0  7C 08 03 A6 */	mtlr r0
/* 807B86E4  38 21 00 C0 */	addi r1, r1, 0xc0
/* 807B86E8  4E 80 00 20 */	blr 
