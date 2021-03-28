lbl_807B8350:
/* 807B8350  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 807B8354  7C 08 02 A6 */	mflr r0
/* 807B8358  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 807B835C  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 807B8360  93 C1 00 98 */	stw r30, 0x98(r1)
/* 807B8364  7C 9E 23 78 */	mr r30, r4
/* 807B8368  7C 7F 1B 78 */	mr r31, r3
/* 807B836C  38 61 00 20 */	addi r3, r1, 0x20
/* 807B8370  4B 8B F8 F8 */	b __ct__11dBgS_LinChkFv
/* 807B8374  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807B8378  D0 01 00 08 */	stfs f0, 8(r1)
/* 807B837C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 807B8380  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807B8384  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 807B8388  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807B838C  3C 60 80 7C */	lis r3, lit_3820@ha
/* 807B8390  C0 03 A2 88 */	lfs f0, lit_3820@l(r3)
/* 807B8394  EC 01 00 2A */	fadds f0, f1, f0
/* 807B8398  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807B839C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 807B83A0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807B83A4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 807B83A8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807B83AC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 807B83B0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807B83B4  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 807B83B8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807B83BC  38 61 00 20 */	addi r3, r1, 0x20
/* 807B83C0  38 81 00 14 */	addi r4, r1, 0x14
/* 807B83C4  38 A1 00 08 */	addi r5, r1, 8
/* 807B83C8  7F E6 FB 78 */	mr r6, r31
/* 807B83CC  4B 8B F9 98 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 807B83D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807B83D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807B83D8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 807B83DC  38 81 00 20 */	addi r4, r1, 0x20
/* 807B83E0  4B 8B BF D4 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 807B83E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807B83E8  41 82 00 18 */	beq lbl_807B8400
/* 807B83EC  38 61 00 20 */	addi r3, r1, 0x20
/* 807B83F0  38 80 FF FF */	li r4, -1
/* 807B83F4  4B 8B F8 E8 */	b __dt__11dBgS_LinChkFv
/* 807B83F8  38 60 00 01 */	li r3, 1
/* 807B83FC  48 00 00 14 */	b lbl_807B8410
lbl_807B8400:
/* 807B8400  38 61 00 20 */	addi r3, r1, 0x20
/* 807B8404  38 80 FF FF */	li r4, -1
/* 807B8408  4B 8B F8 D4 */	b __dt__11dBgS_LinChkFv
/* 807B840C  38 60 00 00 */	li r3, 0
lbl_807B8410:
/* 807B8410  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 807B8414  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 807B8418  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 807B841C  7C 08 03 A6 */	mtlr r0
/* 807B8420  38 21 00 A0 */	addi r1, r1, 0xa0
/* 807B8424  4E 80 00 20 */	blr 
