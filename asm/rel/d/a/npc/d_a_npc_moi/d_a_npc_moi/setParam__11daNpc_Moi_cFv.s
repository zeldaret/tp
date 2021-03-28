lbl_80A751E4:
/* 80A751E4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A751E8  7C 08 02 A6 */	mflr r0
/* 80A751EC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A751F0  39 61 00 30 */	addi r11, r1, 0x30
/* 80A751F4  4B 8E CF D8 */	b _savegpr_25
/* 80A751F8  7C 7C 1B 78 */	mr r28, r3
/* 80A751FC  3C 80 80 A8 */	lis r4, m__17daNpc_Moi_Param_c@ha
/* 80A75200  3B E4 AE F0 */	addi r31, r4, m__17daNpc_Moi_Param_c@l
/* 80A75204  48 00 12 AD */	bl selectAction__11daNpc_Moi_cFv
/* 80A75208  7F 83 E3 78 */	mr r3, r28
/* 80A7520C  48 00 03 BD */	bl srchActors__11daNpc_Moi_cFv
/* 80A75210  3B 60 00 0A */	li r27, 0xa
/* 80A75214  38 7F 00 00 */	addi r3, r31, 0
/* 80A75218  AB C3 00 48 */	lha r30, 0x48(r3)
/* 80A7521C  AB A3 00 4A */	lha r29, 0x4a(r3)
/* 80A75220  AB 43 00 4C */	lha r26, 0x4c(r3)
/* 80A75224  AB 23 00 4E */	lha r25, 0x4e(r3)
/* 80A75228  88 1C 15 C4 */	lbz r0, 0x15c4(r28)
/* 80A7522C  28 00 00 02 */	cmplwi r0, 2
/* 80A75230  40 82 00 44 */	bne lbl_80A75274
/* 80A75234  88 1C 16 6D */	lbz r0, 0x166d(r28)
/* 80A75238  28 00 00 00 */	cmplwi r0, 0
/* 80A7523C  41 82 00 20 */	beq lbl_80A7525C
/* 80A75240  3B C0 00 01 */	li r30, 1
/* 80A75244  3B A0 00 06 */	li r29, 6
/* 80A75248  3B 40 00 01 */	li r26, 1
/* 80A7524C  3B 20 00 06 */	li r25, 6
/* 80A75250  3C 60 00 80 */	lis r3, 0x0080 /* 0x00800008@ha */
/* 80A75254  3B 63 00 08 */	addi r27, r3, 0x0008 /* 0x00800008@l */
/* 80A75258  48 00 00 2C */	b lbl_80A75284
lbl_80A7525C:
/* 80A7525C  3B C0 00 06 */	li r30, 6
/* 80A75260  3B A0 00 06 */	li r29, 6
/* 80A75264  3B 40 00 13 */	li r26, 0x13
/* 80A75268  3B 20 00 06 */	li r25, 6
/* 80A7526C  3B 60 00 01 */	li r27, 1
/* 80A75270  48 00 00 14 */	b lbl_80A75284
lbl_80A75274:
/* 80A75274  28 00 00 01 */	cmplwi r0, 1
/* 80A75278  40 82 00 0C */	bne lbl_80A75284
/* 80A7527C  3B C0 00 05 */	li r30, 5
/* 80A75280  3B 40 00 07 */	li r26, 7
lbl_80A75284:
/* 80A75284  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A75288  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A7528C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80A75290  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A75294  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 80A75298  7D 89 03 A6 */	mtctr r12
/* 80A7529C  4E 80 04 21 */	bctrl 
/* 80A752A0  28 03 00 00 */	cmplwi r3, 0
/* 80A752A4  41 82 00 24 */	beq lbl_80A752C8
/* 80A752A8  7F C0 07 34 */	extsh r0, r30
/* 80A752AC  2C 00 00 07 */	cmpwi r0, 7
/* 80A752B0  40 80 00 08 */	bge lbl_80A752B8
/* 80A752B4  3B C0 00 07 */	li r30, 7
lbl_80A752B8:
/* 80A752B8  7F 40 07 34 */	extsh r0, r26
/* 80A752BC  2C 00 00 09 */	cmpwi r0, 9
/* 80A752C0  40 80 00 08 */	bge lbl_80A752C8
/* 80A752C4  3B 40 00 09 */	li r26, 9
lbl_80A752C8:
/* 80A752C8  88 1C 15 C4 */	lbz r0, 0x15c4(r28)
/* 80A752CC  28 00 00 02 */	cmplwi r0, 2
/* 80A752D0  40 82 00 3C */	bne lbl_80A7530C
/* 80A752D4  38 00 00 35 */	li r0, 0x35
/* 80A752D8  98 1C 05 44 */	stb r0, 0x544(r28)
/* 80A752DC  88 1C 05 44 */	lbz r0, 0x544(r28)
/* 80A752E0  98 1C 05 45 */	stb r0, 0x545(r28)
/* 80A752E4  7F C3 07 34 */	extsh r3, r30
/* 80A752E8  7F A4 07 34 */	extsh r4, r29
/* 80A752EC  4B 6D 77 2C */	b daNpcT_getDistTableIdx__Fii
/* 80A752F0  98 7C 05 47 */	stb r3, 0x547(r28)
/* 80A752F4  38 00 00 00 */	li r0, 0
/* 80A752F8  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 80A752FC  80 1C 04 9C */	lwz r0, 0x49c(r28)
/* 80A75300  54 00 06 2C */	rlwinm r0, r0, 0, 0x18, 0x16
/* 80A75304  90 1C 04 9C */	stw r0, 0x49c(r28)
/* 80A75308  48 00 00 30 */	b lbl_80A75338
lbl_80A7530C:
/* 80A7530C  7F 43 07 34 */	extsh r3, r26
/* 80A75310  7F 24 07 34 */	extsh r4, r25
/* 80A75314  4B 6D 77 04 */	b daNpcT_getDistTableIdx__Fii
/* 80A75318  98 7C 05 44 */	stb r3, 0x544(r28)
/* 80A7531C  88 1C 05 44 */	lbz r0, 0x544(r28)
/* 80A75320  98 1C 05 45 */	stb r0, 0x545(r28)
/* 80A75324  7F C3 07 34 */	extsh r3, r30
/* 80A75328  7F A4 07 34 */	extsh r4, r29
/* 80A7532C  4B 6D 76 EC */	b daNpcT_getDistTableIdx__Fii
/* 80A75330  98 7C 05 47 */	stb r3, 0x547(r28)
/* 80A75334  93 7C 05 5C */	stw r27, 0x55c(r28)
lbl_80A75338:
/* 80A75338  38 7F 00 00 */	addi r3, r31, 0
/* 80A7533C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80A75340  D0 1C 04 EC */	stfs f0, 0x4ec(r28)
/* 80A75344  D0 1C 04 F0 */	stfs f0, 0x4f0(r28)
/* 80A75348  D0 1C 04 F4 */	stfs f0, 0x4f4(r28)
/* 80A7534C  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80A75350  FC 00 00 1E */	fctiwz f0, f0
/* 80A75354  D8 01 00 08 */	stfd f0, 8(r1)
/* 80A75358  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80A7535C  98 1C 08 78 */	stb r0, 0x878(r28)
/* 80A75360  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80A75364  D0 1C 0D EC */	stfs f0, 0xdec(r28)
/* 80A75368  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80A7536C  D0 1C 0D F0 */	stfs f0, 0xdf0(r28)
/* 80A75370  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 80A75374  D0 1C 0D F8 */	stfs f0, 0xdf8(r28)
/* 80A75378  88 1C 15 C4 */	lbz r0, 0x15c4(r28)
/* 80A7537C  28 00 00 02 */	cmplwi r0, 2
/* 80A75380  40 82 00 0C */	bne lbl_80A7538C
/* 80A75384  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 80A75388  D0 1C 0D F8 */	stfs f0, 0xdf8(r28)
lbl_80A7538C:
/* 80A7538C  38 7C 08 A0 */	addi r3, r28, 0x8a0
/* 80A75390  C0 3C 0D F0 */	lfs f1, 0xdf0(r28)
/* 80A75394  4B 60 0B AC */	b SetWallR__12dBgS_AcchCirFf
/* 80A75398  38 7F 00 00 */	addi r3, r31, 0
/* 80A7539C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A753A0  D0 1C 08 D0 */	stfs f0, 0x8d0(r28)
/* 80A753A4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80A753A8  D0 1C 0D E8 */	stfs f0, 0xde8(r28)
/* 80A753AC  88 1C 15 C4 */	lbz r0, 0x15c4(r28)
/* 80A753B0  28 00 00 01 */	cmplwi r0, 1
/* 80A753B4  40 82 00 10 */	bne lbl_80A753C4
/* 80A753B8  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80A753BC  D0 1C 0D E8 */	stfs f0, 0xde8(r28)
/* 80A753C0  48 00 00 28 */	b lbl_80A753E8
lbl_80A753C4:
/* 80A753C4  28 00 00 02 */	cmplwi r0, 2
/* 80A753C8  40 82 00 20 */	bne lbl_80A753E8
/* 80A753CC  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80A753D0  D0 1C 0D E8 */	stfs f0, 0xde8(r28)
/* 80A753D4  88 1C 16 6D */	lbz r0, 0x166d(r28)
/* 80A753D8  28 00 00 00 */	cmplwi r0, 0
/* 80A753DC  41 82 00 0C */	beq lbl_80A753E8
/* 80A753E0  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 80A753E4  D0 1C 0D E8 */	stfs f0, 0xde8(r28)
lbl_80A753E8:
/* 80A753E8  38 7F 00 00 */	addi r3, r31, 0
/* 80A753EC  C0 03 00 04 */	lfs f0, 4(r3)
/* 80A753F0  D0 1C 05 30 */	stfs f0, 0x530(r28)
/* 80A753F4  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80A753F8  D0 1C 0A 80 */	stfs f0, 0xa80(r28)
/* 80A753FC  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80A75400  D0 1C 0A 84 */	stfs f0, 0xa84(r28)
/* 80A75404  88 1C 15 C4 */	lbz r0, 0x15c4(r28)
/* 80A75408  28 00 00 03 */	cmplwi r0, 3
/* 80A7540C  40 82 00 24 */	bne lbl_80A75430
/* 80A75410  80 1C 06 B8 */	lwz r0, 0x6b8(r28)
/* 80A75414  60 00 00 02 */	ori r0, r0, 2
/* 80A75418  90 1C 06 B8 */	stw r0, 0x6b8(r28)
/* 80A7541C  80 1C 06 B8 */	lwz r0, 0x6b8(r28)
/* 80A75420  60 00 00 04 */	ori r0, r0, 4
/* 80A75424  90 1C 06 B8 */	stw r0, 0x6b8(r28)
/* 80A75428  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80A7542C  D0 1C 05 30 */	stfs f0, 0x530(r28)
lbl_80A75430:
/* 80A75430  7F 83 E3 78 */	mr r3, r28
/* 80A75434  48 00 15 95 */	bl setInSw__11daNpc_Moi_cFv
/* 80A75438  7F 83 E3 78 */	mr r3, r28
/* 80A7543C  48 00 14 C1 */	bl pullOutSw__11daNpc_Moi_cFv
/* 80A75440  7F 83 E3 78 */	mr r3, r28
/* 80A75444  48 00 15 DD */	bl setSwAT__11daNpc_Moi_cFv
/* 80A75448  39 61 00 30 */	addi r11, r1, 0x30
/* 80A7544C  4B 8E CD CC */	b _restgpr_25
/* 80A75450  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A75454  7C 08 03 A6 */	mtlr r0
/* 80A75458  38 21 00 30 */	addi r1, r1, 0x30
/* 80A7545C  4E 80 00 20 */	blr 
