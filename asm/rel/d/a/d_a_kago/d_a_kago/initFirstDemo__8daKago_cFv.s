lbl_8084FB50:
/* 8084FB50  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 8084FB54  7C 08 02 A6 */	mflr r0
/* 8084FB58  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8084FB5C  39 61 00 D0 */	addi r11, r1, 0xd0
/* 8084FB60  4B B1 26 74 */	b _savegpr_27
/* 8084FB64  7C 7B 1B 78 */	mr r27, r3
/* 8084FB68  3C 60 80 85 */	lis r3, lit_3929@ha
/* 8084FB6C  3B E3 4B 04 */	addi r31, r3, lit_3929@l
/* 8084FB70  4B 93 1A D0 */	b dCam_getBody__Fv
/* 8084FB74  7C 7C 1B 78 */	mr r28, r3
/* 8084FB78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8084FB7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8084FB80  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 8084FB84  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8084FB88  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 8084FB8C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8084FB90  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8084FB94  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8084FB98  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8084FB9C  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha
/* 8084FBA0  83 A3 10 18 */	lwz r29, m_midnaActor__9daPy_py_c@l(r3)
/* 8084FBA4  28 1D 00 00 */	cmplwi r29, 0
/* 8084FBA8  41 82 00 1C */	beq lbl_8084FBC4
/* 8084FBAC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8084FBB0  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8084FBB4  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8084FBB8  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8084FBBC  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8084FBC0  D0 01 00 94 */	stfs f0, 0x94(r1)
lbl_8084FBC4:
/* 8084FBC4  80 1B 07 48 */	lwz r0, 0x748(r27)
/* 8084FBC8  28 00 00 08 */	cmplwi r0, 8
/* 8084FBCC  41 81 07 90 */	bgt lbl_8085035C
/* 8084FBD0  3C 60 80 85 */	lis r3, lit_6560@ha
/* 8084FBD4  38 63 4E 10 */	addi r3, r3, lit_6560@l
/* 8084FBD8  54 00 10 3A */	slwi r0, r0, 2
/* 8084FBDC  7C 03 00 2E */	lwzx r0, r3, r0
/* 8084FBE0  7C 09 03 A6 */	mtctr r0
/* 8084FBE4  4E 80 04 20 */	bctr 
lbl_8084FBE8:
/* 8084FBE8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8084FBEC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8084FBF0  80 63 00 00 */	lwz r3, 0(r3)
/* 8084FBF4  38 63 04 C4 */	addi r3, r3, 0x4c4
/* 8084FBF8  80 9B 07 60 */	lwz r4, 0x760(r27)
/* 8084FBFC  4B A6 65 EC */	b setDemoName__11Z2StatusMgrFPc
/* 8084FC00  38 00 F8 00 */	li r0, -2048
/* 8084FC04  B0 1B 07 18 */	sth r0, 0x718(r27)
/* 8084FC08  38 00 00 03 */	li r0, 3
/* 8084FC0C  B0 1E 06 04 */	sth r0, 0x604(r30)
/* 8084FC10  38 60 00 00 */	li r3, 0
/* 8084FC14  90 7E 06 0C */	stw r3, 0x60c(r30)
/* 8084FC18  38 00 00 17 */	li r0, 0x17
/* 8084FC1C  90 1E 06 14 */	stw r0, 0x614(r30)
/* 8084FC20  90 7E 06 0C */	stw r3, 0x60c(r30)
/* 8084FC24  90 7E 06 10 */	stw r3, 0x610(r30)
/* 8084FC28  B0 7E 06 0A */	sth r3, 0x60a(r30)
/* 8084FC2C  C0 1F 01 54 */	lfs f0, 0x154(r31)
/* 8084FC30  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 8084FC34  C0 1F 01 58 */	lfs f0, 0x158(r31)
/* 8084FC38  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8084FC3C  C0 1F 01 5C */	lfs f0, 0x15c(r31)
/* 8084FC40  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8084FC44  C0 1F 01 60 */	lfs f0, 0x160(r31)
/* 8084FC48  D0 1B 06 A4 */	stfs f0, 0x6a4(r27)
/* 8084FC4C  C0 1F 01 64 */	lfs f0, 0x164(r31)
/* 8084FC50  D0 1B 06 A8 */	stfs f0, 0x6a8(r27)
/* 8084FC54  C0 1F 01 68 */	lfs f0, 0x168(r31)
/* 8084FC58  D0 1B 06 AC */	stfs f0, 0x6ac(r27)
/* 8084FC5C  38 61 00 98 */	addi r3, r1, 0x98
/* 8084FC60  38 9B 06 A4 */	addi r4, r27, 0x6a4
/* 8084FC64  4B A2 0F A0 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 8084FC68  B0 7B 04 DE */	sth r3, 0x4de(r27)
/* 8084FC6C  B0 7B 04 E6 */	sth r3, 0x4e6(r27)
/* 8084FC70  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 8084FC74  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8084FC78  C0 1F 01 40 */	lfs f0, 0x140(r31)
/* 8084FC7C  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8084FC80  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 8084FC84  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 8084FC88  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 8084FC8C  38 81 00 98 */	addi r4, r1, 0x98
/* 8084FC90  A8 BB 04 E6 */	lha r5, 0x4e6(r27)
/* 8084FC94  38 C1 00 A4 */	addi r6, r1, 0xa4
/* 8084FC98  4B A2 11 28 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 8084FC9C  38 61 00 98 */	addi r3, r1, 0x98
/* 8084FCA0  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 8084FCA4  4B A2 0F 60 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 8084FCA8  7C 65 1B 78 */	mr r5, r3
/* 8084FCAC  7F C3 F3 78 */	mr r3, r30
/* 8084FCB0  38 81 00 98 */	addi r4, r1, 0x98
/* 8084FCB4  38 C0 00 00 */	li r6, 0
/* 8084FCB8  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8084FCBC  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8084FCC0  7D 89 03 A6 */	mtctr r12
/* 8084FCC4  4E 80 04 21 */	bctrl 
/* 8084FCC8  28 1D 00 00 */	cmplwi r29, 0
/* 8084FCCC  41 82 00 34 */	beq lbl_8084FD00
/* 8084FCD0  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 8084FCD4  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 8084FCD8  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 8084FCDC  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 8084FCE0  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 8084FCE4  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 8084FCE8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8084FCEC  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8084FCF0  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8084FCF4  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8084FCF8  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8084FCFC  D0 01 00 94 */	stfs f0, 0x94(r1)
lbl_8084FD00:
/* 8084FD00  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 8084FD04  D0 3B 06 80 */	stfs f1, 0x680(r27)
/* 8084FD08  D0 3B 06 84 */	stfs f1, 0x684(r27)
/* 8084FD0C  D0 3B 06 88 */	stfs f1, 0x688(r27)
/* 8084FD10  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 8084FD14  D0 1B 06 8C */	stfs f0, 0x68c(r27)
/* 8084FD18  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 8084FD1C  D0 1B 06 90 */	stfs f0, 0x690(r27)
/* 8084FD20  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 8084FD24  D0 1B 06 94 */	stfs f0, 0x694(r27)
/* 8084FD28  38 00 30 00 */	li r0, 0x3000
/* 8084FD2C  B0 1B 06 BC */	sth r0, 0x6bc(r27)
/* 8084FD30  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8084FD34  D0 1B 06 CC */	stfs f0, 0x6cc(r27)
/* 8084FD38  C0 1F 01 40 */	lfs f0, 0x140(r31)
/* 8084FD3C  D0 1B 06 D0 */	stfs f0, 0x6d0(r27)
/* 8084FD40  C0 5B 06 CC */	lfs f2, 0x6cc(r27)
/* 8084FD44  C0 1B 06 D0 */	lfs f0, 0x6d0(r27)
/* 8084FD48  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 8084FD4C  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8084FD50  D0 41 00 AC */	stfs f2, 0xac(r1)
/* 8084FD54  38 7B 06 98 */	addi r3, r27, 0x698
/* 8084FD58  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 8084FD5C  A8 BB 04 E6 */	lha r5, 0x4e6(r27)
/* 8084FD60  A8 1B 06 BC */	lha r0, 0x6bc(r27)
/* 8084FD64  7C 05 02 14 */	add r0, r5, r0
/* 8084FD68  7C 05 07 34 */	extsh r5, r0
/* 8084FD6C  38 C1 00 A4 */	addi r6, r1, 0xa4
/* 8084FD70  4B A2 10 50 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 8084FD74  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8084FD78  D0 1B 06 D4 */	stfs f0, 0x6d4(r27)
/* 8084FD7C  C0 1B 06 8C */	lfs f0, 0x68c(r27)
/* 8084FD80  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8084FD84  C0 1B 06 90 */	lfs f0, 0x690(r27)
/* 8084FD88  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8084FD8C  C0 1B 06 94 */	lfs f0, 0x694(r27)
/* 8084FD90  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8084FD94  C0 1B 06 98 */	lfs f0, 0x698(r27)
/* 8084FD98  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8084FD9C  C0 1B 06 9C */	lfs f0, 0x69c(r27)
/* 8084FDA0  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8084FDA4  C0 1B 06 A0 */	lfs f0, 0x6a0(r27)
/* 8084FDA8  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8084FDAC  7F 83 E3 78 */	mr r3, r28
/* 8084FDB0  38 81 00 80 */	addi r4, r1, 0x80
/* 8084FDB4  38 A1 00 74 */	addi r5, r1, 0x74
/* 8084FDB8  C0 3B 06 D4 */	lfs f1, 0x6d4(r27)
/* 8084FDBC  38 C0 00 00 */	li r6, 0
/* 8084FDC0  4B 93 0D 20 */	b Set__9dCamera_cF4cXyz4cXyzfs
/* 8084FDC4  38 00 00 A0 */	li r0, 0xa0
/* 8084FDC8  90 1B 07 28 */	stw r0, 0x728(r27)
/* 8084FDCC  7F 63 DB 78 */	mr r3, r27
/* 8084FDD0  38 80 00 0F */	li r4, 0xf
/* 8084FDD4  38 A0 00 02 */	li r5, 2
/* 8084FDD8  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8084FDDC  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 8084FDE0  4B FF 99 11 */	bl setBck__8daKago_cFiUcff
/* 8084FDE4  38 00 00 00 */	li r0, 0
/* 8084FDE8  98 1B 06 E4 */	stb r0, 0x6e4(r27)
/* 8084FDEC  48 00 05 70 */	b lbl_8085035C
lbl_8084FDF0:
/* 8084FDF0  28 1D 00 00 */	cmplwi r29, 0
/* 8084FDF4  41 82 00 34 */	beq lbl_8084FE28
/* 8084FDF8  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 8084FDFC  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 8084FE00  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 8084FE04  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 8084FE08  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 8084FE0C  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 8084FE10  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8084FE14  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8084FE18  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8084FE1C  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8084FE20  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8084FE24  D0 01 00 94 */	stfs f0, 0x94(r1)
lbl_8084FE28:
/* 8084FE28  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 8084FE2C  D0 1B 06 8C */	stfs f0, 0x68c(r27)
/* 8084FE30  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 8084FE34  D0 1B 06 90 */	stfs f0, 0x690(r27)
/* 8084FE38  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 8084FE3C  D0 1B 06 94 */	stfs f0, 0x694(r27)
/* 8084FE40  38 00 08 00 */	li r0, 0x800
/* 8084FE44  B0 1B 06 BC */	sth r0, 0x6bc(r27)
/* 8084FE48  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8084FE4C  D0 1B 06 CC */	stfs f0, 0x6cc(r27)
/* 8084FE50  C0 3B 06 CC */	lfs f1, 0x6cc(r27)
/* 8084FE54  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 8084FE58  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8084FE5C  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8084FE60  D0 21 00 AC */	stfs f1, 0xac(r1)
/* 8084FE64  38 7B 06 98 */	addi r3, r27, 0x698
/* 8084FE68  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 8084FE6C  A8 BB 04 E6 */	lha r5, 0x4e6(r27)
/* 8084FE70  A8 1B 06 BC */	lha r0, 0x6bc(r27)
/* 8084FE74  7C 05 02 14 */	add r0, r5, r0
/* 8084FE78  7C 05 07 34 */	extsh r5, r0
/* 8084FE7C  38 C1 00 A4 */	addi r6, r1, 0xa4
/* 8084FE80  4B A2 0F 40 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 8084FE84  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8084FE88  D0 1B 06 D4 */	stfs f0, 0x6d4(r27)
/* 8084FE8C  C0 1B 06 8C */	lfs f0, 0x68c(r27)
/* 8084FE90  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8084FE94  C0 1B 06 90 */	lfs f0, 0x690(r27)
/* 8084FE98  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8084FE9C  C0 1B 06 94 */	lfs f0, 0x694(r27)
/* 8084FEA0  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8084FEA4  C0 1B 06 98 */	lfs f0, 0x698(r27)
/* 8084FEA8  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8084FEAC  C0 1B 06 9C */	lfs f0, 0x69c(r27)
/* 8084FEB0  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8084FEB4  C0 1B 06 A0 */	lfs f0, 0x6a0(r27)
/* 8084FEB8  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8084FEBC  7F 83 E3 78 */	mr r3, r28
/* 8084FEC0  38 81 00 68 */	addi r4, r1, 0x68
/* 8084FEC4  38 A1 00 5C */	addi r5, r1, 0x5c
/* 8084FEC8  C0 3B 06 D4 */	lfs f1, 0x6d4(r27)
/* 8084FECC  38 C0 00 00 */	li r6, 0
/* 8084FED0  4B 93 0C 10 */	b Set__9dCamera_cF4cXyz4cXyzfs
/* 8084FED4  38 00 00 50 */	li r0, 0x50
/* 8084FED8  90 1B 07 28 */	stw r0, 0x728(r27)
/* 8084FEDC  48 00 04 80 */	b lbl_8085035C
lbl_8084FEE0:
/* 8084FEE0  38 00 00 3C */	li r0, 0x3c
/* 8084FEE4  90 1B 07 28 */	stw r0, 0x728(r27)
/* 8084FEE8  38 7B 0B 58 */	addi r3, r27, 0xb58
/* 8084FEEC  7F 64 DB 78 */	mr r4, r27
/* 8084FEF0  38 A0 07 D3 */	li r5, 0x7d3
/* 8084FEF4  38 C0 00 00 */	li r6, 0
/* 8084FEF8  38 E0 00 00 */	li r7, 0
/* 8084FEFC  4B 9F A0 94 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 8084FF00  48 00 04 5C */	b lbl_8085035C
lbl_8084FF04:
/* 8084FF04  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 8084FF08  38 81 00 98 */	addi r4, r1, 0x98
/* 8084FF0C  4B A2 0D 68 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 8084FF10  7C 60 07 34 */	extsh r0, r3
/* 8084FF14  7C 00 16 70 */	srawi r0, r0, 2
/* 8084FF18  7C 00 01 94 */	addze r0, r0
/* 8084FF1C  B0 1B 07 18 */	sth r0, 0x718(r27)
/* 8084FF20  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 8084FF24  38 81 00 98 */	addi r4, r1, 0x98
/* 8084FF28  4B A2 0C DC */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 8084FF2C  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 8084FF30  7C 00 18 50 */	subf r0, r0, r3
/* 8084FF34  7C 00 07 34 */	extsh r0, r0
/* 8084FF38  7C 00 16 70 */	srawi r0, r0, 2
/* 8084FF3C  7C 00 01 94 */	addze r0, r0
/* 8084FF40  B0 1B 07 1A */	sth r0, 0x71a(r27)
/* 8084FF44  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8084FF48  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8084FF4C  C0 1F 01 6C */	lfs f0, 0x16c(r31)
/* 8084FF50  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8084FF54  C0 1F 01 4C */	lfs f0, 0x14c(r31)
/* 8084FF58  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 8084FF5C  38 7B 06 98 */	addi r3, r27, 0x698
/* 8084FF60  38 81 00 8C */	addi r4, r1, 0x8c
/* 8084FF64  A8 BB 04 E6 */	lha r5, 0x4e6(r27)
/* 8084FF68  38 C1 00 A4 */	addi r6, r1, 0xa4
/* 8084FF6C  4B A2 0E 54 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 8084FF70  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8084FF74  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 8084FF78  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 8084FF7C  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8084FF80  D0 21 00 AC */	stfs f1, 0xac(r1)
/* 8084FF84  38 7B 06 8C */	addi r3, r27, 0x68c
/* 8084FF88  38 81 00 8C */	addi r4, r1, 0x8c
/* 8084FF8C  A8 BB 04 E6 */	lha r5, 0x4e6(r27)
/* 8084FF90  38 C1 00 A4 */	addi r6, r1, 0xa4
/* 8084FF94  4B A2 0E 2C */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 8084FF98  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8084FF9C  D0 1B 06 D4 */	stfs f0, 0x6d4(r27)
/* 8084FFA0  C0 1B 06 8C */	lfs f0, 0x68c(r27)
/* 8084FFA4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8084FFA8  C0 1B 06 90 */	lfs f0, 0x690(r27)
/* 8084FFAC  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8084FFB0  C0 1B 06 94 */	lfs f0, 0x694(r27)
/* 8084FFB4  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8084FFB8  C0 1B 06 98 */	lfs f0, 0x698(r27)
/* 8084FFBC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8084FFC0  C0 1B 06 9C */	lfs f0, 0x69c(r27)
/* 8084FFC4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8084FFC8  C0 1B 06 A0 */	lfs f0, 0x6a0(r27)
/* 8084FFCC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8084FFD0  7F 83 E3 78 */	mr r3, r28
/* 8084FFD4  38 81 00 50 */	addi r4, r1, 0x50
/* 8084FFD8  38 A1 00 44 */	addi r5, r1, 0x44
/* 8084FFDC  C0 3B 06 D4 */	lfs f1, 0x6d4(r27)
/* 8084FFE0  38 C0 00 00 */	li r6, 0
/* 8084FFE4  4B 93 0A FC */	b Set__9dCamera_cF4cXyz4cXyzfs
/* 8084FFE8  38 61 00 98 */	addi r3, r1, 0x98
/* 8084FFEC  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 8084FFF0  4B A2 0C 14 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 8084FFF4  7C 65 1B 78 */	mr r5, r3
/* 8084FFF8  7F C3 F3 78 */	mr r3, r30
/* 8084FFFC  38 81 00 98 */	addi r4, r1, 0x98
/* 80850000  38 C0 00 00 */	li r6, 0
/* 80850004  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80850008  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8085000C  7D 89 03 A6 */	mtctr r12
/* 80850010  4E 80 04 21 */	bctrl 
/* 80850014  48 00 03 48 */	b lbl_8085035C
lbl_80850018:
/* 80850018  7F 63 DB 78 */	mr r3, r27
/* 8085001C  4B FF AB 25 */	bl setMidnaRideOn__8daKago_cFv
/* 80850020  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 80850024  D0 1B 06 CC */	stfs f0, 0x6cc(r27)
/* 80850028  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 8085002C  38 81 00 98 */	addi r4, r1, 0x98
/* 80850030  4B A2 0B D4 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80850034  B0 7B 06 BC */	sth r3, 0x6bc(r27)
/* 80850038  38 61 00 98 */	addi r3, r1, 0x98
/* 8085003C  4B 7B CD 28 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80850040  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80850044  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80850048  A8 9B 06 BC */	lha r4, 0x6bc(r27)
/* 8085004C  4B 7B C3 E8 */	b mDoMtx_YrotM__FPA4_fs
/* 80850050  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80850054  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 80850058  C0 7B 06 CC */	lfs f3, 0x6cc(r27)
/* 8085005C  4B 7B CD 40 */	b transM__14mDoMtx_stack_cFfff
/* 80850060  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80850064  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80850068  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8085006C  D0 1B 06 A4 */	stfs f0, 0x6a4(r27)
/* 80850070  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80850074  D0 1B 06 A8 */	stfs f0, 0x6a8(r27)
/* 80850078  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8085007C  D0 1B 06 AC */	stfs f0, 0x6ac(r27)
/* 80850080  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80850084  D0 1B 06 F8 */	stfs f0, 0x6f8(r27)
/* 80850088  48 00 02 D4 */	b lbl_8085035C
lbl_8085008C:
/* 8085008C  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 80850090  38 81 00 98 */	addi r4, r1, 0x98
/* 80850094  4B A2 0B 70 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80850098  B0 7B 06 BC */	sth r3, 0x6bc(r27)
/* 8085009C  38 61 00 98 */	addi r3, r1, 0x98
/* 808500A0  4B 7B CC C4 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 808500A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 808500A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 808500AC  A8 9B 06 BC */	lha r4, 0x6bc(r27)
/* 808500B0  4B 7B C3 84 */	b mDoMtx_YrotM__FPA4_fs
/* 808500B4  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 808500B8  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 808500BC  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 808500C0  4B 7B CC DC */	b transM__14mDoMtx_stack_cFfff
/* 808500C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 808500C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 808500CC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 808500D0  D0 1B 06 A4 */	stfs f0, 0x6a4(r27)
/* 808500D4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 808500D8  D0 1B 06 A8 */	stfs f0, 0x6a8(r27)
/* 808500DC  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 808500E0  D0 1B 06 AC */	stfs f0, 0x6ac(r27)
/* 808500E4  48 00 02 78 */	b lbl_8085035C
lbl_808500E8:
/* 808500E8  38 00 00 02 */	li r0, 2
/* 808500EC  B0 1E 06 04 */	sth r0, 0x604(r30)
/* 808500F0  38 00 00 01 */	li r0, 1
/* 808500F4  90 1E 06 14 */	stw r0, 0x614(r30)
/* 808500F8  7F 63 DB 78 */	mr r3, r27
/* 808500FC  4B FF AA 91 */	bl setPlayerRideOn__8daKago_cFv
/* 80850100  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80850104  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80850108  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8085010C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80850110  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80850114  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80850118  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8085011C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80850120  38 80 00 02 */	li r4, 2
/* 80850124  38 A0 00 1F */	li r5, 0x1f
/* 80850128  38 C1 00 38 */	addi r6, r1, 0x38
/* 8085012C  4B 81 F8 F8 */	b StartShock__12dVibration_cFii4cXyz
/* 80850130  38 00 00 96 */	li r0, 0x96
/* 80850134  90 1B 07 28 */	stw r0, 0x728(r27)
/* 80850138  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8085013C  D0 1B 06 CC */	stfs f0, 0x6cc(r27)
/* 80850140  48 00 02 1C */	b lbl_8085035C
lbl_80850144:
/* 80850144  38 00 00 00 */	li r0, 0
/* 80850148  98 1B 06 E8 */	stb r0, 0x6e8(r27)
lbl_8085014C:
/* 8085014C  7F 63 DB 78 */	mr r3, r27
/* 80850150  38 80 00 0F */	li r4, 0xf
/* 80850154  38 A0 00 02 */	li r5, 2
/* 80850158  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8085015C  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80850160  4B FF 95 91 */	bl setBck__8daKago_cFiUcff
/* 80850164  88 1B 06 E8 */	lbz r0, 0x6e8(r27)
/* 80850168  28 00 00 00 */	cmplwi r0, 0
/* 8085016C  41 82 00 F4 */	beq lbl_80850260
/* 80850170  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80850174  80 7B 05 70 */	lwz r3, 0x570(r27)
/* 80850178  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8085017C  C0 1F 01 70 */	lfs f0, 0x170(r31)
/* 80850180  D0 1B 06 A4 */	stfs f0, 0x6a4(r27)
/* 80850184  C0 1F 01 74 */	lfs f0, 0x174(r31)
/* 80850188  D0 1B 06 A8 */	stfs f0, 0x6a8(r27)
/* 8085018C  C0 1F 01 68 */	lfs f0, 0x168(r31)
/* 80850190  D0 1B 06 AC */	stfs f0, 0x6ac(r27)
/* 80850194  C0 1F 01 78 */	lfs f0, 0x178(r31)
/* 80850198  D0 1B 04 D0 */	stfs f0, 0x4d0(r27)
/* 8085019C  C0 1F 01 7C */	lfs f0, 0x17c(r31)
/* 808501A0  D0 1B 04 D4 */	stfs f0, 0x4d4(r27)
/* 808501A4  C0 1F 01 80 */	lfs f0, 0x180(r31)
/* 808501A8  D0 1B 04 D8 */	stfs f0, 0x4d8(r27)
/* 808501AC  38 00 80 00 */	li r0, -32768
/* 808501B0  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 808501B4  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 808501B8  38 00 F0 00 */	li r0, -4096
/* 808501BC  B0 1B 04 DC */	sth r0, 0x4dc(r27)
/* 808501C0  B0 1B 04 E4 */	sth r0, 0x4e4(r27)
/* 808501C4  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 808501C8  D0 1B 06 F8 */	stfs f0, 0x6f8(r27)
/* 808501CC  C0 1F 01 84 */	lfs f0, 0x184(r31)
/* 808501D0  D0 1B 06 98 */	stfs f0, 0x698(r27)
/* 808501D4  C0 1F 01 88 */	lfs f0, 0x188(r31)
/* 808501D8  D0 1B 06 9C */	stfs f0, 0x69c(r27)
/* 808501DC  C0 1F 01 8C */	lfs f0, 0x18c(r31)
/* 808501E0  D0 1B 06 A0 */	stfs f0, 0x6a0(r27)
/* 808501E4  C0 5B 04 D8 */	lfs f2, 0x4d8(r27)
/* 808501E8  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 808501EC  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 808501F0  EC 21 00 2A */	fadds f1, f1, f0
/* 808501F4  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 808501F8  D0 1B 06 8C */	stfs f0, 0x68c(r27)
/* 808501FC  D0 3B 06 90 */	stfs f1, 0x690(r27)
/* 80850200  D0 5B 06 94 */	stfs f2, 0x694(r27)
/* 80850204  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80850208  D0 1B 06 D4 */	stfs f0, 0x6d4(r27)
/* 8085020C  C0 1B 06 8C */	lfs f0, 0x68c(r27)
/* 80850210  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80850214  C0 1B 06 90 */	lfs f0, 0x690(r27)
/* 80850218  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8085021C  C0 1B 06 94 */	lfs f0, 0x694(r27)
/* 80850220  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80850224  C0 1B 06 98 */	lfs f0, 0x698(r27)
/* 80850228  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8085022C  C0 1B 06 9C */	lfs f0, 0x69c(r27)
/* 80850230  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80850234  C0 1B 06 A0 */	lfs f0, 0x6a0(r27)
/* 80850238  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8085023C  7F 83 E3 78 */	mr r3, r28
/* 80850240  38 81 00 2C */	addi r4, r1, 0x2c
/* 80850244  38 A1 00 20 */	addi r5, r1, 0x20
/* 80850248  C0 3B 06 D4 */	lfs f1, 0x6d4(r27)
/* 8085024C  38 C0 00 00 */	li r6, 0
/* 80850250  4B 93 08 90 */	b Set__9dCamera_cF4cXyz4cXyzfs
/* 80850254  38 00 00 C8 */	li r0, 0xc8
/* 80850258  90 1B 07 28 */	stw r0, 0x728(r27)
/* 8085025C  48 00 01 00 */	b lbl_8085035C
lbl_80850260:
/* 80850260  C0 1F 01 60 */	lfs f0, 0x160(r31)
/* 80850264  D0 1B 06 A4 */	stfs f0, 0x6a4(r27)
/* 80850268  C0 1F 01 64 */	lfs f0, 0x164(r31)
/* 8085026C  D0 1B 06 A8 */	stfs f0, 0x6a8(r27)
/* 80850270  C0 1F 01 68 */	lfs f0, 0x168(r31)
/* 80850274  D0 1B 06 AC */	stfs f0, 0x6ac(r27)
/* 80850278  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 8085027C  D0 1B 04 D0 */	stfs f0, 0x4d0(r27)
/* 80850280  C0 1F 01 2C */	lfs f0, 0x12c(r31)
/* 80850284  D0 1B 04 D4 */	stfs f0, 0x4d4(r27)
/* 80850288  C0 1F 01 30 */	lfs f0, 0x130(r31)
/* 8085028C  D0 1B 04 D8 */	stfs f0, 0x4d8(r27)
/* 80850290  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 80850294  38 9B 06 A4 */	addi r4, r27, 0x6a4
/* 80850298  4B A2 09 6C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 8085029C  B0 7B 04 DE */	sth r3, 0x4de(r27)
/* 808502A0  B0 7B 04 E6 */	sth r3, 0x4e6(r27)
/* 808502A4  38 00 E0 00 */	li r0, -8192
/* 808502A8  B0 1B 04 DC */	sth r0, 0x4dc(r27)
/* 808502AC  B0 1B 04 E4 */	sth r0, 0x4e4(r27)
/* 808502B0  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 808502B4  D0 1B 06 F8 */	stfs f0, 0x6f8(r27)
/* 808502B8  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 808502BC  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 808502C0  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 808502C4  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 808502C8  C0 1F 01 90 */	lfs f0, 0x190(r31)
/* 808502CC  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 808502D0  38 7B 06 98 */	addi r3, r27, 0x698
/* 808502D4  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 808502D8  A8 BB 04 E6 */	lha r5, 0x4e6(r27)
/* 808502DC  38 C1 00 A4 */	addi r6, r1, 0xa4
/* 808502E0  4B A2 0A E0 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 808502E4  C0 5B 04 D8 */	lfs f2, 0x4d8(r27)
/* 808502E8  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 808502EC  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 808502F0  EC 21 00 2A */	fadds f1, f1, f0
/* 808502F4  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 808502F8  D0 1B 06 8C */	stfs f0, 0x68c(r27)
/* 808502FC  D0 3B 06 90 */	stfs f1, 0x690(r27)
/* 80850300  D0 5B 06 94 */	stfs f2, 0x694(r27)
/* 80850304  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80850308  D0 1B 06 D4 */	stfs f0, 0x6d4(r27)
/* 8085030C  C0 1B 06 8C */	lfs f0, 0x68c(r27)
/* 80850310  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80850314  C0 1B 06 90 */	lfs f0, 0x690(r27)
/* 80850318  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8085031C  C0 1B 06 94 */	lfs f0, 0x694(r27)
/* 80850320  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80850324  C0 1B 06 98 */	lfs f0, 0x698(r27)
/* 80850328  D0 01 00 08 */	stfs f0, 8(r1)
/* 8085032C  C0 1B 06 9C */	lfs f0, 0x69c(r27)
/* 80850330  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80850334  C0 1B 06 A0 */	lfs f0, 0x6a0(r27)
/* 80850338  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8085033C  7F 83 E3 78 */	mr r3, r28
/* 80850340  38 81 00 14 */	addi r4, r1, 0x14
/* 80850344  38 A1 00 08 */	addi r5, r1, 8
/* 80850348  C0 3B 06 D4 */	lfs f1, 0x6d4(r27)
/* 8085034C  38 C0 00 00 */	li r6, 0
/* 80850350  4B 93 07 90 */	b Set__9dCamera_cF4cXyz4cXyzfs
/* 80850354  38 00 00 C8 */	li r0, 0xc8
/* 80850358  90 1B 07 28 */	stw r0, 0x728(r27)
lbl_8085035C:
/* 8085035C  38 00 00 01 */	li r0, 1
/* 80850360  90 1B 07 4C */	stw r0, 0x74c(r27)
/* 80850364  38 00 00 00 */	li r0, 0
/* 80850368  90 1B 07 44 */	stw r0, 0x744(r27)
/* 8085036C  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80850370  4B B1 1E B0 */	b _restgpr_27
/* 80850374  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80850378  7C 08 03 A6 */	mtlr r0
/* 8085037C  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80850380  4E 80 00 20 */	blr 
