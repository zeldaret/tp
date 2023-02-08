lbl_80B0B284:
/* 80B0B284  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B0B288  7C 08 02 A6 */	mflr r0
/* 80B0B28C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B0B290  39 61 00 30 */	addi r11, r1, 0x30
/* 80B0B294  4B 85 6F 49 */	bl _savegpr_29
/* 80B0B298  7C 7E 1B 78 */	mr r30, r3
/* 80B0B29C  AB E3 04 E6 */	lha r31, 0x4e6(r3)
/* 80B0B2A0  3C 80 80 B1 */	lis r4, lit_4024@ha /* 0x80B0C1F4@ha */
/* 80B0B2A4  C0 04 C1 F4 */	lfs f0, lit_4024@l(r4)  /* 0x80B0C1F4@l */
/* 80B0B2A8  D0 03 06 80 */	stfs f0, 0x680(r3)
/* 80B0B2AC  38 00 00 00 */	li r0, 0
/* 80B0B2B0  98 03 06 C0 */	stb r0, 0x6c0(r3)
/* 80B0B2B4  4B FF FD 51 */	bl checkActionSet__10daNPC_TK_cFv
/* 80B0B2B8  7F C3 F3 78 */	mr r3, r30
/* 80B0B2BC  4B FF F3 59 */	bl calcDemoCamera__10daNPC_TK_cFv
/* 80B0B2C0  38 80 00 00 */	li r4, 0
/* 80B0B2C4  98 9E 06 C1 */	stb r4, 0x6c1(r30)
/* 80B0B2C8  98 9E 07 1A */	stb r4, 0x71a(r30)
/* 80B0B2CC  98 9E 06 AD */	stb r4, 0x6ad(r30)
/* 80B0B2D0  80 1E 06 8C */	lwz r0, 0x68c(r30)
/* 80B0B2D4  28 00 00 0D */	cmplwi r0, 0xd
/* 80B0B2D8  41 81 01 90 */	bgt lbl_80B0B468
/* 80B0B2DC  3C 60 80 B1 */	lis r3, lit_7877@ha /* 0x80B0C49C@ha */
/* 80B0B2E0  38 63 C4 9C */	addi r3, r3, lit_7877@l /* 0x80B0C49C@l */
/* 80B0B2E4  54 00 10 3A */	slwi r0, r0, 2
/* 80B0B2E8  7C 03 00 2E */	lwzx r0, r3, r0
/* 80B0B2EC  7C 09 03 A6 */	mtctr r0
/* 80B0B2F0  4E 80 04 20 */	bctr 
lbl_80B0B2F4:
/* 80B0B2F4  98 9E 06 BC */	stb r4, 0x6bc(r30)
/* 80B0B2F8  7F C3 F3 78 */	mr r3, r30
/* 80B0B2FC  4B FF 6F 59 */	bl executeFly__10daNPC_TK_cFv
/* 80B0B300  48 00 01 68 */	b lbl_80B0B468
lbl_80B0B304:
/* 80B0B304  98 9E 06 BC */	stb r4, 0x6bc(r30)
/* 80B0B308  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 80B0B30C  28 00 00 02 */	cmplwi r0, 2
/* 80B0B310  40 82 00 3C */	bne lbl_80B0B34C
/* 80B0B314  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B0B318  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B0B31C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80B0B320  7F C4 F3 78 */	mr r4, r30
/* 80B0B324  3C A0 80 B1 */	lis r5, d_a_npc_tk__stringBase0@ha /* 0x80B0C3A0@ha */
/* 80B0B328  38 A5 C3 A0 */	addi r5, r5, d_a_npc_tk__stringBase0@l /* 0x80B0C3A0@l */
/* 80B0B32C  38 A5 00 38 */	addi r5, r5, 0x38
/* 80B0B330  4B 53 76 29 */	bl setSkipZev__14dEvt_control_cFPvPc
/* 80B0B334  7F C3 F3 78 */	mr r3, r30
/* 80B0B338  38 80 00 02 */	li r4, 2
/* 80B0B33C  4B FF 65 3D */	bl setActionMode__10daNPC_TK_cFi
/* 80B0B340  7F C3 F3 78 */	mr r3, r30
/* 80B0B344  4B FF 83 15 */	bl executePerch__10daNPC_TK_cFv
/* 80B0B348  48 00 01 20 */	b lbl_80B0B468
lbl_80B0B34C:
/* 80B0B34C  7F C3 F3 78 */	mr r3, r30
/* 80B0B350  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B0B354  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B0B358  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B0B35C  3C A0 80 B1 */	lis r5, d_a_npc_tk__stringBase0@ha /* 0x80B0C3A0@ha */
/* 80B0B360  38 A5 C3 A0 */	addi r5, r5, d_a_npc_tk__stringBase0@l /* 0x80B0C3A0@l */
/* 80B0B364  38 A5 00 42 */	addi r5, r5, 0x42
/* 80B0B368  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80B0B36C  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80B0B370  38 E0 00 00 */	li r7, 0
/* 80B0B374  39 00 00 03 */	li r8, 3
/* 80B0B378  4B 51 01 69 */	bl fopAcM_orderOtherEvent__FP10fopAc_ac_cP10fopAc_ac_cPCcUsUsUs
/* 80B0B37C  48 00 00 EC */	b lbl_80B0B468
lbl_80B0B380:
/* 80B0B380  98 9E 06 BC */	stb r4, 0x6bc(r30)
/* 80B0B384  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 80B0B388  28 00 00 02 */	cmplwi r0, 2
/* 80B0B38C  40 82 00 10 */	bne lbl_80B0B39C
/* 80B0B390  7F C3 F3 78 */	mr r3, r30
/* 80B0B394  4B FF 82 C5 */	bl executePerch__10daNPC_TK_cFv
/* 80B0B398  48 00 00 D0 */	b lbl_80B0B468
lbl_80B0B39C:
/* 80B0B39C  7F C3 F3 78 */	mr r3, r30
/* 80B0B3A0  4B FF 83 B5 */	bl executeHandOn__10daNPC_TK_cFv
/* 80B0B3A4  48 00 00 C4 */	b lbl_80B0B468
lbl_80B0B3A8:
/* 80B0B3A8  38 00 00 01 */	li r0, 1
/* 80B0B3AC  98 1E 06 BC */	stb r0, 0x6bc(r30)
/* 80B0B3B0  7F C3 F3 78 */	mr r3, r30
/* 80B0B3B4  4B FF 86 BD */	bl executeAttack__10daNPC_TK_cFv
/* 80B0B3B8  48 00 00 B0 */	b lbl_80B0B468
lbl_80B0B3BC:
/* 80B0B3BC  38 00 00 01 */	li r0, 1
/* 80B0B3C0  98 1E 06 BC */	stb r0, 0x6bc(r30)
/* 80B0B3C4  7F C3 F3 78 */	mr r3, r30
/* 80B0B3C8  4B FF 94 F5 */	bl executeAway__10daNPC_TK_cFv
/* 80B0B3CC  48 00 00 9C */	b lbl_80B0B468
lbl_80B0B3D0:
/* 80B0B3D0  38 00 00 01 */	li r0, 1
/* 80B0B3D4  98 1E 06 BC */	stb r0, 0x6bc(r30)
/* 80B0B3D8  7F C3 F3 78 */	mr r3, r30
/* 80B0B3DC  4B FF 9C 11 */	bl executeBack__10daNPC_TK_cFv
/* 80B0B3E0  48 00 00 88 */	b lbl_80B0B468
lbl_80B0B3E4:
/* 80B0B3E4  38 00 00 01 */	li r0, 1
/* 80B0B3E8  98 1E 06 BC */	stb r0, 0x6bc(r30)
/* 80B0B3EC  7F C3 F3 78 */	mr r3, r30
/* 80B0B3F0  4B FF A8 8D */	bl executeStayHanjo__10daNPC_TK_cFv
/* 80B0B3F4  48 00 00 74 */	b lbl_80B0B468
lbl_80B0B3F8:
/* 80B0B3F8  38 00 00 01 */	li r0, 1
/* 80B0B3FC  98 1E 06 BC */	stb r0, 0x6bc(r30)
/* 80B0B400  7F C3 F3 78 */	mr r3, r30
/* 80B0B404  4B FF AA C5 */	bl executeAttackLink__10daNPC_TK_cFv
/* 80B0B408  48 00 00 60 */	b lbl_80B0B468
lbl_80B0B40C:
/* 80B0B40C  38 00 00 01 */	li r0, 1
/* 80B0B410  98 1E 06 BC */	stb r0, 0x6bc(r30)
/* 80B0B414  7F C3 F3 78 */	mr r3, r30
/* 80B0B418  4B FF B4 55 */	bl executeBackHanjo__10daNPC_TK_cFv
/* 80B0B41C  48 00 00 4C */	b lbl_80B0B468
lbl_80B0B420:
/* 80B0B420  38 00 00 01 */	li r0, 1
/* 80B0B424  98 1E 06 BC */	stb r0, 0x6bc(r30)
/* 80B0B428  7F C3 F3 78 */	mr r3, r30
/* 80B0B42C  4B FF BE A1 */	bl executeAttackDemo__10daNPC_TK_cFv
/* 80B0B430  48 00 00 38 */	b lbl_80B0B468
lbl_80B0B434:
/* 80B0B434  38 00 00 01 */	li r0, 1
/* 80B0B438  98 1E 06 BC */	stb r0, 0x6bc(r30)
/* 80B0B43C  7F C3 F3 78 */	mr r3, r30
/* 80B0B440  4B FF C1 D1 */	bl executeBackHanjoDemo__10daNPC_TK_cFv
/* 80B0B444  48 00 00 24 */	b lbl_80B0B468
lbl_80B0B448:
/* 80B0B448  7F C3 F3 78 */	mr r3, r30
/* 80B0B44C  4B FF CD 1D */	bl executeWolfEvent__10daNPC_TK_cFv
/* 80B0B450  48 00 00 18 */	b lbl_80B0B468
lbl_80B0B454:
/* 80B0B454  7F C3 F3 78 */	mr r3, r30
/* 80B0B458  4B FF CF 45 */	bl executeWolfPerch__10daNPC_TK_cFv
/* 80B0B45C  48 00 00 0C */	b lbl_80B0B468
lbl_80B0B460:
/* 80B0B460  7F C3 F3 78 */	mr r3, r30
/* 80B0B464  4B FF E5 D9 */	bl executeResistanceDemo__10daNPC_TK_cFv
lbl_80B0B468:
/* 80B0B468  7F C3 F3 78 */	mr r3, r30
/* 80B0B46C  4B FF 6A 89 */	bl setFlySE__10daNPC_TK_cFv
/* 80B0B470  80 1E 06 8C */	lwz r0, 0x68c(r30)
/* 80B0B474  2C 00 00 0D */	cmpwi r0, 0xd
/* 80B0B478  41 82 00 F4 */	beq lbl_80B0B56C
/* 80B0B47C  38 80 00 00 */	li r4, 0
/* 80B0B480  3B A0 00 00 */	li r29, 0
/* 80B0B484  88 1E 06 BD */	lbz r0, 0x6bd(r30)
/* 80B0B488  28 00 00 00 */	cmplwi r0, 0
/* 80B0B48C  41 82 00 C4 */	beq lbl_80B0B550
/* 80B0B490  9B BE 06 BD */	stb r29, 0x6bd(r30)
/* 80B0B494  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80B0B498  C0 5E 04 FC */	lfs f2, 0x4fc(r30)
/* 80B0B49C  4B 75 C1 D9 */	bl cM_atan2s__Fff
/* 80B0B4A0  38 03 C0 00 */	addi r0, r3, -16384
/* 80B0B4A4  7C 04 07 34 */	extsh r4, r0
/* 80B0B4A8  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80B0B4AC  3C 60 80 B1 */	lis r3, lit_4024@ha /* 0x80B0C1F4@ha */
/* 80B0B4B0  C0 03 C1 F4 */	lfs f0, lit_4024@l(r3)  /* 0x80B0C1F4@l */
/* 80B0B4B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B0B4B8  40 81 00 10 */	ble lbl_80B0B4C8
/* 80B0B4BC  2C 04 E0 00 */	cmpwi r4, -8192
/* 80B0B4C0  40 80 00 08 */	bge lbl_80B0B4C8
/* 80B0B4C4  38 80 E0 00 */	li r4, -8192
lbl_80B0B4C8:
/* 80B0B4C8  FC 40 08 90 */	fmr f2, f1
/* 80B0B4CC  3C 60 80 B1 */	lis r3, lit_4005@ha /* 0x80B0C1DC@ha */
/* 80B0B4D0  C0 03 C1 DC */	lfs f0, lit_4005@l(r3)  /* 0x80B0C1DC@l */
/* 80B0B4D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B0B4D8  4C 41 13 82 */	cror 2, 1, 2
/* 80B0B4DC  40 82 00 08 */	bne lbl_80B0B4E4
/* 80B0B4E0  FC 40 00 90 */	fmr f2, f0
lbl_80B0B4E4:
/* 80B0B4E4  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80B0B4E8  7C 00 F8 50 */	subf r0, r0, r31
/* 80B0B4EC  1C 00 00 07 */	mulli r0, r0, 7
/* 80B0B4F0  7C 00 07 34 */	extsh r0, r0
/* 80B0B4F4  3C 60 80 B1 */	lis r3, lit_4525@ha /* 0x80B0C26C@ha */
/* 80B0B4F8  C8 23 C2 6C */	lfd f1, lit_4525@l(r3)  /* 0x80B0C26C@l */
/* 80B0B4FC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B0B500  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B0B504  3C 00 43 30 */	lis r0, 0x4330
/* 80B0B508  90 01 00 08 */	stw r0, 8(r1)
/* 80B0B50C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80B0B510  EC 00 08 28 */	fsubs f0, f0, f1
/* 80B0B514  EC 20 00 B2 */	fmuls f1, f0, f2
/* 80B0B518  3C 60 80 B1 */	lis r3, lit_4005@ha /* 0x80B0C1DC@ha */
/* 80B0B51C  C0 03 C1 DC */	lfs f0, lit_4005@l(r3)  /* 0x80B0C1DC@l */
/* 80B0B520  EC 01 00 24 */	fdivs f0, f1, f0
/* 80B0B524  FC 00 00 1E */	fctiwz f0, f0
/* 80B0B528  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80B0B52C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80B0B530  7F A0 07 34 */	extsh r0, r29
/* 80B0B534  2C 00 E0 00 */	cmpwi r0, -8192
/* 80B0B538  40 80 00 08 */	bge lbl_80B0B540
/* 80B0B53C  3B A0 E0 00 */	li r29, -8192
lbl_80B0B540:
/* 80B0B540  7F A0 07 34 */	extsh r0, r29
/* 80B0B544  2C 00 20 00 */	cmpwi r0, 0x2000
/* 80B0B548  40 81 00 08 */	ble lbl_80B0B550
/* 80B0B54C  3B A0 20 00 */	li r29, 0x2000
lbl_80B0B550:
/* 80B0B550  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80B0B554  38 A0 01 80 */	li r5, 0x180
/* 80B0B558  4B 76 56 39 */	bl cLib_chaseAngleS__FPsss
/* 80B0B55C  38 7E 04 E8 */	addi r3, r30, 0x4e8
/* 80B0B560  7F A4 EB 78 */	mr r4, r29
/* 80B0B564  38 A0 02 00 */	li r5, 0x200
/* 80B0B568  4B 76 56 29 */	bl cLib_chaseAngleS__FPsss
lbl_80B0B56C:
/* 80B0B56C  7F C3 F3 78 */	mr r3, r30
/* 80B0B570  38 80 00 00 */	li r4, 0
/* 80B0B574  4B 50 F1 59 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80B0B578  88 1E 06 BC */	lbz r0, 0x6bc(r30)
/* 80B0B57C  28 00 00 00 */	cmplwi r0, 0
/* 80B0B580  41 82 00 18 */	beq lbl_80B0B598
/* 80B0B584  38 7E 07 B0 */	addi r3, r30, 0x7b0
/* 80B0B588  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B0B58C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B0B590  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80B0B594  4B 56 B5 19 */	bl CrrPos__9dBgS_AcchFR4dBgS
lbl_80B0B598:
/* 80B0B598  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80B0B59C  7C 03 07 74 */	extsb r3, r0
/* 80B0B5A0  4B 52 1A CD */	bl dComIfGp_getReverb__Fi
/* 80B0B5A4  7C 65 1B 78 */	mr r5, r3
/* 80B0B5A8  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80B0B5AC  38 80 00 00 */	li r4, 0
/* 80B0B5B0  4B 50 5B 01 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 80B0B5B4  39 61 00 30 */	addi r11, r1, 0x30
/* 80B0B5B8  4B 85 6C 71 */	bl _restgpr_29
/* 80B0B5BC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B0B5C0  7C 08 03 A6 */	mtlr r0
/* 80B0B5C4  38 21 00 30 */	addi r1, r1, 0x30
/* 80B0B5C8  4E 80 00 20 */	blr 
