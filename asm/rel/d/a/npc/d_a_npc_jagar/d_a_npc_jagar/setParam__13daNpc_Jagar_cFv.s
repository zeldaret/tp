lbl_80A153E8:
/* 80A153E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A153EC  7C 08 02 A6 */	mflr r0
/* 80A153F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A153F4  39 61 00 20 */	addi r11, r1, 0x20
/* 80A153F8  4B 94 CD E1 */	bl _savegpr_28
/* 80A153FC  7C 7E 1B 78 */	mr r30, r3
/* 80A15400  48 00 0E 35 */	bl selectAction__13daNpc_Jagar_cFv
/* 80A15404  7F C3 F3 78 */	mr r3, r30
/* 80A15408  48 00 03 AD */	bl srchActors__13daNpc_Jagar_cFv
/* 80A1540C  3B E0 00 0A */	li r31, 0xa
/* 80A15410  3C 60 80 A2 */	lis r3, m__19daNpc_Jagar_Param_c@ha /* 0x80A1A330@ha */
/* 80A15414  38 63 A3 30 */	addi r3, r3, m__19daNpc_Jagar_Param_c@l /* 0x80A1A330@l */
/* 80A15418  AB A3 00 48 */	lha r29, 0x48(r3)
/* 80A1541C  AB 83 00 4A */	lha r28, 0x4a(r3)
/* 80A15420  A8 83 00 4C */	lha r4, 0x4c(r3)
/* 80A15424  A8 A3 00 4E */	lha r5, 0x4e(r3)
/* 80A15428  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80A1542C  2C 00 00 01 */	cmpwi r0, 1
/* 80A15430  41 82 00 34 */	beq lbl_80A15464
/* 80A15434  40 80 00 10 */	bge lbl_80A15444
/* 80A15438  2C 00 00 00 */	cmpwi r0, 0
/* 80A1543C  40 80 00 14 */	bge lbl_80A15450
/* 80A15440  48 00 00 58 */	b lbl_80A15498
lbl_80A15444:
/* 80A15444  2C 00 00 03 */	cmpwi r0, 3
/* 80A15448  40 80 00 50 */	bge lbl_80A15498
/* 80A1544C  48 00 00 3C */	b lbl_80A15488
lbl_80A15450:
/* 80A15450  3B A0 00 04 */	li r29, 4
/* 80A15454  3B 80 00 06 */	li r28, 6
/* 80A15458  38 80 00 05 */	li r4, 5
/* 80A1545C  38 A0 00 06 */	li r5, 6
/* 80A15460  48 00 00 38 */	b lbl_80A15498
lbl_80A15464:
/* 80A15464  38 00 00 03 */	li r0, 3
/* 80A15468  90 1E 0F F0 */	stw r0, 0xff0(r30)
/* 80A1546C  38 00 00 06 */	li r0, 6
/* 80A15470  90 1E 0F F4 */	stw r0, 0xff4(r30)
/* 80A15474  3B A0 00 13 */	li r29, 0x13
/* 80A15478  3B 80 00 06 */	li r28, 6
/* 80A1547C  38 80 00 13 */	li r4, 0x13
/* 80A15480  38 A0 00 06 */	li r5, 6
/* 80A15484  48 00 00 14 */	b lbl_80A15498
lbl_80A15488:
/* 80A15488  3B A0 00 03 */	li r29, 3
/* 80A1548C  3B 80 00 06 */	li r28, 6
/* 80A15490  38 80 00 05 */	li r4, 5
/* 80A15494  38 A0 00 06 */	li r5, 6
lbl_80A15498:
/* 80A15498  7C 83 07 34 */	extsh r3, r4
/* 80A1549C  7C A4 07 34 */	extsh r4, r5
/* 80A154A0  4B 73 75 79 */	bl daNpcT_getDistTableIdx__Fii
/* 80A154A4  98 7E 05 44 */	stb r3, 0x544(r30)
/* 80A154A8  88 1E 05 44 */	lbz r0, 0x544(r30)
/* 80A154AC  98 1E 05 45 */	stb r0, 0x545(r30)
/* 80A154B0  7F A3 07 34 */	extsh r3, r29
/* 80A154B4  7F 84 07 34 */	extsh r4, r28
/* 80A154B8  4B 73 75 61 */	bl daNpcT_getDistTableIdx__Fii
/* 80A154BC  98 7E 05 47 */	stb r3, 0x547(r30)
/* 80A154C0  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80A154C4  28 00 00 01 */	cmplwi r0, 1
/* 80A154C8  40 82 00 5C */	bne lbl_80A15524
/* 80A154CC  67 FF 00 80 */	oris r31, r31, 0x80
/* 80A154D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A154D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A154D8  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 80A154DC  80 7E 0F F0 */	lwz r3, 0xff0(r30)
/* 80A154E0  80 9E 0F F4 */	lwz r4, 0xff4(r30)
/* 80A154E4  4B 73 75 35 */	bl daNpcT_getDistTableIdx__Fii
/* 80A154E8  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 80A154EC  7F C3 F3 78 */	mr r3, r30
/* 80A154F0  7F A4 EB 78 */	mr r4, r29
/* 80A154F4  88 DE 05 45 */	lbz r6, 0x545(r30)
/* 80A154F8  4B 73 66 09 */	bl getActorDistance__8daNpcT_cFP10fopAc_ac_cii
/* 80A154FC  90 7E 0F EC */	stw r3, 0xfec(r30)
/* 80A15500  80 1E 0F EC */	lwz r0, 0xfec(r30)
/* 80A15504  2C 00 00 04 */	cmpwi r0, 4
/* 80A15508  40 80 00 40 */	bge lbl_80A15548
/* 80A1550C  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 80A15510  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 80A15514  A0 03 00 AC */	lhz r0, 0xac(r3)
/* 80A15518  60 00 00 01 */	ori r0, r0, 1
/* 80A1551C  B0 03 00 AC */	sth r0, 0xac(r3)
/* 80A15520  48 00 00 28 */	b lbl_80A15548
lbl_80A15524:
/* 80A15524  7F C3 F3 78 */	mr r3, r30
/* 80A15528  48 00 24 5D */	bl chkChuMotion__13daNpc_Jagar_cFv
/* 80A1552C  2C 03 00 00 */	cmpwi r3, 0
/* 80A15530  41 82 00 18 */	beq lbl_80A15548
/* 80A15534  38 00 00 14 */	li r0, 0x14
/* 80A15538  98 1E 05 44 */	stb r0, 0x544(r30)
/* 80A1553C  98 1E 05 45 */	stb r0, 0x545(r30)
/* 80A15540  98 1E 05 47 */	stb r0, 0x547(r30)
/* 80A15544  3B E0 00 02 */	li r31, 2
lbl_80A15548:
/* 80A15548  93 FE 05 5C */	stw r31, 0x55c(r30)
/* 80A1554C  3C 60 80 A2 */	lis r3, m__19daNpc_Jagar_Param_c@ha /* 0x80A1A330@ha */
/* 80A15550  38 63 A3 30 */	addi r3, r3, m__19daNpc_Jagar_Param_c@l /* 0x80A1A330@l */
/* 80A15554  C0 03 00 08 */	lfs f0, 8(r3)
/* 80A15558  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 80A1555C  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
/* 80A15560  D0 1E 04 F4 */	stfs f0, 0x4f4(r30)
/* 80A15564  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80A15568  FC 00 00 1E */	fctiwz f0, f0
/* 80A1556C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80A15570  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80A15574  98 1E 08 78 */	stb r0, 0x878(r30)
/* 80A15578  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80A1557C  D0 1E 0D EC */	stfs f0, 0xdec(r30)
/* 80A15580  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80A15584  D0 1E 0D F0 */	stfs f0, 0xdf0(r30)
/* 80A15588  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 80A1558C  D0 1E 0D F8 */	stfs f0, 0xdf8(r30)
/* 80A15590  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80A15594  C0 3E 0D F0 */	lfs f1, 0xdf0(r30)
/* 80A15598  4B 66 09 A9 */	bl SetWallR__12dBgS_AcchCirFf
/* 80A1559C  3C 60 80 A2 */	lis r3, m__19daNpc_Jagar_Param_c@ha /* 0x80A1A330@ha */
/* 80A155A0  38 63 A3 30 */	addi r3, r3, m__19daNpc_Jagar_Param_c@l /* 0x80A1A330@l */
/* 80A155A4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A155A8  D0 1E 08 D0 */	stfs f0, 0x8d0(r30)
/* 80A155AC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80A155B0  D0 1E 0D E8 */	stfs f0, 0xde8(r30)
/* 80A155B4  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80A155B8  D0 1E 0A 80 */	stfs f0, 0xa80(r30)
/* 80A155BC  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80A155C0  D0 1E 0A 84 */	stfs f0, 0xa84(r30)
/* 80A155C4  C0 03 00 04 */	lfs f0, 4(r3)
/* 80A155C8  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80A155CC  39 61 00 20 */	addi r11, r1, 0x20
/* 80A155D0  4B 94 CC 55 */	bl _restgpr_28
/* 80A155D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A155D8  7C 08 03 A6 */	mtlr r0
/* 80A155DC  38 21 00 20 */	addi r1, r1, 0x20
/* 80A155E0  4E 80 00 20 */	blr 
