lbl_80BD3628:
/* 80BD3628  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80BD362C  7C 08 02 A6 */	mflr r0
/* 80BD3630  90 01 00 94 */	stw r0, 0x94(r1)
/* 80BD3634  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 80BD3638  93 C1 00 88 */	stw r30, 0x88(r1)
/* 80BD363C  7C 9E 23 78 */	mr r30, r4
/* 80BD3640  7C BF 2B 78 */	mr r31, r5
/* 80BD3644  38 61 00 14 */	addi r3, r1, 0x14
/* 80BD3648  4B 4A 46 21 */	bl __ct__11dBgS_LinChkFv
/* 80BD364C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80BD3650  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80BD3654  EC 61 00 2A */	fadds f3, f1, f0
/* 80BD3658  C0 5E 00 04 */	lfs f2, 4(r30)
/* 80BD365C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80BD3660  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80BD3664  EC 01 00 2A */	fadds f0, f1, f0
/* 80BD3668  D0 01 00 08 */	stfs f0, 8(r1)
/* 80BD366C  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80BD3670  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 80BD3674  38 61 00 14 */	addi r3, r1, 0x14
/* 80BD3678  7F C4 F3 78 */	mr r4, r30
/* 80BD367C  38 A1 00 08 */	addi r5, r1, 8
/* 80BD3680  38 C0 00 00 */	li r6, 0
/* 80BD3684  4B 4A 46 E1 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80BD3688  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BD368C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BD3690  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80BD3694  38 81 00 14 */	addi r4, r1, 0x14
/* 80BD3698  4B 4A 0D 1D */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80BD369C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80BD36A0  28 00 00 01 */	cmplwi r0, 1
/* 80BD36A4  40 82 00 18 */	bne lbl_80BD36BC
/* 80BD36A8  38 61 00 14 */	addi r3, r1, 0x14
/* 80BD36AC  38 80 FF FF */	li r4, -1
/* 80BD36B0  4B 4A 46 2D */	bl __dt__11dBgS_LinChkFv
/* 80BD36B4  38 60 00 01 */	li r3, 1
/* 80BD36B8  48 00 00 14 */	b lbl_80BD36CC
lbl_80BD36BC:
/* 80BD36BC  38 61 00 14 */	addi r3, r1, 0x14
/* 80BD36C0  38 80 FF FF */	li r4, -1
/* 80BD36C4  4B 4A 46 19 */	bl __dt__11dBgS_LinChkFv
/* 80BD36C8  38 60 00 00 */	li r3, 0
lbl_80BD36CC:
/* 80BD36CC  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 80BD36D0  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 80BD36D4  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80BD36D8  7C 08 03 A6 */	mtlr r0
/* 80BD36DC  38 21 00 90 */	addi r1, r1, 0x90
/* 80BD36E0  4E 80 00 20 */	blr 
