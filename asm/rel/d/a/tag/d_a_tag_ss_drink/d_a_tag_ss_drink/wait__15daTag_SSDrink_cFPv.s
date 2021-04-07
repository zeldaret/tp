lbl_80D63490:
/* 80D63490  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D63494  7C 08 02 A6 */	mflr r0
/* 80D63498  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D6349C  39 61 00 30 */	addi r11, r1, 0x30
/* 80D634A0  4B 5F ED 3D */	bl _savegpr_29
/* 80D634A4  7C 7F 1B 78 */	mr r31, r3
/* 80D634A8  3C 80 80 D6 */	lis r4, lit_3843@ha /* 0x80D637A0@ha */
/* 80D634AC  3B A4 37 A0 */	addi r29, r4, lit_3843@l /* 0x80D637A0@l */
/* 80D634B0  A0 03 05 D0 */	lhz r0, 0x5d0(r3)
/* 80D634B4  2C 00 00 01 */	cmpwi r0, 1
/* 80D634B8  41 82 00 10 */	beq lbl_80D634C8
/* 80D634BC  40 80 00 F0 */	bge lbl_80D635AC
/* 80D634C0  48 00 00 EC */	b lbl_80D635AC
/* 80D634C4  48 00 00 E8 */	b lbl_80D635AC
lbl_80D634C8:
/* 80D634C8  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80D634CC  28 00 00 06 */	cmplwi r0, 6
/* 80D634D0  41 82 00 DC */	beq lbl_80D635AC
/* 80D634D4  4B FF FA AD */	bl getSwitchFromParam__15daTag_SSDrink_cFv
/* 80D634D8  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 80D634DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D634E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D634E4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D634E8  7C 05 07 74 */	extsb r5, r0
/* 80D634EC  4B 2D 1E 75 */	bl isSwitch__10dSv_info_cCFii
/* 80D634F0  2C 03 00 00 */	cmpwi r3, 0
/* 80D634F4  41 82 00 B8 */	beq lbl_80D635AC
/* 80D634F8  7F E3 FB 78 */	mr r3, r31
/* 80D634FC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D63500  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D63504  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80D63508  4B 2B 74 5D */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80D6350C  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 80D63510  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D63514  4C 40 13 82 */	cror 2, 0, 2
/* 80D63518  40 82 00 80 */	bne lbl_80D63598
/* 80D6351C  7F E3 FB 78 */	mr r3, r31
/* 80D63520  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80D63524  4B 2B 72 79 */	bl fopAcM_seenActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80D63528  2C 03 20 00 */	cmpwi r3, 0x2000
/* 80D6352C  41 81 00 6C */	bgt lbl_80D63598
/* 80D63530  80 BE 5D AC */	lwz r5, 0x5dac(r30)
/* 80D63534  38 61 00 08 */	addi r3, r1, 8
/* 80D63538  38 9F 05 50 */	addi r4, r31, 0x550
/* 80D6353C  38 A5 05 50 */	addi r5, r5, 0x550
/* 80D63540  4B 50 35 F5 */	bl __mi__4cXyzCFRC3Vec
/* 80D63544  C0 01 00 08 */	lfs f0, 8(r1)
/* 80D63548  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80D6354C  C0 61 00 0C */	lfs f3, 0xc(r1)
/* 80D63550  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 80D63554  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80D63558  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80D6355C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D63560  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D63564  38 63 5B 54 */	addi r3, r3, 0x5b54
/* 80D63568  7F E4 FB 78 */	mr r4, r31
/* 80D6356C  88 BF 05 D3 */	lbz r5, 0x5d3(r31)
/* 80D63570  C0 3D 00 14 */	lfs f1, 0x14(r29)
/* 80D63574  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 80D63578  EC 40 18 2A */	fadds f2, f0, f3
/* 80D6357C  EC 63 00 28 */	fsubs f3, f3, f0
/* 80D63580  38 C0 40 00 */	li r6, 0x4000
/* 80D63584  38 E0 00 01 */	li r7, 1
/* 80D63588  4B 31 04 81 */	bl request__11dAttCatch_cFP10fopAc_ac_cUcfffsi
/* 80D6358C  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80D63590  60 00 00 40 */	ori r0, r0, 0x40
/* 80D63594  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80D63598:
/* 80D63598  88 1F 05 D4 */	lbz r0, 0x5d4(r31)
/* 80D6359C  28 00 00 00 */	cmplwi r0, 0
/* 80D635A0  41 82 00 0C */	beq lbl_80D635AC
/* 80D635A4  38 00 00 00 */	li r0, 0
/* 80D635A8  98 1F 05 D4 */	stb r0, 0x5d4(r31)
lbl_80D635AC:
/* 80D635AC  38 60 00 01 */	li r3, 1
/* 80D635B0  39 61 00 30 */	addi r11, r1, 0x30
/* 80D635B4  4B 5F EC 75 */	bl _restgpr_29
/* 80D635B8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D635BC  7C 08 03 A6 */	mtlr r0
/* 80D635C0  38 21 00 30 */	addi r1, r1, 0x30
/* 80D635C4  4E 80 00 20 */	blr 
