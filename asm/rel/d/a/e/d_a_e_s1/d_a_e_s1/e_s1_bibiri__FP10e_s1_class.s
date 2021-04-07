lbl_8077C2F8:
/* 8077C2F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8077C2FC  7C 08 02 A6 */	mflr r0
/* 8077C300  90 01 00 34 */	stw r0, 0x34(r1)
/* 8077C304  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8077C308  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8077C30C  7C 7E 1B 78 */	mr r30, r3
/* 8077C310  3C 60 80 78 */	lis r3, lit_3903@ha /* 0x80780DC4@ha */
/* 8077C314  3B E3 0D C4 */	addi r31, r3, lit_3903@l /* 0x80780DC4@l */
/* 8077C318  A8 1E 06 98 */	lha r0, 0x698(r30)
/* 8077C31C  2C 00 00 01 */	cmpwi r0, 1
/* 8077C320  41 82 00 CC */	beq lbl_8077C3EC
/* 8077C324  40 80 00 10 */	bge lbl_8077C334
/* 8077C328  2C 00 00 00 */	cmpwi r0, 0
/* 8077C32C  40 80 00 14 */	bge lbl_8077C340
/* 8077C330  48 00 01 AC */	b lbl_8077C4DC
lbl_8077C334:
/* 8077C334  2C 00 00 03 */	cmpwi r0, 3
/* 8077C338  40 80 01 A4 */	bge lbl_8077C4DC
/* 8077C33C  48 00 01 60 */	b lbl_8077C49C
lbl_8077C340:
/* 8077C340  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 8077C344  4B AE B6 49 */	bl cM_rndFX__Ff
/* 8077C348  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8077C34C  EC 40 08 2A */	fadds f2, f0, f1
/* 8077C350  7F C3 F3 78 */	mr r3, r30
/* 8077C354  38 80 00 1A */	li r4, 0x1a
/* 8077C358  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 8077C35C  38 A0 00 02 */	li r5, 2
/* 8077C360  4B FF E8 99 */	bl anm_init__FP10e_s1_classifUcf
/* 8077C364  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 8077C368  4B AE B5 ED */	bl cM_rndF__Ff
/* 8077C36C  FC 00 08 1E */	fctiwz f0, f1
/* 8077C370  D8 01 00 08 */	stfd f0, 8(r1)
/* 8077C374  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8077C378  7C 00 07 34 */	extsh r0, r0
/* 8077C37C  C8 3F 00 78 */	lfd f1, 0x78(r31)
/* 8077C380  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8077C384  90 01 00 14 */	stw r0, 0x14(r1)
/* 8077C388  3C 00 43 30 */	lis r0, 0x4330
/* 8077C38C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8077C390  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8077C394  EC 00 08 28 */	fsubs f0, f0, f1
/* 8077C398  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 8077C39C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8077C3A0  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 8077C3A4  4B AE B5 B1 */	bl cM_rndF__Ff
/* 8077C3A8  3C 60 80 78 */	lis r3, l_HIO@ha /* 0x8078138C@ha */
/* 8077C3AC  38 63 13 8C */	addi r3, r3, l_HIO@l /* 0x8078138C@l */
/* 8077C3B0  A8 03 00 28 */	lha r0, 0x28(r3)
/* 8077C3B4  C8 5F 00 78 */	lfd f2, 0x78(r31)
/* 8077C3B8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8077C3BC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8077C3C0  3C 00 43 30 */	lis r0, 0x4330
/* 8077C3C4  90 01 00 18 */	stw r0, 0x18(r1)
/* 8077C3C8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8077C3CC  EC 00 10 28 */	fsubs f0, f0, f2
/* 8077C3D0  EC 00 08 2A */	fadds f0, f0, f1
/* 8077C3D4  FC 00 00 1E */	fctiwz f0, f0
/* 8077C3D8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8077C3DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8077C3E0  B0 1E 06 A0 */	sth r0, 0x6a0(r30)
/* 8077C3E4  38 00 00 01 */	li r0, 1
/* 8077C3E8  B0 1E 06 98 */	sth r0, 0x698(r30)
lbl_8077C3EC:
/* 8077C3EC  7F C3 F3 78 */	mr r3, r30
/* 8077C3F0  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 8077C3F4  3C 80 80 78 */	lis r4, l_HIO@ha /* 0x8078138C@ha */
/* 8077C3F8  38 84 13 8C */	addi r4, r4, l_HIO@l /* 0x8078138C@l */
/* 8077C3FC  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 8077C400  EC 21 00 2A */	fadds f1, f1, f0
/* 8077C404  4B FF EA F9 */	bl pl_at_check__FP10e_s1_classf
/* 8077C408  2C 03 00 00 */	cmpwi r3, 0
/* 8077C40C  41 82 00 60 */	beq lbl_8077C46C
/* 8077C410  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8077C414  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8077C418  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8077C41C  80 03 05 80 */	lwz r0, 0x580(r3)
/* 8077C420  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 8077C424  41 82 00 48 */	beq lbl_8077C46C
/* 8077C428  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 8077C42C  4B AE B5 29 */	bl cM_rndF__Ff
/* 8077C430  3C 60 80 78 */	lis r3, l_HIO@ha /* 0x8078138C@ha */
/* 8077C434  38 63 13 8C */	addi r3, r3, l_HIO@l /* 0x8078138C@l */
/* 8077C438  A8 03 00 28 */	lha r0, 0x28(r3)
/* 8077C43C  C8 5F 00 78 */	lfd f2, 0x78(r31)
/* 8077C440  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8077C444  90 01 00 24 */	stw r0, 0x24(r1)
/* 8077C448  3C 00 43 30 */	lis r0, 0x4330
/* 8077C44C  90 01 00 20 */	stw r0, 0x20(r1)
/* 8077C450  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8077C454  EC 00 10 28 */	fsubs f0, f0, f2
/* 8077C458  EC 00 08 2A */	fadds f0, f0, f1
/* 8077C45C  FC 00 00 1E */	fctiwz f0, f0
/* 8077C460  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8077C464  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8077C468  B0 1E 06 A0 */	sth r0, 0x6a0(r30)
lbl_8077C46C:
/* 8077C46C  A8 1E 06 A0 */	lha r0, 0x6a0(r30)
/* 8077C470  2C 00 00 00 */	cmpwi r0, 0
/* 8077C474  40 82 00 68 */	bne lbl_8077C4DC
/* 8077C478  7F C3 F3 78 */	mr r3, r30
/* 8077C47C  38 80 00 1B */	li r4, 0x1b
/* 8077C480  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 8077C484  38 A0 00 00 */	li r5, 0
/* 8077C488  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8077C48C  4B FF E7 6D */	bl anm_init__FP10e_s1_classifUcf
/* 8077C490  38 00 00 02 */	li r0, 2
/* 8077C494  B0 1E 06 98 */	sth r0, 0x698(r30)
/* 8077C498  48 00 00 44 */	b lbl_8077C4DC
lbl_8077C49C:
/* 8077C49C  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 8077C4A0  38 80 00 01 */	li r4, 1
/* 8077C4A4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8077C4A8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8077C4AC  40 82 00 18 */	bne lbl_8077C4C4
/* 8077C4B0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8077C4B4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8077C4B8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8077C4BC  41 82 00 08 */	beq lbl_8077C4C4
/* 8077C4C0  38 80 00 00 */	li r4, 0
lbl_8077C4C4:
/* 8077C4C4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8077C4C8  41 82 00 14 */	beq lbl_8077C4DC
/* 8077C4CC  38 00 00 00 */	li r0, 0
/* 8077C4D0  B0 1E 06 96 */	sth r0, 0x696(r30)
/* 8077C4D4  38 00 00 02 */	li r0, 2
/* 8077C4D8  B0 1E 06 98 */	sth r0, 0x698(r30)
lbl_8077C4DC:
/* 8077C4DC  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8077C4E0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8077C4E4  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 8077C4E8  4B AF 35 99 */	bl cLib_addCalc0__FPfff
/* 8077C4EC  7F C3 F3 78 */	mr r3, r30
/* 8077C4F0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8077C4F4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8077C4F8  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8077C4FC  4B 89 E2 15 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8077C500  7C 64 1B 78 */	mr r4, r3
/* 8077C504  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8077C508  38 A0 00 04 */	li r5, 4
/* 8077C50C  38 C0 10 00 */	li r6, 0x1000
/* 8077C510  4B AF 40 F9 */	bl cLib_addCalcAngleS2__FPssss
/* 8077C514  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8077C518  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8077C51C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8077C520  7C 08 03 A6 */	mtlr r0
/* 8077C524  38 21 00 30 */	addi r1, r1, 0x30
/* 8077C528  4E 80 00 20 */	blr 
