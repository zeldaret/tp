lbl_80625394:
/* 80625394  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80625398  7C 08 02 A6 */	mflr r0
/* 8062539C  90 01 00 34 */	stw r0, 0x34(r1)
/* 806253A0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 806253A4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 806253A8  39 61 00 20 */	addi r11, r1, 0x20
/* 806253AC  4B D3 CE 30 */	b _savegpr_29
/* 806253B0  7C 7F 1B 78 */	mr r31, r3
/* 806253B4  3C 80 80 63 */	lis r4, lit_3920@ha
/* 806253B8  3B A4 E6 34 */	addi r29, r4, lit_3920@l
/* 806253BC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806253C0  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l
/* 806253C4  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 806253C8  4B 9F 54 18 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806253CC  FF E0 08 90 */	fmr f31, f1
/* 806253D0  7F E3 FB 78 */	mr r3, r31
/* 806253D4  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 806253D8  4B 9F 53 38 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806253DC  7F E3 FB 78 */	mr r3, r31
/* 806253E0  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 806253E4  4B 9F 53 2C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806253E8  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 806253EC  7C 00 18 50 */	subf r0, r0, r3
/* 806253F0  7C 03 07 34 */	extsh r3, r0
/* 806253F4  C0 1D 00 F8 */	lfs f0, 0xf8(r29)
/* 806253F8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 806253FC  40 80 01 D4 */	bge lbl_806255D0
/* 80625400  4B D3 FC D0 */	b abs
/* 80625404  2C 03 30 00 */	cmpwi r3, 0x3000
/* 80625408  40 80 01 C8 */	bge lbl_806255D0
/* 8062540C  80 1F 0A 78 */	lwz r0, 0xa78(r31)
/* 80625410  2C 00 00 0B */	cmpwi r0, 0xb
/* 80625414  41 80 00 CC */	blt lbl_806254E0
/* 80625418  88 1F 0A A5 */	lbz r0, 0xaa5(r31)
/* 8062541C  28 00 00 01 */	cmplwi r0, 1
/* 80625420  40 82 00 34 */	bne lbl_80625454
/* 80625424  80 1F 0A 70 */	lwz r0, 0xa70(r31)
/* 80625428  2C 00 00 28 */	cmpwi r0, 0x28
/* 8062542C  40 81 00 3C */	ble lbl_80625468
/* 80625430  C0 3D 01 4C */	lfs f1, 0x14c(r29)
/* 80625434  4B C4 25 20 */	b cM_rndF__Ff
/* 80625438  C0 1D 01 40 */	lfs f0, 0x140(r29)
/* 8062543C  EC 00 08 2A */	fadds f0, f0, f1
/* 80625440  FC 00 00 1E */	fctiwz f0, f0
/* 80625444  D8 01 00 08 */	stfd f0, 8(r1)
/* 80625448  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8062544C  90 1F 0A 70 */	stw r0, 0xa70(r31)
/* 80625450  48 00 00 18 */	b lbl_80625468
lbl_80625454:
/* 80625454  80 1F 0A 70 */	lwz r0, 0xa70(r31)
/* 80625458  2C 00 00 0A */	cmpwi r0, 0xa
/* 8062545C  40 81 00 0C */	ble lbl_80625468
/* 80625460  38 00 00 0A */	li r0, 0xa
/* 80625464  90 1F 0A 70 */	stw r0, 0xa70(r31)
lbl_80625468:
/* 80625468  80 1F 0A 70 */	lwz r0, 0xa70(r31)
/* 8062546C  2C 00 00 00 */	cmpwi r0, 0
/* 80625470  40 82 01 60 */	bne lbl_806255D0
/* 80625474  7F E3 FB 78 */	mr r3, r31
/* 80625478  4B FF BA 19 */	bl checkNormalAttackAble__8daB_TN_cFv
/* 8062547C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80625480  41 82 01 50 */	beq lbl_806255D0
/* 80625484  88 1F 0A A5 */	lbz r0, 0xaa5(r31)
/* 80625488  28 00 00 01 */	cmplwi r0, 1
/* 8062548C  40 82 00 24 */	bne lbl_806254B0
/* 80625490  3C 60 80 63 */	lis r3, l_HIO@ha
/* 80625494  38 63 F0 2C */	addi r3, r3, l_HIO@l
/* 80625498  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8062549C  FC 00 00 1E */	fctiwz f0, f0
/* 806254A0  D8 01 00 08 */	stfd f0, 8(r1)
/* 806254A4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 806254A8  90 1F 0A 70 */	stw r0, 0xa70(r31)
/* 806254AC  48 00 00 20 */	b lbl_806254CC
lbl_806254B0:
/* 806254B0  3C 60 80 63 */	lis r3, l_HIO@ha
/* 806254B4  38 63 F0 2C */	addi r3, r3, l_HIO@l
/* 806254B8  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 806254BC  FC 00 00 1E */	fctiwz f0, f0
/* 806254C0  D8 01 00 08 */	stfd f0, 8(r1)
/* 806254C4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 806254C8  90 1F 0A 70 */	stw r0, 0xa70(r31)
lbl_806254CC:
/* 806254CC  7F E3 FB 78 */	mr r3, r31
/* 806254D0  38 80 00 04 */	li r4, 4
/* 806254D4  38 A0 00 00 */	li r5, 0
/* 806254D8  4B FF B4 F1 */	bl setActionMode__8daB_TN_cFii
/* 806254DC  48 00 00 F4 */	b lbl_806255D0
lbl_806254E0:
/* 806254E0  C0 1D 00 8C */	lfs f0, 0x8c(r29)
/* 806254E4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 806254E8  40 80 00 18 */	bge lbl_80625500
/* 806254EC  7F E3 FB 78 */	mr r3, r31
/* 806254F0  38 80 00 05 */	li r4, 5
/* 806254F4  38 A0 00 00 */	li r5, 0
/* 806254F8  4B FF B4 D1 */	bl setActionMode__8daB_TN_cFii
/* 806254FC  48 00 00 D4 */	b lbl_806255D0
lbl_80625500:
/* 80625500  C0 1D 00 38 */	lfs f0, 0x38(r29)
/* 80625504  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80625508  40 80 00 54 */	bge lbl_8062555C
/* 8062550C  88 1F 0A A5 */	lbz r0, 0xaa5(r31)
/* 80625510  28 00 00 01 */	cmplwi r0, 1
/* 80625514  40 82 00 34 */	bne lbl_80625548
/* 80625518  80 1F 0A 70 */	lwz r0, 0xa70(r31)
/* 8062551C  2C 00 00 3C */	cmpwi r0, 0x3c
/* 80625520  40 81 00 3C */	ble lbl_8062555C
/* 80625524  C0 3D 01 4C */	lfs f1, 0x14c(r29)
/* 80625528  4B C4 24 2C */	b cM_rndF__Ff
/* 8062552C  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 80625530  EC 00 08 2A */	fadds f0, f0, f1
/* 80625534  FC 00 00 1E */	fctiwz f0, f0
/* 80625538  D8 01 00 08 */	stfd f0, 8(r1)
/* 8062553C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80625540  90 1F 0A 70 */	stw r0, 0xa70(r31)
/* 80625544  48 00 00 18 */	b lbl_8062555C
lbl_80625548:
/* 80625548  80 1F 0A 70 */	lwz r0, 0xa70(r31)
/* 8062554C  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80625550  40 81 00 0C */	ble lbl_8062555C
/* 80625554  38 00 00 1E */	li r0, 0x1e
/* 80625558  90 1F 0A 70 */	stw r0, 0xa70(r31)
lbl_8062555C:
/* 8062555C  80 1F 0A 70 */	lwz r0, 0xa70(r31)
/* 80625560  2C 00 00 00 */	cmpwi r0, 0
/* 80625564  40 82 00 6C */	bne lbl_806255D0
/* 80625568  7F E3 FB 78 */	mr r3, r31
/* 8062556C  4B FF B9 25 */	bl checkNormalAttackAble__8daB_TN_cFv
/* 80625570  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80625574  41 82 00 5C */	beq lbl_806255D0
/* 80625578  88 1F 0A A5 */	lbz r0, 0xaa5(r31)
/* 8062557C  28 00 00 01 */	cmplwi r0, 1
/* 80625580  40 82 00 24 */	bne lbl_806255A4
/* 80625584  3C 60 80 63 */	lis r3, l_HIO@ha
/* 80625588  38 63 F0 2C */	addi r3, r3, l_HIO@l
/* 8062558C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80625590  FC 00 00 1E */	fctiwz f0, f0
/* 80625594  D8 01 00 08 */	stfd f0, 8(r1)
/* 80625598  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8062559C  90 1F 0A 70 */	stw r0, 0xa70(r31)
/* 806255A0  48 00 00 20 */	b lbl_806255C0
lbl_806255A4:
/* 806255A4  3C 60 80 63 */	lis r3, l_HIO@ha
/* 806255A8  38 63 F0 2C */	addi r3, r3, l_HIO@l
/* 806255AC  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 806255B0  FC 00 00 1E */	fctiwz f0, f0
/* 806255B4  D8 01 00 08 */	stfd f0, 8(r1)
/* 806255B8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 806255BC  90 1F 0A 70 */	stw r0, 0xa70(r31)
lbl_806255C0:
/* 806255C0  7F E3 FB 78 */	mr r3, r31
/* 806255C4  38 80 00 04 */	li r4, 4
/* 806255C8  38 A0 00 00 */	li r5, 0
/* 806255CC  4B FF B3 FD */	bl setActionMode__8daB_TN_cFii
lbl_806255D0:
/* 806255D0  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 806255D4  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 806255D8  39 61 00 20 */	addi r11, r1, 0x20
/* 806255DC  4B D3 CC 4C */	b _restgpr_29
/* 806255E0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806255E4  7C 08 03 A6 */	mtlr r0
/* 806255E8  38 21 00 30 */	addi r1, r1, 0x30
/* 806255EC  4E 80 00 20 */	blr 
