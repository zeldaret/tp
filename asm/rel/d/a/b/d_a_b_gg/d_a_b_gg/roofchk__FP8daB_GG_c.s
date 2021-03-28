lbl_805DF0B8:
/* 805DF0B8  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 805DF0BC  7C 08 02 A6 */	mflr r0
/* 805DF0C0  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 805DF0C4  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 805DF0C8  7C 7F 1B 78 */	mr r31, r3
/* 805DF0CC  38 61 00 20 */	addi r3, r1, 0x20
/* 805DF0D0  4B A9 8B 98 */	b __ct__11dBgS_LinChkFv
/* 805DF0D4  C0 5F 04 D0 */	lfs f2, 0x4d0(r31)
/* 805DF0D8  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 805DF0DC  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 805DF0E0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 805DF0E4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805DF0E8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805DF0EC  D0 41 00 08 */	stfs f2, 8(r1)
/* 805DF0F0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805DF0F4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805DF0F8  3C 60 80 5F */	lis r3, lit_4291@ha
/* 805DF0FC  C0 03 D1 CC */	lfs f0, lit_4291@l(r3)
/* 805DF100  EC 01 00 2A */	fadds f0, f1, f0
/* 805DF104  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805DF108  38 61 00 20 */	addi r3, r1, 0x20
/* 805DF10C  38 81 00 14 */	addi r4, r1, 0x14
/* 805DF110  38 A1 00 08 */	addi r5, r1, 8
/* 805DF114  7F E6 FB 78 */	mr r6, r31
/* 805DF118  4B A9 8C 4C */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 805DF11C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805DF120  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805DF124  38 63 0F 38 */	addi r3, r3, 0xf38
/* 805DF128  38 81 00 20 */	addi r4, r1, 0x20
/* 805DF12C  4B A9 52 88 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 805DF130  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805DF134  41 82 00 20 */	beq lbl_805DF154
/* 805DF138  C0 1F 04 C0 */	lfs f0, 0x4c0(r31)
/* 805DF13C  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 805DF140  38 61 00 20 */	addi r3, r1, 0x20
/* 805DF144  38 80 FF FF */	li r4, -1
/* 805DF148  4B A9 8B 94 */	b __dt__11dBgS_LinChkFv
/* 805DF14C  38 60 00 01 */	li r3, 1
/* 805DF150  48 00 00 14 */	b lbl_805DF164
lbl_805DF154:
/* 805DF154  38 61 00 20 */	addi r3, r1, 0x20
/* 805DF158  38 80 FF FF */	li r4, -1
/* 805DF15C  4B A9 8B 80 */	b __dt__11dBgS_LinChkFv
/* 805DF160  38 60 00 00 */	li r3, 0
lbl_805DF164:
/* 805DF164  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 805DF168  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 805DF16C  7C 08 03 A6 */	mtlr r0
/* 805DF170  38 21 00 A0 */	addi r1, r1, 0xa0
/* 805DF174  4E 80 00 20 */	blr 
