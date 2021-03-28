lbl_8051B170:
/* 8051B170  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8051B174  7C 08 02 A6 */	mflr r0
/* 8051B178  90 01 00 34 */	stw r0, 0x34(r1)
/* 8051B17C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8051B180  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8051B184  7C 7E 1B 78 */	mr r30, r3
/* 8051B188  3C 60 80 52 */	lis r3, lit_3649@ha
/* 8051B18C  3B E3 B9 C8 */	addi r31, r3, lit_3649@l
/* 8051B190  4B AF D1 18 */	b cDmrNowMidnaTalk__Fv
/* 8051B194  2C 03 00 00 */	cmpwi r3, 0
/* 8051B198  41 82 00 0C */	beq lbl_8051B1A4
/* 8051B19C  38 60 00 01 */	li r3, 1
/* 8051B1A0  48 00 01 9C */	b lbl_8051B33C
lbl_8051B1A4:
/* 8051B1A4  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8051B1A8  D0 01 00 08 */	stfs f0, 8(r1)
/* 8051B1AC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8051B1B0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8051B1B4  7F C3 F3 78 */	mr r3, r30
/* 8051B1B8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8051B1BC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8051B1C0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8051B1C4  4B AF F6 1C */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8051B1C8  D0 3E 05 D8 */	stfs f1, 0x5d8(r30)
/* 8051B1CC  A8 7E 05 D0 */	lha r3, 0x5d0(r30)
/* 8051B1D0  38 03 00 01 */	addi r0, r3, 1
/* 8051B1D4  B0 1E 05 D0 */	sth r0, 0x5d0(r30)
/* 8051B1D8  38 60 00 00 */	li r3, 0
/* 8051B1DC  38 00 00 04 */	li r0, 4
/* 8051B1E0  7C 09 03 A6 */	mtctr r0
lbl_8051B1E4:
/* 8051B1E4  38 A3 05 DC */	addi r5, r3, 0x5dc
/* 8051B1E8  7C 9E 2A AE */	lhax r4, r30, r5
/* 8051B1EC  2C 04 00 00 */	cmpwi r4, 0
/* 8051B1F0  41 82 00 0C */	beq lbl_8051B1FC
/* 8051B1F4  38 04 FF FF */	addi r0, r4, -1
/* 8051B1F8  7C 1E 2B 2E */	sthx r0, r30, r5
lbl_8051B1FC:
/* 8051B1FC  38 63 00 02 */	addi r3, r3, 2
/* 8051B200  42 00 FF E4 */	bdnz lbl_8051B1E4
/* 8051B204  A8 7E 05 E4 */	lha r3, 0x5e4(r30)
/* 8051B208  2C 03 00 00 */	cmpwi r3, 0
/* 8051B20C  41 82 00 0C */	beq lbl_8051B218
/* 8051B210  38 03 FF FF */	addi r0, r3, -1
/* 8051B214  B0 1E 05 E4 */	sth r0, 0x5e4(r30)
lbl_8051B218:
/* 8051B218  7F C3 F3 78 */	mr r3, r30
/* 8051B21C  4B FF FA E9 */	bl action__FP8fr_class
/* 8051B220  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8051B224  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8051B228  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 8051B22C  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 8051B230  C0 1E 05 F4 */	lfs f0, 0x5f4(r30)
/* 8051B234  EC 42 00 2A */	fadds f2, f2, f0
/* 8051B238  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 8051B23C  4B E2 B6 AC */	b PSMTXTrans
/* 8051B240  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8051B244  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8051B248  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 8051B24C  4B AF 11 E8 */	b mDoMtx_YrotM__FPA4_fs
/* 8051B250  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8051B254  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8051B258  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 8051B25C  4B AF 11 40 */	b mDoMtx_XrotM__FPA4_fs
/* 8051B260  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8051B264  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8051B268  A8 9E 04 E8 */	lha r4, 0x4e8(r30)
/* 8051B26C  4B AF 12 60 */	b mDoMtx_ZrotM__FPA4_fs
/* 8051B270  C0 3E 04 EC */	lfs f1, 0x4ec(r30)
/* 8051B274  FC 40 08 90 */	fmr f2, f1
/* 8051B278  FC 60 08 90 */	fmr f3, f1
/* 8051B27C  4B AF 1B BC */	b scaleM__14mDoMtx_stack_cFfff
/* 8051B280  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 8051B284  80 83 00 04 */	lwz r4, 4(r3)
/* 8051B288  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8051B28C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8051B290  38 84 00 24 */	addi r4, r4, 0x24
/* 8051B294  4B E2 B2 1C */	b PSMTXCopy
/* 8051B298  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 8051B29C  38 9E 05 38 */	addi r4, r30, 0x538
/* 8051B2A0  38 A0 00 00 */	li r5, 0
/* 8051B2A4  38 C0 00 00 */	li r6, 0
/* 8051B2A8  4B AF 53 20 */	b play__14mDoExt_McaMorfFP3VecUlSc
/* 8051B2AC  88 1E 05 CD */	lbz r0, 0x5cd(r30)
/* 8051B2B0  7C 00 07 74 */	extsb r0, r0
/* 8051B2B4  C8 3F 00 B0 */	lfd f1, 0xb0(r31)
/* 8051B2B8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8051B2BC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8051B2C0  3C 00 43 30 */	lis r0, 0x4330
/* 8051B2C4  90 01 00 18 */	stw r0, 0x18(r1)
/* 8051B2C8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8051B2CC  EC 00 08 28 */	fsubs f0, f0, f1
/* 8051B2D0  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 8051B2D4  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8051B2D8  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 8051B2DC  4B AF 53 D0 */	b modelCalc__14mDoExt_McaMorfFv
/* 8051B2E0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8051B2E4  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 8051B2E8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8051B2EC  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 8051B2F0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8051B2F4  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 8051B2F8  C0 3E 05 3C */	lfs f1, 0x53c(r30)
/* 8051B2FC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8051B300  EC 01 00 2A */	fadds f0, f1, f0
/* 8051B304  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 8051B308  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 8051B30C  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 8051B310  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 8051B314  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 8051B318  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 8051B31C  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 8051B320  C0 3E 05 54 */	lfs f1, 0x554(r30)
/* 8051B324  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8051B328  EC 01 00 2A */	fadds f0, f1, f0
/* 8051B32C  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 8051B330  7F C3 F3 78 */	mr r3, r30
/* 8051B334  4B FF FD 19 */	bl message__FP8fr_class
/* 8051B338  38 60 00 01 */	li r3, 1
lbl_8051B33C:
/* 8051B33C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8051B340  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8051B344  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8051B348  7C 08 03 A6 */	mtlr r0
/* 8051B34C  38 21 00 30 */	addi r1, r1, 0x30
/* 8051B350  4E 80 00 20 */	blr 
