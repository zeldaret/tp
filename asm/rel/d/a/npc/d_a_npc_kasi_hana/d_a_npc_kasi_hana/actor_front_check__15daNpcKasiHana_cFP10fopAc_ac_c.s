lbl_80A1F240:
/* 80A1F240  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80A1F244  7C 08 02 A6 */	mflr r0
/* 80A1F248  90 01 00 54 */	stw r0, 0x54(r1)
/* 80A1F24C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80A1F250  7C 7F 1B 78 */	mr r31, r3
/* 80A1F254  28 04 00 00 */	cmplwi r4, 0
/* 80A1F258  40 82 00 0C */	bne lbl_80A1F264
/* 80A1F25C  38 60 00 01 */	li r3, 1
/* 80A1F260  48 00 00 A4 */	b lbl_80A1F304
lbl_80A1F264:
/* 80A1F264  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 80A1F268  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80A1F26C  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 80A1F270  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80A1F274  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 80A1F278  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80A1F27C  38 61 00 08 */	addi r3, r1, 8
/* 80A1F280  38 81 00 38 */	addi r4, r1, 0x38
/* 80A1F284  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80A1F288  4B 84 78 AD */	bl __mi__4cXyzCFRC3Vec
/* 80A1F28C  C0 01 00 08 */	lfs f0, 8(r1)
/* 80A1F290  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A1F294  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80A1F298  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A1F29C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80A1F2A0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80A1F2A4  3C 60 80 A2 */	lis r3, lit_3908@ha /* 0x80A21080@ha */
/* 80A1F2A8  C0 03 10 80 */	lfs f0, lit_3908@l(r3)  /* 0x80A21080@l */
/* 80A1F2AC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A1F2B0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A1F2B4  3C 60 80 A2 */	lis r3, lit_4211@ha /* 0x80A210C0@ha */
/* 80A1F2B8  C0 03 10 C0 */	lfs f0, lit_4211@l(r3)  /* 0x80A210C0@l */
/* 80A1F2BC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A1F2C0  7F E3 FB 78 */	mr r3, r31
/* 80A1F2C4  38 81 00 20 */	addi r4, r1, 0x20
/* 80A1F2C8  38 A1 00 14 */	addi r5, r1, 0x14
/* 80A1F2CC  48 00 00 4D */	bl _getOffset__15daNpcKasiHana_cFRC4cXyzR4cXyz
/* 80A1F2D0  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80A1F2D4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80A1F2D8  EC 41 00 32 */	fmuls f2, f1, f0
/* 80A1F2DC  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80A1F2E0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A1F2E4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80A1F2E8  EC 22 00 2A */	fadds f1, f2, f0
/* 80A1F2EC  3C 60 80 A2 */	lis r3, lit_3908@ha /* 0x80A21080@ha */
/* 80A1F2F0  C0 03 10 80 */	lfs f0, lit_3908@l(r3)  /* 0x80A21080@l */
/* 80A1F2F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A1F2F8  4C 41 13 82 */	cror 2, 1, 2
/* 80A1F2FC  7C 00 00 26 */	mfcr r0
/* 80A1F300  54 03 1F FE */	rlwinm r3, r0, 3, 0x1f, 0x1f
lbl_80A1F304:
/* 80A1F304  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80A1F308  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80A1F30C  7C 08 03 A6 */	mtlr r0
/* 80A1F310  38 21 00 50 */	addi r1, r1, 0x50
/* 80A1F314  4E 80 00 20 */	blr 
