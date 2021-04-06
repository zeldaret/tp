lbl_8070B114:
/* 8070B114  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8070B118  7C 08 02 A6 */	mflr r0
/* 8070B11C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8070B120  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 8070B124  93 C1 00 98 */	stw r30, 0x98(r1)
/* 8070B128  7C 9E 23 78 */	mr r30, r4
/* 8070B12C  7C 7F 1B 78 */	mr r31, r3
/* 8070B130  38 61 00 20 */	addi r3, r1, 0x20
/* 8070B134  4B 96 CB 35 */	bl __ct__11dBgS_LinChkFv
/* 8070B138  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8070B13C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8070B140  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8070B144  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8070B148  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8070B14C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8070B150  3C 60 80 71 */	lis r3, lit_3828@ha /* 0x80713974@ha */
/* 8070B154  C0 03 39 74 */	lfs f0, lit_3828@l(r3)  /* 0x80713974@l */
/* 8070B158  EC 01 00 2A */	fadds f0, f1, f0
/* 8070B15C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8070B160  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8070B164  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8070B168  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8070B16C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8070B170  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8070B174  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8070B178  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 8070B17C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8070B180  38 61 00 20 */	addi r3, r1, 0x20
/* 8070B184  38 81 00 14 */	addi r4, r1, 0x14
/* 8070B188  38 A1 00 08 */	addi r5, r1, 8
/* 8070B18C  7F E6 FB 78 */	mr r6, r31
/* 8070B190  4B 96 CB D5 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8070B194  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8070B198  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8070B19C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8070B1A0  38 81 00 20 */	addi r4, r1, 0x20
/* 8070B1A4  4B 96 92 11 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 8070B1A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8070B1AC  41 82 00 18 */	beq lbl_8070B1C4
/* 8070B1B0  38 61 00 20 */	addi r3, r1, 0x20
/* 8070B1B4  38 80 FF FF */	li r4, -1
/* 8070B1B8  4B 96 CB 25 */	bl __dt__11dBgS_LinChkFv
/* 8070B1BC  38 60 00 01 */	li r3, 1
/* 8070B1C0  48 00 00 14 */	b lbl_8070B1D4
lbl_8070B1C4:
/* 8070B1C4  38 61 00 20 */	addi r3, r1, 0x20
/* 8070B1C8  38 80 FF FF */	li r4, -1
/* 8070B1CC  4B 96 CB 11 */	bl __dt__11dBgS_LinChkFv
/* 8070B1D0  38 60 00 00 */	li r3, 0
lbl_8070B1D4:
/* 8070B1D4  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 8070B1D8  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 8070B1DC  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8070B1E0  7C 08 03 A6 */	mtlr r0
/* 8070B1E4  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8070B1E8  4E 80 00 20 */	blr 
