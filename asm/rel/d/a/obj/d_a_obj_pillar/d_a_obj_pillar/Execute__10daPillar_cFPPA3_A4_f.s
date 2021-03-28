lbl_80CB03D0:
/* 80CB03D0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CB03D4  7C 08 02 A6 */	mflr r0
/* 80CB03D8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CB03DC  39 61 00 30 */	addi r11, r1, 0x30
/* 80CB03E0  4B 6B 1D F8 */	b _savegpr_28
/* 80CB03E4  7C 7E 1B 78 */	mr r30, r3
/* 80CB03E8  7C 9F 23 78 */	mr r31, r4
/* 80CB03EC  3C 80 80 CB */	lis r4, l_bmd@ha
/* 80CB03F0  3B A4 09 D4 */	addi r29, r4, l_bmd@l
/* 80CB03F4  C0 3D 00 EC */	lfs f1, 0xec(r29)
/* 80CB03F8  3C 80 80 CB */	lis r4, l_HIO@ha
/* 80CB03FC  38 C4 0C 2C */	addi r6, r4, l_HIO@l
/* 80CB0400  C0 06 00 1C */	lfs f0, 0x1c(r6)
/* 80CB0404  EC 21 00 2A */	fadds f1, f1, f0
/* 80CB0408  38 80 00 0D */	li r4, 0xd
/* 80CB040C  C0 5D 00 F0 */	lfs f2, 0xf0(r29)
/* 80CB0410  C0 7D 00 F4 */	lfs f3, 0xf4(r29)
/* 80CB0414  38 A0 00 01 */	li r5, 1
/* 80CB0418  C0 86 00 20 */	lfs f4, 0x20(r6)
/* 80CB041C  4B 36 A6 C4 */	b fopAcM_rollPlayerCrash__FPC10fopAc_ac_cfUlffif
/* 80CB0420  38 00 00 00 */	li r0, 0
/* 80CB0424  98 1E 07 32 */	stb r0, 0x732(r30)
/* 80CB0428  7F C3 F3 78 */	mr r3, r30
/* 80CB042C  4B FF F9 39 */	bl checkShake__10daPillar_cFv
/* 80CB0430  2C 03 00 02 */	cmpwi r3, 2
/* 80CB0434  41 82 00 38 */	beq lbl_80CB046C
/* 80CB0438  40 80 00 14 */	bge lbl_80CB044C
/* 80CB043C  2C 03 00 00 */	cmpwi r3, 0
/* 80CB0440  41 82 00 14 */	beq lbl_80CB0454
/* 80CB0444  40 80 00 1C */	bge lbl_80CB0460
/* 80CB0448  48 00 00 2C */	b lbl_80CB0474
lbl_80CB044C:
/* 80CB044C  2C 03 00 05 */	cmpwi r3, 5
/* 80CB0450  40 80 00 24 */	bge lbl_80CB0474
lbl_80CB0454:
/* 80CB0454  7F C3 F3 78 */	mr r3, r30
/* 80CB0458  4B FF FB 09 */	bl setShake_rcrash__10daPillar_cFv
/* 80CB045C  48 00 00 18 */	b lbl_80CB0474
lbl_80CB0460:
/* 80CB0460  7F C3 F3 78 */	mr r3, r30
/* 80CB0464  4B FF FD 7D */	bl setShake_strong__10daPillar_cFv
/* 80CB0468  48 00 00 0C */	b lbl_80CB0474
lbl_80CB046C:
/* 80CB046C  7F C3 F3 78 */	mr r3, r30
/* 80CB0470  4B FF FD BD */	bl setShake_weak__10daPillar_cFv
lbl_80CB0474:
/* 80CB0474  38 00 00 FF */	li r0, 0xff
/* 80CB0478  90 1E 07 38 */	stw r0, 0x738(r30)
/* 80CB047C  88 1E 07 41 */	lbz r0, 0x741(r30)
/* 80CB0480  2C 00 00 65 */	cmpwi r0, 0x65
/* 80CB0484  41 82 00 88 */	beq lbl_80CB050C
/* 80CB0488  40 80 00 1C */	bge lbl_80CB04A4
/* 80CB048C  2C 00 00 00 */	cmpwi r0, 0
/* 80CB0490  41 82 00 24 */	beq lbl_80CB04B4
/* 80CB0494  41 80 01 44 */	blt lbl_80CB05D8
/* 80CB0498  2C 00 00 64 */	cmpwi r0, 0x64
/* 80CB049C  40 80 00 34 */	bge lbl_80CB04D0
/* 80CB04A0  48 00 01 38 */	b lbl_80CB05D8
lbl_80CB04A4:
/* 80CB04A4  2C 00 00 67 */	cmpwi r0, 0x67
/* 80CB04A8  41 82 01 08 */	beq lbl_80CB05B0
/* 80CB04AC  40 80 01 2C */	bge lbl_80CB05D8
/* 80CB04B0  48 00 00 C8 */	b lbl_80CB0578
lbl_80CB04B4:
/* 80CB04B4  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80CB04B8  38 80 00 00 */	li r4, 0
/* 80CB04BC  A8 BE 07 46 */	lha r5, 0x746(r30)
/* 80CB04C0  A8 DE 07 4A */	lha r6, 0x74a(r30)
/* 80CB04C4  A8 FE 07 4C */	lha r7, 0x74c(r30)
/* 80CB04C8  4B 5C 00 78 */	b cLib_addCalcAngleS__FPsssss
/* 80CB04CC  48 00 01 0C */	b lbl_80CB05D8
lbl_80CB04D0:
/* 80CB04D0  C0 3D 00 94 */	lfs f1, 0x94(r29)
/* 80CB04D4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80CB04D8  C0 1D 00 A4 */	lfs f0, 0xa4(r29)
/* 80CB04DC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CB04E0  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80CB04E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CB04E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CB04EC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80CB04F0  38 80 00 04 */	li r4, 4
/* 80CB04F4  38 A0 00 01 */	li r5, 1
/* 80CB04F8  38 C1 00 14 */	addi r6, r1, 0x14
/* 80CB04FC  4B 3B F6 14 */	b StartQuake__12dVibration_cFii4cXyz
/* 80CB0500  38 00 00 65 */	li r0, 0x65
/* 80CB0504  98 1E 07 41 */	stb r0, 0x741(r30)
/* 80CB0508  48 00 00 D0 */	b lbl_80CB05D8
lbl_80CB050C:
/* 80CB050C  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80CB0510  38 80 00 00 */	li r4, 0
/* 80CB0514  38 A0 00 28 */	li r5, 0x28
/* 80CB0518  38 C0 00 14 */	li r6, 0x14
/* 80CB051C  38 E0 00 05 */	li r7, 5
/* 80CB0520  4B 5C 00 20 */	b cLib_addCalcAngleS__FPsssss
/* 80CB0524  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 80CB0528  2C 00 01 04 */	cmpwi r0, 0x104
/* 80CB052C  40 80 00 4C */	bge lbl_80CB0578
/* 80CB0530  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CB0534  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CB0538  3B 83 5B D4 */	addi r28, r3, 0x5bd4
/* 80CB053C  7F 83 E3 78 */	mr r3, r28
/* 80CB0540  38 80 00 1F */	li r4, 0x1f
/* 80CB0544  4B 3B F8 50 */	b StopQuake__12dVibration_cFi
/* 80CB0548  C0 3D 00 94 */	lfs f1, 0x94(r29)
/* 80CB054C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80CB0550  C0 1D 00 A4 */	lfs f0, 0xa4(r29)
/* 80CB0554  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CB0558  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80CB055C  7F 83 E3 78 */	mr r3, r28
/* 80CB0560  38 80 00 02 */	li r4, 2
/* 80CB0564  38 A0 00 01 */	li r5, 1
/* 80CB0568  38 C1 00 08 */	addi r6, r1, 8
/* 80CB056C  4B 3B F5 A4 */	b StartQuake__12dVibration_cFii4cXyz
/* 80CB0570  38 00 00 66 */	li r0, 0x66
/* 80CB0574  98 1E 07 41 */	stb r0, 0x741(r30)
lbl_80CB0578:
/* 80CB0578  A8 7E 07 4E */	lha r3, 0x74e(r30)
/* 80CB057C  38 03 00 01 */	addi r0, r3, 1
/* 80CB0580  B0 1E 07 4E */	sth r0, 0x74e(r30)
/* 80CB0584  A8 1E 07 4E */	lha r0, 0x74e(r30)
/* 80CB0588  2C 00 00 6E */	cmpwi r0, 0x6e
/* 80CB058C  40 81 00 4C */	ble lbl_80CB05D8
/* 80CB0590  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CB0594  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CB0598  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80CB059C  38 80 00 1F */	li r4, 0x1f
/* 80CB05A0  4B 3B F7 F4 */	b StopQuake__12dVibration_cFi
/* 80CB05A4  38 00 00 67 */	li r0, 0x67
/* 80CB05A8  98 1E 07 41 */	stb r0, 0x741(r30)
/* 80CB05AC  48 00 00 2C */	b lbl_80CB05D8
lbl_80CB05B0:
/* 80CB05B0  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80CB05B4  38 80 00 00 */	li r4, 0
/* 80CB05B8  38 A0 00 3C */	li r5, 0x3c
/* 80CB05BC  38 C0 00 0A */	li r6, 0xa
/* 80CB05C0  38 E0 00 03 */	li r7, 3
/* 80CB05C4  4B 5B FF 7C */	b cLib_addCalcAngleS__FPsssss
/* 80CB05C8  7C 60 07 35 */	extsh. r0, r3
/* 80CB05CC  40 82 00 0C */	bne lbl_80CB05D8
/* 80CB05D0  38 00 00 00 */	li r0, 0
/* 80CB05D4  98 1E 07 41 */	stb r0, 0x741(r30)
lbl_80CB05D8:
/* 80CB05D8  A8 BE 04 E4 */	lha r5, 0x4e4(r30)
/* 80CB05DC  7C A0 07 35 */	extsh. r0, r5
/* 80CB05E0  41 82 00 24 */	beq lbl_80CB0604
/* 80CB05E4  A8 9E 07 2E */	lha r4, 0x72e(r30)
/* 80CB05E8  A8 7E 07 48 */	lha r3, 0x748(r30)
/* 80CB05EC  38 00 03 00 */	li r0, 0x300
/* 80CB05F0  7C 00 2B D6 */	divw r0, r0, r5
/* 80CB05F4  7C 03 02 14 */	add r0, r3, r0
/* 80CB05F8  7C 00 07 34 */	extsh r0, r0
/* 80CB05FC  7C 04 02 14 */	add r0, r4, r0
/* 80CB0600  B0 1E 07 2E */	sth r0, 0x72e(r30)
lbl_80CB0604:
/* 80CB0604  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80CB0608  90 1F 00 00 */	stw r0, 0(r31)
/* 80CB060C  7F C3 F3 78 */	mr r3, r30
/* 80CB0610  4B FF EE A5 */	bl setBaseMtx__10daPillar_cFv
/* 80CB0614  7F C3 F3 78 */	mr r3, r30
/* 80CB0618  4B FF FC 61 */	bl switch_proc_call__10daPillar_cFv
/* 80CB061C  38 7E 07 0C */	addi r3, r30, 0x70c
/* 80CB0620  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80CB0624  4B 5B EB B8 */	b SetC__8cM3dGCylFRC4cXyz
/* 80CB0628  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CB062C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CB0630  38 63 23 3C */	addi r3, r3, 0x233c
/* 80CB0634  38 9E 05 E8 */	addi r4, r30, 0x5e8
/* 80CB0638  4B 5B 45 70 */	b Set__4cCcSFP8cCcD_Obj
/* 80CB063C  38 60 00 01 */	li r3, 1
/* 80CB0640  39 61 00 30 */	addi r11, r1, 0x30
/* 80CB0644  4B 6B 1B E0 */	b _restgpr_28
/* 80CB0648  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CB064C  7C 08 03 A6 */	mtlr r0
/* 80CB0650  38 21 00 30 */	addi r1, r1, 0x30
/* 80CB0654  4E 80 00 20 */	blr 
