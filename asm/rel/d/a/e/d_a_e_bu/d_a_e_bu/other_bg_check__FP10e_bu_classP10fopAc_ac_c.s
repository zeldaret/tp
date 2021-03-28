lbl_80691504:
/* 80691504  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80691508  7C 08 02 A6 */	mflr r0
/* 8069150C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80691510  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 80691514  93 C1 00 98 */	stw r30, 0x98(r1)
/* 80691518  7C 9E 23 78 */	mr r30, r4
/* 8069151C  7C 7F 1B 78 */	mr r31, r3
/* 80691520  38 61 00 20 */	addi r3, r1, 0x20
/* 80691524  4B 9E 67 44 */	b __ct__11dBgS_LinChkFv
/* 80691528  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8069152C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80691530  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80691534  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80691538  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8069153C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80691540  3C 60 80 69 */	lis r3, lit_3788@ha
/* 80691544  C0 03 46 90 */	lfs f0, lit_3788@l(r3)
/* 80691548  EC 01 00 2A */	fadds f0, f1, f0
/* 8069154C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80691550  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80691554  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80691558  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8069155C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80691560  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80691564  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80691568  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 8069156C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80691570  38 61 00 20 */	addi r3, r1, 0x20
/* 80691574  38 81 00 14 */	addi r4, r1, 0x14
/* 80691578  38 A1 00 08 */	addi r5, r1, 8
/* 8069157C  7F E6 FB 78 */	mr r6, r31
/* 80691580  4B 9E 67 E4 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80691584  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80691588  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8069158C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80691590  38 81 00 20 */	addi r4, r1, 0x20
/* 80691594  4B 9E 2E 20 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80691598  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8069159C  41 82 00 18 */	beq lbl_806915B4
/* 806915A0  38 61 00 20 */	addi r3, r1, 0x20
/* 806915A4  38 80 FF FF */	li r4, -1
/* 806915A8  4B 9E 67 34 */	b __dt__11dBgS_LinChkFv
/* 806915AC  38 60 00 01 */	li r3, 1
/* 806915B0  48 00 00 14 */	b lbl_806915C4
lbl_806915B4:
/* 806915B4  38 61 00 20 */	addi r3, r1, 0x20
/* 806915B8  38 80 FF FF */	li r4, -1
/* 806915BC  4B 9E 67 20 */	b __dt__11dBgS_LinChkFv
/* 806915C0  38 60 00 00 */	li r3, 0
lbl_806915C4:
/* 806915C4  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 806915C8  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 806915CC  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 806915D0  7C 08 03 A6 */	mtlr r0
/* 806915D4  38 21 00 A0 */	addi r1, r1, 0xa0
/* 806915D8  4E 80 00 20 */	blr 
