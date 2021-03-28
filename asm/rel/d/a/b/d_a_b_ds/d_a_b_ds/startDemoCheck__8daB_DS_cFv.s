lbl_805CD8D8:
/* 805CD8D8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805CD8DC  7C 08 02 A6 */	mflr r0
/* 805CD8E0  90 01 00 34 */	stw r0, 0x34(r1)
/* 805CD8E4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 805CD8E8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 805CD8EC  7C 7E 1B 78 */	mr r30, r3
/* 805CD8F0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 805CD8F4  38 A4 61 C0 */	addi r5, r4, g_dComIfG_gameInfo@l
/* 805CD8F8  88 05 5D B0 */	lbz r0, 0x5db0(r5)
/* 805CD8FC  7C 00 07 74 */	extsb r0, r0
/* 805CD900  1C 00 00 38 */	mulli r0, r0, 0x38
/* 805CD904  7C 85 02 14 */	add r4, r5, r0
/* 805CD908  83 E4 5D 74 */	lwz r31, 0x5d74(r4)
/* 805CD90C  80 85 5D B4 */	lwz r4, 0x5db4(r5)
/* 805CD910  80 04 05 74 */	lwz r0, 0x574(r4)
/* 805CD914  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 805CD918  41 82 00 0C */	beq lbl_805CD924
/* 805CD91C  38 60 00 00 */	li r3, 0
/* 805CD920  48 00 00 D0 */	b lbl_805CD9F0
lbl_805CD924:
/* 805CD924  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 805CD928  28 00 00 02 */	cmplwi r0, 2
/* 805CD92C  41 82 00 90 */	beq lbl_805CD9BC
/* 805CD930  38 80 00 02 */	li r4, 2
/* 805CD934  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 805CD938  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 805CD93C  38 C0 00 00 */	li r6, 0
/* 805CD940  4B A4 DF C8 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 805CD944  A0 1E 00 FA */	lhz r0, 0xfa(r30)
/* 805CD948  60 00 00 02 */	ori r0, r0, 2
/* 805CD94C  B0 1E 00 FA */	sth r0, 0xfa(r30)
/* 805CD950  4B BB 3C F0 */	b dCam_getBody__Fv
/* 805CD954  7C 64 1B 78 */	mr r4, r3
/* 805CD958  38 61 00 14 */	addi r3, r1, 0x14
/* 805CD95C  4B BB 45 3C */	b Center__9dCamera_cFv
/* 805CD960  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 805CD964  D0 1E 2D 14 */	stfs f0, 0x2d14(r30)
/* 805CD968  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 805CD96C  D0 1E 2D 18 */	stfs f0, 0x2d18(r30)
/* 805CD970  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 805CD974  D0 1E 2D 1C */	stfs f0, 0x2d1c(r30)
/* 805CD978  4B BB 3C C8 */	b dCam_getBody__Fv
/* 805CD97C  7C 64 1B 78 */	mr r4, r3
/* 805CD980  38 61 00 08 */	addi r3, r1, 8
/* 805CD984  4B BB 44 E0 */	b Eye__9dCamera_cFv
/* 805CD988  C0 01 00 08 */	lfs f0, 8(r1)
/* 805CD98C  D0 1E 2D 20 */	stfs f0, 0x2d20(r30)
/* 805CD990  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805CD994  D0 1E 2D 24 */	stfs f0, 0x2d24(r30)
/* 805CD998  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805CD99C  D0 1E 2D 28 */	stfs f0, 0x2d28(r30)
/* 805CD9A0  4B BB 3C A0 */	b dCam_getBody__Fv
/* 805CD9A4  C0 23 00 58 */	lfs f1, 0x58(r3)
/* 805CD9A8  C0 03 06 F4 */	lfs f0, 0x6f4(r3)
/* 805CD9AC  EC 01 00 2A */	fadds f0, f1, f0
/* 805CD9B0  D0 1E 2D 2C */	stfs f0, 0x2d2c(r30)
/* 805CD9B4  38 60 00 00 */	li r3, 0
/* 805CD9B8  48 00 00 38 */	b lbl_805CD9F0
lbl_805CD9BC:
/* 805CD9BC  38 7F 02 48 */	addi r3, r31, 0x248
/* 805CD9C0  4B B9 3B 10 */	b Stop__9dCamera_cFv
/* 805CD9C4  38 7F 02 48 */	addi r3, r31, 0x248
/* 805CD9C8  38 80 00 03 */	li r4, 3
/* 805CD9CC  4B B9 56 40 */	b SetTrimSize__9dCamera_cFl
/* 805CD9D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805CD9D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805CD9D8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 805CD9DC  38 00 00 03 */	li r0, 3
/* 805CD9E0  B0 03 06 04 */	sth r0, 0x604(r3)
/* 805CD9E4  38 00 00 00 */	li r0, 0
/* 805CD9E8  90 03 06 0C */	stw r0, 0x60c(r3)
/* 805CD9EC  38 60 00 01 */	li r3, 1
lbl_805CD9F0:
/* 805CD9F0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 805CD9F4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 805CD9F8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805CD9FC  7C 08 03 A6 */	mtlr r0
/* 805CDA00  38 21 00 30 */	addi r1, r1, 0x30
/* 805CDA04  4E 80 00 20 */	blr 
