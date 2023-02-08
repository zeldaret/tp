lbl_806E0880:
/* 806E0880  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 806E0884  7C 08 02 A6 */	mflr r0
/* 806E0888  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 806E088C  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 806E0890  93 C1 00 98 */	stw r30, 0x98(r1)
/* 806E0894  7C 9E 23 78 */	mr r30, r4
/* 806E0898  7C 7F 1B 78 */	mr r31, r3
/* 806E089C  38 61 00 20 */	addi r3, r1, 0x20
/* 806E08A0  4B 99 73 C9 */	bl __ct__11dBgS_LinChkFv
/* 806E08A4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 806E08A8  D0 01 00 08 */	stfs f0, 8(r1)
/* 806E08AC  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 806E08B0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806E08B4  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 806E08B8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806E08BC  3C 60 80 6E */	lis r3, lit_3791@ha /* 0x806E5920@ha */
/* 806E08C0  C0 43 59 20 */	lfs f2, lit_3791@l(r3)  /* 0x806E5920@l */
/* 806E08C4  EC 01 10 2A */	fadds f0, f1, f2
/* 806E08C8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806E08CC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 806E08D0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806E08D4  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 806E08D8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 806E08DC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 806E08E0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806E08E4  EC 01 10 2A */	fadds f0, f1, f2
/* 806E08E8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806E08EC  38 61 00 20 */	addi r3, r1, 0x20
/* 806E08F0  38 81 00 14 */	addi r4, r1, 0x14
/* 806E08F4  38 A1 00 08 */	addi r5, r1, 8
/* 806E08F8  7F E6 FB 78 */	mr r6, r31
/* 806E08FC  4B 99 74 69 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 806E0900  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806E0904  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806E0908  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806E090C  38 81 00 20 */	addi r4, r1, 0x20
/* 806E0910  4B 99 3A A5 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 806E0914  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806E0918  41 82 00 18 */	beq lbl_806E0930
/* 806E091C  38 61 00 20 */	addi r3, r1, 0x20
/* 806E0920  38 80 FF FF */	li r4, -1
/* 806E0924  4B 99 73 B9 */	bl __dt__11dBgS_LinChkFv
/* 806E0928  38 60 00 01 */	li r3, 1
/* 806E092C  48 00 00 14 */	b lbl_806E0940
lbl_806E0930:
/* 806E0930  38 61 00 20 */	addi r3, r1, 0x20
/* 806E0934  38 80 FF FF */	li r4, -1
/* 806E0938  4B 99 73 A5 */	bl __dt__11dBgS_LinChkFv
/* 806E093C  38 60 00 00 */	li r3, 0
lbl_806E0940:
/* 806E0940  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 806E0944  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 806E0948  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 806E094C  7C 08 03 A6 */	mtlr r0
/* 806E0950  38 21 00 A0 */	addi r1, r1, 0xa0
/* 806E0954  4E 80 00 20 */	blr 
