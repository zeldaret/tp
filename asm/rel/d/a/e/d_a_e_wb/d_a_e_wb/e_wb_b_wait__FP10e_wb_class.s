lbl_807D5408:
/* 807D5408  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807D540C  7C 08 02 A6 */	mflr r0
/* 807D5410  90 01 00 44 */	stw r0, 0x44(r1)
/* 807D5414  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 807D5418  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 807D541C  39 61 00 30 */	addi r11, r1, 0x30
/* 807D5420  4B B8 CD BD */	bl _savegpr_29
/* 807D5424  7C 7E 1B 78 */	mr r30, r3
/* 807D5428  3C 80 80 7E */	lis r4, lit_3882@ha /* 0x807E298C@ha */
/* 807D542C  3B E4 29 8C */	addi r31, r4, lit_3882@l /* 0x807E298C@l */
/* 807D5430  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807D5434  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807D5438  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 807D543C  4B 84 55 29 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807D5440  FF E0 08 90 */	fmr f31, f1
/* 807D5444  7F C3 F3 78 */	mr r3, r30
/* 807D5448  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 807D544C  4B 84 52 C5 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807D5450  7C 7D 1B 78 */	mr r29, r3
/* 807D5454  88 7E 07 9C */	lbz r3, 0x79c(r30)
/* 807D5458  28 03 00 00 */	cmplwi r3, 0
/* 807D545C  41 82 00 28 */	beq lbl_807D5484
/* 807D5460  38 03 FF FF */	addi r0, r3, -1
/* 807D5464  98 1E 07 9C */	stb r0, 0x79c(r30)
/* 807D5468  88 1E 07 9C */	lbz r0, 0x79c(r30)
/* 807D546C  28 00 00 00 */	cmplwi r0, 0
/* 807D5470  40 82 00 14 */	bne lbl_807D5484
/* 807D5474  3C 60 80 7D */	lis r3, s_wbstart_sub__FPvPv@ha /* 0x807D53AC@ha */
/* 807D5478  38 63 53 AC */	addi r3, r3, s_wbstart_sub__FPvPv@l /* 0x807D53AC@l */
/* 807D547C  7F C4 F3 78 */	mr r4, r30
/* 807D5480  4B 84 BE B9 */	bl fpcEx_Search__FPFPvPv_PvPv
lbl_807D5484:
/* 807D5484  A8 1E 05 B4 */	lha r0, 0x5b4(r30)
/* 807D5488  2C 00 00 01 */	cmpwi r0, 1
/* 807D548C  41 82 00 6C */	beq lbl_807D54F8
/* 807D5490  40 80 00 10 */	bge lbl_807D54A0
/* 807D5494  2C 00 00 00 */	cmpwi r0, 0
/* 807D5498  40 80 00 14 */	bge lbl_807D54AC
/* 807D549C  48 00 01 68 */	b lbl_807D5604
lbl_807D54A0:
/* 807D54A0  2C 00 00 03 */	cmpwi r0, 3
/* 807D54A4  40 80 01 60 */	bge lbl_807D5604
/* 807D54A8  48 00 00 BC */	b lbl_807D5564
lbl_807D54AC:
/* 807D54AC  7F C3 F3 78 */	mr r3, r30
/* 807D54B0  38 80 00 2A */	li r4, 0x2a
/* 807D54B4  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 807D54B8  38 A0 00 02 */	li r5, 2
/* 807D54BC  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807D54C0  4B FF D0 89 */	bl anm_init__FP10e_wb_classifUcf
/* 807D54C4  38 00 00 01 */	li r0, 1
/* 807D54C8  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 807D54CC  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 807D54D0  4B A9 24 85 */	bl cM_rndF__Ff
/* 807D54D4  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 807D54D8  EC 00 08 2A */	fadds f0, f0, f1
/* 807D54DC  FC 00 00 1E */	fctiwz f0, f0
/* 807D54E0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 807D54E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807D54E8  B0 1E 06 98 */	sth r0, 0x698(r30)
/* 807D54EC  A0 1E 06 BE */	lhz r0, 0x6be(r30)
/* 807D54F0  60 00 00 20 */	ori r0, r0, 0x20
/* 807D54F4  B0 1E 06 BE */	sth r0, 0x6be(r30)
lbl_807D54F8:
/* 807D54F8  A8 1E 06 98 */	lha r0, 0x698(r30)
/* 807D54FC  2C 00 00 00 */	cmpwi r0, 0
/* 807D5500  40 82 00 1C */	bne lbl_807D551C
/* 807D5504  88 1E 06 8C */	lbz r0, 0x68c(r30)
/* 807D5508  7C 00 07 75 */	extsb. r0, r0
/* 807D550C  41 82 00 10 */	beq lbl_807D551C
/* 807D5510  38 00 00 02 */	li r0, 2
/* 807D5514  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 807D5518  48 00 00 EC */	b lbl_807D5604
lbl_807D551C:
/* 807D551C  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 807D5520  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 807D5524  40 80 00 E0 */	bge lbl_807D5604
/* 807D5528  38 00 00 0A */	li r0, 0xa
/* 807D552C  B0 1E 06 90 */	sth r0, 0x690(r30)
/* 807D5530  38 00 00 00 */	li r0, 0
/* 807D5534  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 807D5538  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700F8@ha */
/* 807D553C  38 03 00 F8 */	addi r0, r3, 0x00F8 /* 0x000700F8@l */
/* 807D5540  90 01 00 08 */	stw r0, 8(r1)
/* 807D5544  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 807D5548  38 81 00 08 */	addi r4, r1, 8
/* 807D554C  38 A0 FF FF */	li r5, -1
/* 807D5550  81 9E 05 EC */	lwz r12, 0x5ec(r30)
/* 807D5554  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807D5558  7D 89 03 A6 */	mtctr r12
/* 807D555C  4E 80 04 21 */	bctrl 
/* 807D5560  48 00 00 A4 */	b lbl_807D5604
lbl_807D5564:
/* 807D5564  38 7E 04 DE */	addi r3, r30, 0x4de
/* 807D5568  7F A4 EB 78 */	mr r4, r29
/* 807D556C  38 A0 00 08 */	li r5, 8
/* 807D5570  38 C0 02 00 */	li r6, 0x200
/* 807D5574  4B A9 B0 95 */	bl cLib_addCalcAngleS2__FPssss
/* 807D5578  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 807D557C  7C 00 E8 50 */	subf r0, r0, r29
/* 807D5580  B0 1E 06 D0 */	sth r0, 0x6d0(r30)
/* 807D5584  A8 1E 06 D0 */	lha r0, 0x6d0(r30)
/* 807D5588  2C 00 08 00 */	cmpwi r0, 0x800
/* 807D558C  40 80 00 54 */	bge lbl_807D55E0
/* 807D5590  2C 00 F8 00 */	cmpwi r0, -2048
/* 807D5594  40 81 00 4C */	ble lbl_807D55E0
/* 807D5598  88 1E 14 2F */	lbz r0, 0x142f(r30)
/* 807D559C  7C 00 07 75 */	extsb. r0, r0
/* 807D55A0  40 81 00 2C */	ble lbl_807D55CC
/* 807D55A4  80 1E 05 E8 */	lwz r0, 0x5e8(r30)
/* 807D55A8  2C 00 00 2A */	cmpwi r0, 0x2a
/* 807D55AC  41 82 00 58 */	beq lbl_807D5604
/* 807D55B0  7F C3 F3 78 */	mr r3, r30
/* 807D55B4  38 80 00 2A */	li r4, 0x2a
/* 807D55B8  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 807D55BC  38 A0 00 02 */	li r5, 2
/* 807D55C0  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807D55C4  4B FF CF 85 */	bl anm_init__FP10e_wb_classifUcf
/* 807D55C8  48 00 00 3C */	b lbl_807D5604
lbl_807D55CC:
/* 807D55CC  38 00 00 09 */	li r0, 9
/* 807D55D0  B0 1E 06 90 */	sth r0, 0x690(r30)
/* 807D55D4  38 00 00 00 */	li r0, 0
/* 807D55D8  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 807D55DC  48 00 00 28 */	b lbl_807D5604
lbl_807D55E0:
/* 807D55E0  80 1E 05 E8 */	lwz r0, 0x5e8(r30)
/* 807D55E4  2C 00 00 28 */	cmpwi r0, 0x28
/* 807D55E8  41 82 00 1C */	beq lbl_807D5604
/* 807D55EC  7F C3 F3 78 */	mr r3, r30
/* 807D55F0  38 80 00 28 */	li r4, 0x28
/* 807D55F4  C0 3F 00 F8 */	lfs f1, 0xf8(r31)
/* 807D55F8  38 A0 00 02 */	li r5, 2
/* 807D55FC  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807D5600  4B FF CF 49 */	bl anm_init__FP10e_wb_classifUcf
lbl_807D5604:
/* 807D5604  38 7E 05 2C */	addi r3, r30, 0x52c
/* 807D5608  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 807D560C  C0 5F 00 DC */	lfs f2, 0xdc(r31)
/* 807D5610  4B A9 A4 71 */	bl cLib_addCalc0__FPfff
/* 807D5614  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 807D5618  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 807D561C  39 61 00 30 */	addi r11, r1, 0x30
/* 807D5620  4B B8 CC 09 */	bl _restgpr_29
/* 807D5624  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807D5628  7C 08 03 A6 */	mtlr r0
/* 807D562C  38 21 00 40 */	addi r1, r1, 0x40
/* 807D5630  4E 80 00 20 */	blr 
