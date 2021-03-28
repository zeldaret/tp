lbl_80852610:
/* 80852610  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80852614  7C 08 02 A6 */	mflr r0
/* 80852618  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8085261C  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80852620  4B B0 FB BC */	b _savegpr_29
/* 80852624  7C 7D 1B 78 */	mr r29, r3
/* 80852628  3C 80 80 85 */	lis r4, lit_3929@ha
/* 8085262C  3B C4 4B 04 */	addi r30, r4, lit_3929@l
/* 80852630  80 03 07 44 */	lwz r0, 0x744(r3)
/* 80852634  2C 00 00 00 */	cmpwi r0, 0
/* 80852638  40 82 01 84 */	bne lbl_808527BC
/* 8085263C  38 7D 06 F8 */	addi r3, r29, 0x6f8
/* 80852640  3C 80 80 85 */	lis r4, l_HIO@ha
/* 80852644  38 84 4F 78 */	addi r4, r4, l_HIO@l
/* 80852648  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 8085264C  C0 5E 00 E0 */	lfs f2, 0xe0(r30)
/* 80852650  4B A1 E0 F0 */	b cLib_chaseF__FPfff
/* 80852654  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 80852658  28 00 00 02 */	cmplwi r0, 2
/* 8085265C  41 82 00 2C */	beq lbl_80852688
/* 80852660  7F A3 EB 78 */	mr r3, r29
/* 80852664  38 80 00 02 */	li r4, 2
/* 80852668  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 8085266C  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80852670  38 C0 00 03 */	li r6, 3
/* 80852674  4B 7C 92 94 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80852678  A0 1D 00 FA */	lhz r0, 0xfa(r29)
/* 8085267C  60 00 00 02 */	ori r0, r0, 2
/* 80852680  B0 1D 00 FA */	sth r0, 0xfa(r29)
/* 80852684  48 00 05 48 */	b lbl_80852BCC
lbl_80852688:
/* 80852688  7F A3 EB 78 */	mr r3, r29
/* 8085268C  4B FF 85 01 */	bl setPlayerRideOn__8daKago_cFv
/* 80852690  3C 60 80 85 */	lis r3, l_HIO@ha
/* 80852694  38 63 4F 78 */	addi r3, r3, l_HIO@l
/* 80852698  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 8085269C  FC 00 00 1E */	fctiwz f0, f0
/* 808526A0  D8 01 00 88 */	stfd f0, 0x88(r1)
/* 808526A4  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 808526A8  90 1D 07 30 */	stw r0, 0x730(r29)
/* 808526AC  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 808526B0  FC 00 00 1E */	fctiwz f0, f0
/* 808526B4  D8 01 00 90 */	stfd f0, 0x90(r1)
/* 808526B8  80 01 00 94 */	lwz r0, 0x94(r1)
/* 808526BC  90 1D 07 34 */	stw r0, 0x734(r29)
/* 808526C0  38 00 00 01 */	li r0, 1
/* 808526C4  90 1D 07 44 */	stw r0, 0x744(r29)
/* 808526C8  7F A3 EB 78 */	mr r3, r29
/* 808526CC  38 80 00 00 */	li r4, 0
/* 808526D0  48 00 0B 59 */	bl setDashBlurEffect__8daKago_cFi
/* 808526D4  7F A3 EB 78 */	mr r3, r29
/* 808526D8  38 80 00 0B */	li r4, 0xb
/* 808526DC  38 A0 00 00 */	li r5, 0
/* 808526E0  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 808526E4  3C C0 80 85 */	lis r6, l_HIO@ha
/* 808526E8  38 C6 4F 78 */	addi r6, r6, l_HIO@l
/* 808526EC  C0 46 00 38 */	lfs f2, 0x38(r6)
/* 808526F0  4B FF 70 01 */	bl setBck__8daKago_cFiUcff
/* 808526F4  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 808526F8  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 808526FC  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80852700  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80852704  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 80852708  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8085270C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80852710  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80852714  38 80 00 01 */	li r4, 1
/* 80852718  38 A0 00 1F */	li r5, 0x1f
/* 8085271C  38 C1 00 64 */	addi r6, r1, 0x64
/* 80852720  4B 81 D3 04 */	b StartShock__12dVibration_cFii4cXyz
/* 80852724  38 00 00 00 */	li r0, 0
/* 80852728  90 1D 06 18 */	stw r0, 0x618(r29)
/* 8085272C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80852730  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80852734  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80852738  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8085273C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80852740  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80852744  7F A3 EB 78 */	mr r3, r29
/* 80852748  38 81 00 58 */	addi r4, r1, 0x58
/* 8085274C  38 A0 00 00 */	li r5, 0
/* 80852750  4B FF 74 59 */	bl checkGroundHeight__8daKago_cF4cXyzPf
/* 80852754  D0 3D 07 04 */	stfs f1, 0x704(r29)
/* 80852758  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8085275C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80852760  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80852764  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80852768  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8085276C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80852770  7F A3 EB 78 */	mr r3, r29
/* 80852774  38 81 00 4C */	addi r4, r1, 0x4c
/* 80852778  4B FF 78 F9 */	bl checkRoofHeight__8daKago_cF4cXyz
/* 8085277C  D0 3D 07 08 */	stfs f1, 0x708(r29)
/* 80852780  80 1D 07 40 */	lwz r0, 0x740(r29)
/* 80852784  2C 00 00 09 */	cmpwi r0, 9
/* 80852788  40 82 04 44 */	bne lbl_80852BCC
/* 8085278C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80852790  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80852794  38 63 09 58 */	addi r3, r3, 0x958
/* 80852798  38 80 00 09 */	li r4, 9
/* 8085279C  4B 7E 20 74 */	b onSwitch__12dSv_memBit_cFi
/* 808527A0  38 7D 0B 58 */	addi r3, r29, 0xb58
/* 808527A4  7F A4 EB 78 */	mr r4, r29
/* 808527A8  38 A0 0B BF */	li r5, 0xbbf
/* 808527AC  38 C0 00 00 */	li r6, 0
/* 808527B0  38 E0 00 00 */	li r7, 0
/* 808527B4  4B 9F 77 DC */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 808527B8  48 00 04 14 */	b lbl_80852BCC
lbl_808527BC:
/* 808527BC  4B FF 89 4D */	bl checkHeight__8daKago_cFv
/* 808527C0  38 00 00 01 */	li r0, 1
/* 808527C4  98 1D 06 E1 */	stb r0, 0x6e1(r29)
/* 808527C8  80 1D 07 40 */	lwz r0, 0x740(r29)
/* 808527CC  2C 00 00 09 */	cmpwi r0, 9
/* 808527D0  40 82 00 18 */	bne lbl_808527E8
/* 808527D4  38 7D 0B 58 */	addi r3, r29, 0xb58
/* 808527D8  7F A4 EB 78 */	mr r4, r29
/* 808527DC  38 A0 00 00 */	li r5, 0
/* 808527E0  38 C0 00 00 */	li r6, 0
/* 808527E4  4B 9F 7A F4 */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
lbl_808527E8:
/* 808527E8  80 1D 07 44 */	lwz r0, 0x744(r29)
/* 808527EC  2C 00 00 06 */	cmpwi r0, 6
/* 808527F0  40 80 00 2C */	bge lbl_8085281C
/* 808527F4  7F A3 EB 78 */	mr r3, r29
/* 808527F8  48 00 07 1D */	bl setDashEffect__8daKago_cFv
/* 808527FC  38 00 00 01 */	li r0, 1
/* 80852800  98 1D 06 DD */	stb r0, 0x6dd(r29)
/* 80852804  38 00 00 27 */	li r0, 0x27
/* 80852808  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8085280C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80852810  98 03 5E 35 */	stb r0, 0x5e35(r3)
/* 80852814  38 00 00 00 */	li r0, 0
/* 80852818  98 03 5E 50 */	stb r0, 0x5e50(r3)
lbl_8085281C:
/* 8085281C  80 1D 07 44 */	lwz r0, 0x744(r29)
/* 80852820  2C 00 00 05 */	cmpwi r0, 5
/* 80852824  41 82 01 D8 */	beq lbl_808529FC
/* 80852828  40 80 00 1C */	bge lbl_80852844
/* 8085282C  2C 00 00 02 */	cmpwi r0, 2
/* 80852830  41 82 00 40 */	beq lbl_80852870
/* 80852834  40 80 01 6C */	bge lbl_808529A0
/* 80852838  2C 00 00 01 */	cmpwi r0, 1
/* 8085283C  40 80 00 14 */	bge lbl_80852850
/* 80852840  48 00 03 8C */	b lbl_80852BCC
lbl_80852844:
/* 80852844  2C 00 00 07 */	cmpwi r0, 7
/* 80852848  40 80 03 84 */	bge lbl_80852BCC
/* 8085284C  48 00 02 98 */	b lbl_80852AE4
lbl_80852850:
/* 80852850  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80852854  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80852858  80 63 00 00 */	lwz r3, 0(r3)
/* 8085285C  38 63 04 C4 */	addi r3, r3, 0x4c4
/* 80852860  80 9D 07 60 */	lwz r4, 0x760(r29)
/* 80852864  4B A6 39 84 */	b setDemoName__11Z2StatusMgrFPc
/* 80852868  38 00 00 02 */	li r0, 2
/* 8085286C  90 1D 07 44 */	stw r0, 0x744(r29)
lbl_80852870:
/* 80852870  38 7D 06 F8 */	addi r3, r29, 0x6f8
/* 80852874  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 80852878  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 8085287C  3C 80 80 85 */	lis r4, l_HIO@ha
/* 80852880  38 84 4F 78 */	addi r4, r4, l_HIO@l
/* 80852884  C0 04 00 38 */	lfs f0, 0x38(r4)
/* 80852888  EC 42 00 32 */	fmuls f2, f2, f0
/* 8085288C  4B A1 DE B4 */	b cLib_chaseF__FPfff
/* 80852890  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 80852894  38 63 00 0C */	addi r3, r3, 0xc
/* 80852898  C0 3E 00 F8 */	lfs f1, 0xf8(r30)
/* 8085289C  4B AD 5B 90 */	b checkPass__12J3DFrameCtrlFf
/* 808528A0  2C 03 00 00 */	cmpwi r3, 0
/* 808528A4  41 82 00 6C */	beq lbl_80852910
/* 808528A8  88 1D 06 E7 */	lbz r0, 0x6e7(r29)
/* 808528AC  28 00 00 00 */	cmplwi r0, 0
/* 808528B0  40 82 00 34 */	bne lbl_808528E4
/* 808528B4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070492@ha */
/* 808528B8  38 03 04 92 */	addi r0, r3, 0x0492 /* 0x00070492@l */
/* 808528BC  90 01 00 0C */	stw r0, 0xc(r1)
/* 808528C0  38 7D 05 74 */	addi r3, r29, 0x574
/* 808528C4  38 81 00 0C */	addi r4, r1, 0xc
/* 808528C8  38 A0 00 00 */	li r5, 0
/* 808528CC  38 C0 FF FF */	li r6, -1
/* 808528D0  81 9D 05 74 */	lwz r12, 0x574(r29)
/* 808528D4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 808528D8  7D 89 03 A6 */	mtctr r12
/* 808528DC  4E 80 04 21 */	bctrl 
/* 808528E0  48 00 00 30 */	b lbl_80852910
lbl_808528E4:
/* 808528E4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007049B@ha */
/* 808528E8  38 03 04 9B */	addi r0, r3, 0x049B /* 0x0007049B@l */
/* 808528EC  90 01 00 08 */	stw r0, 8(r1)
/* 808528F0  38 7D 05 74 */	addi r3, r29, 0x574
/* 808528F4  38 81 00 08 */	addi r4, r1, 8
/* 808528F8  38 A0 00 00 */	li r5, 0
/* 808528FC  38 C0 FF FF */	li r6, -1
/* 80852900  81 9D 05 74 */	lwz r12, 0x574(r29)
/* 80852904  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80852908  7D 89 03 A6 */	mtctr r12
/* 8085290C  4E 80 04 21 */	bctrl 
lbl_80852910:
/* 80852910  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 80852914  38 63 00 0C */	addi r3, r3, 0xc
/* 80852918  C0 3E 00 FC */	lfs f1, 0xfc(r30)
/* 8085291C  4B AD 5B 10 */	b checkPass__12J3DFrameCtrlFf
/* 80852920  2C 03 00 00 */	cmpwi r3, 0
/* 80852924  41 82 02 A8 */	beq lbl_80852BCC
/* 80852928  38 00 00 03 */	li r0, 3
/* 8085292C  90 1D 07 44 */	stw r0, 0x744(r29)
/* 80852930  38 00 00 14 */	li r0, 0x14
/* 80852934  90 1D 07 28 */	stw r0, 0x728(r29)
/* 80852938  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8085293C  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80852940  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80852944  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80852948  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 8085294C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80852950  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80852954  3B E3 5B D4 */	addi r31, r3, 0x5bd4
/* 80852958  7F E3 FB 78 */	mr r3, r31
/* 8085295C  38 80 00 02 */	li r4, 2
/* 80852960  38 A0 00 1F */	li r5, 0x1f
/* 80852964  38 C1 00 40 */	addi r6, r1, 0x40
/* 80852968  4B 81 D0 BC */	b StartShock__12dVibration_cFii4cXyz
/* 8085296C  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 80852970  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80852974  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80852978  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8085297C  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80852980  7F E3 FB 78 */	mr r3, r31
/* 80852984  38 80 00 01 */	li r4, 1
/* 80852988  38 A0 00 1F */	li r5, 0x1f
/* 8085298C  38 C1 00 34 */	addi r6, r1, 0x34
/* 80852990  4B 81 D1 80 */	b StartQuake__12dVibration_cFii4cXyz
/* 80852994  38 00 00 00 */	li r0, 0
/* 80852998  98 1D 06 E6 */	stb r0, 0x6e6(r29)
/* 8085299C  48 00 02 30 */	b lbl_80852BCC
lbl_808529A0:
/* 808529A0  38 7D 06 F8 */	addi r3, r29, 0x6f8
/* 808529A4  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 808529A8  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 808529AC  4B A1 DD 94 */	b cLib_chaseF__FPfff
/* 808529B0  80 1D 07 28 */	lwz r0, 0x728(r29)
/* 808529B4  2C 00 00 00 */	cmpwi r0, 0
/* 808529B8  40 82 02 14 */	bne lbl_80852BCC
/* 808529BC  80 1D 07 44 */	lwz r0, 0x744(r29)
/* 808529C0  2C 00 00 03 */	cmpwi r0, 3
/* 808529C4  40 82 00 18 */	bne lbl_808529DC
/* 808529C8  38 00 00 04 */	li r0, 4
/* 808529CC  90 1D 07 44 */	stw r0, 0x744(r29)
/* 808529D0  38 00 00 0F */	li r0, 0xf
/* 808529D4  90 1D 07 28 */	stw r0, 0x728(r29)
/* 808529D8  48 00 01 F4 */	b lbl_80852BCC
lbl_808529DC:
/* 808529DC  38 00 00 05 */	li r0, 5
/* 808529E0  90 1D 07 44 */	stw r0, 0x744(r29)
/* 808529E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 808529E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 808529EC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 808529F0  38 80 00 1F */	li r4, 0x1f
/* 808529F4  4B 81 D3 A0 */	b StopQuake__12dVibration_cFi
/* 808529F8  48 00 01 D4 */	b lbl_80852BCC
lbl_808529FC:
/* 808529FC  38 7D 06 F8 */	addi r3, r29, 0x6f8
/* 80852A00  3C 80 80 85 */	lis r4, l_HIO@ha
/* 80852A04  3B E4 4F 78 */	addi r31, r4, l_HIO@l
/* 80852A08  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80852A0C  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 80852A10  4B A1 DD 30 */	b cLib_chaseF__FPfff
/* 80852A14  C0 3D 06 F8 */	lfs f1, 0x6f8(r29)
/* 80852A18  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80852A1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80852A20  4C 40 13 82 */	cror 2, 0, 2
/* 80852A24  40 82 01 A8 */	bne lbl_80852BCC
/* 80852A28  38 00 00 00 */	li r0, 0
/* 80852A2C  B0 1D 06 C8 */	sth r0, 0x6c8(r29)
/* 80852A30  C0 1E 01 08 */	lfs f0, 0x108(r30)
/* 80852A34  D0 1D 06 C4 */	stfs f0, 0x6c4(r29)
/* 80852A38  B0 1D 07 12 */	sth r0, 0x712(r29)
/* 80852A3C  B0 1D 07 10 */	sth r0, 0x710(r29)
/* 80852A40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80852A44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80852A48  A8 03 4E 08 */	lha r0, 0x4e08(r3)
/* 80852A4C  7C 00 07 35 */	extsh. r0, r0
/* 80852A50  40 82 00 10 */	bne lbl_80852A60
/* 80852A54  38 00 00 1E */	li r0, 0x1e
/* 80852A58  90 1D 07 2C */	stw r0, 0x72c(r29)
/* 80852A5C  48 00 00 0C */	b lbl_80852A68
lbl_80852A60:
/* 80852A60  38 00 00 3C */	li r0, 0x3c
/* 80852A64  90 1D 07 2C */	stw r0, 0x72c(r29)
lbl_80852A68:
/* 80852A68  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80852A6C  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80852A70  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80852A74  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80852A78  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80852A7C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80852A80  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80852A84  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80852A88  7F A3 EB 78 */	mr r3, r29
/* 80852A8C  38 81 00 28 */	addi r4, r1, 0x28
/* 80852A90  38 A0 00 00 */	li r5, 0
/* 80852A94  4B FF 71 15 */	bl checkGroundHeight__8daKago_cF4cXyzPf
/* 80852A98  D0 3D 07 04 */	stfs f1, 0x704(r29)
/* 80852A9C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80852AA0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80852AA4  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80852AA8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80852AAC  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80852AB0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80852AB4  7F A3 EB 78 */	mr r3, r29
/* 80852AB8  38 81 00 1C */	addi r4, r1, 0x1c
/* 80852ABC  4B FF 75 B5 */	bl checkRoofHeight__8daKago_cF4cXyz
/* 80852AC0  D0 3D 07 08 */	stfs f1, 0x708(r29)
/* 80852AC4  7F A3 EB 78 */	mr r3, r29
/* 80852AC8  4B FF 97 3D */	bl setFlyAnime__8daKago_cFv
/* 80852ACC  38 00 00 00 */	li r0, 0
/* 80852AD0  B0 1D 07 12 */	sth r0, 0x712(r29)
/* 80852AD4  B0 1D 07 10 */	sth r0, 0x710(r29)
/* 80852AD8  38 00 00 06 */	li r0, 6
/* 80852ADC  90 1D 07 44 */	stw r0, 0x744(r29)
/* 80852AE0  48 00 00 EC */	b lbl_80852BCC
lbl_80852AE4:
/* 80852AE4  80 1D 07 28 */	lwz r0, 0x728(r29)
/* 80852AE8  2C 00 00 00 */	cmpwi r0, 0
/* 80852AEC  40 82 00 0C */	bne lbl_80852AF8
/* 80852AF0  7F A3 EB 78 */	mr r3, r29
/* 80852AF4  4B FF 97 11 */	bl setFlyAnime__8daKago_cFv
lbl_80852AF8:
/* 80852AF8  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 80852AFC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80852B00  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80852B04  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80852B08  7C 43 04 2E */	lfsx f2, r3, r0
/* 80852B0C  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 80852B10  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80852B14  40 81 00 20 */	ble lbl_80852B34
/* 80852B18  3C 60 80 85 */	lis r3, l_HIO@ha
/* 80852B1C  38 63 4F 78 */	addi r3, r3, l_HIO@l
/* 80852B20  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80852B24  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80852B28  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80852B2C  EC 21 00 2A */	fadds f1, f1, f0
/* 80852B30  48 00 00 1C */	b lbl_80852B4C
lbl_80852B34:
/* 80852B34  3C 60 80 85 */	lis r3, l_HIO@ha
/* 80852B38  38 63 4F 78 */	addi r3, r3, l_HIO@l
/* 80852B3C  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80852B40  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 80852B44  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80852B48  EC 21 00 2A */	fadds f1, f1, f0
lbl_80852B4C:
/* 80852B4C  C0 1D 06 F8 */	lfs f0, 0x6f8(r29)
/* 80852B50  EC 00 08 28 */	fsubs f0, f0, f1
/* 80852B54  FC 00 02 10 */	fabs f0, f0
/* 80852B58  FC 40 00 18 */	frsp f2, f0
/* 80852B5C  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80852B60  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80852B64  40 81 00 14 */	ble lbl_80852B78
/* 80852B68  38 7D 06 F8 */	addi r3, r29, 0x6f8
/* 80852B6C  C0 5E 00 E0 */	lfs f2, 0xe0(r30)
/* 80852B70  4B A1 DB D0 */	b cLib_chaseF__FPfff
/* 80852B74  48 00 00 10 */	b lbl_80852B84
lbl_80852B78:
/* 80852B78  38 7D 06 F8 */	addi r3, r29, 0x6f8
/* 80852B7C  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 80852B80  4B A1 DB C0 */	b cLib_chaseF__FPfff
lbl_80852B84:
/* 80852B84  80 1D 07 2C */	lwz r0, 0x72c(r29)
/* 80852B88  2C 00 00 00 */	cmpwi r0, 0
/* 80852B8C  40 82 00 40 */	bne lbl_80852BCC
/* 80852B90  7F A3 EB 78 */	mr r3, r29
/* 80852B94  38 80 00 00 */	li r4, 0
/* 80852B98  38 A0 00 00 */	li r5, 0
/* 80852B9C  4B FF 7E FD */	bl setActionMode__8daKago_cFii
/* 80852BA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80852BA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80852BA8  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80852BAC  4B 7E F8 BC */	b reset__14dEvt_control_cFv
/* 80852BB0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80852BB4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80852BB8  80 63 00 00 */	lwz r3, 0(r3)
/* 80852BBC  38 63 04 C4 */	addi r3, r3, 0x4c4
/* 80852BC0  38 80 00 00 */	li r4, 0
/* 80852BC4  4B A6 36 24 */	b setDemoName__11Z2StatusMgrFPc
/* 80852BC8  48 00 01 B0 */	b lbl_80852D78
lbl_80852BCC:
/* 80852BCC  80 7D 07 68 */	lwz r3, 0x768(r29)
/* 80852BD0  88 9D 07 70 */	lbz r4, 0x770(r29)
/* 80852BD4  7C 84 07 74 */	extsb r4, r4
/* 80852BD8  4B 7F EB D8 */	b dPath_GetPnt__FPC5dPathi
/* 80852BDC  C0 03 00 04 */	lfs f0, 4(r3)
/* 80852BE0  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80852BE4  C0 03 00 08 */	lfs f0, 8(r3)
/* 80852BE8  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80852BEC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80852BF0  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80852BF4  80 7D 07 68 */	lwz r3, 0x768(r29)
/* 80852BF8  88 1D 07 72 */	lbz r0, 0x772(r29)
/* 80852BFC  7C 04 07 74 */	extsb r4, r0
/* 80852C00  88 1D 07 70 */	lbz r0, 0x770(r29)
/* 80852C04  7C 00 07 74 */	extsb r0, r0
/* 80852C08  7C 84 00 50 */	subf r4, r4, r0
/* 80852C0C  4B 7F EB A4 */	b dPath_GetPnt__FPC5dPathi
/* 80852C10  C0 03 00 04 */	lfs f0, 4(r3)
/* 80852C14  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80852C18  C0 03 00 08 */	lfs f0, 8(r3)
/* 80852C1C  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80852C20  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80852C24  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80852C28  38 61 00 70 */	addi r3, r1, 0x70
/* 80852C2C  38 81 00 7C */	addi r4, r1, 0x7c
/* 80852C30  4B A1 DF D4 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80852C34  7C 7F 1B 78 */	mr r31, r3
/* 80852C38  B3 FD 07 14 */	sth r31, 0x714(r29)
/* 80852C3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80852C40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80852C44  A8 03 4E 08 */	lha r0, 0x4e08(r3)
/* 80852C48  7C 00 07 35 */	extsh. r0, r0
/* 80852C4C  40 82 00 2C */	bne lbl_80852C78
/* 80852C50  38 61 00 70 */	addi r3, r1, 0x70
/* 80852C54  38 81 00 7C */	addi r4, r1, 0x7c
/* 80852C58  4B A1 E0 1C */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80852C5C  7C 64 1B 78 */	mr r4, r3
/* 80852C60  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 80852C64  38 A0 00 08 */	li r5, 8
/* 80852C68  38 C0 01 00 */	li r6, 0x100
/* 80852C6C  38 E0 00 10 */	li r7, 0x10
/* 80852C70  4B A1 D8 D0 */	b cLib_addCalcAngleS__FPsssss
/* 80852C74  48 00 00 1C */	b lbl_80852C90
lbl_80852C78:
/* 80852C78  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 80852C7C  38 80 14 00 */	li r4, 0x1400
/* 80852C80  38 A0 00 08 */	li r5, 8
/* 80852C84  38 C0 01 00 */	li r6, 0x100
/* 80852C88  38 E0 00 10 */	li r7, 0x10
/* 80852C8C  4B A1 D8 B4 */	b cLib_addCalcAngleS__FPsssss
lbl_80852C90:
/* 80852C90  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 80852C94  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 80852C98  38 61 00 70 */	addi r3, r1, 0x70
/* 80852C9C  38 81 00 7C */	addi r4, r1, 0x7c
/* 80852CA0  4B A1 DF 64 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80852CA4  7C 64 1B 78 */	mr r4, r3
/* 80852CA8  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80852CAC  38 A0 00 08 */	li r5, 8
/* 80852CB0  38 C0 00 40 */	li r6, 0x40
/* 80852CB4  38 E0 00 10 */	li r7, 0x10
/* 80852CB8  4B A1 D8 88 */	b cLib_addCalcAngleS__FPsssss
/* 80852CBC  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80852CC0  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80852CC4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80852CC8  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 80852CCC  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 80852CD0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80852CD4  7C 64 02 14 */	add r3, r4, r0
/* 80852CD8  C0 03 00 04 */	lfs f0, 4(r3)
/* 80852CDC  FC 00 02 10 */	fabs f0, f0
/* 80852CE0  FC 20 00 18 */	frsp f1, f0
/* 80852CE4  C0 1D 06 F8 */	lfs f0, 0x6f8(r29)
/* 80852CE8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80852CEC  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80852CF0  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 80852CF4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80852CF8  7C 24 04 2E */	lfsx f1, r4, r0
/* 80852CFC  C0 1D 06 F8 */	lfs f0, 0x6f8(r29)
/* 80852D00  FC 00 00 50 */	fneg f0, f0
/* 80852D04  EC 00 00 72 */	fmuls f0, f0, f1
/* 80852D08  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80852D0C  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80852D10  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80852D14  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80852D18  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80852D1C  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80852D20  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80852D24  7F A3 EB 78 */	mr r3, r29
/* 80852D28  38 81 00 10 */	addi r4, r1, 0x10
/* 80852D2C  4B FF 83 5D */	bl checkNextPath__8daKago_cF4cXyz
/* 80852D30  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 80852D34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80852D38  40 80 00 40 */	bge lbl_80852D78
/* 80852D3C  38 61 00 70 */	addi r3, r1, 0x70
/* 80852D40  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80852D44  4B A1 DE C0 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80852D48  7C 03 F8 50 */	subf r0, r3, r31
/* 80852D4C  7C 03 07 34 */	extsh r3, r0
/* 80852D50  4B B1 23 80 */	b abs
/* 80852D54  2C 03 40 00 */	cmpwi r3, 0x4000
/* 80852D58  40 80 00 20 */	bge lbl_80852D78
/* 80852D5C  88 7D 07 70 */	lbz r3, 0x770(r29)
/* 80852D60  88 1D 07 72 */	lbz r0, 0x772(r29)
/* 80852D64  7C 03 02 14 */	add r0, r3, r0
/* 80852D68  98 1D 07 70 */	stb r0, 0x770(r29)
/* 80852D6C  7F A3 EB 78 */	mr r3, r29
/* 80852D70  4B FF 93 09 */	bl checkFlySceneChange__8daKago_cFv
/* 80852D74  54 60 06 3F */	clrlwi. r0, r3, 0x18
lbl_80852D78:
/* 80852D78  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80852D7C  4B B0 F4 AC */	b _restgpr_29
/* 80852D80  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80852D84  7C 08 03 A6 */	mtlr r0
/* 80852D88  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80852D8C  4E 80 00 20 */	blr 
