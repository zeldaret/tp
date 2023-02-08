lbl_80BDAA9C:
/* 80BDAA9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDAAA0  7C 08 02 A6 */	mflr r0
/* 80BDAAA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDAAA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BDAAAC  93 C1 00 08 */	stw r30, 8(r1)
/* 80BDAAB0  7C 7E 1B 78 */	mr r30, r3
/* 80BDAAB4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BDAAB8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BDAABC  83 E4 5D AC */	lwz r31, 0x5dac(r4)
/* 80BDAAC0  7F E4 FB 78 */	mr r4, r31
/* 80BDAAC4  4B 43 FE A1 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80BDAAC8  3C 60 80 BE */	lis r3, lit_3938@ha /* 0x80BDC400@ha */
/* 80BDAACC  C0 03 C4 00 */	lfs f0, lit_3938@l(r3)  /* 0x80BDC400@l */
/* 80BDAAD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BDAAD4  40 80 00 28 */	bge lbl_80BDAAFC
/* 80BDAAD8  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 80BDAADC  3C 60 80 BE */	lis r3, lit_3939@ha /* 0x80BDC404@ha */
/* 80BDAAE0  C0 03 C4 04 */	lfs f0, lit_3939@l(r3)  /* 0x80BDC404@l */
/* 80BDAAE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BDAAE8  40 81 00 14 */	ble lbl_80BDAAFC
/* 80BDAAEC  38 00 00 02 */	li r0, 2
/* 80BDAAF0  98 1E 07 68 */	stb r0, 0x768(r30)
/* 80BDAAF4  38 00 00 00 */	li r0, 0
/* 80BDAAF8  98 1E 07 69 */	stb r0, 0x769(r30)
lbl_80BDAAFC:
/* 80BDAAFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BDAB00  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BDAB04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDAB08  7C 08 03 A6 */	mtlr r0
/* 80BDAB0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDAB10  4E 80 00 20 */	blr 
