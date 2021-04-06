lbl_8011C1B4:
/* 8011C1B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8011C1B8  7C 08 02 A6 */	mflr r0
/* 8011C1BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8011C1C0  39 61 00 20 */	addi r11, r1, 0x20
/* 8011C1C4  48 24 60 15 */	bl _savegpr_28
/* 8011C1C8  7C 7D 1B 78 */	mr r29, r3
/* 8011C1CC  3B FD 1F D0 */	addi r31, r29, 0x1fd0
/* 8011C1D0  A8 03 30 08 */	lha r0, 0x3008(r3)
/* 8011C1D4  2C 00 00 00 */	cmpwi r0, 0
/* 8011C1D8  40 82 00 18 */	bne lbl_8011C1F0
/* 8011C1DC  4B FF CA 19 */	bl setDeadRideSyncPos__9daAlink_cFv
/* 8011C1E0  38 00 00 01 */	li r0, 1
/* 8011C1E4  B0 1D 30 08 */	sth r0, 0x3008(r29)
/* 8011C1E8  38 60 00 01 */	li r3, 1
/* 8011C1EC  48 00 04 28 */	b lbl_8011C614
lbl_8011C1F0:
/* 8011C1F0  80 1D 28 F0 */	lwz r0, 0x28f0(r29)
/* 8011C1F4  28 00 00 00 */	cmplwi r0, 0
/* 8011C1F8  40 82 00 40 */	bne lbl_8011C238
/* 8011C1FC  38 60 00 00 */	li r3, 0
/* 8011C200  48 07 FD C5 */	bl d_GameOver_Create__FUc
/* 8011C204  90 7D 28 F0 */	stw r3, 0x28f0(r29)
/* 8011C208  80 1D 28 F0 */	lwz r0, 0x28f0(r29)
/* 8011C20C  28 00 00 00 */	cmplwi r0, 0
/* 8011C210  40 82 00 0C */	bne lbl_8011C21C
/* 8011C214  38 60 00 01 */	li r3, 1
/* 8011C218  48 00 03 FC */	b lbl_8011C614
lbl_8011C21C:
/* 8011C21C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8011C220  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8011C224  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000013@ha */
/* 8011C228  38 84 00 13 */	addi r4, r4, 0x0013 /* 0x01000013@l */
/* 8011C22C  38 A0 00 00 */	li r5, 0
/* 8011C230  38 C0 00 00 */	li r6, 0
/* 8011C234  48 19 2D DD */	bl bgmStart__8Z2SeqMgrFUlUll
lbl_8011C238:
/* 8011C238  80 1D 05 78 */	lwz r0, 0x578(r29)
/* 8011C23C  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 8011C240  40 82 01 00 */	bne lbl_8011C340
/* 8011C244  A8 7D 30 0E */	lha r3, 0x300e(r29)
/* 8011C248  38 03 00 01 */	addi r0, r3, 1
/* 8011C24C  B0 1D 30 0E */	sth r0, 0x300e(r29)
/* 8011C250  A8 1D 30 0E */	lha r0, 0x300e(r29)
/* 8011C254  2C 00 00 02 */	cmpwi r0, 2
/* 8011C258  40 82 00 34 */	bne lbl_8011C28C
/* 8011C25C  28 1D 00 00 */	cmplwi r29, 0
/* 8011C260  41 82 00 0C */	beq lbl_8011C26C
/* 8011C264  83 9D 00 04 */	lwz r28, 4(r29)
/* 8011C268  48 00 00 08 */	b lbl_8011C270
lbl_8011C26C:
/* 8011C26C  3B 80 FF FF */	li r28, -1
lbl_8011C270:
/* 8011C270  48 06 53 D1 */	bl dCam_getBody__Fv
/* 8011C274  38 80 00 09 */	li r4, 9
/* 8011C278  7F 85 E3 78 */	mr r5, r28
/* 8011C27C  38 C0 00 00 */	li r6, 0
/* 8011C280  4C C6 31 82 */	crclr 6
/* 8011C284  4B F6 C7 F9 */	bl StartEventCamera__9dCamera_cFiie
/* 8011C288  48 00 00 14 */	b lbl_8011C29C
lbl_8011C28C:
/* 8011C28C  2C 00 00 0A */	cmpwi r0, 0xa
/* 8011C290  40 81 00 0C */	ble lbl_8011C29C
/* 8011C294  38 00 00 0A */	li r0, 0xa
/* 8011C298  B0 1D 30 0E */	sth r0, 0x300e(r29)
lbl_8011C29C:
/* 8011C29C  80 7D 31 A0 */	lwz r3, 0x31a0(r29)
/* 8011C2A0  54 60 05 6B */	rlwinm. r0, r3, 0, 0x15, 0x15
/* 8011C2A4  40 82 00 9C */	bne lbl_8011C340
/* 8011C2A8  54 60 03 5B */	rlwinm. r0, r3, 0, 0xd, 0xd
/* 8011C2AC  41 82 00 34 */	beq lbl_8011C2E0
/* 8011C2B0  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 8011C2B4  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 8011C2B8  41 82 00 88 */	beq lbl_8011C340
/* 8011C2BC  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8011C2C0  C0 3D 33 B4 */	lfs f1, 0x33b4(r29)
/* 8011C2C4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8011C2C8  40 81 00 78 */	ble lbl_8011C340
/* 8011C2CC  D0 3D 04 D4 */	stfs f1, 0x4d4(r29)
/* 8011C2D0  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 8011C2D4  60 00 01 00 */	ori r0, r0, 0x100
/* 8011C2D8  90 1D 05 70 */	stw r0, 0x570(r29)
/* 8011C2DC  48 00 00 64 */	b lbl_8011C340
lbl_8011C2E0:
/* 8011C2E0  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8011C2E4  C0 02 96 74 */	lfs f0, lit_38175(r2)
/* 8011C2E8  EC 21 00 28 */	fsubs f1, f1, f0
/* 8011C2EC  C0 02 93 C8 */	lfs f0, lit_10286(r2)
/* 8011C2F0  EC 01 00 24 */	fdivs f0, f1, f0
/* 8011C2F4  D0 1D 33 CC */	stfs f0, 0x33cc(r29)
/* 8011C2F8  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 8011C2FC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8011C300  40 82 00 18 */	bne lbl_8011C318
/* 8011C304  7F E3 FB 78 */	mr r3, r31
/* 8011C308  C0 22 96 78 */	lfs f1, lit_38176(r2)
/* 8011C30C  48 20 C1 21 */	bl checkPass__12J3DFrameCtrlFf
/* 8011C310  2C 03 00 00 */	cmpwi r3, 0
/* 8011C314  40 82 00 24 */	bne lbl_8011C338
lbl_8011C318:
/* 8011C318  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 8011C31C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8011C320  41 82 00 20 */	beq lbl_8011C340
/* 8011C324  7F E3 FB 78 */	mr r3, r31
/* 8011C328  C0 22 96 7C */	lfs f1, lit_38177(r2)
/* 8011C32C  48 20 C1 01 */	bl checkPass__12J3DFrameCtrlFf
/* 8011C330  2C 03 00 00 */	cmpwi r3, 0
/* 8011C334  41 82 00 0C */	beq lbl_8011C340
lbl_8011C338:
/* 8011C338  38 00 00 04 */	li r0, 4
/* 8011C33C  98 1D 2F 9D */	stb r0, 0x2f9d(r29)
lbl_8011C340:
/* 8011C340  7F A3 EB 78 */	mr r3, r29
/* 8011C344  4B FF C8 B1 */	bl setDeadRideSyncPos__9daAlink_cFv
/* 8011C348  7F E3 FB 78 */	mr r3, r31
/* 8011C34C  48 04 21 81 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8011C350  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011C354  40 82 00 2C */	bne lbl_8011C380
/* 8011C358  80 1D 31 A0 */	lwz r0, 0x31a0(r29)
/* 8011C35C  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 8011C360  41 82 00 14 */	beq lbl_8011C374
/* 8011C364  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8011C368  C0 02 93 10 */	lfs f0, lit_7306(r2)
/* 8011C36C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8011C370  41 81 00 10 */	bgt lbl_8011C380
lbl_8011C374:
/* 8011C374  80 1D 05 78 */	lwz r0, 0x578(r29)
/* 8011C378  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 8011C37C  41 82 02 94 */	beq lbl_8011C610
lbl_8011C380:
/* 8011C380  38 7D 34 78 */	addi r3, r29, 0x3478
/* 8011C384  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8011C388  C0 42 93 88 */	lfs f2, lit_8782(r2)
/* 8011C38C  48 15 43 B5 */	bl cLib_chaseF__FPfff
/* 8011C390  C0 3D 34 78 */	lfs f1, 0x3478(r29)
/* 8011C394  C0 02 96 70 */	lfs f0, lit_38059(r2)
/* 8011C398  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8011C39C  40 80 00 28 */	bge lbl_8011C3C4
/* 8011C3A0  80 7D 28 F0 */	lwz r3, 0x28f0(r29)
/* 8011C3A4  3C 03 00 01 */	addis r0, r3, 1
/* 8011C3A8  28 00 FF FF */	cmplwi r0, 0xffff
/* 8011C3AC  41 82 00 18 */	beq lbl_8011C3C4
/* 8011C3B0  4B F0 36 75 */	bl fopMsgM_SearchByID__FUi
/* 8011C3B4  28 03 00 00 */	cmplwi r3, 0
/* 8011C3B8  41 82 00 0C */	beq lbl_8011C3C4
/* 8011C3BC  38 00 00 01 */	li r0, 1
/* 8011C3C0  98 03 01 19 */	stb r0, 0x119(r3)
lbl_8011C3C4:
/* 8011C3C4  A8 1D 30 0C */	lha r0, 0x300c(r29)
/* 8011C3C8  2C 00 00 00 */	cmpwi r0, 0
/* 8011C3CC  40 82 00 50 */	bne lbl_8011C41C
/* 8011C3D0  80 7D 28 F0 */	lwz r3, 0x28f0(r29)
/* 8011C3D4  3C 03 00 01 */	addis r0, r3, 1
/* 8011C3D8  28 00 FF FF */	cmplwi r0, 0xffff
/* 8011C3DC  41 82 00 2C */	beq lbl_8011C408
/* 8011C3E0  4B F0 36 45 */	bl fopMsgM_SearchByID__FUi
/* 8011C3E4  28 03 00 00 */	cmplwi r3, 0
/* 8011C3E8  41 82 00 18 */	beq lbl_8011C400
/* 8011C3EC  88 03 01 18 */	lbz r0, 0x118(r3)
/* 8011C3F0  20 00 00 08 */	subfic r0, r0, 8
/* 8011C3F4  7C 00 00 34 */	cntlzw r0, r0
/* 8011C3F8  54 00 DE 3E */	rlwinm r0, r0, 0x1b, 0x18, 0x1f
/* 8011C3FC  48 00 00 10 */	b lbl_8011C40C
lbl_8011C400:
/* 8011C400  38 00 00 00 */	li r0, 0
/* 8011C404  48 00 00 08 */	b lbl_8011C40C
lbl_8011C408:
/* 8011C408  38 00 00 00 */	li r0, 0
lbl_8011C40C:
/* 8011C40C  2C 00 00 00 */	cmpwi r0, 0
/* 8011C410  41 82 00 0C */	beq lbl_8011C41C
/* 8011C414  38 00 00 01 */	li r0, 1
/* 8011C418  B0 1D 30 0C */	sth r0, 0x300c(r29)
lbl_8011C41C:
/* 8011C41C  A8 1D 30 0C */	lha r0, 0x300c(r29)
/* 8011C420  2C 00 00 00 */	cmpwi r0, 0
/* 8011C424  41 82 01 EC */	beq lbl_8011C610
/* 8011C428  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8011C42C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8011C430  88 04 5E 89 */	lbz r0, 0x5e89(r4)
/* 8011C434  28 00 00 02 */	cmplwi r0, 2
/* 8011C438  40 82 01 D8 */	bne lbl_8011C610
/* 8011C43C  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 8011C440  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 8011C444  40 82 01 CC */	bne lbl_8011C610
/* 8011C448  A0 64 00 02 */	lhz r3, 2(r4)
/* 8011C44C  C0 44 5D C0 */	lfs f2, 0x5dc0(r4)
/* 8011C450  38 03 FF F4 */	addi r0, r3, -12
/* 8011C454  7C 00 00 D0 */	neg r0, r0
/* 8011C458  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 8011C45C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8011C460  90 01 00 0C */	stw r0, 0xc(r1)
/* 8011C464  3C 00 43 30 */	lis r0, 0x4330
/* 8011C468  90 01 00 08 */	stw r0, 8(r1)
/* 8011C46C  C8 01 00 08 */	lfd f0, 8(r1)
/* 8011C470  EC 00 08 28 */	fsubs f0, f0, f1
/* 8011C474  EC 02 00 2A */	fadds f0, f2, f0
/* 8011C478  D0 04 5D C0 */	stfs f0, 0x5dc0(r4)
/* 8011C47C  38 00 00 00 */	li r0, 0
/* 8011C480  98 04 5E B6 */	stb r0, 0x5eb6(r4)
/* 8011C484  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8011C488  7C 1C 07 74 */	extsb r28, r0
/* 8011C48C  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 8011C490  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 8011C494  38 63 01 1C */	addi r3, r3, 0x11c
/* 8011C498  4B F8 15 C9 */	bl checkStageName__9daAlink_cFPCc
/* 8011C49C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011C4A0  40 82 00 24 */	bne lbl_8011C4C4
/* 8011C4A4  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 8011C4A8  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 8011C4AC  38 63 01 24 */	addi r3, r3, 0x124
/* 8011C4B0  4B F8 15 B1 */	bl checkStageName__9daAlink_cFPCc
/* 8011C4B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011C4B8  41 82 00 14 */	beq lbl_8011C4CC
/* 8011C4BC  2C 1C 00 37 */	cmpwi r28, 0x37
/* 8011C4C0  40 82 00 0C */	bne lbl_8011C4CC
lbl_8011C4C4:
/* 8011C4C4  3B E0 00 00 */	li r31, 0
/* 8011C4C8  48 00 00 08 */	b lbl_8011C4D0
lbl_8011C4CC:
/* 8011C4CC  3B E0 00 05 */	li r31, 5
lbl_8011C4D0:
/* 8011C4D0  3B C0 FF FF */	li r30, -1
/* 8011C4D4  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 8011C4D8  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 8011C4DC  38 63 01 2C */	addi r3, r3, 0x12c
/* 8011C4E0  4B F8 15 81 */	bl checkStageName__9daAlink_cFPCc
/* 8011C4E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011C4E8  41 82 00 3C */	beq lbl_8011C524
/* 8011C4EC  2C 1C 00 32 */	cmpwi r28, 0x32
/* 8011C4F0  40 82 00 34 */	bne lbl_8011C524
/* 8011C4F4  38 60 00 00 */	li r3, 0
/* 8011C4F8  4B F1 04 85 */	bl getLayerNo__14dComIfG_play_cFi
/* 8011C4FC  2C 03 00 00 */	cmpwi r3, 0
/* 8011C500  41 82 00 14 */	beq lbl_8011C514
/* 8011C504  38 60 00 00 */	li r3, 0
/* 8011C508  4B F1 04 75 */	bl getLayerNo__14dComIfG_play_cFi
/* 8011C50C  2C 03 00 01 */	cmpwi r3, 1
/* 8011C510  40 82 00 14 */	bne lbl_8011C524
lbl_8011C514:
/* 8011C514  38 60 00 00 */	li r3, 0
/* 8011C518  4B F1 04 65 */	bl getLayerNo__14dComIfG_play_cFi
/* 8011C51C  38 63 00 01 */	addi r3, r3, 1
/* 8011C520  48 00 00 CC */	b lbl_8011C5EC
lbl_8011C524:
/* 8011C524  4B FA 3D A5 */	bl checkBossRoom__9daAlink_cFv
/* 8011C528  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011C52C  41 82 00 88 */	beq lbl_8011C5B4
/* 8011C530  2C 1C 00 32 */	cmpwi r28, 0x32
/* 8011C534  40 82 00 20 */	bne lbl_8011C554
/* 8011C538  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8011C53C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8011C540  38 63 09 58 */	addi r3, r3, 0x958
/* 8011C544  38 80 00 03 */	li r4, 3
/* 8011C548  4B F1 83 ED */	bl isDungeonItem__12dSv_memBit_cCFi
/* 8011C54C  2C 03 00 00 */	cmpwi r3, 0
/* 8011C550  41 82 00 5C */	beq lbl_8011C5AC
lbl_8011C554:
/* 8011C554  2C 1C 00 33 */	cmpwi r28, 0x33
/* 8011C558  40 82 00 20 */	bne lbl_8011C578
/* 8011C55C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8011C560  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8011C564  38 63 09 58 */	addi r3, r3, 0x958
/* 8011C568  38 80 00 07 */	li r4, 7
/* 8011C56C  4B F1 83 C9 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 8011C570  2C 03 00 00 */	cmpwi r3, 0
/* 8011C574  41 82 00 38 */	beq lbl_8011C5AC
lbl_8011C578:
/* 8011C578  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 8011C57C  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 8011C580  38 63 01 34 */	addi r3, r3, 0x134
/* 8011C584  4B F8 14 DD */	bl checkStageName__9daAlink_cFPCc
/* 8011C588  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011C58C  41 82 00 28 */	beq lbl_8011C5B4
/* 8011C590  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8011C594  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8011C598  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8011C59C  38 80 28 80 */	li r4, 0x2880
/* 8011C5A0  4B F1 84 1D */	bl isEventBit__11dSv_event_cCFUs
/* 8011C5A4  2C 03 00 00 */	cmpwi r3, 0
/* 8011C5A8  40 82 00 0C */	bne lbl_8011C5B4
lbl_8011C5AC:
/* 8011C5AC  38 60 00 00 */	li r3, 0
/* 8011C5B0  48 00 00 3C */	b lbl_8011C5EC
lbl_8011C5B4:
/* 8011C5B4  A8 1D 30 12 */	lha r0, 0x3012(r29)
/* 8011C5B8  2C 00 00 3F */	cmpwi r0, 0x3f
/* 8011C5BC  41 82 00 10 */	beq lbl_8011C5CC
/* 8011C5C0  7C 03 03 78 */	mr r3, r0
/* 8011C5C4  83 DD 31 98 */	lwz r30, 0x3198(r29)
/* 8011C5C8  48 00 00 24 */	b lbl_8011C5EC
lbl_8011C5CC:
/* 8011C5CC  7F A3 EB 78 */	mr r3, r29
/* 8011C5D0  7F E4 FB 78 */	mr r4, r31
/* 8011C5D4  38 A0 00 C9 */	li r5, 0xc9
/* 8011C5D8  38 C0 00 00 */	li r6, 0
/* 8011C5DC  38 E0 00 01 */	li r7, 1
/* 8011C5E0  4B FA 19 81 */	bl startRestartRoom__9daAlink_cFUliii
/* 8011C5E4  38 60 00 01 */	li r3, 1
/* 8011C5E8  48 00 00 2C */	b lbl_8011C614
lbl_8011C5EC:
/* 8011C5EC  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 8011C5F0  60 00 40 00 */	ori r0, r0, 0x4000
/* 8011C5F4  90 1D 05 70 */	stw r0, 0x570(r29)
/* 8011C5F8  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8011C5FC  7F E4 FB 78 */	mr r4, r31
/* 8011C600  7F C5 07 74 */	extsb r5, r30
/* 8011C604  A8 DD 04 E6 */	lha r6, 0x4e6(r29)
/* 8011C608  38 E0 FF FF */	li r7, -1
/* 8011C60C  4B F0 AB 65 */	bl dStage_changeScene__FifUlScsi
lbl_8011C610:
/* 8011C610  38 60 00 01 */	li r3, 1
lbl_8011C614:
/* 8011C614  39 61 00 20 */	addi r11, r1, 0x20
/* 8011C618  48 24 5C 0D */	bl _restgpr_28
/* 8011C61C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8011C620  7C 08 03 A6 */	mtlr r0
/* 8011C624  38 21 00 20 */	addi r1, r1, 0x20
/* 8011C628  4E 80 00 20 */	blr 
