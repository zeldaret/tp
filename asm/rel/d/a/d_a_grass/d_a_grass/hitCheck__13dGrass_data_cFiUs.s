lbl_8051EB88:
/* 8051EB88  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8051EB8C  7C 08 02 A6 */	mflr r0
/* 8051EB90  90 01 00 44 */	stw r0, 0x44(r1)
/* 8051EB94  39 61 00 40 */	addi r11, r1, 0x40
/* 8051EB98  4B E4 36 3C */	b _savegpr_27
/* 8051EB9C  7C 7D 1B 78 */	mr r29, r3
/* 8051EBA0  7C 9E 23 78 */	mr r30, r4
/* 8051EBA4  7C BF 2B 78 */	mr r31, r5
/* 8051EBA8  3C 60 80 52 */	lis r3, __vt__15dCcMassS_HitInf@ha
/* 8051EBAC  38 03 78 B8 */	addi r0, r3, __vt__15dCcMassS_HitInf@l
/* 8051EBB0  90 01 00 20 */	stw r0, 0x20(r1)
/* 8051EBB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8051EBB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8051EBBC  38 63 4B 88 */	addi r3, r3, 0x4b88
/* 8051EBC0  38 9D 00 0C */	addi r4, r29, 0xc
/* 8051EBC4  38 A1 00 0C */	addi r5, r1, 0xc
/* 8051EBC8  38 C1 00 10 */	addi r6, r1, 0x10
/* 8051EBCC  4B B6 6C E0 */	b Chk__12dCcMassS_MngFP4cXyzPP10fopAc_ac_cP15dCcMassS_HitInf
/* 8051EBD0  7C 7C 1B 78 */	mr r28, r3
/* 8051EBD4  3B 60 00 00 */	li r27, 0
/* 8051EBD8  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 8051EBDC  41 82 00 30 */	beq lbl_8051EC0C
/* 8051EBE0  7F 60 DB 78 */	mr r0, r27
/* 8051EBE4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8051EBE8  28 03 00 00 */	cmplwi r3, 0
/* 8051EBEC  41 82 00 14 */	beq lbl_8051EC00
/* 8051EBF0  A8 63 00 08 */	lha r3, 8(r3)
/* 8051EBF4  2C 03 02 FC */	cmpwi r3, 0x2fc
/* 8051EBF8  41 82 00 08 */	beq lbl_8051EC00
/* 8051EBFC  38 00 00 01 */	li r0, 1
lbl_8051EC00:
/* 8051EC00  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8051EC04  41 82 00 08 */	beq lbl_8051EC0C
/* 8051EC08  3B 60 00 01 */	li r27, 1
lbl_8051EC0C:
/* 8051EC0C  57 83 07 BD */	rlwinm. r3, r28, 0, 0x1e, 0x1e
/* 8051EC10  40 82 01 24 */	bne lbl_8051ED34
/* 8051EC14  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 8051EC18  40 82 01 1C */	bne lbl_8051ED34
/* 8051EC1C  88 1D 00 02 */	lbz r0, 2(r29)
/* 8051EC20  7C 00 07 74 */	extsb r0, r0
/* 8051EC24  2C 00 00 10 */	cmpwi r0, 0x10
/* 8051EC28  41 80 01 4C */	blt lbl_8051ED74
/* 8051EC2C  3C 60 80 45 */	lis r3, m_grass__9daGrass_c@ha
/* 8051EC30  80 83 0D B0 */	lwz r4, m_grass__9daGrass_c@l(r3)
/* 8051EC34  1C 60 00 38 */	mulli r3, r0, 0x38
/* 8051EC38  3F E3 00 02 */	addis r31, r3, 2
/* 8051EC3C  3B FF BD 64 */	addi r31, r31, -17052
/* 8051EC40  7F E4 FA 14 */	add r31, r4, r31
/* 8051EC44  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 8051EC48  1C 60 00 38 */	mulli r3, r0, 0x38
/* 8051EC4C  3F 63 00 02 */	addis r27, r3, 2
/* 8051EC50  3B 7B BD 64 */	addi r27, r27, -17052
/* 8051EC54  7F 64 DA 14 */	add r27, r4, r27
/* 8051EC58  88 1F 00 00 */	lbz r0, 0(r31)
/* 8051EC5C  28 00 00 02 */	cmplwi r0, 2
/* 8051EC60  40 82 00 5C */	bne lbl_8051ECBC
/* 8051EC64  7F C3 F3 78 */	mr r3, r30
/* 8051EC68  4B B0 E4 04 */	b dComIfGp_getReverb__Fi
/* 8051EC6C  7C 67 1B 78 */	mr r7, r3
/* 8051EC70  3C 60 00 02 */	lis r3, 0x0002 /* 0x0002002C@ha */
/* 8051EC74  38 03 00 2C */	addi r0, r3, 0x002C /* 0x0002002C@l */
/* 8051EC78  90 01 00 08 */	stw r0, 8(r1)
/* 8051EC7C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8051EC80  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8051EC84  80 63 00 00 */	lwz r3, 0(r3)
/* 8051EC88  38 81 00 08 */	addi r4, r1, 8
/* 8051EC8C  38 BD 00 0C */	addi r5, r29, 0xc
/* 8051EC90  38 C0 00 00 */	li r6, 0
/* 8051EC94  3D 00 80 52 */	lis r8, lit_4516@ha
/* 8051EC98  C0 28 30 90 */	lfs f1, lit_4516@l(r8)
/* 8051EC9C  FC 40 08 90 */	fmr f2, f1
/* 8051ECA0  3D 00 80 52 */	lis r8, lit_4517@ha
/* 8051ECA4  C0 68 30 94 */	lfs f3, lit_4517@l(r8)
/* 8051ECA8  FC 80 18 90 */	fmr f4, f3
/* 8051ECAC  39 00 00 00 */	li r8, 0
/* 8051ECB0  4B D8 CC D4 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8051ECB4  38 00 00 01 */	li r0, 1
/* 8051ECB8  98 1F 00 00 */	stb r0, 0(r31)
lbl_8051ECBC:
/* 8051ECBC  38 7F 00 04 */	addi r3, r31, 4
/* 8051ECC0  A8 9B 00 04 */	lha r4, 4(r27)
/* 8051ECC4  38 A0 00 0A */	li r5, 0xa
/* 8051ECC8  38 C0 11 30 */	li r6, 0x1130
/* 8051ECCC  38 E0 01 90 */	li r7, 0x190
/* 8051ECD0  4B D5 18 70 */	b cLib_addCalcAngleS__FPsssss
/* 8051ECD4  7C 60 07 35 */	extsh. r0, r3
/* 8051ECD8  40 82 00 9C */	bne lbl_8051ED74
/* 8051ECDC  38 7F 00 02 */	addi r3, r31, 2
/* 8051ECE0  A8 9B 00 02 */	lha r4, 2(r27)
/* 8051ECE4  38 A0 00 0A */	li r5, 0xa
/* 8051ECE8  38 C0 11 30 */	li r6, 0x1130
/* 8051ECEC  38 E0 01 90 */	li r7, 0x190
/* 8051ECF0  4B D5 18 50 */	b cLib_addCalcAngleS__FPsssss
/* 8051ECF4  7C 60 07 35 */	extsh. r0, r3
/* 8051ECF8  40 82 00 7C */	bne lbl_8051ED74
/* 8051ECFC  38 80 00 00 */	li r4, 0
/* 8051ED00  3C 60 80 45 */	lis r3, m_grass__9daGrass_c@ha
/* 8051ED04  38 63 0D B0 */	addi r3, r3, m_grass__9daGrass_c@l
/* 8051ED08  80 63 00 00 */	lwz r3, 0(r3)
/* 8051ED0C  3C 63 00 02 */	addis r3, r3, 2
/* 8051ED10  88 1D 00 02 */	lbz r0, 2(r29)
/* 8051ED14  7C 00 07 74 */	extsb r0, r0
/* 8051ED18  1C 00 00 38 */	mulli r0, r0, 0x38
/* 8051ED1C  7C 63 02 14 */	add r3, r3, r0
/* 8051ED20  98 83 BD 64 */	stb r4, -0x429c(r3)
/* 8051ED24  88 1D 00 02 */	lbz r0, 2(r29)
/* 8051ED28  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 8051ED2C  98 1D 00 02 */	stb r0, 2(r29)
/* 8051ED30  48 00 00 44 */	b lbl_8051ED74
lbl_8051ED34:
/* 8051ED34  28 03 00 00 */	cmplwi r3, 0
/* 8051ED38  41 82 00 18 */	beq lbl_8051ED50
/* 8051ED3C  7F A3 EB 78 */	mr r3, r29
/* 8051ED40  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8051ED44  7F 85 E3 78 */	mr r5, r28
/* 8051ED48  7F C6 F3 78 */	mr r6, r30
/* 8051ED4C  4B FF EB 41 */	bl WorkCo__13dGrass_data_cFP10fopAc_ac_cUli
lbl_8051ED50:
/* 8051ED50  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 8051ED54  41 82 00 20 */	beq lbl_8051ED74
/* 8051ED58  7F A3 EB 78 */	mr r3, r29
/* 8051ED5C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8051ED60  7F 85 E3 78 */	mr r5, r28
/* 8051ED64  7F C6 F3 78 */	mr r6, r30
/* 8051ED68  38 E1 00 10 */	addi r7, r1, 0x10
/* 8051ED6C  7F E8 FB 78 */	mr r8, r31
/* 8051ED70  4B FF F4 59 */	bl WorkAt__13dGrass_data_cFP10fopAc_ac_cUliP15dCcMassS_HitInfUs
lbl_8051ED74:
/* 8051ED74  3C 60 80 52 */	lis r3, __vt__15dCcMassS_HitInf@ha
/* 8051ED78  38 03 78 B8 */	addi r0, r3, __vt__15dCcMassS_HitInf@l
/* 8051ED7C  90 01 00 20 */	stw r0, 0x20(r1)
/* 8051ED80  39 61 00 40 */	addi r11, r1, 0x40
/* 8051ED84  4B E4 34 9C */	b _restgpr_27
/* 8051ED88  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8051ED8C  7C 08 03 A6 */	mtlr r0
/* 8051ED90  38 21 00 40 */	addi r1, r1, 0x40
/* 8051ED94  4E 80 00 20 */	blr 
