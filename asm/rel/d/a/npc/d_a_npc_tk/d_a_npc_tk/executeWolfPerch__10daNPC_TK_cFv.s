lbl_80B0839C:
/* 80B0839C  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 80B083A0  7C 08 02 A6 */	mflr r0
/* 80B083A4  90 01 01 24 */	stw r0, 0x124(r1)
/* 80B083A8  DB E1 01 10 */	stfd f31, 0x110(r1)
/* 80B083AC  F3 E1 01 18 */	psq_st f31, 280(r1), 0, 0 /* qr0 */
/* 80B083B0  DB C1 01 00 */	stfd f30, 0x100(r1)
/* 80B083B4  F3 C1 01 08 */	psq_st f30, 264(r1), 0, 0 /* qr0 */
/* 80B083B8  39 61 01 00 */	addi r11, r1, 0x100
/* 80B083BC  4B 85 9E 1C */	b _savegpr_28
/* 80B083C0  7C 7F 1B 78 */	mr r31, r3
/* 80B083C4  3C 60 80 B1 */	lis r3, lit_3999@ha
/* 80B083C8  3B C3 C1 C4 */	addi r30, r3, lit_3999@l
/* 80B083CC  4B 67 92 74 */	b dCam_getBody__Fv
/* 80B083D0  7C 7D 1B 78 */	mr r29, r3
/* 80B083D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B083D8  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 80B083DC  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 80B083E0  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80B083E4  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80B083E8  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80B083EC  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 80B083F0  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80B083F4  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 80B083F8  88 1F 06 C5 */	lbz r0, 0x6c5(r31)
/* 80B083FC  28 00 00 14 */	cmplwi r0, 0x14
/* 80B08400  41 81 15 CC */	bgt lbl_80B099CC
/* 80B08404  3C 60 80 B1 */	lis r3, lit_7271@ha
/* 80B08408  38 63 C4 24 */	addi r3, r3, lit_7271@l
/* 80B0840C  54 00 10 3A */	slwi r0, r0, 2
/* 80B08410  7C 03 00 2E */	lwzx r0, r3, r0
/* 80B08414  7C 09 03 A6 */	mtctr r0
/* 80B08418  4E 80 04 20 */	bctr 
lbl_80B0841C:
/* 80B0841C  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80B08420  28 00 00 02 */	cmplwi r0, 2
/* 80B08424  40 82 00 10 */	bne lbl_80B08434
/* 80B08428  7F E3 FB 78 */	mr r3, r31
/* 80B0842C  4B FF B2 2D */	bl executePerch__10daNPC_TK_cFv
/* 80B08430  48 00 15 9C */	b lbl_80B099CC
lbl_80B08434:
/* 80B08434  38 00 00 01 */	li r0, 1
/* 80B08438  98 1F 06 C5 */	stb r0, 0x6c5(r31)
lbl_80B0843C:
/* 80B0843C  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80B08440  28 00 00 02 */	cmplwi r0, 2
/* 80B08444  41 82 00 2C */	beq lbl_80B08470
/* 80B08448  7F E3 FB 78 */	mr r3, r31
/* 80B0844C  38 80 00 02 */	li r4, 2
/* 80B08450  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80B08454  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80B08458  38 C0 00 03 */	li r6, 3
/* 80B0845C  4B 51 34 AC */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80B08460  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80B08464  60 00 00 02 */	ori r0, r0, 2
/* 80B08468  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 80B0846C  48 00 15 A8 */	b lbl_80B09A14
lbl_80B08470:
/* 80B08470  7F A3 EB 78 */	mr r3, r29
/* 80B08474  4B 65 90 5C */	b Stop__9dCamera_cFv
/* 80B08478  7F A3 EB 78 */	mr r3, r29
/* 80B0847C  38 80 00 03 */	li r4, 3
/* 80B08480  4B 65 AB 8C */	b SetTrimSize__9dCamera_cFl
/* 80B08484  38 00 00 3C */	li r0, 0x3c
/* 80B08488  90 1F 06 B0 */	stw r0, 0x6b0(r31)
/* 80B0848C  38 00 00 02 */	li r0, 2
/* 80B08490  98 1F 06 C5 */	stb r0, 0x6c5(r31)
/* 80B08494  80 7F 06 C8 */	lwz r3, 0x6c8(r31)
/* 80B08498  A0 63 00 02 */	lhz r3, 2(r3)
/* 80B0849C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80B084A0  7C 04 07 74 */	extsb r4, r0
/* 80B084A4  4B 54 93 48 */	b dPath_GetRoomPath__Fii
/* 80B084A8  90 7F 06 DC */	stw r3, 0x6dc(r31)
/* 80B084AC  80 7F 06 DC */	lwz r3, 0x6dc(r31)
/* 80B084B0  88 03 00 06 */	lbz r0, 6(r3)
/* 80B084B4  98 1F 06 EA */	stb r0, 0x6ea(r31)
/* 80B084B8  80 7F 06 DC */	lwz r3, 0x6dc(r31)
/* 80B084BC  88 03 00 04 */	lbz r0, 4(r3)
/* 80B084C0  98 1F 06 E8 */	stb r0, 0x6e8(r31)
/* 80B084C4  80 7F 06 DC */	lwz r3, 0x6dc(r31)
/* 80B084C8  88 03 00 07 */	lbz r0, 7(r3)
/* 80B084CC  98 1F 06 E9 */	stb r0, 0x6e9(r31)
/* 80B084D0  38 7F 06 D0 */	addi r3, r31, 0x6d0
/* 80B084D4  80 9F 06 DC */	lwz r4, 0x6dc(r31)
/* 80B084D8  4B 58 F7 84 */	b Init__10dPathCurveFP5dPath
/* 80B084DC  88 1F 06 E8 */	lbz r0, 0x6e8(r31)
/* 80B084E0  28 00 00 01 */	cmplwi r0, 1
/* 80B084E4  41 82 00 0C */	beq lbl_80B084F0
/* 80B084E8  38 00 00 00 */	li r0, 0
/* 80B084EC  98 1F 06 E8 */	stb r0, 0x6e8(r31)
lbl_80B084F0:
/* 80B084F0  38 00 00 00 */	li r0, 0
/* 80B084F4  98 1F 06 CC */	stb r0, 0x6cc(r31)
/* 80B084F8  80 7F 06 DC */	lwz r3, 0x6dc(r31)
/* 80B084FC  88 9F 06 CC */	lbz r4, 0x6cc(r31)
/* 80B08500  7C 84 07 74 */	extsb r4, r4
/* 80B08504  4B 54 92 AC */	b dPath_GetPnt__FPC5dPathi
/* 80B08508  C0 03 00 04 */	lfs f0, 4(r3)
/* 80B0850C  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 80B08510  C0 03 00 08 */	lfs f0, 8(r3)
/* 80B08514  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 80B08518  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B0851C  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80B08520  83 9C 5D AC */	lwz r28, 0x5dac(r28)
/* 80B08524  38 61 00 C0 */	addi r3, r1, 0xc0
/* 80B08528  38 81 00 D8 */	addi r4, r1, 0xd8
/* 80B0852C  4B 76 86 D8 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B08530  7C 65 1B 78 */	mr r5, r3
/* 80B08534  7F 83 E3 78 */	mr r3, r28
/* 80B08538  38 81 00 D8 */	addi r4, r1, 0xd8
/* 80B0853C  38 C0 00 00 */	li r6, 0
/* 80B08540  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 80B08544  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80B08548  7D 89 03 A6 */	mtctr r12
/* 80B0854C  4E 80 04 21 */	bctrl 
/* 80B08550  38 61 00 C0 */	addi r3, r1, 0xc0
/* 80B08554  38 81 00 D8 */	addi r4, r1, 0xd8
/* 80B08558  4B 76 86 AC */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B0855C  7C 7C 1B 78 */	mr r28, r3
/* 80B08560  7F E3 FB 78 */	mr r3, r31
/* 80B08564  38 80 00 08 */	li r4, 8
/* 80B08568  38 A0 00 02 */	li r5, 2
/* 80B0856C  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 80B08570  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80B08574  4B FF 8F 25 */	bl setBck__10daNPC_TK_cFiUcff
/* 80B08578  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80B0857C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80B08580  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80B08584  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80B08588  C0 1E 01 44 */	lfs f0, 0x144(r30)
/* 80B0858C  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 80B08590  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80B08594  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80B08598  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80B0859C  38 7F 06 04 */	addi r3, r31, 0x604
/* 80B085A0  38 81 00 D8 */	addi r4, r1, 0xd8
/* 80B085A4  7F 85 E3 78 */	mr r5, r28
/* 80B085A8  38 C1 00 CC */	addi r6, r1, 0xcc
/* 80B085AC  4B 76 88 14 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80B085B0  C0 1E 01 6C */	lfs f0, 0x16c(r30)
/* 80B085B4  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 80B085B8  C0 1E 01 70 */	lfs f0, 0x170(r30)
/* 80B085BC  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80B085C0  C0 1E 01 74 */	lfs f0, 0x174(r30)
/* 80B085C4  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80B085C8  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B085CC  38 9F 06 04 */	addi r4, r31, 0x604
/* 80B085D0  7F 85 E3 78 */	mr r5, r28
/* 80B085D4  38 C1 00 CC */	addi r6, r1, 0xcc
/* 80B085D8  4B 76 87 E8 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80B085DC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80B085E0  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 80B085E4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80B085E8  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80B085EC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80B085F0  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 80B085F4  38 00 00 00 */	li r0, 0
/* 80B085F8  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80B085FC  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80B08600  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80B08604  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B08608  38 9F 06 04 */	addi r4, r31, 0x604
/* 80B0860C  4B 76 85 F8 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B08610  B0 7F 04 DE */	sth r3, 0x4de(r31)
/* 80B08614  B0 7F 04 E6 */	sth r3, 0x4e6(r31)
/* 80B08618  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 80B0861C  C0 5F 04 FC */	lfs f2, 0x4fc(r31)
/* 80B08620  4B 75 F0 54 */	b cM_atan2s__Fff
/* 80B08624  38 03 C0 00 */	addi r0, r3, -16384
/* 80B08628  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80B0862C  C0 1E 01 78 */	lfs f0, 0x178(r30)
/* 80B08630  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 80B08634  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80B08638  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80B0863C  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 80B08640  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80B08644  38 7F 06 FC */	addi r3, r31, 0x6fc
/* 80B08648  38 81 00 D8 */	addi r4, r1, 0xd8
/* 80B0864C  7F 85 E3 78 */	mr r5, r28
/* 80B08650  38 C1 00 CC */	addi r6, r1, 0xcc
/* 80B08654  4B 76 87 6C */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80B08658  C0 1E 01 78 */	lfs f0, 0x178(r30)
/* 80B0865C  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 80B08660  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80B08664  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80B08668  C0 1E 01 44 */	lfs f0, 0x144(r30)
/* 80B0866C  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80B08670  38 7F 06 F0 */	addi r3, r31, 0x6f0
/* 80B08674  38 81 00 D8 */	addi r4, r1, 0xd8
/* 80B08678  7F 85 E3 78 */	mr r5, r28
/* 80B0867C  38 C1 00 CC */	addi r6, r1, 0xcc
/* 80B08680  4B 76 87 40 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80B08684  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 80B08688  D0 1F 07 08 */	stfs f0, 0x708(r31)
/* 80B0868C  38 00 00 05 */	li r0, 5
/* 80B08690  90 1F 06 B0 */	stw r0, 0x6b0(r31)
lbl_80B08694:
/* 80B08694  7F E3 FB 78 */	mr r3, r31
/* 80B08698  4B FF FB 71 */	bl calcWolfDemoCam__10daNPC_TK_cFv
/* 80B0869C  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 80B086A0  C0 5F 04 FC */	lfs f2, 0x4fc(r31)
/* 80B086A4  4B 75 EF D0 */	b cM_atan2s__Fff
/* 80B086A8  38 03 C0 00 */	addi r0, r3, -16384
/* 80B086AC  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80B086B0  80 1F 06 B0 */	lwz r0, 0x6b0(r31)
/* 80B086B4  2C 00 00 00 */	cmpwi r0, 0
/* 80B086B8  40 82 13 14 */	bne lbl_80B099CC
/* 80B086BC  38 7F 04 FC */	addi r3, r31, 0x4fc
/* 80B086C0  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80B086C4  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80B086C8  4B 76 80 78 */	b cLib_chaseF__FPfff
/* 80B086CC  2C 03 00 00 */	cmpwi r3, 0
/* 80B086D0  41 82 12 FC */	beq lbl_80B099CC
/* 80B086D4  7F E3 FB 78 */	mr r3, r31
/* 80B086D8  38 80 00 07 */	li r4, 7
/* 80B086DC  38 A0 00 02 */	li r5, 2
/* 80B086E0  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 80B086E4  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80B086E8  4B FF 8D B1 */	bl setBck__10daNPC_TK_cFiUcff
/* 80B086EC  38 00 00 03 */	li r0, 3
/* 80B086F0  98 1F 06 C5 */	stb r0, 0x6c5(r31)
/* 80B086F4  C0 1E 01 7C */	lfs f0, 0x17c(r30)
/* 80B086F8  D0 1F 06 04 */	stfs f0, 0x604(r31)
/* 80B086FC  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80B08700  D0 1F 06 08 */	stfs f0, 0x608(r31)
/* 80B08704  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80B08708  D0 1F 06 0C */	stfs f0, 0x60c(r31)
/* 80B0870C  48 00 12 C0 */	b lbl_80B099CC
lbl_80B08710:
/* 80B08710  7F E3 FB 78 */	mr r3, r31
/* 80B08714  4B FF FA F5 */	bl calcWolfDemoCam__10daNPC_TK_cFv
/* 80B08718  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 80B0871C  C0 5F 04 FC */	lfs f2, 0x4fc(r31)
/* 80B08720  4B 75 EF 54 */	b cM_atan2s__Fff
/* 80B08724  38 03 C0 00 */	addi r0, r3, -16384
/* 80B08728  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80B0872C  7F E3 FB 78 */	mr r3, r31
/* 80B08730  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80B08734  4B 51 1F DC */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B08738  7C 64 1B 78 */	mr r4, r3
/* 80B0873C  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 80B08740  38 A0 00 08 */	li r5, 8
/* 80B08744  38 C0 08 00 */	li r6, 0x800
/* 80B08748  38 E0 01 00 */	li r7, 0x100
/* 80B0874C  4B 76 7D F4 */	b cLib_addCalcAngleS__FPsssss
/* 80B08750  38 7F 05 2C */	addi r3, r31, 0x52c
/* 80B08754  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80B08758  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80B0875C  4B 76 7F E4 */	b cLib_chaseF__FPfff
/* 80B08760  38 7F 04 FC */	addi r3, r31, 0x4fc
/* 80B08764  C0 3E 00 C4 */	lfs f1, 0xc4(r30)
/* 80B08768  C0 5E 00 CC */	lfs f2, 0xcc(r30)
/* 80B0876C  4B 76 7F D4 */	b cLib_chaseF__FPfff
/* 80B08770  2C 03 00 00 */	cmpwi r3, 0
/* 80B08774  41 82 12 58 */	beq lbl_80B099CC
/* 80B08778  38 00 00 04 */	li r0, 4
/* 80B0877C  98 1F 06 C5 */	stb r0, 0x6c5(r31)
/* 80B08780  48 00 12 4C */	b lbl_80B099CC
lbl_80B08784:
/* 80B08784  7F E3 FB 78 */	mr r3, r31
/* 80B08788  4B FF FA 81 */	bl calcWolfDemoCam__10daNPC_TK_cFv
/* 80B0878C  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80B08790  38 80 00 00 */	li r4, 0
/* 80B08794  38 A0 00 08 */	li r5, 8
/* 80B08798  38 C0 01 00 */	li r6, 0x100
/* 80B0879C  38 E0 00 10 */	li r7, 0x10
/* 80B087A0  4B 76 7D A0 */	b cLib_addCalcAngleS__FPsssss
/* 80B087A4  7F E3 FB 78 */	mr r3, r31
/* 80B087A8  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80B087AC  4B 51 1F 64 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B087B0  7C 64 1B 78 */	mr r4, r3
/* 80B087B4  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 80B087B8  38 A0 00 08 */	li r5, 8
/* 80B087BC  38 C0 08 00 */	li r6, 0x800
/* 80B087C0  38 E0 01 00 */	li r7, 0x100
/* 80B087C4  4B 76 7D 7C */	b cLib_addCalcAngleS__FPsssss
/* 80B087C8  38 7F 05 2C */	addi r3, r31, 0x52c
/* 80B087CC  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80B087D0  C0 5E 00 CC */	lfs f2, 0xcc(r30)
/* 80B087D4  4B 76 7F 6C */	b cLib_chaseF__FPfff
/* 80B087D8  38 7F 04 FC */	addi r3, r31, 0x4fc
/* 80B087DC  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 80B087E0  C0 5E 00 CC */	lfs f2, 0xcc(r30)
/* 80B087E4  4B 76 7F 5C */	b cLib_chaseF__FPfff
/* 80B087E8  2C 03 00 00 */	cmpwi r3, 0
/* 80B087EC  41 82 11 E0 */	beq lbl_80B099CC
/* 80B087F0  38 00 00 05 */	li r0, 5
/* 80B087F4  98 1F 06 C5 */	stb r0, 0x6c5(r31)
/* 80B087F8  38 00 00 0F */	li r0, 0xf
/* 80B087FC  90 1F 06 B0 */	stw r0, 0x6b0(r31)
/* 80B08800  48 00 11 CC */	b lbl_80B099CC
lbl_80B08804:
/* 80B08804  7F E3 FB 78 */	mr r3, r31
/* 80B08808  4B FF FA 01 */	bl calcWolfDemoCam__10daNPC_TK_cFv
/* 80B0880C  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80B08810  38 80 00 00 */	li r4, 0
/* 80B08814  38 A0 00 08 */	li r5, 8
/* 80B08818  38 C0 01 00 */	li r6, 0x100
/* 80B0881C  38 E0 00 10 */	li r7, 0x10
/* 80B08820  4B 76 7D 20 */	b cLib_addCalcAngleS__FPsssss
/* 80B08824  7F E3 FB 78 */	mr r3, r31
/* 80B08828  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80B0882C  4B 51 1E E4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B08830  7C 64 1B 78 */	mr r4, r3
/* 80B08834  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 80B08838  38 A0 00 08 */	li r5, 8
/* 80B0883C  38 C0 08 00 */	li r6, 0x800
/* 80B08840  38 E0 01 00 */	li r7, 0x100
/* 80B08844  4B 76 7C FC */	b cLib_addCalcAngleS__FPsssss
/* 80B08848  38 7F 05 2C */	addi r3, r31, 0x52c
/* 80B0884C  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80B08850  C0 5E 00 CC */	lfs f2, 0xcc(r30)
/* 80B08854  4B 76 7E EC */	b cLib_chaseF__FPfff
/* 80B08858  38 7F 04 FC */	addi r3, r31, 0x4fc
/* 80B0885C  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80B08860  C0 5E 00 CC */	lfs f2, 0xcc(r30)
/* 80B08864  4B 76 7E DC */	b cLib_chaseF__FPfff
/* 80B08868  2C 03 00 00 */	cmpwi r3, 0
/* 80B0886C  41 82 11 60 */	beq lbl_80B099CC
/* 80B08870  38 00 00 06 */	li r0, 6
/* 80B08874  98 1F 06 C5 */	stb r0, 0x6c5(r31)
/* 80B08878  38 00 00 0F */	li r0, 0xf
/* 80B0887C  90 1F 06 B0 */	stw r0, 0x6b0(r31)
/* 80B08880  48 00 11 4C */	b lbl_80B099CC
lbl_80B08884:
/* 80B08884  7F E3 FB 78 */	mr r3, r31
/* 80B08888  4B FF F9 81 */	bl calcWolfDemoCam__10daNPC_TK_cFv
/* 80B0888C  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80B08890  38 80 00 00 */	li r4, 0
/* 80B08894  38 A0 00 08 */	li r5, 8
/* 80B08898  38 C0 01 00 */	li r6, 0x100
/* 80B0889C  38 E0 00 10 */	li r7, 0x10
/* 80B088A0  4B 76 7C A0 */	b cLib_addCalcAngleS__FPsssss
/* 80B088A4  38 7F 05 2C */	addi r3, r31, 0x52c
/* 80B088A8  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80B088AC  C0 5E 00 CC */	lfs f2, 0xcc(r30)
/* 80B088B0  4B 76 7E 90 */	b cLib_chaseF__FPfff
/* 80B088B4  80 1F 06 B0 */	lwz r0, 0x6b0(r31)
/* 80B088B8  2C 00 00 00 */	cmpwi r0, 0
/* 80B088BC  40 82 11 10 */	bne lbl_80B099CC
/* 80B088C0  38 00 00 00 */	li r0, 0
/* 80B088C4  98 1F 06 EB */	stb r0, 0x6eb(r31)
/* 80B088C8  88 9F 06 E9 */	lbz r4, 0x6e9(r31)
/* 80B088CC  28 04 00 FF */	cmplwi r4, 0xff
/* 80B088D0  41 82 00 54 */	beq lbl_80B08924
/* 80B088D4  88 1F 06 E8 */	lbz r0, 0x6e8(r31)
/* 80B088D8  28 00 00 00 */	cmplwi r0, 0
/* 80B088DC  40 82 00 28 */	bne lbl_80B08904
/* 80B088E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B088E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B088E8  38 63 09 58 */	addi r3, r3, 0x958
/* 80B088EC  4B 52 BE FC */	b isTbox__12dSv_memBit_cCFi
/* 80B088F0  2C 03 00 00 */	cmpwi r3, 0
/* 80B088F4  41 82 00 30 */	beq lbl_80B08924
/* 80B088F8  38 00 00 01 */	li r0, 1
/* 80B088FC  98 1F 06 EB */	stb r0, 0x6eb(r31)
/* 80B08900  48 00 00 24 */	b lbl_80B08924
lbl_80B08904:
/* 80B08904  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B08908  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B0890C  38 63 09 58 */	addi r3, r3, 0x958
/* 80B08910  4B 52 BF DC */	b isItem__12dSv_memBit_cCFi
/* 80B08914  2C 03 00 00 */	cmpwi r3, 0
/* 80B08918  41 82 00 0C */	beq lbl_80B08924
/* 80B0891C  38 00 00 01 */	li r0, 1
/* 80B08920  98 1F 06 EB */	stb r0, 0x6eb(r31)
lbl_80B08924:
/* 80B08924  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B08928  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B0892C  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 80B08930  3C 80 80 B1 */	lis r4, struct_80B0C3A0+0x0@ha
/* 80B08934  38 84 C3 A0 */	addi r4, r4, struct_80B0C3A0+0x0@l
/* 80B08938  38 84 00 26 */	addi r4, r4, 0x26
/* 80B0893C  4B 86 00 58 */	b strcmp
/* 80B08940  2C 03 00 00 */	cmpwi r3, 0
/* 80B08944  40 82 00 48 */	bne lbl_80B0898C
/* 80B08948  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha
/* 80B0894C  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)
/* 80B08950  7C 00 07 75 */	extsb. r0, r0
/* 80B08954  40 82 00 38 */	bne lbl_80B0898C
/* 80B08958  38 60 00 00 */	li r3, 0
/* 80B0895C  4B 52 40 20 */	b getLayerNo__14dComIfG_play_cFi
/* 80B08960  2C 03 00 01 */	cmpwi r3, 1
/* 80B08964  40 82 00 28 */	bne lbl_80B0898C
/* 80B08968  38 00 00 01 */	li r0, 1
/* 80B0896C  98 1F 06 EB */	stb r0, 0x6eb(r31)
/* 80B08970  38 7F 07 24 */	addi r3, r31, 0x724
/* 80B08974  7F E4 FB 78 */	mr r4, r31
/* 80B08978  38 A0 0B CC */	li r5, 0xbcc
/* 80B0897C  38 C0 00 00 */	li r6, 0
/* 80B08980  38 E0 00 00 */	li r7, 0
/* 80B08984  4B 74 16 0C */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80B08988  48 00 00 44 */	b lbl_80B089CC
lbl_80B0898C:
/* 80B0898C  88 1F 06 EB */	lbz r0, 0x6eb(r31)
/* 80B08990  28 00 00 00 */	cmplwi r0, 0
/* 80B08994  40 82 00 20 */	bne lbl_80B089B4
/* 80B08998  38 7F 07 24 */	addi r3, r31, 0x724
/* 80B0899C  7F E4 FB 78 */	mr r4, r31
/* 80B089A0  38 A0 0B CE */	li r5, 0xbce
/* 80B089A4  38 C0 00 00 */	li r6, 0
/* 80B089A8  38 E0 00 00 */	li r7, 0
/* 80B089AC  4B 74 15 E4 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80B089B0  48 00 00 1C */	b lbl_80B089CC
lbl_80B089B4:
/* 80B089B4  38 7F 07 24 */	addi r3, r31, 0x724
/* 80B089B8  7F E4 FB 78 */	mr r4, r31
/* 80B089BC  38 A0 0B CD */	li r5, 0xbcd
/* 80B089C0  38 C0 00 00 */	li r6, 0
/* 80B089C4  38 E0 00 00 */	li r7, 0
/* 80B089C8  4B 74 15 C8 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
lbl_80B089CC:
/* 80B089CC  38 00 00 08 */	li r0, 8
/* 80B089D0  98 1F 06 C5 */	stb r0, 0x6c5(r31)
/* 80B089D4  38 00 00 0A */	li r0, 0xa
/* 80B089D8  90 1F 06 B0 */	stw r0, 0x6b0(r31)
/* 80B089DC  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80B089E0  D0 1F 06 78 */	stfs f0, 0x678(r31)
/* 80B089E4  48 00 0F E8 */	b lbl_80B099CC
lbl_80B089E8:
/* 80B089E8  7F E3 FB 78 */	mr r3, r31
/* 80B089EC  4B FF F8 1D */	bl calcWolfDemoCam__10daNPC_TK_cFv
/* 80B089F0  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80B089F4  38 80 00 00 */	li r4, 0
/* 80B089F8  38 A0 00 08 */	li r5, 8
/* 80B089FC  38 C0 01 00 */	li r6, 0x100
/* 80B08A00  38 E0 00 10 */	li r7, 0x10
/* 80B08A04  4B 76 7B 3C */	b cLib_addCalcAngleS__FPsssss
/* 80B08A08  38 7F 04 FC */	addi r3, r31, 0x4fc
/* 80B08A0C  C0 3F 06 78 */	lfs f1, 0x678(r31)
/* 80B08A10  C0 5E 01 68 */	lfs f2, 0x168(r30)
/* 80B08A14  4B 76 7D 2C */	b cLib_chaseF__FPfff
/* 80B08A18  C0 3F 06 78 */	lfs f1, 0x678(r31)
/* 80B08A1C  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80B08A20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B08A24  40 81 00 28 */	ble lbl_80B08A4C
/* 80B08A28  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80B08A2C  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 80B08A30  EC 21 00 28 */	fsubs f1, f1, f0
/* 80B08A34  C0 1E 01 80 */	lfs f0, 0x180(r30)
/* 80B08A38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B08A3C  40 81 00 30 */	ble lbl_80B08A6C
/* 80B08A40  38 00 00 00 */	li r0, 0
/* 80B08A44  90 1F 06 B0 */	stw r0, 0x6b0(r31)
/* 80B08A48  48 00 00 24 */	b lbl_80B08A6C
lbl_80B08A4C:
/* 80B08A4C  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80B08A50  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 80B08A54  EC 21 00 28 */	fsubs f1, f1, f0
/* 80B08A58  C0 1E 01 84 */	lfs f0, 0x184(r30)
/* 80B08A5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B08A60  40 80 00 0C */	bge lbl_80B08A6C
/* 80B08A64  38 00 00 00 */	li r0, 0
/* 80B08A68  90 1F 06 B0 */	stw r0, 0x6b0(r31)
lbl_80B08A6C:
/* 80B08A6C  80 1F 06 B0 */	lwz r0, 0x6b0(r31)
/* 80B08A70  2C 00 00 00 */	cmpwi r0, 0
/* 80B08A74  40 82 00 30 */	bne lbl_80B08AA4
/* 80B08A78  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 80B08A7C  4B 75 EF 10 */	b cM_rndFX__Ff
/* 80B08A80  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 80B08A84  EC 00 08 2A */	fadds f0, f0, f1
/* 80B08A88  FC 00 00 1E */	fctiwz f0, f0
/* 80B08A8C  D8 01 00 E8 */	stfd f0, 0xe8(r1)
/* 80B08A90  80 01 00 EC */	lwz r0, 0xec(r1)
/* 80B08A94  90 1F 06 B0 */	stw r0, 0x6b0(r31)
/* 80B08A98  C0 1F 06 78 */	lfs f0, 0x678(r31)
/* 80B08A9C  FC 00 00 50 */	fneg f0, f0
/* 80B08AA0  D0 1F 06 78 */	stfs f0, 0x678(r31)
lbl_80B08AA4:
/* 80B08AA4  38 7F 07 24 */	addi r3, r31, 0x724
/* 80B08AA8  7F E4 FB 78 */	mr r4, r31
/* 80B08AAC  38 A0 00 00 */	li r5, 0
/* 80B08AB0  38 C0 00 00 */	li r6, 0
/* 80B08AB4  4B 74 18 24 */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80B08AB8  2C 03 00 00 */	cmpwi r3, 0
/* 80B08ABC  41 82 0F 10 */	beq lbl_80B099CC
/* 80B08AC0  38 00 00 09 */	li r0, 9
/* 80B08AC4  98 1F 06 C5 */	stb r0, 0x6c5(r31)
/* 80B08AC8  38 00 00 1E */	li r0, 0x1e
/* 80B08ACC  90 1F 06 B0 */	stw r0, 0x6b0(r31)
/* 80B08AD0  48 00 0E FC */	b lbl_80B099CC
lbl_80B08AD4:
/* 80B08AD4  38 7F 04 FC */	addi r3, r31, 0x4fc
/* 80B08AD8  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80B08ADC  C0 5E 00 CC */	lfs f2, 0xcc(r30)
/* 80B08AE0  4B 76 7C 60 */	b cLib_chaseF__FPfff
/* 80B08AE4  80 1F 06 B0 */	lwz r0, 0x6b0(r31)
/* 80B08AE8  2C 00 00 00 */	cmpwi r0, 0
/* 80B08AEC  40 82 0E E0 */	bne lbl_80B099CC
/* 80B08AF0  38 00 00 00 */	li r0, 0
/* 80B08AF4  98 1F 06 CC */	stb r0, 0x6cc(r31)
/* 80B08AF8  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80B08AFC  D0 1F 06 78 */	stfs f0, 0x678(r31)
/* 80B08B00  7F E3 FB 78 */	mr r3, r31
/* 80B08B04  38 80 00 06 */	li r4, 6
/* 80B08B08  38 A0 00 02 */	li r5, 2
/* 80B08B0C  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 80B08B10  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80B08B14  4B FF 89 85 */	bl setBck__10daNPC_TK_cFiUcff
/* 80B08B18  38 00 00 00 */	li r0, 0
/* 80B08B1C  B0 1F 06 9C */	sth r0, 0x69c(r31)
/* 80B08B20  88 1F 06 EB */	lbz r0, 0x6eb(r31)
/* 80B08B24  28 00 00 00 */	cmplwi r0, 0
/* 80B08B28  40 82 01 88 */	bne lbl_80B08CB0
/* 80B08B2C  38 00 00 0A */	li r0, 0xa
/* 80B08B30  98 1F 06 C5 */	stb r0, 0x6c5(r31)
/* 80B08B34  38 00 00 37 */	li r0, 0x37
/* 80B08B38  90 1F 06 B0 */	stw r0, 0x6b0(r31)
/* 80B08B3C  C0 1E 01 88 */	lfs f0, 0x188(r30)
/* 80B08B40  D0 1F 06 E0 */	stfs f0, 0x6e0(r31)
/* 80B08B44  C3 DE 00 30 */	lfs f30, 0x30(r30)
/* 80B08B48  3B 80 00 01 */	li r28, 1
/* 80B08B4C  FF E0 F0 90 */	fmr f31, f30
/* 80B08B50  48 00 01 3C */	b lbl_80B08C8C
lbl_80B08B54:
/* 80B08B54  38 9C FF FF */	addi r4, r28, -1
/* 80B08B58  4B 54 8C 58 */	b dPath_GetPnt__FPC5dPathi
/* 80B08B5C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80B08B60  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80B08B64  C0 03 00 08 */	lfs f0, 8(r3)
/* 80B08B68  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 80B08B6C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B08B70  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 80B08B74  80 7F 06 DC */	lwz r3, 0x6dc(r31)
/* 80B08B78  7F 84 E3 78 */	mr r4, r28
/* 80B08B7C  4B 54 8C 34 */	b dPath_GetPnt__FPC5dPathi
/* 80B08B80  C0 03 00 04 */	lfs f0, 4(r3)
/* 80B08B84  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80B08B88  C0 03 00 08 */	lfs f0, 8(r3)
/* 80B08B8C  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80B08B90  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B08B94  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80B08B98  38 61 00 A8 */	addi r3, r1, 0xa8
/* 80B08B9C  38 81 00 9C */	addi r4, r1, 0x9c
/* 80B08BA0  4B 83 E7 FC */	b PSVECSquareDistance
/* 80B08BA4  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80B08BA8  40 81 00 58 */	ble lbl_80B08C00
/* 80B08BAC  FC 00 08 34 */	frsqrte f0, f1
/* 80B08BB0  C8 9E 00 48 */	lfd f4, 0x48(r30)
/* 80B08BB4  FC 44 00 32 */	fmul f2, f4, f0
/* 80B08BB8  C8 7E 00 50 */	lfd f3, 0x50(r30)
/* 80B08BBC  FC 00 00 32 */	fmul f0, f0, f0
/* 80B08BC0  FC 01 00 32 */	fmul f0, f1, f0
/* 80B08BC4  FC 03 00 28 */	fsub f0, f3, f0
/* 80B08BC8  FC 02 00 32 */	fmul f0, f2, f0
/* 80B08BCC  FC 44 00 32 */	fmul f2, f4, f0
/* 80B08BD0  FC 00 00 32 */	fmul f0, f0, f0
/* 80B08BD4  FC 01 00 32 */	fmul f0, f1, f0
/* 80B08BD8  FC 03 00 28 */	fsub f0, f3, f0
/* 80B08BDC  FC 02 00 32 */	fmul f0, f2, f0
/* 80B08BE0  FC 44 00 32 */	fmul f2, f4, f0
/* 80B08BE4  FC 00 00 32 */	fmul f0, f0, f0
/* 80B08BE8  FC 01 00 32 */	fmul f0, f1, f0
/* 80B08BEC  FC 03 00 28 */	fsub f0, f3, f0
/* 80B08BF0  FC 02 00 32 */	fmul f0, f2, f0
/* 80B08BF4  FC 21 00 32 */	fmul f1, f1, f0
/* 80B08BF8  FC 20 08 18 */	frsp f1, f1
/* 80B08BFC  48 00 00 88 */	b lbl_80B08C84
lbl_80B08C00:
/* 80B08C00  C8 1E 00 58 */	lfd f0, 0x58(r30)
/* 80B08C04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B08C08  40 80 00 10 */	bge lbl_80B08C18
/* 80B08C0C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B08C10  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80B08C14  48 00 00 70 */	b lbl_80B08C84
lbl_80B08C18:
/* 80B08C18  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80B08C1C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80B08C20  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B08C24  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B08C28  7C 03 00 00 */	cmpw r3, r0
/* 80B08C2C  41 82 00 14 */	beq lbl_80B08C40
/* 80B08C30  40 80 00 40 */	bge lbl_80B08C70
/* 80B08C34  2C 03 00 00 */	cmpwi r3, 0
/* 80B08C38  41 82 00 20 */	beq lbl_80B08C58
/* 80B08C3C  48 00 00 34 */	b lbl_80B08C70
lbl_80B08C40:
/* 80B08C40  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B08C44  41 82 00 0C */	beq lbl_80B08C50
/* 80B08C48  38 00 00 01 */	li r0, 1
/* 80B08C4C  48 00 00 28 */	b lbl_80B08C74
lbl_80B08C50:
/* 80B08C50  38 00 00 02 */	li r0, 2
/* 80B08C54  48 00 00 20 */	b lbl_80B08C74
lbl_80B08C58:
/* 80B08C58  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B08C5C  41 82 00 0C */	beq lbl_80B08C68
/* 80B08C60  38 00 00 05 */	li r0, 5
/* 80B08C64  48 00 00 10 */	b lbl_80B08C74
lbl_80B08C68:
/* 80B08C68  38 00 00 03 */	li r0, 3
/* 80B08C6C  48 00 00 08 */	b lbl_80B08C74
lbl_80B08C70:
/* 80B08C70  38 00 00 04 */	li r0, 4
lbl_80B08C74:
/* 80B08C74  2C 00 00 01 */	cmpwi r0, 1
/* 80B08C78  40 82 00 0C */	bne lbl_80B08C84
/* 80B08C7C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B08C80  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80B08C84:
/* 80B08C84  EF DE 08 2A */	fadds f30, f30, f1
/* 80B08C88  3B 9C 00 01 */	addi r28, r28, 1
lbl_80B08C8C:
/* 80B08C8C  80 7F 06 DC */	lwz r3, 0x6dc(r31)
/* 80B08C90  A0 83 00 00 */	lhz r4, 0(r3)
/* 80B08C94  38 04 FF FF */	addi r0, r4, -1
/* 80B08C98  7C 1C 00 00 */	cmpw r28, r0
/* 80B08C9C  41 80 FE B8 */	blt lbl_80B08B54
/* 80B08CA0  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80B08CA4  EC 00 F0 24 */	fdivs f0, f0, f30
/* 80B08CA8  D0 1F 06 E4 */	stfs f0, 0x6e4(r31)
/* 80B08CAC  48 00 0D 20 */	b lbl_80B099CC
lbl_80B08CB0:
/* 80B08CB0  38 00 00 14 */	li r0, 0x14
/* 80B08CB4  98 1F 06 C5 */	stb r0, 0x6c5(r31)
/* 80B08CB8  38 00 00 78 */	li r0, 0x78
/* 80B08CBC  90 1F 06 B0 */	stw r0, 0x6b0(r31)
/* 80B08CC0  48 00 0D 0C */	b lbl_80B099CC
lbl_80B08CC4:
/* 80B08CC4  80 1F 06 B0 */	lwz r0, 0x6b0(r31)
/* 80B08CC8  2C 00 00 00 */	cmpwi r0, 0
/* 80B08CCC  40 82 00 0C */	bne lbl_80B08CD8
/* 80B08CD0  38 00 00 0B */	li r0, 0xb
/* 80B08CD4  98 1F 06 C5 */	stb r0, 0x6c5(r31)
lbl_80B08CD8:
/* 80B08CD8  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80B08CDC  C0 1F 06 78 */	lfs f0, 0x678(r31)
/* 80B08CE0  EC 01 00 2A */	fadds f0, f1, f0
/* 80B08CE4  D0 1F 07 14 */	stfs f0, 0x714(r31)
/* 80B08CE8  88 1F 06 C5 */	lbz r0, 0x6c5(r31)
/* 80B08CEC  28 00 00 0A */	cmplwi r0, 0xa
/* 80B08CF0  40 82 00 44 */	bne lbl_80B08D34
/* 80B08CF4  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80B08CF8  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 80B08CFC  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80B08D00  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 80B08D04  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80B08D08  38 61 00 C0 */	addi r3, r1, 0xc0
/* 80B08D0C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80B08D10  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80B08D14  38 C1 00 CC */	addi r6, r1, 0xcc
/* 80B08D18  4B 76 80 A8 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80B08D1C  38 7F 06 FC */	addi r3, r31, 0x6fc
/* 80B08D20  38 81 00 C0 */	addi r4, r1, 0xc0
/* 80B08D24  C0 3E 01 68 */	lfs f1, 0x168(r30)
/* 80B08D28  C0 5F 07 14 */	lfs f2, 0x714(r31)
/* 80B08D2C  4B 76 74 4C */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80B08D30  48 00 00 88 */	b lbl_80B08DB8
lbl_80B08D34:
/* 80B08D34  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80B08D38  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 80B08D3C  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80B08D40  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 80B08D44  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80B08D48  38 61 00 C0 */	addi r3, r1, 0xc0
/* 80B08D4C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80B08D50  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80B08D54  38 C1 00 CC */	addi r6, r1, 0xcc
/* 80B08D58  4B 76 80 68 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80B08D5C  38 7F 06 FC */	addi r3, r31, 0x6fc
/* 80B08D60  38 81 00 C0 */	addi r4, r1, 0xc0
/* 80B08D64  C0 3E 01 68 */	lfs f1, 0x168(r30)
/* 80B08D68  C0 5F 07 14 */	lfs f2, 0x714(r31)
/* 80B08D6C  4B 76 74 0C */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80B08D70  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80B08D74  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 80B08D78  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80B08D7C  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80B08D80  C0 1E 01 78 */	lfs f0, 0x178(r30)
/* 80B08D84  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80B08D88  38 61 00 C0 */	addi r3, r1, 0xc0
/* 80B08D8C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80B08D90  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80B08D94  38 C1 00 CC */	addi r6, r1, 0xcc
/* 80B08D98  4B 76 80 28 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80B08D9C  38 7F 06 F0 */	addi r3, r31, 0x6f0
/* 80B08DA0  38 81 00 C0 */	addi r4, r1, 0xc0
/* 80B08DA4  C0 3E 01 64 */	lfs f1, 0x164(r30)
/* 80B08DA8  C0 5F 07 14 */	lfs f2, 0x714(r31)
/* 80B08DAC  4B 76 73 CC */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80B08DB0  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 80B08DB4  D0 1F 07 08 */	stfs f0, 0x708(r31)
lbl_80B08DB8:
/* 80B08DB8  88 1F 06 C5 */	lbz r0, 0x6c5(r31)
/* 80B08DBC  28 00 00 0C */	cmplwi r0, 0xc
/* 80B08DC0  41 82 00 30 */	beq lbl_80B08DF0
/* 80B08DC4  38 61 00 60 */	addi r3, r1, 0x60
/* 80B08DC8  38 9F 06 D0 */	addi r4, r31, 0x6d0
/* 80B08DCC  C0 3F 06 E0 */	lfs f1, 0x6e0(r31)
/* 80B08DD0  4B 58 EE A4 */	b bSpline2__10dPathCurveFf
/* 80B08DD4  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80B08DD8  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80B08DDC  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80B08DE0  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80B08DE4  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80B08DE8  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80B08DEC  48 00 00 2C */	b lbl_80B08E18
lbl_80B08DF0:
/* 80B08DF0  80 7F 06 DC */	lwz r3, 0x6dc(r31)
/* 80B08DF4  88 9F 06 CC */	lbz r4, 0x6cc(r31)
/* 80B08DF8  7C 84 07 74 */	extsb r4, r4
/* 80B08DFC  4B 54 89 B4 */	b dPath_GetPnt__FPC5dPathi
/* 80B08E00  C0 03 00 04 */	lfs f0, 4(r3)
/* 80B08E04  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80B08E08  C0 03 00 08 */	lfs f0, 8(r3)
/* 80B08E0C  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80B08E10  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B08E14  D0 01 00 BC */	stfs f0, 0xbc(r1)
lbl_80B08E18:
/* 80B08E18  38 7F 06 78 */	addi r3, r31, 0x678
/* 80B08E1C  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 80B08E20  C0 5E 00 CC */	lfs f2, 0xcc(r30)
/* 80B08E24  4B 76 79 1C */	b cLib_chaseF__FPfff
/* 80B08E28  88 1F 06 C5 */	lbz r0, 0x6c5(r31)
/* 80B08E2C  28 00 00 0B */	cmplwi r0, 0xb
/* 80B08E30  40 82 00 5C */	bne lbl_80B08E8C
/* 80B08E34  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B08E38  38 81 00 B4 */	addi r4, r1, 0xb4
/* 80B08E3C  4B 76 7D C8 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B08E40  7C 64 1B 78 */	mr r4, r3
/* 80B08E44  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 80B08E48  38 A0 00 08 */	li r5, 8
/* 80B08E4C  38 C0 04 00 */	li r6, 0x400
/* 80B08E50  38 E0 00 10 */	li r7, 0x10
/* 80B08E54  4B 76 76 EC */	b cLib_addCalcAngleS__FPsssss
/* 80B08E58  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80B08E5C  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80B08E60  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B08E64  38 81 00 B4 */	addi r4, r1, 0xb4
/* 80B08E68  4B 76 7E 0C */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80B08E6C  7C 03 00 D0 */	neg r0, r3
/* 80B08E70  7C 04 07 34 */	extsh r4, r0
/* 80B08E74  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80B08E78  38 A0 00 08 */	li r5, 8
/* 80B08E7C  38 C0 04 00 */	li r6, 0x400
/* 80B08E80  38 E0 00 10 */	li r7, 0x10
/* 80B08E84  4B 76 76 BC */	b cLib_addCalcAngleS__FPsssss
/* 80B08E88  48 00 00 7C */	b lbl_80B08F04
lbl_80B08E8C:
/* 80B08E8C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B08E90  38 81 00 B4 */	addi r4, r1, 0xb4
/* 80B08E94  4B 83 E5 08 */	b PSVECSquareDistance
/* 80B08E98  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80B08E9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B08EA0  40 81 00 08 */	ble lbl_80B08EA8
/* 80B08EA4  48 00 00 0C */	b lbl_80B08EB0
lbl_80B08EA8:
/* 80B08EA8  C8 1E 00 58 */	lfd f0, 0x58(r30)
/* 80B08EAC  FC 01 00 40 */	fcmpo cr0, f1, f0
lbl_80B08EB0:
/* 80B08EB0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B08EB4  38 81 00 B4 */	addi r4, r1, 0xb4
/* 80B08EB8  4B 76 7D 4C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B08EBC  7C 64 1B 78 */	mr r4, r3
/* 80B08EC0  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 80B08EC4  38 A0 00 08 */	li r5, 8
/* 80B08EC8  38 C0 04 00 */	li r6, 0x400
/* 80B08ECC  38 E0 00 80 */	li r7, 0x80
/* 80B08ED0  4B 76 76 70 */	b cLib_addCalcAngleS__FPsssss
/* 80B08ED4  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80B08ED8  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80B08EDC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B08EE0  38 81 00 B4 */	addi r4, r1, 0xb4
/* 80B08EE4  4B 76 7D 90 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80B08EE8  7C 03 00 D0 */	neg r0, r3
/* 80B08EEC  7C 04 07 34 */	extsh r4, r0
/* 80B08EF0  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80B08EF4  38 A0 00 08 */	li r5, 8
/* 80B08EF8  38 C0 04 00 */	li r6, 0x400
/* 80B08EFC  38 E0 00 80 */	li r7, 0x80
/* 80B08F00  4B 76 76 40 */	b cLib_addCalcAngleS__FPsssss
lbl_80B08F04:
/* 80B08F04  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80B08F08  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 80B08F0C  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80B08F10  7C 00 00 D0 */	neg r0, r0
/* 80B08F14  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B08F18  7C 64 02 14 */	add r3, r4, r0
/* 80B08F1C  C0 23 00 04 */	lfs f1, 4(r3)
/* 80B08F20  C0 1F 06 78 */	lfs f0, 0x678(r31)
/* 80B08F24  EC 00 00 72 */	fmuls f0, f0, f1
/* 80B08F28  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80B08F2C  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80B08F30  7C 00 00 D0 */	neg r0, r0
/* 80B08F34  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B08F38  7C 24 04 2E */	lfsx f1, r4, r0
/* 80B08F3C  C0 1F 06 78 */	lfs f0, 0x678(r31)
/* 80B08F40  EC 00 00 72 */	fmuls f0, f0, f1
/* 80B08F44  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80B08F48  88 1F 06 C5 */	lbz r0, 0x6c5(r31)
/* 80B08F4C  28 00 00 0C */	cmplwi r0, 0xc
/* 80B08F50  41 82 03 00 */	beq lbl_80B09250
/* 80B08F54  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B08F58  38 81 00 B4 */	addi r4, r1, 0xb4
/* 80B08F5C  4B 83 E4 40 */	b PSVECSquareDistance
/* 80B08F60  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80B08F64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B08F68  40 81 00 58 */	ble lbl_80B08FC0
/* 80B08F6C  FC 00 08 34 */	frsqrte f0, f1
/* 80B08F70  C8 9E 00 48 */	lfd f4, 0x48(r30)
/* 80B08F74  FC 44 00 32 */	fmul f2, f4, f0
/* 80B08F78  C8 7E 00 50 */	lfd f3, 0x50(r30)
/* 80B08F7C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B08F80  FC 01 00 32 */	fmul f0, f1, f0
/* 80B08F84  FC 03 00 28 */	fsub f0, f3, f0
/* 80B08F88  FC 02 00 32 */	fmul f0, f2, f0
/* 80B08F8C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B08F90  FC 00 00 32 */	fmul f0, f0, f0
/* 80B08F94  FC 01 00 32 */	fmul f0, f1, f0
/* 80B08F98  FC 03 00 28 */	fsub f0, f3, f0
/* 80B08F9C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B08FA0  FC 44 00 32 */	fmul f2, f4, f0
/* 80B08FA4  FC 00 00 32 */	fmul f0, f0, f0
/* 80B08FA8  FC 01 00 32 */	fmul f0, f1, f0
/* 80B08FAC  FC 03 00 28 */	fsub f0, f3, f0
/* 80B08FB0  FC 02 00 32 */	fmul f0, f2, f0
/* 80B08FB4  FC 21 00 32 */	fmul f1, f1, f0
/* 80B08FB8  FC 20 08 18 */	frsp f1, f1
/* 80B08FBC  48 00 00 88 */	b lbl_80B09044
lbl_80B08FC0:
/* 80B08FC0  C8 1E 00 58 */	lfd f0, 0x58(r30)
/* 80B08FC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B08FC8  40 80 00 10 */	bge lbl_80B08FD8
/* 80B08FCC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B08FD0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80B08FD4  48 00 00 70 */	b lbl_80B09044
lbl_80B08FD8:
/* 80B08FD8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80B08FDC  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80B08FE0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B08FE4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B08FE8  7C 03 00 00 */	cmpw r3, r0
/* 80B08FEC  41 82 00 14 */	beq lbl_80B09000
/* 80B08FF0  40 80 00 40 */	bge lbl_80B09030
/* 80B08FF4  2C 03 00 00 */	cmpwi r3, 0
/* 80B08FF8  41 82 00 20 */	beq lbl_80B09018
/* 80B08FFC  48 00 00 34 */	b lbl_80B09030
lbl_80B09000:
/* 80B09000  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B09004  41 82 00 0C */	beq lbl_80B09010
/* 80B09008  38 00 00 01 */	li r0, 1
/* 80B0900C  48 00 00 28 */	b lbl_80B09034
lbl_80B09010:
/* 80B09010  38 00 00 02 */	li r0, 2
/* 80B09014  48 00 00 20 */	b lbl_80B09034
lbl_80B09018:
/* 80B09018  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B0901C  41 82 00 0C */	beq lbl_80B09028
/* 80B09020  38 00 00 05 */	li r0, 5
/* 80B09024  48 00 00 10 */	b lbl_80B09034
lbl_80B09028:
/* 80B09028  38 00 00 03 */	li r0, 3
/* 80B0902C  48 00 00 08 */	b lbl_80B09034
lbl_80B09030:
/* 80B09030  38 00 00 04 */	li r0, 4
lbl_80B09034:
/* 80B09034  2C 00 00 01 */	cmpwi r0, 1
/* 80B09038  40 82 00 0C */	bne lbl_80B09044
/* 80B0903C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B09040  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80B09044:
/* 80B09044  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 80B09048  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B0904C  40 80 00 14 */	bge lbl_80B09060
/* 80B09050  C0 3F 06 E0 */	lfs f1, 0x6e0(r31)
/* 80B09054  C0 1F 06 E4 */	lfs f0, 0x6e4(r31)
/* 80B09058  EC 01 00 2A */	fadds f0, f1, f0
/* 80B0905C  D0 1F 06 E0 */	stfs f0, 0x6e0(r31)
lbl_80B09060:
/* 80B09060  80 7F 06 DC */	lwz r3, 0x6dc(r31)
/* 80B09064  A0 83 00 00 */	lhz r4, 0(r3)
/* 80B09068  38 84 FF FF */	addi r4, r4, -1
/* 80B0906C  4B 54 87 44 */	b dPath_GetPnt__FPC5dPathi
/* 80B09070  C0 03 00 04 */	lfs f0, 4(r3)
/* 80B09074  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80B09078  C0 03 00 08 */	lfs f0, 8(r3)
/* 80B0907C  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80B09080  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B09084  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80B09088  38 61 00 90 */	addi r3, r1, 0x90
/* 80B0908C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80B09090  4B 83 E3 0C */	b PSVECSquareDistance
/* 80B09094  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80B09098  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B0909C  40 81 00 58 */	ble lbl_80B090F4
/* 80B090A0  FC 00 08 34 */	frsqrte f0, f1
/* 80B090A4  C8 9E 00 48 */	lfd f4, 0x48(r30)
/* 80B090A8  FC 44 00 32 */	fmul f2, f4, f0
/* 80B090AC  C8 7E 00 50 */	lfd f3, 0x50(r30)
/* 80B090B0  FC 00 00 32 */	fmul f0, f0, f0
/* 80B090B4  FC 01 00 32 */	fmul f0, f1, f0
/* 80B090B8  FC 03 00 28 */	fsub f0, f3, f0
/* 80B090BC  FC 02 00 32 */	fmul f0, f2, f0
/* 80B090C0  FC 44 00 32 */	fmul f2, f4, f0
/* 80B090C4  FC 00 00 32 */	fmul f0, f0, f0
/* 80B090C8  FC 01 00 32 */	fmul f0, f1, f0
/* 80B090CC  FC 03 00 28 */	fsub f0, f3, f0
/* 80B090D0  FC 02 00 32 */	fmul f0, f2, f0
/* 80B090D4  FC 44 00 32 */	fmul f2, f4, f0
/* 80B090D8  FC 00 00 32 */	fmul f0, f0, f0
/* 80B090DC  FC 01 00 32 */	fmul f0, f1, f0
/* 80B090E0  FC 03 00 28 */	fsub f0, f3, f0
/* 80B090E4  FC 02 00 32 */	fmul f0, f2, f0
/* 80B090E8  FC 21 00 32 */	fmul f1, f1, f0
/* 80B090EC  FC 20 08 18 */	frsp f1, f1
/* 80B090F0  48 00 00 88 */	b lbl_80B09178
lbl_80B090F4:
/* 80B090F4  C8 1E 00 58 */	lfd f0, 0x58(r30)
/* 80B090F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B090FC  40 80 00 10 */	bge lbl_80B0910C
/* 80B09100  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B09104  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80B09108  48 00 00 70 */	b lbl_80B09178
lbl_80B0910C:
/* 80B0910C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80B09110  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80B09114  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B09118  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B0911C  7C 03 00 00 */	cmpw r3, r0
/* 80B09120  41 82 00 14 */	beq lbl_80B09134
/* 80B09124  40 80 00 40 */	bge lbl_80B09164
/* 80B09128  2C 03 00 00 */	cmpwi r3, 0
/* 80B0912C  41 82 00 20 */	beq lbl_80B0914C
/* 80B09130  48 00 00 34 */	b lbl_80B09164
lbl_80B09134:
/* 80B09134  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B09138  41 82 00 0C */	beq lbl_80B09144
/* 80B0913C  38 00 00 01 */	li r0, 1
/* 80B09140  48 00 00 28 */	b lbl_80B09168
lbl_80B09144:
/* 80B09144  38 00 00 02 */	li r0, 2
/* 80B09148  48 00 00 20 */	b lbl_80B09168
lbl_80B0914C:
/* 80B0914C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B09150  41 82 00 0C */	beq lbl_80B0915C
/* 80B09154  38 00 00 05 */	li r0, 5
/* 80B09158  48 00 00 10 */	b lbl_80B09168
lbl_80B0915C:
/* 80B0915C  38 00 00 03 */	li r0, 3
/* 80B09160  48 00 00 08 */	b lbl_80B09168
lbl_80B09164:
/* 80B09164  38 00 00 04 */	li r0, 4
lbl_80B09168:
/* 80B09168  2C 00 00 01 */	cmpwi r0, 1
/* 80B0916C  40 82 00 0C */	bne lbl_80B09178
/* 80B09170  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B09174  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80B09178:
/* 80B09178  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 80B0917C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B09180  40 80 08 4C */	bge lbl_80B099CC
/* 80B09184  80 7F 06 DC */	lwz r3, 0x6dc(r31)
/* 80B09188  A0 83 00 00 */	lhz r4, 0(r3)
/* 80B0918C  38 84 FF FE */	addi r4, r4, -2
/* 80B09190  4B 54 86 20 */	b dPath_GetPnt__FPC5dPathi
/* 80B09194  C0 03 00 04 */	lfs f0, 4(r3)
/* 80B09198  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80B0919C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80B091A0  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80B091A4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B091A8  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80B091AC  80 7F 06 DC */	lwz r3, 0x6dc(r31)
/* 80B091B0  A0 83 00 00 */	lhz r4, 0(r3)
/* 80B091B4  38 84 FF FF */	addi r4, r4, -1
/* 80B091B8  4B 54 85 F8 */	b dPath_GetPnt__FPC5dPathi
/* 80B091BC  C0 03 00 04 */	lfs f0, 4(r3)
/* 80B091C0  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80B091C4  C0 03 00 08 */	lfs f0, 8(r3)
/* 80B091C8  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80B091CC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B091D0  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80B091D4  38 61 00 78 */	addi r3, r1, 0x78
/* 80B091D8  38 81 00 6C */	addi r4, r1, 0x6c
/* 80B091DC  4B 76 7A 28 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B091E0  7C 03 00 D0 */	neg r0, r3
/* 80B091E4  7C 04 07 34 */	extsh r4, r0
/* 80B091E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B091EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B091F0  4B 50 31 EC */	b mDoMtx_YrotS__FPA4_fs
/* 80B091F4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80B091F8  FC 20 00 50 */	fneg f1, f0
/* 80B091FC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80B09200  FC 40 00 50 */	fneg f2, f0
/* 80B09204  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80B09208  FC 60 00 50 */	fneg f3, f0
/* 80B0920C  4B 50 3B 90 */	b transM__14mDoMtx_stack_cFfff
/* 80B09210  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B09214  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B09218  38 81 00 78 */	addi r4, r1, 0x78
/* 80B0921C  38 A1 00 84 */	addi r5, r1, 0x84
/* 80B09220  4B 83 DB 4C */	b PSMTXMultVec
/* 80B09224  C0 21 00 8C */	lfs f1, 0x8c(r1)
/* 80B09228  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80B0922C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B09230  40 80 07 9C */	bge lbl_80B099CC
/* 80B09234  80 7F 06 DC */	lwz r3, 0x6dc(r31)
/* 80B09238  A0 63 00 00 */	lhz r3, 0(r3)
/* 80B0923C  38 03 FF FF */	addi r0, r3, -1
/* 80B09240  98 1F 06 CC */	stb r0, 0x6cc(r31)
/* 80B09244  38 00 00 0C */	li r0, 0xc
/* 80B09248  98 1F 06 C5 */	stb r0, 0x6c5(r31)
/* 80B0924C  48 00 07 80 */	b lbl_80B099CC
lbl_80B09250:
/* 80B09250  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B09254  38 81 00 B4 */	addi r4, r1, 0xb4
/* 80B09258  4B 83 E1 44 */	b PSVECSquareDistance
/* 80B0925C  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80B09260  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B09264  40 81 00 58 */	ble lbl_80B092BC
/* 80B09268  FC 00 08 34 */	frsqrte f0, f1
/* 80B0926C  C8 9E 00 48 */	lfd f4, 0x48(r30)
/* 80B09270  FC 44 00 32 */	fmul f2, f4, f0
/* 80B09274  C8 7E 00 50 */	lfd f3, 0x50(r30)
/* 80B09278  FC 00 00 32 */	fmul f0, f0, f0
/* 80B0927C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B09280  FC 03 00 28 */	fsub f0, f3, f0
/* 80B09284  FC 02 00 32 */	fmul f0, f2, f0
/* 80B09288  FC 44 00 32 */	fmul f2, f4, f0
/* 80B0928C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B09290  FC 01 00 32 */	fmul f0, f1, f0
/* 80B09294  FC 03 00 28 */	fsub f0, f3, f0
/* 80B09298  FC 02 00 32 */	fmul f0, f2, f0
/* 80B0929C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B092A0  FC 00 00 32 */	fmul f0, f0, f0
/* 80B092A4  FC 01 00 32 */	fmul f0, f1, f0
/* 80B092A8  FC 03 00 28 */	fsub f0, f3, f0
/* 80B092AC  FC 02 00 32 */	fmul f0, f2, f0
/* 80B092B0  FC 21 00 32 */	fmul f1, f1, f0
/* 80B092B4  FC 20 08 18 */	frsp f1, f1
/* 80B092B8  48 00 00 88 */	b lbl_80B09340
lbl_80B092BC:
/* 80B092BC  C8 1E 00 58 */	lfd f0, 0x58(r30)
/* 80B092C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B092C4  40 80 00 10 */	bge lbl_80B092D4
/* 80B092C8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B092CC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80B092D0  48 00 00 70 */	b lbl_80B09340
lbl_80B092D4:
/* 80B092D4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B092D8  80 81 00 08 */	lwz r4, 8(r1)
/* 80B092DC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B092E0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B092E4  7C 03 00 00 */	cmpw r3, r0
/* 80B092E8  41 82 00 14 */	beq lbl_80B092FC
/* 80B092EC  40 80 00 40 */	bge lbl_80B0932C
/* 80B092F0  2C 03 00 00 */	cmpwi r3, 0
/* 80B092F4  41 82 00 20 */	beq lbl_80B09314
/* 80B092F8  48 00 00 34 */	b lbl_80B0932C
lbl_80B092FC:
/* 80B092FC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B09300  41 82 00 0C */	beq lbl_80B0930C
/* 80B09304  38 00 00 01 */	li r0, 1
/* 80B09308  48 00 00 28 */	b lbl_80B09330
lbl_80B0930C:
/* 80B0930C  38 00 00 02 */	li r0, 2
/* 80B09310  48 00 00 20 */	b lbl_80B09330
lbl_80B09314:
/* 80B09314  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B09318  41 82 00 0C */	beq lbl_80B09324
/* 80B0931C  38 00 00 05 */	li r0, 5
/* 80B09320  48 00 00 10 */	b lbl_80B09330
lbl_80B09324:
/* 80B09324  38 00 00 03 */	li r0, 3
/* 80B09328  48 00 00 08 */	b lbl_80B09330
lbl_80B0932C:
/* 80B0932C  38 00 00 04 */	li r0, 4
lbl_80B09330:
/* 80B09330  2C 00 00 01 */	cmpwi r0, 1
/* 80B09334  40 82 00 0C */	bne lbl_80B09340
/* 80B09338  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B0933C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80B09340:
/* 80B09340  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 80B09344  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B09348  40 80 06 84 */	bge lbl_80B099CC
/* 80B0934C  88 7F 06 CC */	lbz r3, 0x6cc(r31)
/* 80B09350  38 03 00 01 */	addi r0, r3, 1
/* 80B09354  98 1F 06 CC */	stb r0, 0x6cc(r31)
/* 80B09358  88 1F 06 CC */	lbz r0, 0x6cc(r31)
/* 80B0935C  7C 00 07 74 */	extsb r0, r0
/* 80B09360  80 7F 06 DC */	lwz r3, 0x6dc(r31)
/* 80B09364  A0 63 00 00 */	lhz r3, 0(r3)
/* 80B09368  7C 00 18 00 */	cmpw r0, r3
/* 80B0936C  41 80 06 60 */	blt lbl_80B099CC
/* 80B09370  38 03 FF FF */	addi r0, r3, -1
/* 80B09374  98 1F 06 CC */	stb r0, 0x6cc(r31)
/* 80B09378  38 00 00 0D */	li r0, 0xd
/* 80B0937C  98 1F 06 C5 */	stb r0, 0x6c5(r31)
/* 80B09380  7F E3 FB 78 */	mr r3, r31
/* 80B09384  38 80 00 05 */	li r4, 5
/* 80B09388  38 A0 00 02 */	li r5, 2
/* 80B0938C  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 80B09390  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80B09394  4B FF 81 05 */	bl setBck__10daNPC_TK_cFiUcff
/* 80B09398  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 80B0939C  C0 1F 06 78 */	lfs f0, 0x678(r31)
/* 80B093A0  EC 01 00 2A */	fadds f0, f1, f0
/* 80B093A4  D0 1F 07 14 */	stfs f0, 0x714(r31)
/* 80B093A8  48 00 06 24 */	b lbl_80B099CC
lbl_80B093AC:
/* 80B093AC  80 7F 06 DC */	lwz r3, 0x6dc(r31)
/* 80B093B0  88 9F 06 CC */	lbz r4, 0x6cc(r31)
/* 80B093B4  7C 84 07 74 */	extsb r4, r4
/* 80B093B8  4B 54 83 F8 */	b dPath_GetPnt__FPC5dPathi
/* 80B093BC  C0 03 00 04 */	lfs f0, 4(r3)
/* 80B093C0  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80B093C4  C0 03 00 08 */	lfs f0, 8(r3)
/* 80B093C8  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80B093CC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B093D0  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80B093D4  7F E3 FB 78 */	mr r3, r31
/* 80B093D8  4B FF EE CD */	bl calcWolfDemoCam2__10daNPC_TK_cFv
/* 80B093DC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B093E0  38 81 00 B4 */	addi r4, r1, 0xb4
/* 80B093E4  4B 76 78 20 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B093E8  7C 64 1B 78 */	mr r4, r3
/* 80B093EC  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 80B093F0  38 A0 00 10 */	li r5, 0x10
/* 80B093F4  38 C0 08 00 */	li r6, 0x800
/* 80B093F8  38 E0 00 10 */	li r7, 0x10
/* 80B093FC  4B 76 71 44 */	b cLib_addCalcAngleS__FPsssss
/* 80B09400  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80B09404  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80B09408  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 80B0940C  C0 5F 04 FC */	lfs f2, 0x4fc(r31)
/* 80B09410  4B 75 E2 64 */	b cM_atan2s__Fff
/* 80B09414  38 03 C0 00 */	addi r0, r3, -16384
/* 80B09418  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80B0941C  38 7F 05 2C */	addi r3, r31, 0x52c
/* 80B09420  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80B09424  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80B09428  4B 76 73 18 */	b cLib_chaseF__FPfff
/* 80B0942C  38 7F 04 FC */	addi r3, r31, 0x4fc
/* 80B09430  C0 3E 01 8C */	lfs f1, 0x18c(r30)
/* 80B09434  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80B09438  4B 76 73 08 */	b cLib_chaseF__FPfff
/* 80B0943C  2C 03 00 00 */	cmpwi r3, 0
/* 80B09440  41 82 05 8C */	beq lbl_80B099CC
/* 80B09444  38 00 00 0E */	li r0, 0xe
/* 80B09448  98 1F 06 C5 */	stb r0, 0x6c5(r31)
/* 80B0944C  7F E3 FB 78 */	mr r3, r31
/* 80B09450  38 80 00 07 */	li r4, 7
/* 80B09454  38 A0 00 02 */	li r5, 2
/* 80B09458  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 80B0945C  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80B09460  4B FF 80 39 */	bl setBck__10daNPC_TK_cFiUcff
/* 80B09464  48 00 05 68 */	b lbl_80B099CC
lbl_80B09468:
/* 80B09468  80 7F 06 DC */	lwz r3, 0x6dc(r31)
/* 80B0946C  88 9F 06 CC */	lbz r4, 0x6cc(r31)
/* 80B09470  7C 84 07 74 */	extsb r4, r4
/* 80B09474  4B 54 83 3C */	b dPath_GetPnt__FPC5dPathi
/* 80B09478  C0 03 00 04 */	lfs f0, 4(r3)
/* 80B0947C  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80B09480  C0 03 00 08 */	lfs f0, 8(r3)
/* 80B09484  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80B09488  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B0948C  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80B09490  7F E3 FB 78 */	mr r3, r31
/* 80B09494  4B FF EE 11 */	bl calcWolfDemoCam2__10daNPC_TK_cFv
/* 80B09498  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80B0949C  38 80 00 00 */	li r4, 0
/* 80B094A0  38 A0 00 08 */	li r5, 8
/* 80B094A4  38 C0 01 00 */	li r6, 0x100
/* 80B094A8  38 E0 00 10 */	li r7, 0x10
/* 80B094AC  4B 76 70 94 */	b cLib_addCalcAngleS__FPsssss
/* 80B094B0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B094B4  38 81 00 B4 */	addi r4, r1, 0xb4
/* 80B094B8  4B 76 77 4C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B094BC  7C 64 1B 78 */	mr r4, r3
/* 80B094C0  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 80B094C4  38 A0 00 08 */	li r5, 8
/* 80B094C8  38 C0 08 00 */	li r6, 0x800
/* 80B094CC  38 E0 01 00 */	li r7, 0x100
/* 80B094D0  4B 76 70 70 */	b cLib_addCalcAngleS__FPsssss
/* 80B094D4  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80B094D8  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80B094DC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B094E0  38 81 00 B4 */	addi r4, r1, 0xb4
/* 80B094E4  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80B094E8  4B 76 72 C4 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 80B094EC  38 7F 05 2C */	addi r3, r31, 0x52c
/* 80B094F0  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80B094F4  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80B094F8  4B 76 72 48 */	b cLib_chaseF__FPfff
/* 80B094FC  38 7F 04 FC */	addi r3, r31, 0x4fc
/* 80B09500  C0 3E 00 B0 */	lfs f1, 0xb0(r30)
/* 80B09504  C0 5E 01 90 */	lfs f2, 0x190(r30)
/* 80B09508  4B 76 72 38 */	b cLib_chaseF__FPfff
/* 80B0950C  2C 03 00 00 */	cmpwi r3, 0
/* 80B09510  41 82 04 BC */	beq lbl_80B099CC
/* 80B09514  38 00 00 0F */	li r0, 0xf
/* 80B09518  98 1F 06 C5 */	stb r0, 0x6c5(r31)
/* 80B0951C  90 1F 06 B0 */	stw r0, 0x6b0(r31)
/* 80B09520  48 00 04 AC */	b lbl_80B099CC
lbl_80B09524:
/* 80B09524  80 7F 06 DC */	lwz r3, 0x6dc(r31)
/* 80B09528  88 9F 06 CC */	lbz r4, 0x6cc(r31)
/* 80B0952C  7C 84 07 74 */	extsb r4, r4
/* 80B09530  4B 54 82 80 */	b dPath_GetPnt__FPC5dPathi
/* 80B09534  C0 03 00 04 */	lfs f0, 4(r3)
/* 80B09538  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80B0953C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80B09540  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80B09544  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B09548  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80B0954C  7F E3 FB 78 */	mr r3, r31
/* 80B09550  4B FF ED 55 */	bl calcWolfDemoCam2__10daNPC_TK_cFv
/* 80B09554  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80B09558  38 80 00 00 */	li r4, 0
/* 80B0955C  38 A0 00 08 */	li r5, 8
/* 80B09560  38 C0 01 00 */	li r6, 0x100
/* 80B09564  38 E0 00 10 */	li r7, 0x10
/* 80B09568  4B 76 6F D8 */	b cLib_addCalcAngleS__FPsssss
/* 80B0956C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B09570  38 81 00 B4 */	addi r4, r1, 0xb4
/* 80B09574  4B 76 76 90 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B09578  7C 64 1B 78 */	mr r4, r3
/* 80B0957C  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 80B09580  38 A0 00 08 */	li r5, 8
/* 80B09584  38 C0 08 00 */	li r6, 0x800
/* 80B09588  38 E0 01 00 */	li r7, 0x100
/* 80B0958C  4B 76 6F B4 */	b cLib_addCalcAngleS__FPsssss
/* 80B09590  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B09594  38 81 00 B4 */	addi r4, r1, 0xb4
/* 80B09598  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80B0959C  4B 76 72 10 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 80B095A0  38 7F 05 2C */	addi r3, r31, 0x52c
/* 80B095A4  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80B095A8  C0 5E 00 CC */	lfs f2, 0xcc(r30)
/* 80B095AC  4B 76 71 94 */	b cLib_chaseF__FPfff
/* 80B095B0  38 7F 04 FC */	addi r3, r31, 0x4fc
/* 80B095B4  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80B095B8  C0 5E 00 CC */	lfs f2, 0xcc(r30)
/* 80B095BC  4B 76 71 84 */	b cLib_chaseF__FPfff
/* 80B095C0  2C 03 00 00 */	cmpwi r3, 0
/* 80B095C4  41 82 04 08 */	beq lbl_80B099CC
/* 80B095C8  38 00 00 06 */	li r0, 6
/* 80B095CC  98 1F 06 C5 */	stb r0, 0x6c5(r31)
/* 80B095D0  38 00 00 78 */	li r0, 0x78
/* 80B095D4  90 1F 06 B4 */	stw r0, 0x6b4(r31)
/* 80B095D8  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80B095DC  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80B095E0  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80B095E4  38 00 00 10 */	li r0, 0x10
/* 80B095E8  98 1F 06 C5 */	stb r0, 0x6c5(r31)
/* 80B095EC  38 00 00 0A */	li r0, 0xa
/* 80B095F0  90 1F 06 B0 */	stw r0, 0x6b0(r31)
/* 80B095F4  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80B095F8  D0 1F 06 78 */	stfs f0, 0x678(r31)
/* 80B095FC  48 00 03 D0 */	b lbl_80B099CC
lbl_80B09600:
/* 80B09600  7F E3 FB 78 */	mr r3, r31
/* 80B09604  4B FF EC A1 */	bl calcWolfDemoCam2__10daNPC_TK_cFv
/* 80B09608  80 7F 06 DC */	lwz r3, 0x6dc(r31)
/* 80B0960C  88 9F 06 CC */	lbz r4, 0x6cc(r31)
/* 80B09610  7C 84 07 74 */	extsb r4, r4
/* 80B09614  4B 54 81 9C */	b dPath_GetPnt__FPC5dPathi
/* 80B09618  C0 03 00 04 */	lfs f0, 4(r3)
/* 80B0961C  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80B09620  C0 03 00 08 */	lfs f0, 8(r3)
/* 80B09624  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80B09628  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B0962C  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80B09630  38 7F 06 FC */	addi r3, r31, 0x6fc
/* 80B09634  38 81 00 B4 */	addi r4, r1, 0xb4
/* 80B09638  C0 3E 01 64 */	lfs f1, 0x164(r30)
/* 80B0963C  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 80B09640  4B 76 6B 38 */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80B09644  80 7F 06 DC */	lwz r3, 0x6dc(r31)
/* 80B09648  88 1F 06 CC */	lbz r0, 0x6cc(r31)
/* 80B0964C  7C 04 07 74 */	extsb r4, r0
/* 80B09650  38 84 FF FF */	addi r4, r4, -1
/* 80B09654  4B 54 81 5C */	b dPath_GetPnt__FPC5dPathi
/* 80B09658  7C 64 1B 78 */	mr r4, r3
/* 80B0965C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B09660  38 84 00 04 */	addi r4, r4, 4
/* 80B09664  4B 76 75 A0 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B09668  7C 64 1B 78 */	mr r4, r3
/* 80B0966C  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 80B09670  38 04 20 00 */	addi r0, r4, 0x2000
/* 80B09674  7C 04 07 34 */	extsh r4, r0
/* 80B09678  38 A0 00 08 */	li r5, 8
/* 80B0967C  38 C0 01 00 */	li r6, 0x100
/* 80B09680  38 E0 00 10 */	li r7, 0x10
/* 80B09684  4B 76 6E BC */	b cLib_addCalcAngleS__FPsssss
/* 80B09688  38 7F 04 FC */	addi r3, r31, 0x4fc
/* 80B0968C  C0 3F 06 78 */	lfs f1, 0x678(r31)
/* 80B09690  C0 5E 00 CC */	lfs f2, 0xcc(r30)
/* 80B09694  4B 76 70 AC */	b cLib_chaseF__FPfff
/* 80B09698  C0 3F 06 78 */	lfs f1, 0x678(r31)
/* 80B0969C  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80B096A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B096A4  40 81 00 28 */	ble lbl_80B096CC
/* 80B096A8  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80B096AC  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 80B096B0  EC 21 00 28 */	fsubs f1, f1, f0
/* 80B096B4  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80B096B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B096BC  40 81 00 30 */	ble lbl_80B096EC
/* 80B096C0  38 00 00 00 */	li r0, 0
/* 80B096C4  90 1F 06 B0 */	stw r0, 0x6b0(r31)
/* 80B096C8  48 00 00 24 */	b lbl_80B096EC
lbl_80B096CC:
/* 80B096CC  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80B096D0  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 80B096D4  EC 21 00 28 */	fsubs f1, f1, f0
/* 80B096D8  C0 1E 01 94 */	lfs f0, 0x194(r30)
/* 80B096DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B096E0  40 80 00 0C */	bge lbl_80B096EC
/* 80B096E4  38 00 00 00 */	li r0, 0
/* 80B096E8  90 1F 06 B0 */	stw r0, 0x6b0(r31)
lbl_80B096EC:
/* 80B096EC  80 1F 06 B0 */	lwz r0, 0x6b0(r31)
/* 80B096F0  2C 00 00 00 */	cmpwi r0, 0
/* 80B096F4  40 82 00 30 */	bne lbl_80B09724
/* 80B096F8  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 80B096FC  4B 75 E2 90 */	b cM_rndFX__Ff
/* 80B09700  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 80B09704  EC 00 08 2A */	fadds f0, f0, f1
/* 80B09708  FC 00 00 1E */	fctiwz f0, f0
/* 80B0970C  D8 01 00 E8 */	stfd f0, 0xe8(r1)
/* 80B09710  80 01 00 EC */	lwz r0, 0xec(r1)
/* 80B09714  90 1F 06 B0 */	stw r0, 0x6b0(r31)
/* 80B09718  C0 1F 06 78 */	lfs f0, 0x678(r31)
/* 80B0971C  FC 00 00 50 */	fneg f0, f0
/* 80B09720  D0 1F 06 78 */	stfs f0, 0x678(r31)
lbl_80B09724:
/* 80B09724  80 1F 06 B4 */	lwz r0, 0x6b4(r31)
/* 80B09728  2C 00 00 00 */	cmpwi r0, 0
/* 80B0972C  40 82 02 A0 */	bne lbl_80B099CC
/* 80B09730  7F E3 FB 78 */	mr r3, r31
/* 80B09734  38 80 00 06 */	li r4, 6
/* 80B09738  38 A0 00 02 */	li r5, 2
/* 80B0973C  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 80B09740  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80B09744  4B FF 7D 55 */	bl setBck__10daNPC_TK_cFiUcff
/* 80B09748  38 00 00 3C */	li r0, 0x3c
/* 80B0974C  90 1F 06 B0 */	stw r0, 0x6b0(r31)
/* 80B09750  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80B09754  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80B09758  38 00 00 11 */	li r0, 0x11
/* 80B0975C  98 1F 06 C5 */	stb r0, 0x6c5(r31)
/* 80B09760  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80B09764  D0 1F 06 78 */	stfs f0, 0x678(r31)
/* 80B09768  48 00 02 64 */	b lbl_80B099CC
lbl_80B0976C:
/* 80B0976C  38 7F 06 78 */	addi r3, r31, 0x678
/* 80B09770  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 80B09774  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80B09778  4B 76 6F C8 */	b cLib_chaseF__FPfff
/* 80B0977C  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80B09780  38 80 A0 00 */	li r4, -24576
/* 80B09784  38 A0 00 08 */	li r5, 8
/* 80B09788  38 C0 02 00 */	li r6, 0x200
/* 80B0978C  38 E0 00 10 */	li r7, 0x10
/* 80B09790  4B 76 6D B0 */	b cLib_addCalcAngleS__FPsssss
/* 80B09794  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80B09798  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 80B0979C  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80B097A0  7C 00 00 D0 */	neg r0, r0
/* 80B097A4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B097A8  7C 64 02 14 */	add r3, r4, r0
/* 80B097AC  C0 23 00 04 */	lfs f1, 4(r3)
/* 80B097B0  C0 1F 06 78 */	lfs f0, 0x678(r31)
/* 80B097B4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80B097B8  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80B097BC  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80B097C0  7C 00 00 D0 */	neg r0, r0
/* 80B097C4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B097C8  7C 24 04 2E */	lfsx f1, r4, r0
/* 80B097CC  C0 1F 06 78 */	lfs f0, 0x678(r31)
/* 80B097D0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80B097D4  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80B097D8  80 1F 06 B0 */	lwz r0, 0x6b0(r31)
/* 80B097DC  2C 00 00 00 */	cmpwi r0, 0
/* 80B097E0  40 82 01 EC */	bne lbl_80B099CC
/* 80B097E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B097E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B097EC  88 9F 06 EA */	lbz r4, 0x6ea(r31)
/* 80B097F0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80B097F4  7C 05 07 74 */	extsb r5, r0
/* 80B097F8  4B 52 BA 08 */	b onSwitch__10dSv_info_cFii
/* 80B097FC  C0 1F 06 FC */	lfs f0, 0x6fc(r31)
/* 80B09800  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80B09804  C0 1F 07 00 */	lfs f0, 0x700(r31)
/* 80B09808  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80B0980C  C0 1F 07 04 */	lfs f0, 0x704(r31)
/* 80B09810  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80B09814  C0 1F 06 F0 */	lfs f0, 0x6f0(r31)
/* 80B09818  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80B0981C  C0 1F 06 F4 */	lfs f0, 0x6f4(r31)
/* 80B09820  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80B09824  C0 1F 06 F8 */	lfs f0, 0x6f8(r31)
/* 80B09828  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80B0982C  7F A3 EB 78 */	mr r3, r29
/* 80B09830  38 81 00 54 */	addi r4, r1, 0x54
/* 80B09834  38 A1 00 48 */	addi r5, r1, 0x48
/* 80B09838  4B 67 73 E0 */	b Reset__9dCamera_cF4cXyz4cXyz
/* 80B0983C  7F A3 EB 78 */	mr r3, r29
/* 80B09840  4B 65 7C 6C */	b Start__9dCamera_cFv
/* 80B09844  7F A3 EB 78 */	mr r3, r29
/* 80B09848  38 80 00 00 */	li r4, 0
/* 80B0984C  4B 65 97 C0 */	b SetTrimSize__9dCamera_cFl
/* 80B09850  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B09854  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B09858  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80B0985C  4B 53 8C 0C */	b reset__14dEvt_control_cFv
/* 80B09860  38 00 00 02 */	li r0, 2
/* 80B09864  90 1F 06 98 */	stw r0, 0x698(r31)
/* 80B09868  7F E3 FB 78 */	mr r3, r31
/* 80B0986C  38 80 00 04 */	li r4, 4
/* 80B09870  4B FF 80 09 */	bl setActionMode__10daNPC_TK_cFi
/* 80B09874  48 00 01 58 */	b lbl_80B099CC
lbl_80B09878:
/* 80B09878  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 80B0987C  C0 1F 06 78 */	lfs f0, 0x678(r31)
/* 80B09880  EC 01 00 2A */	fadds f0, f1, f0
/* 80B09884  D0 1F 07 14 */	stfs f0, 0x714(r31)
/* 80B09888  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80B0988C  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 80B09890  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80B09894  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 80B09898  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80B0989C  38 61 00 C0 */	addi r3, r1, 0xc0
/* 80B098A0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80B098A4  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80B098A8  38 C1 00 CC */	addi r6, r1, 0xcc
/* 80B098AC  4B 76 75 14 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80B098B0  38 7F 06 FC */	addi r3, r31, 0x6fc
/* 80B098B4  38 81 00 C0 */	addi r4, r1, 0xc0
/* 80B098B8  C0 3E 01 68 */	lfs f1, 0x168(r30)
/* 80B098BC  C0 5F 07 14 */	lfs f2, 0x714(r31)
/* 80B098C0  4B 76 68 B8 */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80B098C4  38 7F 06 78 */	addi r3, r31, 0x678
/* 80B098C8  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 80B098CC  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80B098D0  4B 76 6E 70 */	b cLib_chaseF__FPfff
/* 80B098D4  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80B098D8  38 80 A0 00 */	li r4, -24576
/* 80B098DC  38 A0 00 08 */	li r5, 8
/* 80B098E0  38 C0 02 00 */	li r6, 0x200
/* 80B098E4  38 E0 00 10 */	li r7, 0x10
/* 80B098E8  4B 76 6C 58 */	b cLib_addCalcAngleS__FPsssss
/* 80B098EC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80B098F0  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 80B098F4  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80B098F8  7C 00 00 D0 */	neg r0, r0
/* 80B098FC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B09900  7C 64 02 14 */	add r3, r4, r0
/* 80B09904  C0 23 00 04 */	lfs f1, 4(r3)
/* 80B09908  C0 1F 06 78 */	lfs f0, 0x678(r31)
/* 80B0990C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80B09910  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80B09914  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80B09918  7C 00 00 D0 */	neg r0, r0
/* 80B0991C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B09920  7C 24 04 2E */	lfsx f1, r4, r0
/* 80B09924  C0 1F 06 78 */	lfs f0, 0x678(r31)
/* 80B09928  EC 00 00 72 */	fmuls f0, f0, f1
/* 80B0992C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80B09930  80 1F 06 B0 */	lwz r0, 0x6b0(r31)
/* 80B09934  2C 00 00 00 */	cmpwi r0, 0
/* 80B09938  40 82 00 94 */	bne lbl_80B099CC
/* 80B0993C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B09940  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B09944  88 9F 06 EA */	lbz r4, 0x6ea(r31)
/* 80B09948  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80B0994C  7C 05 07 74 */	extsb r5, r0
/* 80B09950  4B 52 B8 B0 */	b onSwitch__10dSv_info_cFii
/* 80B09954  C0 1F 06 FC */	lfs f0, 0x6fc(r31)
/* 80B09958  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B0995C  C0 1F 07 00 */	lfs f0, 0x700(r31)
/* 80B09960  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B09964  C0 1F 07 04 */	lfs f0, 0x704(r31)
/* 80B09968  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B0996C  C0 1F 06 F0 */	lfs f0, 0x6f0(r31)
/* 80B09970  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B09974  C0 1F 06 F4 */	lfs f0, 0x6f4(r31)
/* 80B09978  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B0997C  C0 1F 06 F8 */	lfs f0, 0x6f8(r31)
/* 80B09980  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B09984  7F A3 EB 78 */	mr r3, r29
/* 80B09988  38 81 00 3C */	addi r4, r1, 0x3c
/* 80B0998C  38 A1 00 30 */	addi r5, r1, 0x30
/* 80B09990  4B 67 72 88 */	b Reset__9dCamera_cF4cXyz4cXyz
/* 80B09994  7F A3 EB 78 */	mr r3, r29
/* 80B09998  4B 65 7B 14 */	b Start__9dCamera_cFv
/* 80B0999C  7F A3 EB 78 */	mr r3, r29
/* 80B099A0  38 80 00 00 */	li r4, 0
/* 80B099A4  4B 65 96 68 */	b SetTrimSize__9dCamera_cFl
/* 80B099A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B099AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B099B0  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80B099B4  4B 53 8A B4 */	b reset__14dEvt_control_cFv
/* 80B099B8  38 00 00 02 */	li r0, 2
/* 80B099BC  90 1F 06 98 */	stw r0, 0x698(r31)
/* 80B099C0  7F E3 FB 78 */	mr r3, r31
/* 80B099C4  38 80 00 04 */	li r4, 4
/* 80B099C8  4B FF 7E B1 */	bl setActionMode__10daNPC_TK_cFi
lbl_80B099CC:
/* 80B099CC  C0 1F 06 FC */	lfs f0, 0x6fc(r31)
/* 80B099D0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B099D4  C0 1F 07 00 */	lfs f0, 0x700(r31)
/* 80B099D8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B099DC  C0 1F 07 04 */	lfs f0, 0x704(r31)
/* 80B099E0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B099E4  C0 1F 06 F0 */	lfs f0, 0x6f0(r31)
/* 80B099E8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B099EC  C0 1F 06 F4 */	lfs f0, 0x6f4(r31)
/* 80B099F0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B099F4  C0 1F 06 F8 */	lfs f0, 0x6f8(r31)
/* 80B099F8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B099FC  7F A3 EB 78 */	mr r3, r29
/* 80B09A00  38 81 00 24 */	addi r4, r1, 0x24
/* 80B09A04  38 A1 00 18 */	addi r5, r1, 0x18
/* 80B09A08  C0 3F 07 08 */	lfs f1, 0x708(r31)
/* 80B09A0C  38 C0 00 00 */	li r6, 0
/* 80B09A10  4B 67 70 D0 */	b Set__9dCamera_cF4cXyz4cXyzfs
lbl_80B09A14:
/* 80B09A14  E3 E1 01 18 */	psq_l f31, 280(r1), 0, 0 /* qr0 */
/* 80B09A18  CB E1 01 10 */	lfd f31, 0x110(r1)
/* 80B09A1C  E3 C1 01 08 */	psq_l f30, 264(r1), 0, 0 /* qr0 */
/* 80B09A20  CB C1 01 00 */	lfd f30, 0x100(r1)
/* 80B09A24  39 61 01 00 */	addi r11, r1, 0x100
/* 80B09A28  4B 85 87 FC */	b _restgpr_28
/* 80B09A2C  80 01 01 24 */	lwz r0, 0x124(r1)
/* 80B09A30  7C 08 03 A6 */	mtlr r0
/* 80B09A34  38 21 01 20 */	addi r1, r1, 0x120
/* 80B09A38  4E 80 00 20 */	blr 
