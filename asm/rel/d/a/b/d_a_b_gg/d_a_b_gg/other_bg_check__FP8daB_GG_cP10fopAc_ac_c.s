lbl_805DF178:
/* 805DF178  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 805DF17C  7C 08 02 A6 */	mflr r0
/* 805DF180  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 805DF184  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 805DF188  93 C1 00 98 */	stw r30, 0x98(r1)
/* 805DF18C  7C 9E 23 78 */	mr r30, r4
/* 805DF190  7C 7F 1B 78 */	mr r31, r3
/* 805DF194  38 61 00 20 */	addi r3, r1, 0x20
/* 805DF198  4B A9 8A D1 */	bl __ct__11dBgS_LinChkFv
/* 805DF19C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805DF1A0  D0 01 00 08 */	stfs f0, 8(r1)
/* 805DF1A4  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 805DF1A8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805DF1AC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 805DF1B0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805DF1B4  3C 60 80 5F */	lis r3, lit_3911@ha /* 0x805ED060@ha */
/* 805DF1B8  C0 43 D0 60 */	lfs f2, lit_3911@l(r3)  /* 0x805ED060@l */
/* 805DF1BC  EC 01 10 2A */	fadds f0, f1, f2
/* 805DF1C0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805DF1C4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805DF1C8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805DF1CC  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 805DF1D0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 805DF1D4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805DF1D8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805DF1DC  EC 01 10 2A */	fadds f0, f1, f2
/* 805DF1E0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805DF1E4  38 61 00 20 */	addi r3, r1, 0x20
/* 805DF1E8  38 81 00 14 */	addi r4, r1, 0x14
/* 805DF1EC  38 A1 00 08 */	addi r5, r1, 8
/* 805DF1F0  7F E6 FB 78 */	mr r6, r31
/* 805DF1F4  4B A9 8B 71 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 805DF1F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805DF1FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805DF200  38 63 0F 38 */	addi r3, r3, 0xf38
/* 805DF204  38 81 00 20 */	addi r4, r1, 0x20
/* 805DF208  4B A9 51 AD */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 805DF20C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805DF210  41 82 00 18 */	beq lbl_805DF228
/* 805DF214  38 61 00 20 */	addi r3, r1, 0x20
/* 805DF218  38 80 FF FF */	li r4, -1
/* 805DF21C  4B A9 8A C1 */	bl __dt__11dBgS_LinChkFv
/* 805DF220  38 60 00 01 */	li r3, 1
/* 805DF224  48 00 00 14 */	b lbl_805DF238
lbl_805DF228:
/* 805DF228  38 61 00 20 */	addi r3, r1, 0x20
/* 805DF22C  38 80 FF FF */	li r4, -1
/* 805DF230  4B A9 8A AD */	bl __dt__11dBgS_LinChkFv
/* 805DF234  38 60 00 00 */	li r3, 0
lbl_805DF238:
/* 805DF238  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 805DF23C  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 805DF240  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 805DF244  7C 08 03 A6 */	mtlr r0
/* 805DF248  38 21 00 A0 */	addi r1, r1, 0xa0
/* 805DF24C  4E 80 00 20 */	blr 
