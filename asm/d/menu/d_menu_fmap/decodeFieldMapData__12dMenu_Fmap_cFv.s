lbl_801CC2B0:
/* 801CC2B0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 801CC2B4  7C 08 02 A6 */	mflr r0
/* 801CC2B8  90 01 00 74 */	stw r0, 0x74(r1)
/* 801CC2BC  39 61 00 70 */	addi r11, r1, 0x70
/* 801CC2C0  48 19 5E E5 */	bl _savegpr_15
/* 801CC2C4  7C 79 1B 78 */	mr r25, r3
/* 801CC2C8  80 83 00 8C */	lwz r4, 0x8c(r3)
/* 801CC2CC  80 04 00 08 */	lwz r0, 8(r4)
/* 801CC2D0  7F E4 02 14 */	add r31, r4, r0
/* 801CC2D4  80 04 00 04 */	lwz r0, 4(r4)
/* 801CC2D8  7F C4 02 14 */	add r30, r4, r0
/* 801CC2DC  88 1E 00 00 */	lbz r0, 0(r30)
/* 801CC2E0  98 03 03 03 */	stb r0, 0x303(r3)
/* 801CC2E4  A0 04 00 16 */	lhz r0, 0x16(r4)
/* 801CC2E8  B0 03 02 16 */	sth r0, 0x216(r3)
/* 801CC2EC  A0 83 02 16 */	lhz r4, 0x216(r3)
/* 801CC2F0  48 00 05 6D */	bl setTitleName__12dMenu_Fmap_cFUl
/* 801CC2F4  3B BF 00 04 */	addi r29, r31, 4
/* 801CC2F8  3B 80 00 00 */	li r28, 0
/* 801CC2FC  3B 00 00 00 */	li r24, 0
/* 801CC300  3A E0 00 00 */	li r23, 0
/* 801CC304  3C 60 80 43 */	lis r3, g_fmapHIO@ha
/* 801CC308  3A 83 FC 60 */	addi r20, r3, g_fmapHIO@l
/* 801CC30C  48 00 01 80 */	b lbl_801CC48C
lbl_801CC310:
/* 801CC310  7E 1D BA 14 */	add r16, r29, r23
/* 801CC314  88 90 00 00 */	lbz r4, 0(r16)
/* 801CC318  80 79 00 14 */	lwz r3, 0x14(r25)
/* 801CC31C  38 1C 12 1C */	addi r0, r28, 0x121c
/* 801CC320  7C 83 01 AE */	stbx r4, r3, r0
/* 801CC324  3B 60 00 00 */	li r27, 0
/* 801CC328  3A C0 00 00 */	li r22, 0
/* 801CC32C  3A A0 00 00 */	li r21, 0
/* 801CC330  7C 74 C2 14 */	add r3, r20, r24
/* 801CC334  3A 63 01 AC */	addi r19, r3, 0x1ac
/* 801CC338  3A 43 01 8C */	addi r18, r3, 0x18c
/* 801CC33C  3A 23 01 6C */	addi r17, r3, 0x16c
lbl_801CC340:
/* 801CC340  38 1B 00 01 */	addi r0, r27, 1
/* 801CC344  88 B0 00 00 */	lbz r5, 0(r16)
/* 801CC348  7C 00 28 00 */	cmpw r0, r5
/* 801CC34C  40 82 01 20 */	bne lbl_801CC46C
/* 801CC350  3B 40 00 00 */	li r26, 0
/* 801CC354  2C 1B 00 07 */	cmpwi r27, 7
/* 801CC358  40 82 00 24 */	bne lbl_801CC37C
/* 801CC35C  3B 40 00 01 */	li r26, 1
/* 801CC360  38 61 00 10 */	addi r3, r1, 0x10
/* 801CC364  3C 80 80 39 */	lis r4, d_menu_d_menu_fmap__stringBase0@ha
/* 801CC368  38 84 60 E8 */	addi r4, r4, d_menu_d_menu_fmap__stringBase0@l
/* 801CC36C  38 84 00 66 */	addi r4, r4, 0x66
/* 801CC370  4C C6 31 82 */	crclr 6
/* 801CC374  48 19 A1 69 */	bl sprintf
/* 801CC378  48 00 00 1C */	b lbl_801CC394
lbl_801CC37C:
/* 801CC37C  38 61 00 10 */	addi r3, r1, 0x10
/* 801CC380  3C 80 80 39 */	lis r4, d_menu_d_menu_fmap__stringBase0@ha
/* 801CC384  38 84 60 E8 */	addi r4, r4, d_menu_d_menu_fmap__stringBase0@l
/* 801CC388  38 84 00 76 */	addi r4, r4, 0x76
/* 801CC38C  4C C6 31 82 */	crclr 6
/* 801CC390  48 19 A1 4D */	bl sprintf
lbl_801CC394:
/* 801CC394  7F 23 CB 78 */	mr r3, r25
/* 801CC398  7D F9 AA 14 */	add r15, r25, r21
/* 801CC39C  38 8F 00 94 */	addi r4, r15, 0x94
/* 801CC3A0  38 A1 00 10 */	addi r5, r1, 0x10
/* 801CC3A4  38 C0 00 01 */	li r6, 1
/* 801CC3A8  7F 47 D3 78 */	mr r7, r26
/* 801CC3AC  4B FF FC E9 */	bl readFieldMapData__12dMenu_Fmap_cFPPvPCcbb
/* 801CC3B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801CC3B4  41 82 00 B8 */	beq lbl_801CC46C
/* 801CC3B8  88 14 03 09 */	lbz r0, 0x309(r20)
/* 801CC3BC  28 00 00 00 */	cmplwi r0, 0
/* 801CC3C0  40 82 00 40 */	bne lbl_801CC400
/* 801CC3C4  C0 10 00 24 */	lfs f0, 0x24(r16)
/* 801CC3C8  D0 01 00 08 */	stfs f0, 8(r1)
/* 801CC3CC  80 79 00 14 */	lwz r3, 0x14(r25)
/* 801CC3D0  57 64 06 3E */	clrlwi r4, r27, 0x18
/* 801CC3D4  80 AF 00 94 */	lwz r5, 0x94(r15)
/* 801CC3D8  C0 30 00 04 */	lfs f1, 4(r16)
/* 801CC3DC  C0 50 00 08 */	lfs f2, 8(r16)
/* 801CC3E0  C0 70 00 0C */	lfs f3, 0xc(r16)
/* 801CC3E4  C0 90 00 10 */	lfs f4, 0x10(r16)
/* 801CC3E8  C0 B0 00 14 */	lfs f5, 0x14(r16)
/* 801CC3EC  C0 D0 00 18 */	lfs f6, 0x18(r16)
/* 801CC3F0  C0 F0 00 20 */	lfs f7, 0x20(r16)
/* 801CC3F4  C1 10 00 1C */	lfs f8, 0x1c(r16)
/* 801CC3F8  48 00 44 0D */	bl setRegionTexData__18dMenu_Fmap2DBack_cFUcP7ResTIMGfffffffff
/* 801CC3FC  48 00 00 54 */	b lbl_801CC450
lbl_801CC400:
/* 801CC400  C0 10 00 24 */	lfs f0, 0x24(r16)
/* 801CC404  D0 01 00 08 */	stfs f0, 8(r1)
/* 801CC408  80 79 00 14 */	lwz r3, 0x14(r25)
/* 801CC40C  57 64 06 3E */	clrlwi r4, r27, 0x18
/* 801CC410  80 AF 00 94 */	lwz r5, 0x94(r15)
/* 801CC414  C0 30 00 04 */	lfs f1, 4(r16)
/* 801CC418  C0 50 00 08 */	lfs f2, 8(r16)
/* 801CC41C  C0 71 00 00 */	lfs f3, 0(r17)
/* 801CC420  C0 10 00 0C */	lfs f0, 0xc(r16)
/* 801CC424  EC 63 00 2A */	fadds f3, f3, f0
/* 801CC428  C0 92 00 00 */	lfs f4, 0(r18)
/* 801CC42C  C0 10 00 10 */	lfs f0, 0x10(r16)
/* 801CC430  EC 84 00 2A */	fadds f4, f4, f0
/* 801CC434  C0 B3 00 00 */	lfs f5, 0(r19)
/* 801CC438  C0 10 00 14 */	lfs f0, 0x14(r16)
/* 801CC43C  EC A5 00 2A */	fadds f5, f5, f0
/* 801CC440  C0 D0 00 18 */	lfs f6, 0x18(r16)
/* 801CC444  C0 F0 00 20 */	lfs f7, 0x20(r16)
/* 801CC448  C1 10 00 1C */	lfs f8, 0x1c(r16)
/* 801CC44C  48 00 43 B9 */	bl setRegionTexData__18dMenu_Fmap2DBack_cFUcP7ResTIMGfffffffff
lbl_801CC450:
/* 801CC450  A0 70 00 02 */	lhz r3, 2(r16)
/* 801CC454  38 16 02 18 */	addi r0, r22, 0x218
/* 801CC458  7C 79 03 2E */	sthx r3, r25, r0
/* 801CC45C  C0 10 00 04 */	lfs f0, 4(r16)
/* 801CC460  D0 0F 01 AC */	stfs f0, 0x1ac(r15)
/* 801CC464  C0 10 00 08 */	lfs f0, 8(r16)
/* 801CC468  D0 0F 01 CC */	stfs f0, 0x1cc(r15)
lbl_801CC46C:
/* 801CC46C  3B 7B 00 01 */	addi r27, r27, 1
/* 801CC470  2C 1B 00 08 */	cmpwi r27, 8
/* 801CC474  3A D6 00 02 */	addi r22, r22, 2
/* 801CC478  3A B5 00 04 */	addi r21, r21, 4
/* 801CC47C  41 80 FE C4 */	blt lbl_801CC340
/* 801CC480  3B 9C 00 01 */	addi r28, r28, 1
/* 801CC484  3B 18 00 04 */	addi r24, r24, 4
/* 801CC488  3A F7 00 28 */	addi r23, r23, 0x28
lbl_801CC48C:
/* 801CC48C  88 1F 00 00 */	lbz r0, 0(r31)
/* 801CC490  7C 1C 00 00 */	cmpw r28, r0
/* 801CC494  41 80 FE 7C */	blt lbl_801CC310
/* 801CC498  80 79 00 14 */	lwz r3, 0x14(r25)
/* 801CC49C  48 00 96 29 */	bl calcDrawPriority__18dMenu_Fmap2DBack_cFv
/* 801CC4A0  80 79 00 14 */	lwz r3, 0x14(r25)
/* 801CC4A4  48 00 46 25 */	bl calcAllMapPos__18dMenu_Fmap2DBack_cFv
/* 801CC4A8  88 19 03 03 */	lbz r0, 0x303(r25)
/* 801CC4AC  80 79 00 14 */	lwz r3, 0x14(r25)
/* 801CC4B0  93 C3 0D 88 */	stw r30, 0xd88(r3)
/* 801CC4B4  98 03 12 25 */	stb r0, 0x1225(r3)
/* 801CC4B8  80 79 00 14 */	lwz r3, 0x14(r25)
/* 801CC4BC  88 03 12 27 */	lbz r0, 0x1227(r3)
/* 801CC4C0  7F 23 CB 78 */	mr r3, r25
/* 801CC4C4  54 00 0D FC */	rlwinm r0, r0, 1, 0x17, 0x1e
/* 801CC4C8  7C 99 02 14 */	add r4, r25, r0
/* 801CC4CC  A0 84 02 18 */	lhz r4, 0x218(r4)
/* 801CC4D0  48 00 03 B1 */	bl setAreaName__12dMenu_Fmap_cFUl
/* 801CC4D4  39 61 00 70 */	addi r11, r1, 0x70
/* 801CC4D8  48 19 5D 19 */	bl _restgpr_15
/* 801CC4DC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 801CC4E0  7C 08 03 A6 */	mtlr r0
/* 801CC4E4  38 21 00 70 */	addi r1, r1, 0x70
/* 801CC4E8  4E 80 00 20 */	blr 
