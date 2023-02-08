lbl_80CFC254:
/* 80CFC254  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CFC258  7C 08 02 A6 */	mflr r0
/* 80CFC25C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CFC260  39 61 00 30 */	addi r11, r1, 0x30
/* 80CFC264  4B 66 5F 79 */	bl _savegpr_29
/* 80CFC268  7C 7E 1B 78 */	mr r30, r3
/* 80CFC26C  7C 9D 23 78 */	mr r29, r4
/* 80CFC270  3C 60 80 D0 */	lis r3, l_bmdIdx@ha /* 0x80CFD1DC@ha */
/* 80CFC274  3B E3 D1 DC */	addi r31, r3, l_bmdIdx@l /* 0x80CFD1DC@l */
/* 80CFC278  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80CFC27C  4B 34 C5 F1 */	bl eventUpdate__17dEvLib_callback_cFv
/* 80CFC280  7F C3 F3 78 */	mr r3, r30
/* 80CFC284  48 00 02 41 */	bl action__13daObjSwHang_cFv
/* 80CFC288  7F C3 F3 78 */	mr r3, r30
/* 80CFC28C  4B FF FD C1 */	bl calcHangPos__13daObjSwHang_cFv
/* 80CFC290  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80CFC294  90 1D 00 00 */	stw r0, 0(r29)
/* 80CFC298  7F C3 F3 78 */	mr r3, r30
/* 80CFC29C  4B FF F7 C5 */	bl setBaseMtx__13daObjSwHang_cFv
/* 80CFC2A0  C0 1E 07 70 */	lfs f0, 0x770(r30)
/* 80CFC2A4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CFC2A8  C0 1E 07 74 */	lfs f0, 0x774(r30)
/* 80CFC2AC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CFC2B0  C0 1E 07 78 */	lfs f0, 0x778(r30)
/* 80CFC2B4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CFC2B8  88 1E 07 30 */	lbz r0, 0x730(r30)
/* 80CFC2BC  2C 00 00 03 */	cmpwi r0, 3
/* 80CFC2C0  41 82 00 44 */	beq lbl_80CFC304
/* 80CFC2C4  40 80 00 10 */	bge lbl_80CFC2D4
/* 80CFC2C8  2C 00 00 00 */	cmpwi r0, 0
/* 80CFC2CC  41 82 00 14 */	beq lbl_80CFC2E0
/* 80CFC2D0  48 00 01 A0 */	b lbl_80CFC470
lbl_80CFC2D4:
/* 80CFC2D4  2C 00 00 05 */	cmpwi r0, 5
/* 80CFC2D8  40 80 01 98 */	bge lbl_80CFC470
/* 80CFC2DC  48 00 00 E0 */	b lbl_80CFC3BC
lbl_80CFC2E0:
/* 80CFC2E0  38 7E 07 1C */	addi r3, r30, 0x71c
/* 80CFC2E4  38 9E 07 70 */	addi r4, r30, 0x770
/* 80CFC2E8  4B 57 33 61 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80CFC2EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CFC2F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CFC2F4  38 63 23 3C */	addi r3, r3, 0x233c
/* 80CFC2F8  38 9E 05 F8 */	addi r4, r30, 0x5f8
/* 80CFC2FC  4B 56 88 AD */	bl Set__4cCcSFP8cCcD_Obj
/* 80CFC300  48 00 01 70 */	b lbl_80CFC470
lbl_80CFC304:
/* 80CFC304  38 7E 05 F8 */	addi r3, r30, 0x5f8
/* 80CFC308  4B 38 81 59 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80CFC30C  28 03 00 00 */	cmplwi r3, 0
/* 80CFC310  41 82 00 6C */	beq lbl_80CFC37C
/* 80CFC314  38 7E 05 F8 */	addi r3, r30, 0x5f8
/* 80CFC318  4B 38 81 E1 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80CFC31C  28 03 00 00 */	cmplwi r3, 0
/* 80CFC320  41 82 00 5C */	beq lbl_80CFC37C
/* 80CFC324  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80CFC328  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 80CFC32C  41 82 00 50 */	beq lbl_80CFC37C
/* 80CFC330  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CFC334  7C 03 07 74 */	extsb r3, r0
/* 80CFC338  4B 33 0D 35 */	bl dComIfGp_getReverb__Fi
/* 80CFC33C  7C 67 1B 78 */	mr r7, r3
/* 80CFC340  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802C8@ha */
/* 80CFC344  38 03 02 C8 */	addi r0, r3, 0x02C8 /* 0x000802C8@l */
/* 80CFC348  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CFC34C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CFC350  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CFC354  80 63 00 00 */	lwz r3, 0(r3)
/* 80CFC358  38 81 00 0C */	addi r4, r1, 0xc
/* 80CFC35C  38 BE 05 38 */	addi r5, r30, 0x538
/* 80CFC360  38 C0 00 00 */	li r6, 0
/* 80CFC364  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80CFC368  FC 40 08 90 */	fmr f2, f1
/* 80CFC36C  C0 7F 00 6C */	lfs f3, 0x6c(r31)
/* 80CFC370  FC 80 18 90 */	fmr f4, f3
/* 80CFC374  39 00 00 00 */	li r8, 0
/* 80CFC378  4B 5A F6 0D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80CFC37C:
/* 80CFC37C  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80CFC380  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80CFC384  EC 01 00 2A */	fadds f0, f1, f0
/* 80CFC388  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CFC38C  38 7E 07 1C */	addi r3, r30, 0x71c
/* 80CFC390  38 81 00 10 */	addi r4, r1, 0x10
/* 80CFC394  4B 57 32 B5 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80CFC398  38 7E 07 1C */	addi r3, r30, 0x71c
/* 80CFC39C  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 80CFC3A0  4B 57 33 69 */	bl SetR__8cM3dGSphFf
/* 80CFC3A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CFC3A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CFC3AC  38 63 23 3C */	addi r3, r3, 0x233c
/* 80CFC3B0  38 9E 05 F8 */	addi r4, r30, 0x5f8
/* 80CFC3B4  4B 56 87 F5 */	bl Set__4cCcSFP8cCcD_Obj
/* 80CFC3B8  48 00 00 B8 */	b lbl_80CFC470
lbl_80CFC3BC:
/* 80CFC3BC  38 7E 05 F8 */	addi r3, r30, 0x5f8
/* 80CFC3C0  4B 38 80 A1 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80CFC3C4  28 03 00 00 */	cmplwi r3, 0
/* 80CFC3C8  41 82 00 6C */	beq lbl_80CFC434
/* 80CFC3CC  38 7E 05 F8 */	addi r3, r30, 0x5f8
/* 80CFC3D0  4B 38 81 29 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80CFC3D4  28 03 00 00 */	cmplwi r3, 0
/* 80CFC3D8  41 82 00 5C */	beq lbl_80CFC434
/* 80CFC3DC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80CFC3E0  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 80CFC3E4  41 82 00 50 */	beq lbl_80CFC434
/* 80CFC3E8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CFC3EC  7C 03 07 74 */	extsb r3, r0
/* 80CFC3F0  4B 33 0C 7D */	bl dComIfGp_getReverb__Fi
/* 80CFC3F4  7C 67 1B 78 */	mr r7, r3
/* 80CFC3F8  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802C8@ha */
/* 80CFC3FC  38 03 02 C8 */	addi r0, r3, 0x02C8 /* 0x000802C8@l */
/* 80CFC400  90 01 00 08 */	stw r0, 8(r1)
/* 80CFC404  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CFC408  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CFC40C  80 63 00 00 */	lwz r3, 0(r3)
/* 80CFC410  38 81 00 08 */	addi r4, r1, 8
/* 80CFC414  38 BE 05 38 */	addi r5, r30, 0x538
/* 80CFC418  38 C0 00 00 */	li r6, 0
/* 80CFC41C  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80CFC420  FC 40 08 90 */	fmr f2, f1
/* 80CFC424  C0 7F 00 6C */	lfs f3, 0x6c(r31)
/* 80CFC428  FC 80 18 90 */	fmr f4, f3
/* 80CFC42C  39 00 00 00 */	li r8, 0
/* 80CFC430  4B 5A F5 55 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80CFC434:
/* 80CFC434  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80CFC438  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80CFC43C  EC 01 00 2A */	fadds f0, f1, f0
/* 80CFC440  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CFC444  38 7E 07 1C */	addi r3, r30, 0x71c
/* 80CFC448  38 81 00 10 */	addi r4, r1, 0x10
/* 80CFC44C  4B 57 31 FD */	bl SetC__8cM3dGSphFRC4cXyz
/* 80CFC450  38 7E 07 1C */	addi r3, r30, 0x71c
/* 80CFC454  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80CFC458  4B 57 32 B1 */	bl SetR__8cM3dGSphFf
/* 80CFC45C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CFC460  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CFC464  38 63 23 3C */	addi r3, r3, 0x233c
/* 80CFC468  38 9E 05 F8 */	addi r4, r30, 0x5f8
/* 80CFC46C  4B 56 87 3D */	bl Set__4cCcSFP8cCcD_Obj
lbl_80CFC470:
/* 80CFC470  C0 1E 07 70 */	lfs f0, 0x770(r30)
/* 80CFC474  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 80CFC478  C0 1E 07 74 */	lfs f0, 0x774(r30)
/* 80CFC47C  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80CFC480  C0 1E 07 78 */	lfs f0, 0x778(r30)
/* 80CFC484  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 80CFC488  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80CFC48C  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80CFC490  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80CFC494  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80CFC498  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80CFC49C  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80CFC4A0  38 00 00 00 */	li r0, 0
/* 80CFC4A4  98 1E 07 7C */	stb r0, 0x77c(r30)
/* 80CFC4A8  38 60 00 01 */	li r3, 1
/* 80CFC4AC  39 61 00 30 */	addi r11, r1, 0x30
/* 80CFC4B0  4B 66 5D 79 */	bl _restgpr_29
/* 80CFC4B4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CFC4B8  7C 08 03 A6 */	mtlr r0
/* 80CFC4BC  38 21 00 30 */	addi r1, r1, 0x30
/* 80CFC4C0  4E 80 00 20 */	blr 
