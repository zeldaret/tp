lbl_809F04B4:
/* 809F04B4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 809F04B8  7C 08 02 A6 */	mflr r0
/* 809F04BC  90 01 00 64 */	stw r0, 0x64(r1)
/* 809F04C0  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 809F04C4  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 809F04C8  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 809F04CC  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 809F04D0  39 61 00 40 */	addi r11, r1, 0x40
/* 809F04D4  4B 97 1D 08 */	b _savegpr_29
/* 809F04D8  7C 7D 1B 78 */	mr r29, r3
/* 809F04DC  3C 80 80 9F */	lis r4, lit_3900@ha
/* 809F04E0  3B C4 2C 50 */	addi r30, r4, lit_3900@l
/* 809F04E4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809F04E8  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 809F04EC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 809F04F0  4B 62 A4 74 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809F04F4  FF E0 08 90 */	fmr f31, f1
/* 809F04F8  C0 1D 0D 98 */	lfs f0, 0xd98(r29)
/* 809F04FC  EF DF 00 28 */	fsubs f30, f31, f0
/* 809F0500  D3 C1 00 08 */	stfs f30, 8(r1)
/* 809F0504  38 61 00 08 */	addi r3, r1, 8
/* 809F0508  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 809F050C  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 809F0510  C0 7E 00 3C */	lfs f3, 0x3c(r30)
/* 809F0514  4B 87 F5 28 */	b cLib_addCalc2__FPffff
/* 809F0518  C0 01 00 08 */	lfs f0, 8(r1)
/* 809F051C  EC 1E 00 28 */	fsubs f0, f30, f0
/* 809F0520  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 809F0524  7F A3 EB 78 */	mr r3, r29
/* 809F0528  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 809F052C  4B 62 A1 E4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809F0530  B0 7D 0D A0 */	sth r3, 0xda0(r29)
/* 809F0534  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 809F0538  A8 9D 0D A0 */	lha r4, 0xda0(r29)
/* 809F053C  38 A0 00 03 */	li r5, 3
/* 809F0540  38 C0 06 00 */	li r6, 0x600
/* 809F0544  4B 88 00 C4 */	b cLib_addCalcAngleS2__FPssss
/* 809F0548  7F A3 EB 78 */	mr r3, r29
/* 809F054C  48 00 08 89 */	bl setAngle__12daNpcGuard_cFv
/* 809F0550  37 FD 08 50 */	addic. r31, r29, 0x850
/* 809F0554  41 82 00 14 */	beq lbl_809F0568
/* 809F0558  7F E3 FB 78 */	mr r3, r31
/* 809F055C  7F E4 FB 78 */	mr r4, r31
/* 809F0560  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 809F0564  4B 95 6B 74 */	b PSVECScale
lbl_809F0568:
/* 809F0568  7F A3 EB 78 */	mr r3, r29
/* 809F056C  7F E4 FB 78 */	mr r4, r31
/* 809F0570  4B 62 A1 5C */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 809F0574  38 7D 06 38 */	addi r3, r29, 0x638
/* 809F0578  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809F057C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 809F0580  38 84 0F 38 */	addi r4, r4, 0xf38
/* 809F0584  4B 68 65 28 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 809F0588  C8 3E 00 10 */	lfd f1, 0x10(r30)
/* 809F058C  FC 40 08 90 */	fmr f2, f1
/* 809F0590  4B 97 C1 F0 */	b pow
/* 809F0594  FF C0 08 18 */	frsp f30, f1
/* 809F0598  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 809F059C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 809F05A0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809F05A4  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 809F05A8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 809F05AC  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 809F05B0  C0 5D 04 C4 */	lfs f2, 0x4c4(r29)
/* 809F05B4  C0 1D 04 BC */	lfs f0, 0x4bc(r29)
/* 809F05B8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809F05BC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 809F05C0  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 809F05C4  38 61 00 0C */	addi r3, r1, 0xc
/* 809F05C8  38 81 00 18 */	addi r4, r1, 0x18
/* 809F05CC  4B 95 6D D0 */	b PSVECSquareDistance
/* 809F05D0  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 809F05D4  40 81 00 28 */	ble lbl_809F05FC
/* 809F05D8  7F A3 EB 78 */	mr r3, r29
/* 809F05DC  80 9D 0A D4 */	lwz r4, 0xad4(r29)
/* 809F05E0  C0 3E 00 00 */	lfs f1, 0(r30)
/* 809F05E4  C0 5E 00 04 */	lfs f2, 4(r30)
/* 809F05E8  38 A0 00 02 */	li r5, 2
/* 809F05EC  38 C0 00 00 */	li r6, 0
/* 809F05F0  38 E0 FF FF */	li r7, -1
/* 809F05F4  4B 76 89 0C */	b setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 809F05F8  48 00 00 5C */	b lbl_809F0654
lbl_809F05FC:
/* 809F05FC  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 809F0600  A8 9D 0D A0 */	lha r4, 0xda0(r29)
/* 809F0604  4B 88 08 20 */	b cLib_distanceAngleS__Fss
/* 809F0608  2C 03 03 00 */	cmpwi r3, 0x300
/* 809F060C  40 81 00 28 */	ble lbl_809F0634
/* 809F0610  7F A3 EB 78 */	mr r3, r29
/* 809F0614  80 9D 0A D4 */	lwz r4, 0xad4(r29)
/* 809F0618  C0 3E 00 00 */	lfs f1, 0(r30)
/* 809F061C  C0 5E 00 04 */	lfs f2, 4(r30)
/* 809F0620  38 A0 00 02 */	li r5, 2
/* 809F0624  38 C0 00 00 */	li r6, 0
/* 809F0628  38 E0 FF FF */	li r7, -1
/* 809F062C  4B 76 88 D4 */	b setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 809F0630  48 00 00 24 */	b lbl_809F0654
lbl_809F0634:
/* 809F0634  7F A3 EB 78 */	mr r3, r29
/* 809F0638  80 9D 0A D0 */	lwz r4, 0xad0(r29)
/* 809F063C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 809F0640  C0 5E 00 04 */	lfs f2, 4(r30)
/* 809F0644  38 A0 00 02 */	li r5, 2
/* 809F0648  38 C0 00 00 */	li r6, 0
/* 809F064C  38 E0 FF FF */	li r7, -1
/* 809F0650  4B 76 88 B0 */	b setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
lbl_809F0654:
/* 809F0654  38 7D 08 8C */	addi r3, r29, 0x88c
/* 809F0658  4B 69 3E 08 */	b ChkTgHit__12dCcD_GObjInfFv
/* 809F065C  28 03 00 00 */	cmplwi r3, 0
/* 809F0660  40 82 00 24 */	bne lbl_809F0684
/* 809F0664  38 7D 0B 14 */	addi r3, r29, 0xb14
/* 809F0668  4B 69 3D F8 */	b ChkTgHit__12dCcD_GObjInfFv
/* 809F066C  28 03 00 00 */	cmplwi r3, 0
/* 809F0670  40 82 00 14 */	bne lbl_809F0684
/* 809F0674  38 7D 0C 4C */	addi r3, r29, 0xc4c
/* 809F0678  4B 69 3D E8 */	b ChkTgHit__12dCcD_GObjInfFv
/* 809F067C  28 03 00 00 */	cmplwi r3, 0
/* 809F0680  41 82 00 14 */	beq lbl_809F0694
lbl_809F0684:
/* 809F0684  7F A3 EB 78 */	mr r3, r29
/* 809F0688  38 80 00 05 */	li r4, 5
/* 809F068C  4B FF F7 95 */	bl setAction__12daNpcGuard_cFQ212daNpcGuard_c6Mode_e
/* 809F0690  48 00 00 3C */	b lbl_809F06CC
lbl_809F0694:
/* 809F0694  38 7D 0D 88 */	addi r3, r29, 0xd88
/* 809F0698  48 00 1E 1D */	bl func_809F24B4
/* 809F069C  2C 03 00 00 */	cmpwi r3, 0
/* 809F06A0  40 82 00 14 */	bne lbl_809F06B4
/* 809F06A4  7F A3 EB 78 */	mr r3, r29
/* 809F06A8  38 80 00 04 */	li r4, 4
/* 809F06AC  4B FF F7 75 */	bl setAction__12daNpcGuard_cFQ212daNpcGuard_c6Mode_e
/* 809F06B0  48 00 00 1C */	b lbl_809F06CC
lbl_809F06B4:
/* 809F06B4  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 809F06B8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 809F06BC  40 81 00 10 */	ble lbl_809F06CC
/* 809F06C0  7F A3 EB 78 */	mr r3, r29
/* 809F06C4  38 80 00 01 */	li r4, 1
/* 809F06C8  4B FF F7 59 */	bl setAction__12daNpcGuard_cFQ212daNpcGuard_c6Mode_e
lbl_809F06CC:
/* 809F06CC  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 809F06D0  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 809F06D4  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 809F06D8  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 809F06DC  39 61 00 40 */	addi r11, r1, 0x40
/* 809F06E0  4B 97 1B 48 */	b _restgpr_29
/* 809F06E4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 809F06E8  7C 08 03 A6 */	mtlr r0
/* 809F06EC  38 21 00 60 */	addi r1, r1, 0x60
/* 809F06F0  4E 80 00 20 */	blr 
