lbl_80A284F8:
/* 80A284F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A284FC  7C 08 02 A6 */	mflr r0
/* 80A28500  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A28504  39 61 00 20 */	addi r11, r1, 0x20
/* 80A28508  4B 93 9C D4 */	b _savegpr_29
/* 80A2850C  7C 7D 1B 78 */	mr r29, r3
/* 80A28510  7C 9E 23 78 */	mr r30, r4
/* 80A28514  3C 80 80 A3 */	lis r4, lit_1109@ha
/* 80A28518  3B E4 A7 A0 */	addi r31, r4, lit_1109@l
/* 80A2851C  4B 5F 07 C4 */	b fopAc_IsActor__FPv
/* 80A28520  2C 03 00 00 */	cmpwi r3, 0
/* 80A28524  40 82 00 0C */	bne lbl_80A28530
/* 80A28528  38 60 00 00 */	li r3, 0
/* 80A2852C  48 00 00 84 */	b lbl_80A285B0
lbl_80A28530:
/* 80A28530  A8 1D 00 08 */	lha r0, 8(r29)
/* 80A28534  2C 00 02 8A */	cmpwi r0, 0x28a
/* 80A28538  41 82 00 0C */	beq lbl_80A28544
/* 80A2853C  38 60 00 00 */	li r3, 0
/* 80A28540  48 00 00 70 */	b lbl_80A285B0
lbl_80A28544:
/* 80A28544  7F C3 F3 78 */	mr r3, r30
/* 80A28548  7F A4 EB 78 */	mr r4, r29
/* 80A2854C  4B 5F 21 C4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A28550  7C 64 1B 78 */	mr r4, r3
/* 80A28554  A8 7F 00 58 */	lha r3, 0x58(r31)
/* 80A28558  4B 84 88 CC */	b cLib_distanceAngleS__Fss
/* 80A2855C  80 1F 00 50 */	lwz r0, 0x50(r31)
/* 80A28560  28 00 00 00 */	cmplwi r0, 0
/* 80A28564  40 82 00 20 */	bne lbl_80A28584
/* 80A28568  7F C3 F3 78 */	mr r3, r30
/* 80A2856C  7F A4 EB 78 */	mr r4, r29
/* 80A28570  4B 5F 25 24 */	b fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A28574  D0 3F 00 54 */	stfs f1, 0x54(r31)
/* 80A28578  93 BF 00 50 */	stw r29, 0x50(r31)
/* 80A2857C  38 60 00 00 */	li r3, 0
/* 80A28580  48 00 00 30 */	b lbl_80A285B0
lbl_80A28584:
/* 80A28584  2C 03 40 00 */	cmpwi r3, 0x4000
/* 80A28588  40 81 00 24 */	ble lbl_80A285AC
/* 80A2858C  7F C3 F3 78 */	mr r3, r30
/* 80A28590  7F A4 EB 78 */	mr r4, r29
/* 80A28594  4B 5F 25 00 */	b fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A28598  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80A2859C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A285A0  40 80 00 0C */	bge lbl_80A285AC
/* 80A285A4  D0 3F 00 54 */	stfs f1, 0x54(r31)
/* 80A285A8  93 BF 00 50 */	stw r29, 0x50(r31)
lbl_80A285AC:
/* 80A285AC  38 60 00 00 */	li r3, 0
lbl_80A285B0:
/* 80A285B0  39 61 00 20 */	addi r11, r1, 0x20
/* 80A285B4  4B 93 9C 74 */	b _restgpr_29
/* 80A285B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A285BC  7C 08 03 A6 */	mtlr r0
/* 80A285C0  38 21 00 20 */	addi r1, r1, 0x20
/* 80A285C4  4E 80 00 20 */	blr 
