lbl_805BB540:
/* 805BB540  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805BB544  7C 08 02 A6 */	mflr r0
/* 805BB548  90 01 00 34 */	stw r0, 0x34(r1)
/* 805BB54C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 805BB550  93 C1 00 28 */	stw r30, 0x28(r1)
/* 805BB554  7C 7E 1B 78 */	mr r30, r3
/* 805BB558  3C 60 80 5C */	lis r3, lit_3800@ha
/* 805BB55C  3B E3 6C 74 */	addi r31, r3, lit_3800@l
/* 805BB560  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805BB564  40 82 00 A8 */	bne lbl_805BB60C
/* 805BB568  80 1E 07 10 */	lwz r0, 0x710(r30)
/* 805BB56C  2C 00 00 13 */	cmpwi r0, 0x13
/* 805BB570  40 82 00 C4 */	bne lbl_805BB634
/* 805BB574  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805BB578  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805BB57C  FC 00 00 1E */	fctiwz f0, f0
/* 805BB580  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 805BB584  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805BB588  2C 00 00 2D */	cmpwi r0, 0x2d
/* 805BB58C  41 81 00 A8 */	bgt lbl_805BB634
/* 805BB590  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805BB594  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805BB598  80 63 00 00 */	lwz r3, 0(r3)
/* 805BB59C  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 805BB5A0  4B A5 0E 3C */	b mDoMtx_YrotS__FPA4_fs
/* 805BB5A4  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 805BB5A8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805BB5AC  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805BB5B0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805BB5B4  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 805BB5B8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805BB5BC  38 61 00 14 */	addi r3, r1, 0x14
/* 805BB5C0  38 81 00 08 */	addi r4, r1, 8
/* 805BB5C4  4B CB 59 28 */	b MtxPosition__FP4cXyzP4cXyz
/* 805BB5C8  C0 3E 07 6C */	lfs f1, 0x76c(r30)
/* 805BB5CC  C0 01 00 08 */	lfs f0, 8(r1)
/* 805BB5D0  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 805BB5D4  EC 00 10 24 */	fdivs f0, f0, f2
/* 805BB5D8  EC 01 00 2A */	fadds f0, f1, f0
/* 805BB5DC  D0 1E 07 6C */	stfs f0, 0x76c(r30)
/* 805BB5E0  C0 3E 07 70 */	lfs f1, 0x770(r30)
/* 805BB5E4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805BB5E8  EC 00 10 24 */	fdivs f0, f0, f2
/* 805BB5EC  EC 01 00 2A */	fadds f0, f1, f0
/* 805BB5F0  D0 1E 07 70 */	stfs f0, 0x770(r30)
/* 805BB5F4  C0 3E 07 74 */	lfs f1, 0x774(r30)
/* 805BB5F8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805BB5FC  EC 00 10 24 */	fdivs f0, f0, f2
/* 805BB600  EC 01 00 2A */	fadds f0, f1, f0
/* 805BB604  D0 1E 07 74 */	stfs f0, 0x774(r30)
/* 805BB608  48 00 00 2C */	b lbl_805BB634
lbl_805BB60C:
/* 805BB60C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805BB610  D0 01 00 08 */	stfs f0, 8(r1)
/* 805BB614  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805BB618  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805BB61C  38 7E 07 6C */	addi r3, r30, 0x76c
/* 805BB620  38 81 00 08 */	addi r4, r1, 8
/* 805BB624  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805BB628  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 805BB62C  C0 7F 00 20 */	lfs f3, 0x20(r31)
/* 805BB630  4B CB 44 88 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
lbl_805BB634:
/* 805BB634  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 805BB638  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 805BB63C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805BB640  7C 08 03 A6 */	mtlr r0
/* 805BB644  38 21 00 30 */	addi r1, r1, 0x30
/* 805BB648  4E 80 00 20 */	blr 
