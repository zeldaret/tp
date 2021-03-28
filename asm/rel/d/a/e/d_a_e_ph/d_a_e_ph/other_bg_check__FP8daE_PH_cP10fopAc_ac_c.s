lbl_8073D4EC:
/* 8073D4EC  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8073D4F0  7C 08 02 A6 */	mflr r0
/* 8073D4F4  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8073D4F8  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 8073D4FC  93 C1 00 98 */	stw r30, 0x98(r1)
/* 8073D500  7C 9E 23 78 */	mr r30, r4
/* 8073D504  7C 7F 1B 78 */	mr r31, r3
/* 8073D508  38 61 00 20 */	addi r3, r1, 0x20
/* 8073D50C  4B 93 A7 5C */	b __ct__11dBgS_LinChkFv
/* 8073D510  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8073D514  D0 01 00 08 */	stfs f0, 8(r1)
/* 8073D518  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8073D51C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8073D520  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8073D524  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8073D528  3C 60 80 74 */	lis r3, lit_3805@ha
/* 8073D52C  C0 43 1C 40 */	lfs f2, lit_3805@l(r3)
/* 8073D530  EC 01 10 2A */	fadds f0, f1, f2
/* 8073D534  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8073D538  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8073D53C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8073D540  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 8073D544  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8073D548  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8073D54C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8073D550  EC 01 10 2A */	fadds f0, f1, f2
/* 8073D554  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8073D558  38 61 00 20 */	addi r3, r1, 0x20
/* 8073D55C  38 81 00 14 */	addi r4, r1, 0x14
/* 8073D560  38 A1 00 08 */	addi r5, r1, 8
/* 8073D564  7F E6 FB 78 */	mr r6, r31
/* 8073D568  4B 93 A7 FC */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8073D56C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8073D570  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8073D574  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8073D578  38 81 00 20 */	addi r4, r1, 0x20
/* 8073D57C  4B 93 6E 38 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 8073D580  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8073D584  41 82 00 18 */	beq lbl_8073D59C
/* 8073D588  38 61 00 20 */	addi r3, r1, 0x20
/* 8073D58C  38 80 FF FF */	li r4, -1
/* 8073D590  4B 93 A7 4C */	b __dt__11dBgS_LinChkFv
/* 8073D594  38 60 00 01 */	li r3, 1
/* 8073D598  48 00 00 14 */	b lbl_8073D5AC
lbl_8073D59C:
/* 8073D59C  38 61 00 20 */	addi r3, r1, 0x20
/* 8073D5A0  38 80 FF FF */	li r4, -1
/* 8073D5A4  4B 93 A7 38 */	b __dt__11dBgS_LinChkFv
/* 8073D5A8  38 60 00 00 */	li r3, 0
lbl_8073D5AC:
/* 8073D5AC  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 8073D5B0  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 8073D5B4  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8073D5B8  7C 08 03 A6 */	mtlr r0
/* 8073D5BC  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8073D5C0  4E 80 00 20 */	blr 
