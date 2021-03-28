lbl_80822874:
/* 80822874  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80822878  7C 08 02 A6 */	mflr r0
/* 8082287C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80822880  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 80822884  93 C1 00 98 */	stw r30, 0x98(r1)
/* 80822888  7C 7F 1B 78 */	mr r31, r3
/* 8082288C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80822890  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80822894  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 80822898  38 61 00 20 */	addi r3, r1, 0x20
/* 8082289C  4B 85 53 CC */	b __ct__11dBgS_LinChkFv
/* 808228A0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 808228A4  D0 01 00 08 */	stfs f0, 8(r1)
/* 808228A8  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 808228AC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 808228B0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 808228B4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 808228B8  3C 60 80 83 */	lis r3, lit_3902@ha
/* 808228BC  C0 43 88 50 */	lfs f2, lit_3902@l(r3)
/* 808228C0  EC 01 10 2A */	fadds f0, f1, f2
/* 808228C4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 808228C8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 808228CC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 808228D0  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 808228D4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 808228D8  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 808228DC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 808228E0  EC 01 10 2A */	fadds f0, f1, f2
/* 808228E4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 808228E8  38 61 00 20 */	addi r3, r1, 0x20
/* 808228EC  38 81 00 14 */	addi r4, r1, 0x14
/* 808228F0  38 A1 00 08 */	addi r5, r1, 8
/* 808228F4  7F E6 FB 78 */	mr r6, r31
/* 808228F8  4B 85 54 6C */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 808228FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80822900  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80822904  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80822908  38 81 00 20 */	addi r4, r1, 0x20
/* 8082290C  4B 85 1A A8 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80822910  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80822914  41 82 00 18 */	beq lbl_8082292C
/* 80822918  38 61 00 20 */	addi r3, r1, 0x20
/* 8082291C  38 80 FF FF */	li r4, -1
/* 80822920  4B 85 53 BC */	b __dt__11dBgS_LinChkFv
/* 80822924  38 60 00 01 */	li r3, 1
/* 80822928  48 00 00 14 */	b lbl_8082293C
lbl_8082292C:
/* 8082292C  38 61 00 20 */	addi r3, r1, 0x20
/* 80822930  38 80 FF FF */	li r4, -1
/* 80822934  4B 85 53 A8 */	b __dt__11dBgS_LinChkFv
/* 80822938  38 60 00 00 */	li r3, 0
lbl_8082293C:
/* 8082293C  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 80822940  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 80822944  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80822948  7C 08 03 A6 */	mtlr r0
/* 8082294C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80822950  4E 80 00 20 */	blr 
