lbl_8069A258:
/* 8069A258  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8069A25C  7C 08 02 A6 */	mflr r0
/* 8069A260  90 01 00 34 */	stw r0, 0x34(r1)
/* 8069A264  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8069A268  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8069A26C  7C 7E 1B 78 */	mr r30, r3
/* 8069A270  3C 80 80 6A */	lis r4, lit_3657@ha
/* 8069A274  3B E4 A8 CC */	addi r31, r4, lit_3657@l
/* 8069A278  A8 03 06 4E */	lha r0, 0x64e(r3)
/* 8069A27C  2C 00 00 00 */	cmpwi r0, 0
/* 8069A280  41 82 00 08 */	beq lbl_8069A288
/* 8069A284  48 00 00 08 */	b lbl_8069A28C
lbl_8069A288:
/* 8069A288  4B FF FD 41 */	bl e_cr_egg_move__FP14e_cr_egg_class
lbl_8069A28C:
/* 8069A28C  A8 7E 04 DC */	lha r3, 0x4dc(r30)
/* 8069A290  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 8069A294  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 8069A298  EC 01 00 32 */	fmuls f0, f1, f0
/* 8069A29C  FC 00 00 1E */	fctiwz f0, f0
/* 8069A2A0  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8069A2A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8069A2A8  7C 03 02 14 */	add r0, r3, r0
/* 8069A2AC  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 8069A2B0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8069A2B4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8069A2B8  80 63 00 00 */	lwz r3, 0(r3)
/* 8069A2BC  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 8069A2C0  4B 97 21 1C */	b mDoMtx_YrotS__FPA4_fs
/* 8069A2C4  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 8069A2C8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8069A2CC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8069A2D0  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 8069A2D4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8069A2D8  38 61 00 14 */	addi r3, r1, 0x14
/* 8069A2DC  38 81 00 08 */	addi r4, r1, 8
/* 8069A2E0  4B BD 6C 0C */	b MtxPosition__FP4cXyzP4cXyz
/* 8069A2E4  C0 01 00 08 */	lfs f0, 8(r1)
/* 8069A2E8  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 8069A2EC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8069A2F0  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 8069A2F4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8069A2F8  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 8069A2FC  7C 65 1B 78 */	mr r5, r3
/* 8069A300  4B CA CD 90 */	b PSVECAdd
/* 8069A304  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 8069A308  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8069A30C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8069A310  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8069A314  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8069A318  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8069A31C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8069A320  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8069A324  C0 1E 04 C0 */	lfs f0, 0x4c0(r30)
/* 8069A328  EC 00 08 28 */	fsubs f0, f0, f1
/* 8069A32C  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 8069A330  38 7E 06 9C */	addi r3, r30, 0x69c
/* 8069A334  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8069A338  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8069A33C  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8069A340  4B 9D C7 6C */	b CrrPos__9dBgS_AcchFR4dBgS
/* 8069A344  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8069A348  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8069A34C  EC 00 08 2A */	fadds f0, f0, f1
/* 8069A350  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8069A354  C0 1E 04 C0 */	lfs f0, 0x4c0(r30)
/* 8069A358  EC 00 08 2A */	fadds f0, f0, f1
/* 8069A35C  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 8069A360  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8069A364  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8069A368  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8069A36C  7C 08 03 A6 */	mtlr r0
/* 8069A370  38 21 00 30 */	addi r1, r1, 0x30
/* 8069A374  4E 80 00 20 */	blr 
