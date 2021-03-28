lbl_80493338:
/* 80493338  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8049333C  7C 08 02 A6 */	mflr r0
/* 80493340  90 01 00 54 */	stw r0, 0x54(r1)
/* 80493344  39 61 00 50 */	addi r11, r1, 0x50
/* 80493348  4B EC EE 88 */	b _savegpr_26
/* 8049334C  7C 7E 1B 78 */	mr r30, r3
/* 80493350  3C 60 80 49 */	lis r3, l_cull_size_box@ha
/* 80493354  3B E3 61 D4 */	addi r31, r3, l_cull_size_box@l
/* 80493358  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 8049335C  80 7E 07 34 */	lwz r3, 0x734(r30)
/* 80493360  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80493364  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80493368  80 7E 07 34 */	lwz r3, 0x734(r30)
/* 8049336C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80493370  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80493374  C0 3F 01 34 */	lfs f1, 0x134(r31)
/* 80493378  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8049337C  EC 21 00 2A */	fadds f1, f1, f0
/* 80493380  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80493384  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80493388  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8049338C  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 80493390  80 1E 04 B4 */	lwz r0, 0x4b4(r30)
/* 80493394  90 01 00 24 */	stw r0, 0x24(r1)
/* 80493398  A0 1E 04 B8 */	lhz r0, 0x4b8(r30)
/* 8049339C  B0 01 00 28 */	sth r0, 0x28(r1)
/* 804933A0  3B 40 00 00 */	li r26, 0
/* 804933A4  3B A0 00 00 */	li r29, 0
/* 804933A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804933AC  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 804933B0  3B 9F 01 28 */	addi r28, r31, 0x128
lbl_804933B4:
/* 804933B4  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 804933B8  38 80 00 00 */	li r4, 0
/* 804933BC  90 81 00 08 */	stw r4, 8(r1)
/* 804933C0  38 00 FF FF */	li r0, -1
/* 804933C4  90 01 00 0C */	stw r0, 0xc(r1)
/* 804933C8  90 81 00 10 */	stw r4, 0x10(r1)
/* 804933CC  90 81 00 14 */	stw r4, 0x14(r1)
/* 804933D0  90 81 00 18 */	stw r4, 0x18(r1)
/* 804933D4  38 80 00 00 */	li r4, 0
/* 804933D8  7C BC EA 2E */	lhzx r5, r28, r29
/* 804933DC  38 C1 00 2C */	addi r6, r1, 0x2c
/* 804933E0  38 E0 00 00 */	li r7, 0
/* 804933E4  39 01 00 24 */	addi r8, r1, 0x24
/* 804933E8  39 3E 04 EC */	addi r9, r30, 0x4ec
/* 804933EC  39 40 00 FF */	li r10, 0xff
/* 804933F0  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 804933F4  4B BB 96 9C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804933F8  3B 5A 00 01 */	addi r26, r26, 1
/* 804933FC  28 1A 00 06 */	cmplwi r26, 6
/* 80493400  3B BD 00 02 */	addi r29, r29, 2
/* 80493404  41 80 FF B0 */	blt lbl_804933B4
/* 80493408  A0 1E 07 54 */	lhz r0, 0x754(r30)
/* 8049340C  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80493410  B0 1E 07 54 */	sth r0, 0x754(r30)
/* 80493414  A0 1E 07 54 */	lhz r0, 0x754(r30)
/* 80493418  60 00 00 01 */	ori r0, r0, 1
/* 8049341C  B0 1E 07 54 */	sth r0, 0x754(r30)
/* 80493420  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80493424  7C 03 07 74 */	extsb r3, r0
/* 80493428  4B B9 9C 44 */	b dComIfGp_getReverb__Fi
/* 8049342C  7C 67 1B 78 */	mr r7, r3
/* 80493430  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801FD@ha */
/* 80493434  38 03 01 FD */	addi r0, r3, 0x01FD /* 0x000801FD@l */
/* 80493438  90 01 00 20 */	stw r0, 0x20(r1)
/* 8049343C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80493440  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80493444  80 63 00 00 */	lwz r3, 0(r3)
/* 80493448  38 81 00 20 */	addi r4, r1, 0x20
/* 8049344C  38 BE 05 38 */	addi r5, r30, 0x538
/* 80493450  38 C0 00 00 */	li r6, 0
/* 80493454  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 80493458  FC 40 08 90 */	fmr f2, f1
/* 8049345C  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 80493460  FC 80 18 90 */	fmr f4, f3
/* 80493464  39 00 00 00 */	li r8, 0
/* 80493468  4B E1 85 1C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8049346C  39 61 00 50 */	addi r11, r1, 0x50
/* 80493470  4B EC ED AC */	b _restgpr_26
/* 80493474  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80493478  7C 08 03 A6 */	mtlr r0
/* 8049347C  38 21 00 50 */	addi r1, r1, 0x50
/* 80493480  4E 80 00 20 */	blr 
