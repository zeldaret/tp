lbl_806D545C:
/* 806D545C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806D5460  7C 08 02 A6 */	mflr r0
/* 806D5464  90 01 00 34 */	stw r0, 0x34(r1)
/* 806D5468  39 61 00 30 */	addi r11, r1, 0x30
/* 806D546C  4B C8 CD 6C */	b _savegpr_28
/* 806D5470  7C 7D 1B 78 */	mr r29, r3
/* 806D5474  3C 80 80 6D */	lis r4, lit_3906@ha
/* 806D5478  3B E4 79 A0 */	addi r31, r4, lit_3906@l
/* 806D547C  80 03 0A 3C */	lwz r0, 0xa3c(r3)
/* 806D5480  2C 00 00 00 */	cmpwi r0, 0
/* 806D5484  40 82 00 8C */	bne lbl_806D5510
/* 806D5488  38 00 00 01 */	li r0, 1
/* 806D548C  98 1D 0A 69 */	stb r0, 0xa69(r29)
/* 806D5490  3C 60 80 6D */	lis r3, stringBase0@ha
/* 806D5494  38 63 7A F0 */	addi r3, r3, stringBase0@l
/* 806D5498  38 80 00 08 */	li r4, 8
/* 806D549C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806D54A0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806D54A4  3C A5 00 02 */	addis r5, r5, 2
/* 806D54A8  38 C0 00 80 */	li r6, 0x80
/* 806D54AC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806D54B0  4B 96 6E 3C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806D54B4  7C 64 1B 78 */	mr r4, r3
/* 806D54B8  80 7D 09 64 */	lwz r3, 0x964(r29)
/* 806D54BC  38 A0 00 02 */	li r5, 2
/* 806D54C0  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 806D54C4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806D54C8  C0 7F 00 04 */	lfs f3, 4(r31)
/* 806D54CC  C0 9F 00 44 */	lfs f4, 0x44(r31)
/* 806D54D0  4B 93 B9 A0 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806D54D4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806D54D8  D0 1D 0A 4C */	stfs f0, 0xa4c(r29)
/* 806D54DC  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 806D54E0  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 806D54E4  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 806D54E8  D0 1D 05 34 */	stfs f0, 0x534(r29)
/* 806D54EC  38 00 00 00 */	li r0, 0
/* 806D54F0  98 1D 0A 6E */	stb r0, 0xa6e(r29)
/* 806D54F4  98 1D 0A 6D */	stb r0, 0xa6d(r29)
/* 806D54F8  38 00 04 00 */	li r0, 0x400
/* 806D54FC  90 1D 08 18 */	stw r0, 0x818(r29)
/* 806D5500  80 7D 0A 3C */	lwz r3, 0xa3c(r29)
/* 806D5504  38 03 00 01 */	addi r0, r3, 1
/* 806D5508  90 1D 0A 3C */	stw r0, 0xa3c(r29)
/* 806D550C  48 00 02 68 */	b lbl_806D5774
lbl_806D5510:
/* 806D5510  2C 00 FF FF */	cmpwi r0, -1
/* 806D5514  41 82 02 60 */	beq lbl_806D5774
/* 806D5518  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806D551C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806D5520  83 C4 5D AC */	lwz r30, 0x5dac(r4)
/* 806D5524  38 9D 07 CC */	addi r4, r29, 0x7cc
/* 806D5528  4B 94 51 A4 */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 806D552C  38 7D 05 F4 */	addi r3, r29, 0x5f4
/* 806D5530  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806D5534  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806D5538  38 84 0F 38 */	addi r4, r4, 0xf38
/* 806D553C  4B 9A 15 70 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 806D5540  7F A3 EB 78 */	mr r3, r29
/* 806D5544  4B FF F7 D9 */	bl chaseCheck__8daE_GM_cFv
/* 806D5548  2C 03 00 00 */	cmpwi r3, 0
/* 806D554C  40 82 00 34 */	bne lbl_806D5580
/* 806D5550  3C 60 80 6D */	lis r3, lit_5581@ha
/* 806D5554  38 83 7D 18 */	addi r4, r3, lit_5581@l
/* 806D5558  80 64 00 00 */	lwz r3, 0(r4)
/* 806D555C  80 04 00 04 */	lwz r0, 4(r4)
/* 806D5560  90 61 00 0C */	stw r3, 0xc(r1)
/* 806D5564  90 01 00 10 */	stw r0, 0x10(r1)
/* 806D5568  80 04 00 08 */	lwz r0, 8(r4)
/* 806D556C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806D5570  7F A3 EB 78 */	mr r3, r29
/* 806D5574  38 81 00 0C */	addi r4, r1, 0xc
/* 806D5578  4B FF BD 51 */	bl setAction__8daE_GM_cFM8daE_GM_cFPCvPv_v
/* 806D557C  48 00 01 F8 */	b lbl_806D5774
lbl_806D5580:
/* 806D5580  88 1D 0A 6D */	lbz r0, 0xa6d(r29)
/* 806D5584  28 00 00 00 */	cmplwi r0, 0
/* 806D5588  40 82 00 24 */	bne lbl_806D55AC
/* 806D558C  38 00 00 1E */	li r0, 0x1e
/* 806D5590  98 1D 0A 6D */	stb r0, 0xa6d(r29)
/* 806D5594  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 806D5598  D0 1D 04 A8 */	stfs f0, 0x4a8(r29)
/* 806D559C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 806D55A0  D0 1D 04 AC */	stfs f0, 0x4ac(r29)
/* 806D55A4  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 806D55A8  D0 1D 04 B0 */	stfs f0, 0x4b0(r29)
lbl_806D55AC:
/* 806D55AC  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 806D55B0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 806D55B4  4B B9 B6 50 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 806D55B8  7C 7C 1B 78 */	mr r28, r3
/* 806D55BC  7F 83 07 34 */	extsh r3, r28
/* 806D55C0  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 806D55C4  7C 63 00 50 */	subf r3, r3, r0
/* 806D55C8  4B C8 FB 08 */	b abs
/* 806D55CC  2C 03 20 00 */	cmpwi r3, 0x2000
/* 806D55D0  40 80 00 3C */	bge lbl_806D560C
/* 806D55D4  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 806D55D8  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 806D55DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806D55E0  40 81 00 18 */	ble lbl_806D55F8
/* 806D55E4  3C 60 80 6D */	lis r3, l_HIO@ha
/* 806D55E8  38 63 7E C4 */	addi r3, r3, l_HIO@l
/* 806D55EC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806D55F0  D0 1D 0A 4C */	stfs f0, 0xa4c(r29)
/* 806D55F4  48 00 00 20 */	b lbl_806D5614
lbl_806D55F8:
/* 806D55F8  3C 60 80 6D */	lis r3, l_HIO@ha
/* 806D55FC  38 63 7E C4 */	addi r3, r3, l_HIO@l
/* 806D5600  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806D5604  D0 1D 0A 4C */	stfs f0, 0xa4c(r29)
/* 806D5608  48 00 00 0C */	b lbl_806D5614
lbl_806D560C:
/* 806D560C  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 806D5610  D0 1D 0A 4C */	stfs f0, 0xa4c(r29)
lbl_806D5614:
/* 806D5614  88 1D 0A 6C */	lbz r0, 0xa6c(r29)
/* 806D5618  28 00 00 00 */	cmplwi r0, 0
/* 806D561C  40 82 00 58 */	bne lbl_806D5674
/* 806D5620  A8 1E 05 6C */	lha r0, 0x56c(r30)
/* 806D5624  7C 00 07 35 */	extsh. r0, r0
/* 806D5628  40 82 00 20 */	bne lbl_806D5648
/* 806D562C  88 1D 0A 72 */	lbz r0, 0xa72(r29)
/* 806D5630  28 00 00 00 */	cmplwi r0, 0
/* 806D5634  40 82 00 14 */	bne lbl_806D5648
/* 806D5638  3C 60 80 6D */	lis r3, struct_806D7F1C+0x0@ha
/* 806D563C  88 03 7F 1C */	lbz r0, struct_806D7F1C+0x0@l(r3)
/* 806D5640  28 00 00 00 */	cmplwi r0, 0
/* 806D5644  41 82 00 2C */	beq lbl_806D5670
lbl_806D5648:
/* 806D5648  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 806D564C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 806D5650  4B B9 B5 B4 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 806D5654  88 1D 0A 73 */	lbz r0, 0xa73(r29)
/* 806D5658  54 00 FF 7C */	rlwinm r0, r0, 0x1f, 0x1d, 0x1e
/* 806D565C  38 9F 00 88 */	addi r4, r31, 0x88
/* 806D5660  7C 04 02 AE */	lhax r0, r4, r0
/* 806D5664  7C 00 1A 14 */	add r0, r0, r3
/* 806D5668  B0 1D 0A 1E */	sth r0, 0xa1e(r29)
/* 806D566C  48 00 00 08 */	b lbl_806D5674
lbl_806D5670:
/* 806D5670  B3 9D 0A 1E */	sth r28, 0xa1e(r29)
lbl_806D5674:
/* 806D5674  80 1D 05 C4 */	lwz r0, 0x5c4(r29)
/* 806D5678  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 806D567C  41 82 00 2C */	beq lbl_806D56A8
/* 806D5680  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 806D5684  4B B9 22 D0 */	b cM_rndF__Ff
/* 806D5688  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 806D568C  EC 00 08 2A */	fadds f0, f0, f1
/* 806D5690  FC 00 00 1E */	fctiwz f0, f0
/* 806D5694  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 806D5698  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 806D569C  98 1D 0A 6C */	stb r0, 0xa6c(r29)
/* 806D56A0  A8 1D 05 F0 */	lha r0, 0x5f0(r29)
/* 806D56A4  B0 1D 0A 1E */	sth r0, 0xa1e(r29)
lbl_806D56A8:
/* 806D56A8  38 7D 05 2C */	addi r3, r29, 0x52c
/* 806D56AC  C0 3D 0A 4C */	lfs f1, 0xa4c(r29)
/* 806D56B0  C0 5F 00 BC */	lfs f2, 0xbc(r31)
/* 806D56B4  4B B9 B0 8C */	b cLib_chaseF__FPfff
/* 806D56B8  38 7D 04 DE */	addi r3, r29, 0x4de
/* 806D56BC  A8 9D 0A 1E */	lha r4, 0xa1e(r29)
/* 806D56C0  38 A0 00 20 */	li r5, 0x20
/* 806D56C4  38 C0 04 00 */	li r6, 0x400
/* 806D56C8  38 E0 01 00 */	li r7, 0x100
/* 806D56CC  4B B9 AE 74 */	b cLib_addCalcAngleS__FPsssss
/* 806D56D0  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 806D56D4  38 80 00 00 */	li r4, 0
/* 806D56D8  38 A0 00 04 */	li r5, 4
/* 806D56DC  38 C0 40 00 */	li r6, 0x4000
/* 806D56E0  38 E0 10 00 */	li r7, 0x1000
/* 806D56E4  4B B9 AE 5C */	b cLib_addCalcAngleS__FPsssss
/* 806D56E8  38 7D 04 E0 */	addi r3, r29, 0x4e0
/* 806D56EC  38 80 00 00 */	li r4, 0
/* 806D56F0  38 A0 00 04 */	li r5, 4
/* 806D56F4  38 C0 40 00 */	li r6, 0x4000
/* 806D56F8  38 E0 10 00 */	li r7, 0x1000
/* 806D56FC  4B B9 AE 44 */	b cLib_addCalcAngleS__FPsssss
/* 806D5700  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 806D5704  C0 3F 01 24 */	lfs f1, 0x124(r31)
/* 806D5708  EC 00 08 24 */	fdivs f0, f0, f1
/* 806D570C  80 7D 09 64 */	lwz r3, 0x964(r29)
/* 806D5710  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 806D5714  88 7D 0A 6E */	lbz r3, 0xa6e(r29)
/* 806D5718  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 806D571C  EC 00 08 24 */	fdivs f0, f0, f1
/* 806D5720  FC 00 00 1E */	fctiwz f0, f0
/* 806D5724  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 806D5728  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 806D572C  7C 03 02 14 */	add r0, r3, r0
/* 806D5730  98 1D 0A 6E */	stb r0, 0xa6e(r29)
/* 806D5734  88 1D 0A 6E */	lbz r0, 0xa6e(r29)
/* 806D5738  28 00 00 04 */	cmplwi r0, 4
/* 806D573C  41 80 00 38 */	blt lbl_806D5774
/* 806D5740  38 00 00 00 */	li r0, 0
/* 806D5744  98 1D 0A 6E */	stb r0, 0xa6e(r29)
/* 806D5748  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007044D@ha */
/* 806D574C  38 03 04 4D */	addi r0, r3, 0x044D /* 0x0007044D@l */
/* 806D5750  90 01 00 08 */	stw r0, 8(r1)
/* 806D5754  38 7D 09 6C */	addi r3, r29, 0x96c
/* 806D5758  38 81 00 08 */	addi r4, r1, 8
/* 806D575C  38 A0 00 00 */	li r5, 0
/* 806D5760  38 C0 FF FF */	li r6, -1
/* 806D5764  81 9D 09 6C */	lwz r12, 0x96c(r29)
/* 806D5768  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806D576C  7D 89 03 A6 */	mtctr r12
/* 806D5770  4E 80 04 21 */	bctrl 
lbl_806D5774:
/* 806D5774  39 61 00 30 */	addi r11, r1, 0x30
/* 806D5778  4B C8 CA AC */	b _restgpr_28
/* 806D577C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806D5780  7C 08 03 A6 */	mtlr r0
/* 806D5784  38 21 00 30 */	addi r1, r1, 0x30
/* 806D5788  4E 80 00 20 */	blr 
