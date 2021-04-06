lbl_80D03440:
/* 80D03440  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D03444  7C 08 02 A6 */	mflr r0
/* 80D03448  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0344C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D03450  7C 7F 1B 78 */	mr r31, r3
/* 80D03454  80 03 09 94 */	lwz r0, 0x994(r3)
/* 80D03458  28 00 00 00 */	cmplwi r0, 0
/* 80D0345C  40 82 00 1C */	bne lbl_80D03478
/* 80D03460  38 7F 04 E8 */	addi r3, r31, 0x4e8
/* 80D03464  38 80 40 00 */	li r4, 0x4000
/* 80D03468  38 A0 00 01 */	li r5, 1
/* 80D0346C  38 C0 04 44 */	li r6, 0x444
/* 80D03470  38 E0 00 01 */	li r7, 1
/* 80D03474  4B 56 D0 CD */	bl cLib_addCalcAngleS__FPsssss
lbl_80D03478:
/* 80D03478  C0 1F 04 FC */	lfs f0, 0x4fc(r31)
/* 80D0347C  3C 60 80 D0 */	lis r3, lit_4138@ha /* 0x80D04020@ha */
/* 80D03480  C0 23 40 20 */	lfs f1, lit_4138@l(r3)  /* 0x80D04020@l */
/* 80D03484  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80D03488  40 80 00 08 */	bge lbl_80D03490
/* 80D0348C  48 00 00 1C */	b lbl_80D034A8
lbl_80D03490:
/* 80D03490  3C 60 80 D0 */	lis r3, lit_4139@ha /* 0x80D04024@ha */
/* 80D03494  C0 23 40 24 */	lfs f1, lit_4139@l(r3)  /* 0x80D04024@l */
/* 80D03498  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80D0349C  40 81 00 08 */	ble lbl_80D034A4
/* 80D034A0  48 00 00 08 */	b lbl_80D034A8
lbl_80D034A4:
/* 80D034A4  FC 20 00 90 */	fmr f1, f0
lbl_80D034A8:
/* 80D034A8  D0 3F 04 FC */	stfs f1, 0x4fc(r31)
/* 80D034AC  7F E3 FB 78 */	mr r3, r31
/* 80D034B0  38 9F 05 CC */	addi r4, r31, 0x5cc
/* 80D034B4  4B 31 72 19 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80D034B8  38 7F 07 BC */	addi r3, r31, 0x7bc
/* 80D034BC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D034C0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D034C4  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80D034C8  4B 37 35 E5 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80D034CC  7F E3 FB 78 */	mr r3, r31
/* 80D034D0  48 00 02 0D */	bl bgCheck__10daSyRock_cFv
/* 80D034D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D034D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D034DC  7C 08 03 A6 */	mtlr r0
/* 80D034E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D034E4  4E 80 00 20 */	blr 
