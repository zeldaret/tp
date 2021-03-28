lbl_801D59C0:
/* 801D59C0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801D59C4  7C 08 02 A6 */	mflr r0
/* 801D59C8  90 01 00 44 */	stw r0, 0x44(r1)
/* 801D59CC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 801D59D0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 801D59D4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801D59D8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801D59DC  7C 7E 1B 78 */	mr r30, r3
/* 801D59E0  7C 9F 23 78 */	mr r31, r4
/* 801D59E4  D0 21 00 08 */	stfs f1, 8(r1)
/* 801D59E8  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 801D59EC  FF E0 18 90 */	fmr f31, f3
/* 801D59F0  C0 02 A7 D0 */	lfs f0, lit_3970(r2)
/* 801D59F4  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 801D59F8  41 82 00 90 */	beq lbl_801D5A88
/* 801D59FC  38 C1 00 1C */	addi r6, r1, 0x1c
/* 801D5A00  38 E1 00 18 */	addi r7, r1, 0x18
/* 801D5A04  4B FF D2 C5 */	bl calcOffset__18dMenu_Fmap2DBack_cFUcPCcPfPf
/* 801D5A08  57 E0 15 BA */	rlwinm r0, r31, 2, 0x16, 0x1d
/* 801D5A0C  7F C3 F3 78 */	mr r3, r30
/* 801D5A10  C0 21 00 08 */	lfs f1, 8(r1)
/* 801D5A14  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 801D5A18  EC 21 00 2A */	fadds f1, f1, f0
/* 801D5A1C  7F FE 02 14 */	add r31, r30, r0
/* 801D5A20  C0 1F 10 04 */	lfs f0, 0x1004(r31)
/* 801D5A24  EC 21 00 28 */	fsubs f1, f1, f0
/* 801D5A28  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 801D5A2C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 801D5A30  EC 42 00 2A */	fadds f2, f2, f0
/* 801D5A34  C0 1F 10 24 */	lfs f0, 0x1024(r31)
/* 801D5A38  EC 42 00 28 */	fsubs f2, f2, f0
/* 801D5A3C  38 81 00 14 */	addi r4, r1, 0x14
/* 801D5A40  38 A1 00 10 */	addi r5, r1, 0x10
/* 801D5A44  4B FF B2 D5 */	bl calcAllMapPos2D__18dMenu_Fmap2DBack_cFffPfPf
/* 801D5A48  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 801D5A4C  EC 40 F8 28 */	fsubs f2, f0, f31
/* 801D5A50  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 801D5A54  7F C3 F3 78 */	mr r3, r30
/* 801D5A58  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 801D5A5C  38 81 00 08 */	addi r4, r1, 8
/* 801D5A60  38 A1 00 0C */	addi r5, r1, 0xc
/* 801D5A64  4B FF B5 19 */	bl calcAllMapPosWorld__18dMenu_Fmap2DBack_cFffPfPf
/* 801D5A68  C0 21 00 08 */	lfs f1, 8(r1)
/* 801D5A6C  C0 1F 10 04 */	lfs f0, 0x1004(r31)
/* 801D5A70  EC 01 00 2A */	fadds f0, f1, f0
/* 801D5A74  D0 01 00 08 */	stfs f0, 8(r1)
/* 801D5A78  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 801D5A7C  C0 1F 10 24 */	lfs f0, 0x1024(r31)
/* 801D5A80  EC 01 00 2A */	fadds f0, f1, f0
/* 801D5A84  D0 01 00 0C */	stfs f0, 0xc(r1)
lbl_801D5A88:
/* 801D5A88  C0 01 00 08 */	lfs f0, 8(r1)
/* 801D5A8C  D0 1E 11 8C */	stfs f0, 0x118c(r30)
/* 801D5A90  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 801D5A94  D0 1E 11 90 */	stfs f0, 0x1190(r30)
/* 801D5A98  C0 02 A7 D0 */	lfs f0, lit_3970(r2)
/* 801D5A9C  D0 1E 11 9C */	stfs f0, 0x119c(r30)
/* 801D5AA0  D0 1E 11 A0 */	stfs f0, 0x11a0(r30)
/* 801D5AA4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 801D5AA8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 801D5AAC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801D5AB0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801D5AB4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801D5AB8  7C 08 03 A6 */	mtlr r0
/* 801D5ABC  38 21 00 40 */	addi r1, r1, 0x40
/* 801D5AC0  4E 80 00 20 */	blr 
