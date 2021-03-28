lbl_80785654:
/* 80785654  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80785658  7C 08 02 A6 */	mflr r0
/* 8078565C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80785660  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 80785664  93 C1 00 98 */	stw r30, 0x98(r1)
/* 80785668  7C 9E 23 78 */	mr r30, r4
/* 8078566C  7C 7F 1B 78 */	mr r31, r3
/* 80785670  38 61 00 20 */	addi r3, r1, 0x20
/* 80785674  4B 8F 25 F4 */	b __ct__11dBgS_LinChkFv
/* 80785678  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8078567C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80785680  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80785684  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80785688  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8078568C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80785690  3C 60 80 79 */	lis r3, lit_3908@ha
/* 80785694  C0 03 9C 38 */	lfs f0, lit_3908@l(r3)
/* 80785698  EC 01 00 2A */	fadds f0, f1, f0
/* 8078569C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807856A0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 807856A4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807856A8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 807856AC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807856B0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 807856B4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807856B8  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 807856BC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807856C0  38 61 00 20 */	addi r3, r1, 0x20
/* 807856C4  38 81 00 14 */	addi r4, r1, 0x14
/* 807856C8  38 A1 00 08 */	addi r5, r1, 8
/* 807856CC  7F E6 FB 78 */	mr r6, r31
/* 807856D0  4B 8F 26 94 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 807856D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807856D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807856DC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 807856E0  38 81 00 20 */	addi r4, r1, 0x20
/* 807856E4  4B 8E EC D0 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 807856E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807856EC  41 82 00 18 */	beq lbl_80785704
/* 807856F0  38 61 00 20 */	addi r3, r1, 0x20
/* 807856F4  38 80 FF FF */	li r4, -1
/* 807856F8  4B 8F 25 E4 */	b __dt__11dBgS_LinChkFv
/* 807856FC  38 60 00 01 */	li r3, 1
/* 80785700  48 00 00 14 */	b lbl_80785714
lbl_80785704:
/* 80785704  38 61 00 20 */	addi r3, r1, 0x20
/* 80785708  38 80 FF FF */	li r4, -1
/* 8078570C  4B 8F 25 D0 */	b __dt__11dBgS_LinChkFv
/* 80785710  38 60 00 00 */	li r3, 0
lbl_80785714:
/* 80785714  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 80785718  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 8078571C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80785720  7C 08 03 A6 */	mtlr r0
/* 80785724  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80785728  4E 80 00 20 */	blr 
