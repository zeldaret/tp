lbl_8029C2C0:
/* 8029C2C0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8029C2C4  7C 08 02 A6 */	mflr r0
/* 8029C2C8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8029C2CC  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8029C2D0  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8029C2D4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8029C2D8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8029C2DC  7C 7E 1B 78 */	mr r30, r3
/* 8029C2E0  88 03 00 18 */	lbz r0, 0x18(r3)
/* 8029C2E4  54 00 10 3A */	slwi r0, r0, 2
/* 8029C2E8  3C 60 80 3C */	lis r3, table_list@ha /* 0x803C78A8@ha */
/* 8029C2EC  38 63 78 A8 */	addi r3, r3, table_list@l /* 0x803C78A8@l */
/* 8029C2F0  7F E3 00 2E */	lwzx r31, r3, r0
/* 8029C2F4  C0 42 BD 10 */	lfs f2, lit_154(r2)
/* 8029C2F8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8029C2FC  EC 00 08 24 */	fdivs f0, f0, f1
/* 8029C300  EF E2 00 32 */	fmuls f31, f2, f0
/* 8029C304  FC 20 F8 90 */	fmr f1, f31
/* 8029C308  48 0C 5D A5 */	bl __cvt_fp2unsigned
/* 8029C30C  C8 22 BD 18 */	lfd f1, lit_156(r2)
/* 8029C310  90 61 00 0C */	stw r3, 0xc(r1)
/* 8029C314  3C 00 43 30 */	lis r0, 0x4330
/* 8029C318  90 01 00 08 */	stw r0, 8(r1)
/* 8029C31C  C8 01 00 08 */	lfd f0, 8(r1)
/* 8029C320  EC 00 08 28 */	fsubs f0, f0, f1
/* 8029C324  EC 5F 00 28 */	fsubs f2, f31, f0
/* 8029C328  54 60 10 3A */	slwi r0, r3, 2
/* 8029C32C  C0 62 BC FC */	lfs f3, lit_87(r2)
/* 8029C330  EC 23 10 28 */	fsubs f1, f3, f2
/* 8029C334  7C 1F 04 2E */	lfsx f0, r31, r0
/* 8029C338  EC 21 00 32 */	fmuls f1, f1, f0
/* 8029C33C  7C 7F 02 14 */	add r3, r31, r0
/* 8029C340  C0 03 00 04 */	lfs f0, 4(r3)
/* 8029C344  EC 02 00 32 */	fmuls f0, f2, f0
/* 8029C348  EC 81 00 2A */	fadds f4, f1, f0
/* 8029C34C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8029C350  EC 40 01 32 */	fmuls f2, f0, f4
/* 8029C354  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 8029C358  EC 03 20 28 */	fsubs f0, f3, f4
/* 8029C35C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8029C360  EC 02 00 2A */	fadds f0, f2, f0
/* 8029C364  D0 1E 00 08 */	stfs f0, 8(r30)
/* 8029C368  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8029C36C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8029C370  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8029C374  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8029C378  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8029C37C  7C 08 03 A6 */	mtlr r0
/* 8029C380  38 21 00 30 */	addi r1, r1, 0x30
/* 8029C384  4E 80 00 20 */	blr 
