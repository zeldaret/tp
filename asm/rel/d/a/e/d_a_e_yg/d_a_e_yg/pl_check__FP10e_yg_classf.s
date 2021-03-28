lbl_807F8440:
/* 807F8440  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807F8444  7C 08 02 A6 */	mflr r0
/* 807F8448  90 01 00 14 */	stw r0, 0x14(r1)
/* 807F844C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 807F8450  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 807F8454  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 807F8458  C0 03 06 80 */	lfs f0, 0x680(r3)
/* 807F845C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 807F8460  40 80 00 18 */	bge lbl_807F8478
/* 807F8464  4B 82 49 98 */	b fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807F8468  2C 03 00 00 */	cmpwi r3, 0
/* 807F846C  40 82 00 0C */	bne lbl_807F8478
/* 807F8470  38 60 00 01 */	li r3, 1
/* 807F8474  48 00 00 08 */	b lbl_807F847C
lbl_807F8478:
/* 807F8478  38 60 00 00 */	li r3, 0
lbl_807F847C:
/* 807F847C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807F8480  7C 08 03 A6 */	mtlr r0
/* 807F8484  38 21 00 10 */	addi r1, r1, 0x10
/* 807F8488  4E 80 00 20 */	blr 
