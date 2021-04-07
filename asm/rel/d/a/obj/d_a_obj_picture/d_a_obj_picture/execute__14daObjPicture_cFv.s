lbl_80CAE1B8:
/* 80CAE1B8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80CAE1BC  7C 08 02 A6 */	mflr r0
/* 80CAE1C0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CAE1C4  39 61 00 40 */	addi r11, r1, 0x40
/* 80CAE1C8  4B 6B 40 0D */	bl _savegpr_27
/* 80CAE1CC  7C 7E 1B 78 */	mr r30, r3
/* 80CAE1D0  3C 80 80 CB */	lis r4, l_dzbIdx@ha /* 0x80CAF01C@ha */
/* 80CAE1D4  3B E4 F0 1C */	addi r31, r4, l_dzbIdx@l /* 0x80CAF01C@l */
/* 80CAE1D8  88 03 0D 26 */	lbz r0, 0xd26(r3)
/* 80CAE1DC  28 00 00 00 */	cmplwi r0, 0
/* 80CAE1E0  41 82 00 10 */	beq lbl_80CAE1F0
/* 80CAE1E4  48 00 04 55 */	bl setTmgModelMtx__14daObjPicture_cFv
/* 80CAE1E8  38 60 00 01 */	li r3, 1
/* 80CAE1EC  48 00 03 0C */	b lbl_80CAE4F8
lbl_80CAE1F0:
/* 80CAE1F0  88 1E 0D 24 */	lbz r0, 0xd24(r30)
/* 80CAE1F4  2C 00 00 02 */	cmpwi r0, 2
/* 80CAE1F8  41 82 02 54 */	beq lbl_80CAE44C
/* 80CAE1FC  40 80 02 E0 */	bge lbl_80CAE4DC
/* 80CAE200  2C 00 00 00 */	cmpwi r0, 0
/* 80CAE204  41 82 00 10 */	beq lbl_80CAE214
/* 80CAE208  40 80 01 60 */	bge lbl_80CAE368
/* 80CAE20C  48 00 02 D0 */	b lbl_80CAE4DC
/* 80CAE210  48 00 02 CC */	b lbl_80CAE4DC
lbl_80CAE214:
/* 80CAE214  48 00 0B 15 */	bl chkHitRope__14daObjPicture_cFv
/* 80CAE218  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CAE21C  40 82 00 14 */	bne lbl_80CAE230
/* 80CAE220  7F C3 F3 78 */	mr r3, r30
/* 80CAE224  48 00 0B B9 */	bl chkHitBombTg__14daObjPicture_cFv
/* 80CAE228  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CAE22C  41 82 00 F8 */	beq lbl_80CAE324
lbl_80CAE230:
/* 80CAE230  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80CAE234  54 04 E6 3E */	rlwinm r4, r0, 0x1c, 0x18, 0x1f
/* 80CAE238  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CAE23C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CAE240  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80CAE244  7C 05 07 74 */	extsb r5, r0
/* 80CAE248  4B 38 6F B9 */	bl onSwitch__10dSv_info_cFii
/* 80CAE24C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802B4@ha */
/* 80CAE250  38 03 02 B4 */	addi r0, r3, 0x02B4 /* 0x000802B4@l */
/* 80CAE254  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CAE258  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CAE25C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CAE260  80 63 00 00 */	lwz r3, 0(r3)
/* 80CAE264  38 81 00 0C */	addi r4, r1, 0xc
/* 80CAE268  38 BE 0C 88 */	addi r5, r30, 0xc88
/* 80CAE26C  38 C0 00 00 */	li r6, 0
/* 80CAE270  38 E0 00 00 */	li r7, 0
/* 80CAE274  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80CAE278  FC 40 08 90 */	fmr f2, f1
/* 80CAE27C  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80CAE280  FC 80 18 90 */	fmr f4, f3
/* 80CAE284  39 00 00 00 */	li r8, 0
/* 80CAE288  4B 5F D6 FD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CAE28C  38 00 00 01 */	li r0, 1
/* 80CAE290  98 1E 0D 24 */	stb r0, 0xd24(r30)
/* 80CAE294  C0 5F 00 54 */	lfs f2, 0x54(r31)
/* 80CAE298  D0 5E 04 F8 */	stfs f2, 0x4f8(r30)
/* 80CAE29C  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80CAE2A0  D0 3E 04 FC */	stfs f1, 0x4fc(r30)
/* 80CAE2A4  D0 5E 05 00 */	stfs f2, 0x500(r30)
/* 80CAE2A8  38 A0 00 00 */	li r5, 0
/* 80CAE2AC  38 60 00 00 */	li r3, 0
/* 80CAE2B0  38 00 00 0A */	li r0, 0xa
/* 80CAE2B4  7C 09 03 A6 */	mtctr r0
lbl_80CAE2B8:
/* 80CAE2B8  2C 05 00 05 */	cmpwi r5, 5
/* 80CAE2BC  41 82 00 0C */	beq lbl_80CAE2C8
/* 80CAE2C0  2C 05 00 06 */	cmpwi r5, 6
/* 80CAE2C4  40 82 00 14 */	bne lbl_80CAE2D8
lbl_80CAE2C8:
/* 80CAE2C8  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80CAE2CC  38 03 0D 28 */	addi r0, r3, 0xd28
/* 80CAE2D0  7C 1E 05 2E */	stfsx f0, r30, r0
/* 80CAE2D4  48 00 00 30 */	b lbl_80CAE304
lbl_80CAE2D8:
/* 80CAE2D8  2C 05 00 00 */	cmpwi r5, 0
/* 80CAE2DC  41 82 00 0C */	beq lbl_80CAE2E8
/* 80CAE2E0  2C 05 00 01 */	cmpwi r5, 1
/* 80CAE2E4  40 82 00 14 */	bne lbl_80CAE2F8
lbl_80CAE2E8:
/* 80CAE2E8  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80CAE2EC  38 03 0D 28 */	addi r0, r3, 0xd28
/* 80CAE2F0  7C 1E 05 2E */	stfsx f0, r30, r0
/* 80CAE2F4  48 00 00 10 */	b lbl_80CAE304
lbl_80CAE2F8:
/* 80CAE2F8  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80CAE2FC  38 03 0D 28 */	addi r0, r3, 0xd28
/* 80CAE300  7C 1E 05 2E */	stfsx f0, r30, r0
lbl_80CAE304:
/* 80CAE304  7C 9E 1A 14 */	add r4, r30, r3
/* 80CAE308  D0 24 0D 2C */	stfs f1, 0xd2c(r4)
/* 80CAE30C  D0 44 0D 30 */	stfs f2, 0xd30(r4)
/* 80CAE310  38 A5 00 01 */	addi r5, r5, 1
/* 80CAE314  38 63 00 0C */	addi r3, r3, 0xc
/* 80CAE318  42 00 FF A0 */	bdnz lbl_80CAE2B8
/* 80CAE31C  38 60 00 01 */	li r3, 1
/* 80CAE320  48 00 01 D8 */	b lbl_80CAE4F8
lbl_80CAE324:
/* 80CAE324  3B 60 00 00 */	li r27, 0
/* 80CAE328  3B E0 00 00 */	li r31, 0
/* 80CAE32C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CAE330  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CAE334  3B A3 23 3C */	addi r29, r3, 0x233c
lbl_80CAE338:
/* 80CAE338  7F A3 EB 78 */	mr r3, r29
/* 80CAE33C  7F 9E FA 14 */	add r28, r30, r31
/* 80CAE340  38 9C 06 28 */	addi r4, r28, 0x628
/* 80CAE344  4B 5B 68 65 */	bl Set__4cCcSFP8cCcD_Obj
/* 80CAE348  7F A3 EB 78 */	mr r3, r29
/* 80CAE34C  38 9C 09 EC */	addi r4, r28, 0x9ec
/* 80CAE350  4B 5B 68 59 */	bl Set__4cCcSFP8cCcD_Obj
/* 80CAE354  3B 7B 00 01 */	addi r27, r27, 1
/* 80CAE358  2C 1B 00 02 */	cmpwi r27, 2
/* 80CAE35C  3B FF 01 44 */	addi r31, r31, 0x144
/* 80CAE360  41 80 FF D8 */	blt lbl_80CAE338
/* 80CAE364  48 00 01 78 */	b lbl_80CAE4DC
lbl_80CAE368:
/* 80CAE368  C0 5E 0C 9C */	lfs f2, 0xc9c(r30)
/* 80CAE36C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80CAE370  C0 1E 0C 94 */	lfs f0, 0xc94(r30)
/* 80CAE374  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CAE378  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80CAE37C  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80CAE380  38 61 00 1C */	addi r3, r1, 0x1c
/* 80CAE384  4B 36 F9 39 */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80CAE388  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80CAE38C  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 80CAE390  EC 01 00 2A */	fadds f0, f1, f0
/* 80CAE394  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80CAE398  7F C3 F3 78 */	mr r3, r30
/* 80CAE39C  48 00 05 4D */	bl moveLineFall1__14daObjPicture_cFv
/* 80CAE3A0  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha /* 0x80450CD0@ha */
/* 80CAE3A4  C0 23 0C D0 */	lfs f1, mGroundY__11fopAcM_gc_c@l(r3)  /* 0x80450CD0@l */
/* 80CAE3A8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80CAE3AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CAE3B0  40 81 00 68 */	ble lbl_80CAE418
/* 80CAE3B4  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802B5@ha */
/* 80CAE3B8  38 03 02 B5 */	addi r0, r3, 0x02B5 /* 0x000802B5@l */
/* 80CAE3BC  90 01 00 08 */	stw r0, 8(r1)
/* 80CAE3C0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CAE3C4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CAE3C8  80 63 00 00 */	lwz r3, 0(r3)
/* 80CAE3CC  38 81 00 08 */	addi r4, r1, 8
/* 80CAE3D0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80CAE3D4  38 C0 00 00 */	li r6, 0
/* 80CAE3D8  38 E0 00 00 */	li r7, 0
/* 80CAE3DC  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80CAE3E0  FC 40 08 90 */	fmr f2, f1
/* 80CAE3E4  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80CAE3E8  FC 80 18 90 */	fmr f4, f3
/* 80CAE3EC  39 00 00 00 */	li r8, 0
/* 80CAE3F0  4B 5F D5 95 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CAE3F4  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80CAE3F8  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha /* 0x80450CD0@ha */
/* 80CAE3FC  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)  /* 0x80450CD0@l */
/* 80CAE400  EC 01 00 2A */	fadds f0, f1, f0
/* 80CAE404  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80CAE408  38 00 00 02 */	li r0, 2
/* 80CAE40C  98 1E 0D 24 */	stb r0, 0xd24(r30)
/* 80CAE410  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80CAE414  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_80CAE418:
/* 80CAE418  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80CAE41C  C0 1E 05 30 */	lfs f0, 0x530(r30)
/* 80CAE420  EC 01 00 2A */	fadds f0, f1, f0
/* 80CAE424  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80CAE428  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80CAE42C  C0 3E 0C A0 */	lfs f1, 0xca0(r30)
/* 80CAE430  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 80CAE434  4B 5C 23 0D */	bl cLib_chaseF__FPfff
/* 80CAE438  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 80CAE43C  C0 3E 0C A8 */	lfs f1, 0xca8(r30)
/* 80CAE440  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 80CAE444  4B 5C 22 FD */	bl cLib_chaseF__FPfff
/* 80CAE448  48 00 00 94 */	b lbl_80CAE4DC
lbl_80CAE44C:
/* 80CAE44C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80CAE450  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CAE454  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80CAE458  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CAE45C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80CAE460  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CAE464  38 61 00 10 */	addi r3, r1, 0x10
/* 80CAE468  4B 36 F8 55 */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80CAE46C  A8 7E 04 E4 */	lha r3, 0x4e4(r30)
/* 80CAE470  38 03 04 00 */	addi r0, r3, 0x400
/* 80CAE474  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80CAE478  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 80CAE47C  2C 00 40 00 */	cmpwi r0, 0x4000
/* 80CAE480  40 81 00 0C */	ble lbl_80CAE48C
/* 80CAE484  38 00 40 00 */	li r0, 0x4000
/* 80CAE488  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
lbl_80CAE48C:
/* 80CAE48C  7F C3 F3 78 */	mr r3, r30
/* 80CAE490  48 00 05 D1 */	bl moveLineFall2__14daObjPicture_cFv
/* 80CAE494  88 1E 0D 27 */	lbz r0, 0xd27(r30)
/* 80CAE498  28 00 00 00 */	cmplwi r0, 0
/* 80CAE49C  41 82 00 18 */	beq lbl_80CAE4B4
/* 80CAE4A0  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 80CAE4A4  2C 00 40 00 */	cmpwi r0, 0x4000
/* 80CAE4A8  40 82 00 0C */	bne lbl_80CAE4B4
/* 80CAE4AC  38 00 00 03 */	li r0, 3
/* 80CAE4B0  98 1E 0D 24 */	stb r0, 0xd24(r30)
lbl_80CAE4B4:
/* 80CAE4B4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80CAE4B8  C0 3E 0C A0 */	lfs f1, 0xca0(r30)
/* 80CAE4BC  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 80CAE4C0  4B 5C 22 81 */	bl cLib_chaseF__FPfff
/* 80CAE4C4  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 80CAE4C8  C0 3E 0C A8 */	lfs f1, 0xca8(r30)
/* 80CAE4CC  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 80CAE4D0  4B 5C 22 71 */	bl cLib_chaseF__FPfff
/* 80CAE4D4  7F C3 F3 78 */	mr r3, r30
/* 80CAE4D8  48 00 09 B9 */	bl setPicAtCol__14daObjPicture_cFv
lbl_80CAE4DC:
/* 80CAE4DC  7F C3 F3 78 */	mr r3, r30
/* 80CAE4E0  48 00 00 D1 */	bl setPicModelMtx__14daObjPicture_cFv
/* 80CAE4E4  7F C3 F3 78 */	mr r3, r30
/* 80CAE4E8  48 00 01 51 */	bl setTmgModelMtx__14daObjPicture_cFv
/* 80CAE4EC  80 7E 0C C0 */	lwz r3, 0xcc0(r30)
/* 80CAE4F0  4B 3C D4 D1 */	bl Move__4dBgWFv
/* 80CAE4F4  38 60 00 01 */	li r3, 1
lbl_80CAE4F8:
/* 80CAE4F8  39 61 00 40 */	addi r11, r1, 0x40
/* 80CAE4FC  4B 6B 3D 25 */	bl _restgpr_27
/* 80CAE500  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CAE504  7C 08 03 A6 */	mtlr r0
/* 80CAE508  38 21 00 40 */	addi r1, r1, 0x40
/* 80CAE50C  4E 80 00 20 */	blr 
