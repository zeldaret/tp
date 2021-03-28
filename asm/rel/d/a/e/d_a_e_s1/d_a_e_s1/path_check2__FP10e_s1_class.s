lbl_8077B1A8:
/* 8077B1A8  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8077B1AC  7C 08 02 A6 */	mflr r0
/* 8077B1B0  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8077B1B4  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 8077B1B8  7C 7F 1B 78 */	mr r31, r3
/* 8077B1BC  38 61 00 20 */	addi r3, r1, 0x20
/* 8077B1C0  4B 8F CA A8 */	b __ct__11dBgS_LinChkFv
/* 8077B1C4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8077B1C8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8077B1CC  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 8077B1D0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8077B1D4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8077B1D8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8077B1DC  3C 60 80 78 */	lis r3, lit_3926@ha
/* 8077B1E0  C0 03 0D F8 */	lfs f0, lit_3926@l(r3)
/* 8077B1E4  EC 01 00 2A */	fadds f0, f1, f0
/* 8077B1E8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8077B1EC  C0 1F 05 C4 */	lfs f0, 0x5c4(r31)
/* 8077B1F0  D0 01 00 08 */	stfs f0, 8(r1)
/* 8077B1F4  C0 3F 05 C8 */	lfs f1, 0x5c8(r31)
/* 8077B1F8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8077B1FC  C0 1F 05 CC */	lfs f0, 0x5cc(r31)
/* 8077B200  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8077B204  3C 60 80 78 */	lis r3, lit_4096@ha
/* 8077B208  C0 03 0E 10 */	lfs f0, lit_4096@l(r3)
/* 8077B20C  EC 01 00 2A */	fadds f0, f1, f0
/* 8077B210  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8077B214  38 61 00 20 */	addi r3, r1, 0x20
/* 8077B218  38 81 00 14 */	addi r4, r1, 0x14
/* 8077B21C  38 A1 00 08 */	addi r5, r1, 8
/* 8077B220  7F E6 FB 78 */	mr r6, r31
/* 8077B224  4B 8F CB 40 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8077B228  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8077B22C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8077B230  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8077B234  38 81 00 20 */	addi r4, r1, 0x20
/* 8077B238  4B 8F 91 7C */	b LineCross__4cBgSFP11cBgS_LinChk
/* 8077B23C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8077B240  41 82 00 14 */	beq lbl_8077B254
/* 8077B244  38 00 00 07 */	li r0, 7
/* 8077B248  B0 1F 06 96 */	sth r0, 0x696(r31)
/* 8077B24C  38 00 00 00 */	li r0, 0
/* 8077B250  B0 1F 06 98 */	sth r0, 0x698(r31)
lbl_8077B254:
/* 8077B254  38 61 00 20 */	addi r3, r1, 0x20
/* 8077B258  38 80 FF FF */	li r4, -1
/* 8077B25C  4B 8F CA 80 */	b __dt__11dBgS_LinChkFv
/* 8077B260  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 8077B264  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8077B268  7C 08 03 A6 */	mtlr r0
/* 8077B26C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8077B270  4E 80 00 20 */	blr 
