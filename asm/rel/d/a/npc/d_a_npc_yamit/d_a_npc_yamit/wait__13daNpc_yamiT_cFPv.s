lbl_80B4B41C:
/* 80B4B41C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B4B420  7C 08 02 A6 */	mflr r0
/* 80B4B424  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B4B428  39 61 00 30 */	addi r11, r1, 0x30
/* 80B4B42C  4B 81 6D B1 */	bl _savegpr_29
/* 80B4B430  7C 7E 1B 78 */	mr r30, r3
/* 80B4B434  3C 60 80 B5 */	lis r3, m__19daNpc_yamiT_Param_c@ha /* 0x80B4CDA4@ha */
/* 80B4B438  3B E3 CD A4 */	addi r31, r3, m__19daNpc_yamiT_Param_c@l /* 0x80B4CDA4@l */
/* 80B4B43C  A0 1E 0E 22 */	lhz r0, 0xe22(r30)
/* 80B4B440  2C 00 00 02 */	cmpwi r0, 2
/* 80B4B444  41 82 00 8C */	beq lbl_80B4B4D0
/* 80B4B448  40 80 03 70 */	bge lbl_80B4B7B8
/* 80B4B44C  2C 00 00 00 */	cmpwi r0, 0
/* 80B4B450  40 80 00 0C */	bge lbl_80B4B45C
/* 80B4B454  48 00 03 64 */	b lbl_80B4B7B8
/* 80B4B458  48 00 03 60 */	b lbl_80B4B7B8
lbl_80B4B45C:
/* 80B4B45C  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80B4B460  2C 00 00 00 */	cmpwi r0, 0
/* 80B4B464  40 82 00 6C */	bne lbl_80B4B4D0
/* 80B4B468  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80B4B46C  2C 00 00 01 */	cmpwi r0, 1
/* 80B4B470  41 82 00 24 */	beq lbl_80B4B494
/* 80B4B474  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80B4B478  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80B4B47C  4B 5F A4 1D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B4B480  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80B4B484  38 00 00 01 */	li r0, 1
/* 80B4B488  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80B4B48C  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80B4B490  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80B4B494:
/* 80B4B494  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80B4B498  2C 00 00 00 */	cmpwi r0, 0
/* 80B4B49C  41 82 00 24 */	beq lbl_80B4B4C0
/* 80B4B4A0  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80B4B4A4  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80B4B4A8  4B 5F A3 F1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B4B4AC  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80B4B4B0  38 00 00 00 */	li r0, 0
/* 80B4B4B4  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80B4B4B8  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80B4B4BC  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80B4B4C0:
/* 80B4B4C0  38 00 00 00 */	li r0, 0
/* 80B4B4C4  98 1E 0F 83 */	stb r0, 0xf83(r30)
/* 80B4B4C8  38 00 00 02 */	li r0, 2
/* 80B4B4CC  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80B4B4D0:
/* 80B4B4D0  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80B4B4D4  2C 00 00 00 */	cmpwi r0, 0
/* 80B4B4D8  40 82 02 E0 */	bne lbl_80B4B7B8
/* 80B4B4DC  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80B4B4E0  4B 5F A2 29 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B4B4E4  28 03 00 00 */	cmplwi r3, 0
/* 80B4B4E8  41 82 01 4C */	beq lbl_80B4B634
/* 80B4B4EC  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80B4B4F0  28 00 00 00 */	cmplwi r0, 0
/* 80B4B4F4  40 82 01 40 */	bne lbl_80B4B634
/* 80B4B4F8  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80B4B4FC  2C 00 00 00 */	cmpwi r0, 0
/* 80B4B500  41 82 00 24 */	beq lbl_80B4B524
/* 80B4B504  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B4B508  4B 5F A1 F5 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B4B50C  38 00 00 00 */	li r0, 0
/* 80B4B510  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80B4B514  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80B4B518  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80B4B51C  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B4B520  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80B4B524:
/* 80B4B524  38 00 00 00 */	li r0, 0
/* 80B4B528  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B4B52C  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80B4B530  4B 5F A1 D9 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B4B534  7C 64 1B 78 */	mr r4, r3
/* 80B4B538  7F C3 F3 78 */	mr r3, r30
/* 80B4B53C  C0 3E 0D F8 */	lfs f1, 0xdf8(r30)
/* 80B4B540  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 80B4B544  4B 5F F6 8D */	bl chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 80B4B548  2C 03 00 00 */	cmpwi r3, 0
/* 80B4B54C  41 82 00 B4 */	beq lbl_80B4B600
/* 80B4B550  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80B4B554  2C 00 00 01 */	cmpwi r0, 1
/* 80B4B558  41 82 00 28 */	beq lbl_80B4B580
/* 80B4B55C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B4B560  4B 5F A1 9D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B4B564  38 00 00 00 */	li r0, 0
/* 80B4B568  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80B4B56C  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80B4B570  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80B4B574  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B4B578  38 00 00 01 */	li r0, 1
/* 80B4B57C  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80B4B580:
/* 80B4B580  38 00 00 00 */	li r0, 0
/* 80B4B584  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B4B588  88 1E 0F 83 */	lbz r0, 0xf83(r30)
/* 80B4B58C  7C 00 07 75 */	extsb. r0, r0
/* 80B4B590  40 82 00 70 */	bne lbl_80B4B600
/* 80B4B594  88 1E 0F 81 */	lbz r0, 0xf81(r30)
/* 80B4B598  7C 00 07 75 */	extsb. r0, r0
/* 80B4B59C  40 82 00 64 */	bne lbl_80B4B600
/* 80B4B5A0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80B4B5A4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B4B5A8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80B4B5AC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B4B5B0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80B4B5B4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B4B5B8  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005006F@ha */
/* 80B4B5BC  38 03 00 6F */	addi r0, r3, 0x006F /* 0x0005006F@l */
/* 80B4B5C0  90 01 00 08 */	stw r0, 8(r1)
/* 80B4B5C4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80B4B5C8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80B4B5CC  80 63 00 00 */	lwz r3, 0(r3)
/* 80B4B5D0  38 81 00 08 */	addi r4, r1, 8
/* 80B4B5D4  38 A1 00 0C */	addi r5, r1, 0xc
/* 80B4B5D8  38 C0 00 00 */	li r6, 0
/* 80B4B5DC  38 E0 00 00 */	li r7, 0
/* 80B4B5E0  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80B4B5E4  FC 40 08 90 */	fmr f2, f1
/* 80B4B5E8  C0 7F 00 B4 */	lfs f3, 0xb4(r31)
/* 80B4B5EC  FC 80 18 90 */	fmr f4, f3
/* 80B4B5F0  39 00 00 00 */	li r8, 0
/* 80B4B5F4  4B 76 03 91 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80B4B5F8  38 00 00 01 */	li r0, 1
/* 80B4B5FC  98 1E 0F 83 */	stb r0, 0xf83(r30)
lbl_80B4B600:
/* 80B4B600  7F C3 F3 78 */	mr r3, r30
/* 80B4B604  4B 5F FD 35 */	bl srchPlayerActor__8daNpcT_cFv
/* 80B4B608  2C 03 00 00 */	cmpwi r3, 0
/* 80B4B60C  40 82 00 CC */	bne lbl_80B4B6D8
/* 80B4B610  38 00 00 00 */	li r0, 0
/* 80B4B614  98 1E 0F 83 */	stb r0, 0xf83(r30)
/* 80B4B618  A8 7E 04 B6 */	lha r3, 0x4b6(r30)
/* 80B4B61C  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80B4B620  7C 03 00 00 */	cmpw r3, r0
/* 80B4B624  40 82 00 B4 */	bne lbl_80B4B6D8
/* 80B4B628  38 00 00 01 */	li r0, 1
/* 80B4B62C  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80B4B630  48 00 00 A8 */	b lbl_80B4B6D8
lbl_80B4B634:
/* 80B4B634  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80B4B638  2C 00 00 00 */	cmpwi r0, 0
/* 80B4B63C  41 82 00 24 */	beq lbl_80B4B660
/* 80B4B640  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B4B644  4B 5F A0 B9 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B4B648  38 00 00 00 */	li r0, 0
/* 80B4B64C  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80B4B650  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80B4B654  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80B4B658  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B4B65C  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80B4B660:
/* 80B4B660  38 00 00 00 */	li r0, 0
/* 80B4B664  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B4B668  98 1E 0F 83 */	stb r0, 0xf83(r30)
/* 80B4B66C  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 80B4B670  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80B4B674  7C 04 00 00 */	cmpw r4, r0
/* 80B4B678  41 82 00 58 */	beq lbl_80B4B6D0
/* 80B4B67C  88 1E 0E 34 */	lbz r0, 0xe34(r30)
/* 80B4B680  28 00 00 00 */	cmplwi r0, 0
/* 80B4B684  40 82 00 18 */	bne lbl_80B4B69C
/* 80B4B688  7F C3 F3 78 */	mr r3, r30
/* 80B4B68C  4B 5F F3 8D */	bl setAngle__8daNpcT_cFs
/* 80B4B690  38 00 00 01 */	li r0, 1
/* 80B4B694  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80B4B698  48 00 00 2C */	b lbl_80B4B6C4
lbl_80B4B69C:
/* 80B4B69C  7F C3 F3 78 */	mr r3, r30
/* 80B4B6A0  38 A0 00 01 */	li r5, 1
/* 80B4B6A4  38 C0 00 02 */	li r6, 2
/* 80B4B6A8  38 E0 00 0F */	li r7, 0xf
/* 80B4B6AC  39 00 00 00 */	li r8, 0
/* 80B4B6B0  4B 5F FF 99 */	bl step__8daNpcT_cFsiiii
/* 80B4B6B4  2C 03 00 00 */	cmpwi r3, 0
/* 80B4B6B8  41 82 00 0C */	beq lbl_80B4B6C4
/* 80B4B6BC  38 00 00 01 */	li r0, 1
/* 80B4B6C0  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80B4B6C4:
/* 80B4B6C4  38 00 00 00 */	li r0, 0
/* 80B4B6C8  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80B4B6CC  48 00 00 0C */	b lbl_80B4B6D8
lbl_80B4B6D0:
/* 80B4B6D0  7F C3 F3 78 */	mr r3, r30
/* 80B4B6D4  4B 5F FC 65 */	bl srchPlayerActor__8daNpcT_cFv
lbl_80B4B6D8:
/* 80B4B6D8  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80B4B6DC  28 00 00 01 */	cmplwi r0, 1
/* 80B4B6E0  40 82 00 D8 */	bne lbl_80B4B7B8
/* 80B4B6E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B4B6E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B4B6EC  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 80B4B6F0  A0 04 00 FA */	lhz r0, 0xfa(r4)
/* 80B4B6F4  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80B4B6F8  2C 00 00 01 */	cmpwi r0, 1
/* 80B4B6FC  40 82 00 BC */	bne lbl_80B4B7B8
/* 80B4B700  80 1E 0F 84 */	lwz r0, 0xf84(r30)
/* 80B4B704  28 00 00 00 */	cmplwi r0, 0
/* 80B4B708  41 82 00 B0 */	beq lbl_80B4B7B8
/* 80B4B70C  3B A0 00 00 */	li r29, 0
/* 80B4B710  38 80 00 3D */	li r4, 0x3d
/* 80B4B714  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80B4B718  7C 05 07 74 */	extsb r5, r0
/* 80B4B71C  4B 4E 9C 45 */	bl isSwitch__10dSv_info_cCFii
/* 80B4B720  2C 03 00 00 */	cmpwi r3, 0
/* 80B4B724  41 82 00 28 */	beq lbl_80B4B74C
/* 80B4B728  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B4B72C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B4B730  38 80 00 3E */	li r4, 0x3e
/* 80B4B734  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80B4B738  7C 05 07 74 */	extsb r5, r0
/* 80B4B73C  4B 4E 9C 25 */	bl isSwitch__10dSv_info_cCFii
/* 80B4B740  2C 03 00 00 */	cmpwi r3, 0
/* 80B4B744  41 82 00 08 */	beq lbl_80B4B74C
/* 80B4B748  3B A0 00 01 */	li r29, 1
lbl_80B4B74C:
/* 80B4B74C  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80B4B750  41 82 00 20 */	beq lbl_80B4B770
/* 80B4B754  80 7E 0F 84 */	lwz r3, 0xf84(r30)
/* 80B4B758  80 03 05 94 */	lwz r0, 0x594(r3)
/* 80B4B75C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80B4B760  90 03 05 94 */	stw r0, 0x594(r3)
/* 80B4B764  38 00 00 00 */	li r0, 0
/* 80B4B768  98 03 06 E0 */	stb r0, 0x6e0(r3)
/* 80B4B76C  48 00 00 4C */	b lbl_80B4B7B8
lbl_80B4B770:
/* 80B4B770  80 7E 0F 84 */	lwz r3, 0xf84(r30)
/* 80B4B774  80 03 05 94 */	lwz r0, 0x594(r3)
/* 80B4B778  60 00 00 01 */	ori r0, r0, 1
/* 80B4B77C  90 03 05 94 */	stw r0, 0x594(r3)
/* 80B4B780  38 80 00 01 */	li r4, 1
/* 80B4B784  98 83 06 E0 */	stb r4, 0x6e0(r3)
/* 80B4B788  80 7E 0F 84 */	lwz r3, 0xf84(r30)
/* 80B4B78C  80 03 07 00 */	lwz r0, 0x700(r3)
/* 80B4B790  2C 00 00 00 */	cmpwi r0, 0
/* 80B4B794  41 82 00 24 */	beq lbl_80B4B7B8
/* 80B4B798  98 9E 00 FF */	stb r4, 0xff(r30)
/* 80B4B79C  80 7E 0F 84 */	lwz r3, 0xf84(r30)
/* 80B4B7A0  80 03 05 94 */	lwz r0, 0x594(r3)
/* 80B4B7A4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80B4B7A8  90 03 05 94 */	stw r0, 0x594(r3)
/* 80B4B7AC  38 00 00 00 */	li r0, 0
/* 80B4B7B0  98 03 06 E0 */	stb r0, 0x6e0(r3)
/* 80B4B7B4  B0 9E 0E 30 */	sth r4, 0xe30(r30)
lbl_80B4B7B8:
/* 80B4B7B8  38 60 00 01 */	li r3, 1
/* 80B4B7BC  39 61 00 30 */	addi r11, r1, 0x30
/* 80B4B7C0  4B 81 6A 69 */	bl _restgpr_29
/* 80B4B7C4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B4B7C8  7C 08 03 A6 */	mtlr r0
/* 80B4B7CC  38 21 00 30 */	addi r1, r1, 0x30
/* 80B4B7D0  4E 80 00 20 */	blr 
