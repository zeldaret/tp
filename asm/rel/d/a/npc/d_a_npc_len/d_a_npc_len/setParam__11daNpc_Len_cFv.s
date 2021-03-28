lbl_80A65278:
/* 80A65278  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A6527C  7C 08 02 A6 */	mflr r0
/* 80A65280  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A65284  39 61 00 30 */	addi r11, r1, 0x30
/* 80A65288  4B 8F CF 4C */	b _savegpr_27
/* 80A6528C  7C 7F 1B 78 */	mr r31, r3
/* 80A65290  48 00 0C F9 */	bl selectAction__11daNpc_Len_cFv
/* 80A65294  7F E3 FB 78 */	mr r3, r31
/* 80A65298  48 00 03 8D */	bl srchActors__11daNpc_Len_cFv
/* 80A6529C  3C 60 80 A7 */	lis r3, m__17daNpc_Len_Param_c@ha
/* 80A652A0  38 63 8E A4 */	addi r3, r3, m__17daNpc_Len_Param_c@l
/* 80A652A4  AB C3 00 48 */	lha r30, 0x48(r3)
/* 80A652A8  AB A3 00 4A */	lha r29, 0x4a(r3)
/* 80A652AC  AB 83 00 4C */	lha r28, 0x4c(r3)
/* 80A652B0  AB 63 00 4E */	lha r27, 0x4e(r3)
/* 80A652B4  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80A652B8  2C 00 00 03 */	cmpwi r0, 3
/* 80A652BC  41 82 00 4C */	beq lbl_80A65308
/* 80A652C0  40 80 00 1C */	bge lbl_80A652DC
/* 80A652C4  2C 00 00 01 */	cmpwi r0, 1
/* 80A652C8  41 82 00 58 */	beq lbl_80A65320
/* 80A652CC  40 80 00 28 */	bge lbl_80A652F4
/* 80A652D0  2C 00 00 00 */	cmpwi r0, 0
/* 80A652D4  40 80 00 14 */	bge lbl_80A652E8
/* 80A652D8  48 00 00 48 */	b lbl_80A65320
lbl_80A652DC:
/* 80A652DC  2C 00 00 05 */	cmpwi r0, 5
/* 80A652E0  41 82 00 3C */	beq lbl_80A6531C
/* 80A652E4  48 00 00 3C */	b lbl_80A65320
lbl_80A652E8:
/* 80A652E8  3B A0 00 03 */	li r29, 3
/* 80A652EC  3B 60 00 03 */	li r27, 3
/* 80A652F0  48 00 00 30 */	b lbl_80A65320
lbl_80A652F4:
/* 80A652F4  3B C0 00 09 */	li r30, 9
/* 80A652F8  3B A0 00 04 */	li r29, 4
/* 80A652FC  3B 80 00 11 */	li r28, 0x11
/* 80A65300  3B 60 00 04 */	li r27, 4
/* 80A65304  48 00 00 1C */	b lbl_80A65320
lbl_80A65308:
/* 80A65308  38 00 D8 F0 */	li r0, -10000
/* 80A6530C  B0 1F 0D 8C */	sth r0, 0xd8c(r31)
/* 80A65310  3B C0 00 0D */	li r30, 0xd
/* 80A65314  3B 80 00 0F */	li r28, 0xf
/* 80A65318  48 00 00 08 */	b lbl_80A65320
lbl_80A6531C:
/* 80A6531C  3B A0 00 04 */	li r29, 4
lbl_80A65320:
/* 80A65320  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A65324  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A65328  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80A6532C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A65330  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 80A65334  7D 89 03 A6 */	mtctr r12
/* 80A65338  4E 80 04 21 */	bctrl 
/* 80A6533C  28 03 00 00 */	cmplwi r3, 0
/* 80A65340  41 82 00 24 */	beq lbl_80A65364
/* 80A65344  7F C0 07 34 */	extsh r0, r30
/* 80A65348  2C 00 00 07 */	cmpwi r0, 7
/* 80A6534C  40 80 00 08 */	bge lbl_80A65354
/* 80A65350  3B C0 00 07 */	li r30, 7
lbl_80A65354:
/* 80A65354  7F 80 07 34 */	extsh r0, r28
/* 80A65358  2C 00 00 09 */	cmpwi r0, 9
/* 80A6535C  40 80 00 08 */	bge lbl_80A65364
/* 80A65360  3B 80 00 09 */	li r28, 9
lbl_80A65364:
/* 80A65364  7F 83 07 34 */	extsh r3, r28
/* 80A65368  7F 64 07 34 */	extsh r4, r27
/* 80A6536C  4B 6E 76 AC */	b daNpcT_getDistTableIdx__Fii
/* 80A65370  98 7F 05 44 */	stb r3, 0x544(r31)
/* 80A65374  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 80A65378  98 1F 05 45 */	stb r0, 0x545(r31)
/* 80A6537C  7F C3 07 34 */	extsh r3, r30
/* 80A65380  7F A4 07 34 */	extsh r4, r29
/* 80A65384  4B 6E 76 94 */	b daNpcT_getDistTableIdx__Fii
/* 80A65388  98 7F 05 47 */	stb r3, 0x547(r31)
/* 80A6538C  38 00 00 0A */	li r0, 0xa
/* 80A65390  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80A65394  3C 60 80 A7 */	lis r3, m__17daNpc_Len_Param_c@ha
/* 80A65398  38 63 8E A4 */	addi r3, r3, m__17daNpc_Len_Param_c@l
/* 80A6539C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80A653A0  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 80A653A4  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 80A653A8  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 80A653AC  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80A653B0  28 00 00 05 */	cmplwi r0, 5
/* 80A653B4  40 82 00 10 */	bne lbl_80A653C4
/* 80A653B8  38 00 00 6D */	li r0, 0x6d
/* 80A653BC  98 1F 08 78 */	stb r0, 0x878(r31)
/* 80A653C0  48 00 00 18 */	b lbl_80A653D8
lbl_80A653C4:
/* 80A653C4  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80A653C8  FC 00 00 1E */	fctiwz f0, f0
/* 80A653CC  D8 01 00 08 */	stfd f0, 8(r1)
/* 80A653D0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80A653D4  98 1F 08 78 */	stb r0, 0x878(r31)
lbl_80A653D8:
/* 80A653D8  3C 60 80 A7 */	lis r3, m__17daNpc_Len_Param_c@ha
/* 80A653DC  38 63 8E A4 */	addi r3, r3, m__17daNpc_Len_Param_c@l
/* 80A653E0  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80A653E4  D0 1F 0D EC */	stfs f0, 0xdec(r31)
/* 80A653E8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80A653EC  D0 1F 0D F0 */	stfs f0, 0xdf0(r31)
/* 80A653F0  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80A653F4  28 00 00 01 */	cmplwi r0, 1
/* 80A653F8  40 82 00 10 */	bne lbl_80A65408
/* 80A653FC  3C 60 80 A7 */	lis r3, lit_4637@ha
/* 80A65400  C0 03 8F 94 */	lfs f0, lit_4637@l(r3)
/* 80A65404  D0 1F 0D EC */	stfs f0, 0xdec(r31)
lbl_80A65408:
/* 80A65408  3C 60 80 A7 */	lis r3, m__17daNpc_Len_Param_c@ha
/* 80A6540C  38 63 8E A4 */	addi r3, r3, m__17daNpc_Len_Param_c@l
/* 80A65410  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 80A65414  D0 1F 0D F8 */	stfs f0, 0xdf8(r31)
/* 80A65418  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80A6541C  C0 3F 0D F0 */	lfs f1, 0xdf0(r31)
/* 80A65420  4B 61 0B 20 */	b SetWallR__12dBgS_AcchCirFf
/* 80A65424  3C 60 80 A7 */	lis r3, m__17daNpc_Len_Param_c@ha
/* 80A65428  38 63 8E A4 */	addi r3, r3, m__17daNpc_Len_Param_c@l
/* 80A6542C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A65430  D0 1F 08 D0 */	stfs f0, 0x8d0(r31)
/* 80A65434  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80A65438  D0 1F 0D E8 */	stfs f0, 0xde8(r31)
/* 80A6543C  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80A65440  D0 1F 0A 80 */	stfs f0, 0xa80(r31)
/* 80A65444  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80A65448  D0 1F 0A 84 */	stfs f0, 0xa84(r31)
/* 80A6544C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80A65450  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80A65454  39 61 00 30 */	addi r11, r1, 0x30
/* 80A65458  4B 8F CD C8 */	b _restgpr_27
/* 80A6545C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A65460  7C 08 03 A6 */	mtlr r0
/* 80A65464  38 21 00 30 */	addi r1, r1, 0x30
/* 80A65468  4E 80 00 20 */	blr 
