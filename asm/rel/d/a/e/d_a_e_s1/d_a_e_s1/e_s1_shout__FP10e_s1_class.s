lbl_8077D448:
/* 8077D448  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8077D44C  7C 08 02 A6 */	mflr r0
/* 8077D450  90 01 00 24 */	stw r0, 0x24(r1)
/* 8077D454  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8077D458  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8077D45C  7C 7E 1B 78 */	mr r30, r3
/* 8077D460  3C 80 80 78 */	lis r4, lit_3903@ha
/* 8077D464  3B E4 0D C4 */	addi r31, r4, lit_3903@l
/* 8077D468  38 00 00 0A */	li r0, 0xa
/* 8077D46C  B0 03 06 A8 */	sth r0, 0x6a8(r3)
/* 8077D470  A8 03 06 98 */	lha r0, 0x698(r3)
/* 8077D474  2C 00 00 01 */	cmpwi r0, 1
/* 8077D478  41 82 00 FC */	beq lbl_8077D574
/* 8077D47C  40 80 01 FC */	bge lbl_8077D678
/* 8077D480  2C 00 00 00 */	cmpwi r0, 0
/* 8077D484  40 80 00 08 */	bge lbl_8077D48C
/* 8077D488  48 00 01 F0 */	b lbl_8077D678
lbl_8077D48C:
/* 8077D48C  38 00 00 32 */	li r0, 0x32
/* 8077D490  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 8077D494  38 80 00 19 */	li r4, 0x19
/* 8077D498  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 8077D49C  38 A0 00 00 */	li r5, 0
/* 8077D4A0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8077D4A4  4B FF D7 55 */	bl anm_init__FP10e_s1_classifUcf
/* 8077D4A8  38 00 00 01 */	li r0, 1
/* 8077D4AC  B0 1E 06 98 */	sth r0, 0x698(r30)
/* 8077D4B0  38 00 00 0A */	li r0, 0xa
/* 8077D4B4  B0 1E 06 A0 */	sth r0, 0x6a0(r30)
/* 8077D4B8  38 00 00 28 */	li r0, 0x28
/* 8077D4BC  B0 1E 06 A2 */	sth r0, 0x6a2(r30)
/* 8077D4C0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701B3@ha */
/* 8077D4C4  38 03 01 B3 */	addi r0, r3, 0x01B3 /* 0x000701B3@l */
/* 8077D4C8  90 01 00 08 */	stw r0, 8(r1)
/* 8077D4CC  38 7E 05 E0 */	addi r3, r30, 0x5e0
/* 8077D4D0  38 81 00 08 */	addi r4, r1, 8
/* 8077D4D4  38 A0 FF FF */	li r5, -1
/* 8077D4D8  81 9E 05 E0 */	lwz r12, 0x5e0(r30)
/* 8077D4DC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8077D4E0  7D 89 03 A6 */	mtctr r12
/* 8077D4E4  4E 80 04 21 */	bctrl 
/* 8077D4E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8077D4EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8077D4F0  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 8077D4F4  3C 80 80 78 */	lis r4, stringBase0@ha
/* 8077D4F8  38 84 0F 74 */	addi r4, r4, stringBase0@l
/* 8077D4FC  38 84 00 0C */	addi r4, r4, 0xc
/* 8077D500  4B BE B4 94 */	b strcmp
/* 8077D504  2C 03 00 00 */	cmpwi r3, 0
/* 8077D508  40 82 01 70 */	bne lbl_8077D678
/* 8077D50C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8077D510  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8077D514  38 80 00 0E */	li r4, 0xe
/* 8077D518  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8077D51C  7C 05 07 74 */	extsb r5, r0
/* 8077D520  4B 8B 7E 40 */	b isSwitch__10dSv_info_cCFii
/* 8077D524  2C 03 00 00 */	cmpwi r3, 0
/* 8077D528  40 82 01 50 */	bne lbl_8077D678
/* 8077D52C  38 00 00 0A */	li r0, 0xa
/* 8077D530  B0 1E 30 38 */	sth r0, 0x3038(r30)
/* 8077D534  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 8077D538  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 8077D53C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8077D540  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8077D544  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 8077D548  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 8077D54C  38 00 00 00 */	li r0, 0
/* 8077D550  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8077D554  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8077D558  3C 60 80 78 */	lis r3, s_check@ha
/* 8077D55C  90 03 14 C0 */	stw r0, s_check@l(r3)
/* 8077D560  3C 60 80 78 */	lis r3, s_posrevise_sub__FPvPv@ha
/* 8077D564  38 63 CB 68 */	addi r3, r3, s_posrevise_sub__FPvPv@l
/* 8077D568  7F C4 F3 78 */	mr r4, r30
/* 8077D56C  4B 8A 3D CC */	b fpcEx_Search__FPFPvPv_PvPv
/* 8077D570  48 00 01 08 */	b lbl_8077D678
lbl_8077D574:
/* 8077D574  A8 1E 30 38 */	lha r0, 0x3038(r30)
/* 8077D578  2C 00 00 00 */	cmpwi r0, 0
/* 8077D57C  41 82 00 34 */	beq lbl_8077D5B0
/* 8077D580  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8077D584  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8077D588  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8077D58C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8077D590  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8077D594  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8077D598  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8077D59C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8077D5A0  38 80 00 08 */	li r4, 8
/* 8077D5A4  38 A0 00 1F */	li r5, 0x1f
/* 8077D5A8  38 C1 00 0C */	addi r6, r1, 0xc
/* 8077D5AC  4B 8F 24 78 */	b StartShock__12dVibration_cFii4cXyz
lbl_8077D5B0:
/* 8077D5B0  A8 1E 06 A0 */	lha r0, 0x6a0(r30)
/* 8077D5B4  2C 00 00 05 */	cmpwi r0, 5
/* 8077D5B8  40 81 00 20 */	ble lbl_8077D5D8
/* 8077D5BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8077D5C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8077D5C4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8077D5C8  80 03 05 8C */	lwz r0, 0x58c(r3)
/* 8077D5CC  60 00 00 01 */	ori r0, r0, 1
/* 8077D5D0  90 03 05 8C */	stw r0, 0x58c(r3)
/* 8077D5D4  48 00 00 1C */	b lbl_8077D5F0
lbl_8077D5D8:
/* 8077D5D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8077D5DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8077D5E0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8077D5E4  80 03 05 8C */	lwz r0, 0x58c(r3)
/* 8077D5E8  60 00 00 03 */	ori r0, r0, 3
/* 8077D5EC  90 03 05 8C */	stw r0, 0x58c(r3)
lbl_8077D5F0:
/* 8077D5F0  A8 1E 06 A2 */	lha r0, 0x6a2(r30)
/* 8077D5F4  2C 00 00 01 */	cmpwi r0, 1
/* 8077D5F8  40 82 00 14 */	bne lbl_8077D60C
/* 8077D5FC  3C 60 80 78 */	lis r3, s_allwakeup_sub__FPvPv@ha
/* 8077D600  38 63 CA D0 */	addi r3, r3, s_allwakeup_sub__FPvPv@l
/* 8077D604  7F C4 F3 78 */	mr r4, r30
/* 8077D608  4B 8A 3D 30 */	b fpcEx_Search__FPFPvPv_PvPv
lbl_8077D60C:
/* 8077D60C  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 8077D610  38 80 00 01 */	li r4, 1
/* 8077D614  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8077D618  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8077D61C  40 82 00 18 */	bne lbl_8077D634
/* 8077D620  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8077D624  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8077D628  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8077D62C  41 82 00 08 */	beq lbl_8077D634
/* 8077D630  38 80 00 00 */	li r4, 0
lbl_8077D634:
/* 8077D634  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8077D638  41 82 00 40 */	beq lbl_8077D678
/* 8077D63C  38 80 00 00 */	li r4, 0
/* 8077D640  B0 9E 06 96 */	sth r4, 0x696(r30)
/* 8077D644  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8077D648  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8077D64C  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8077D650  28 00 00 00 */	cmplwi r0, 0
/* 8077D654  41 82 00 1C */	beq lbl_8077D670
/* 8077D658  38 00 00 96 */	li r0, 0x96
/* 8077D65C  B0 1E 06 A4 */	sth r0, 0x6a4(r30)
/* 8077D660  B0 9E 06 A0 */	sth r4, 0x6a0(r30)
/* 8077D664  38 00 00 01 */	li r0, 1
/* 8077D668  B0 1E 06 98 */	sth r0, 0x698(r30)
/* 8077D66C  48 00 00 0C */	b lbl_8077D678
lbl_8077D670:
/* 8077D670  38 00 00 02 */	li r0, 2
/* 8077D674  B0 1E 06 98 */	sth r0, 0x698(r30)
lbl_8077D678:
/* 8077D678  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8077D67C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8077D680  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 8077D684  4B AF 23 FC */	b cLib_addCalc0__FPfff
/* 8077D688  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8077D68C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8077D690  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8077D694  7C 08 03 A6 */	mtlr r0
/* 8077D698  38 21 00 20 */	addi r1, r1, 0x20
/* 8077D69C  4E 80 00 20 */	blr 
