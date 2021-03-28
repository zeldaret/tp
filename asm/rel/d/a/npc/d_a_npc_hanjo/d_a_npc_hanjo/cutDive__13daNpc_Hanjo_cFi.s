lbl_809FD3C0:
/* 809FD3C0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809FD3C4  7C 08 02 A6 */	mflr r0
/* 809FD3C8  90 01 00 44 */	stw r0, 0x44(r1)
/* 809FD3CC  39 61 00 40 */	addi r11, r1, 0x40
/* 809FD3D0  4B 96 4D F8 */	b _savegpr_24
/* 809FD3D4  7C 7B 1B 78 */	mr r27, r3
/* 809FD3D8  7C 9A 23 78 */	mr r26, r4
/* 809FD3DC  3C 60 80 A0 */	lis r3, m__19daNpc_Hanjo_Param_c@ha
/* 809FD3E0  3B E3 06 00 */	addi r31, r3, m__19daNpc_Hanjo_Param_c@l
/* 809FD3E4  3B A0 00 00 */	li r29, 0
/* 809FD3E8  3B 80 FF FF */	li r28, -1
/* 809FD3EC  3B 00 00 00 */	li r24, 0
/* 809FD3F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809FD3F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809FD3F8  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 809FD3FC  3B 3E 40 C0 */	addi r25, r30, 0x40c0
/* 809FD400  7F 23 CB 78 */	mr r3, r25
/* 809FD404  3C A0 80 A0 */	lis r5, struct_80A007F8+0x0@ha
/* 809FD408  38 A5 07 F8 */	addi r5, r5, struct_80A007F8+0x0@l
/* 809FD40C  38 A5 01 1D */	addi r5, r5, 0x11d
/* 809FD410  38 C0 00 03 */	li r6, 3
/* 809FD414  4B 64 AC D8 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 809FD418  28 03 00 00 */	cmplwi r3, 0
/* 809FD41C  41 82 00 08 */	beq lbl_809FD424
/* 809FD420  83 83 00 00 */	lwz r28, 0(r3)
lbl_809FD424:
/* 809FD424  7F 23 CB 78 */	mr r3, r25
/* 809FD428  7F 44 D3 78 */	mr r4, r26
/* 809FD42C  3C A0 80 A0 */	lis r5, struct_80A007F8+0x0@ha
/* 809FD430  38 A5 07 F8 */	addi r5, r5, struct_80A007F8+0x0@l
/* 809FD434  38 A5 01 31 */	addi r5, r5, 0x131
/* 809FD438  38 C0 00 03 */	li r6, 3
/* 809FD43C  4B 64 AC B0 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 809FD440  28 03 00 00 */	cmplwi r3, 0
/* 809FD444  41 82 00 08 */	beq lbl_809FD44C
/* 809FD448  83 03 00 00 */	lwz r24, 0(r3)
lbl_809FD44C:
/* 809FD44C  7F 23 CB 78 */	mr r3, r25
/* 809FD450  7F 44 D3 78 */	mr r4, r26
/* 809FD454  4B 64 A8 F8 */	b getIsAddvance__16dEvent_manager_cFi
/* 809FD458  2C 03 00 00 */	cmpwi r3, 0
/* 809FD45C  41 82 01 BC */	beq lbl_809FD618
/* 809FD460  2C 1C 00 02 */	cmpwi r28, 2
/* 809FD464  41 82 00 E8 */	beq lbl_809FD54C
/* 809FD468  40 80 00 14 */	bge lbl_809FD47C
/* 809FD46C  2C 1C 00 00 */	cmpwi r28, 0
/* 809FD470  41 82 00 18 */	beq lbl_809FD488
/* 809FD474  40 80 00 B8 */	bge lbl_809FD52C
/* 809FD478  48 00 01 A0 */	b lbl_809FD618
lbl_809FD47C:
/* 809FD47C  2C 1C 00 04 */	cmpwi r28, 4
/* 809FD480  40 80 01 98 */	bge lbl_809FD618
/* 809FD484  48 00 01 8C */	b lbl_809FD610
lbl_809FD488:
/* 809FD488  C0 1F 01 D0 */	lfs f0, 0x1d0(r31)
/* 809FD48C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809FD490  C0 1F 01 D4 */	lfs f0, 0x1d4(r31)
/* 809FD494  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809FD498  C0 1F 01 D8 */	lfs f0, 0x1d8(r31)
/* 809FD49C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 809FD4A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809FD4A4  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l
/* 809FD4A8  80 7A 5D AC */	lwz r3, 0x5dac(r26)
/* 809FD4AC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 809FD4B0  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 809FD4B4  7D 89 03 A6 */	mtctr r12
/* 809FD4B8  4E 80 04 21 */	bctrl 
/* 809FD4BC  28 03 00 00 */	cmplwi r3, 0
/* 809FD4C0  41 82 00 14 */	beq lbl_809FD4D4
/* 809FD4C4  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 809FD4C8  C0 1F 01 DC */	lfs f0, 0x1dc(r31)
/* 809FD4CC  EC 01 00 2A */	fadds f0, f1, f0
/* 809FD4D0  D0 01 00 18 */	stfs f0, 0x18(r1)
lbl_809FD4D4:
/* 809FD4D4  38 61 00 14 */	addi r3, r1, 0x14
/* 809FD4D8  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 809FD4DC  4B 87 37 28 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 809FD4E0  7C 60 1B 78 */	mr r0, r3
/* 809FD4E4  B0 01 00 0E */	sth r0, 0xe(r1)
/* 809FD4E8  80 7A 5D AC */	lwz r3, 0x5dac(r26)
/* 809FD4EC  38 81 00 14 */	addi r4, r1, 0x14
/* 809FD4F0  7C 05 07 34 */	extsh r5, r0
/* 809FD4F4  38 C0 00 00 */	li r6, 0
/* 809FD4F8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 809FD4FC  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 809FD500  7D 89 03 A6 */	mtctr r12
/* 809FD504  4E 80 04 21 */	bctrl 
/* 809FD508  7F 23 CB 78 */	mr r3, r25
/* 809FD50C  38 81 00 14 */	addi r4, r1, 0x14
/* 809FD510  4B 64 AE B4 */	b setGoal__16dEvent_manager_cFP4cXyz
/* 809FD514  7F 63 DB 78 */	mr r3, r27
/* 809FD518  38 80 00 D0 */	li r4, 0xd0
/* 809FD51C  38 A0 00 00 */	li r5, 0
/* 809FD520  4B 74 E6 D0 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 809FD524  93 1B 0D C4 */	stw r24, 0xdc4(r27)
/* 809FD528  48 00 00 F0 */	b lbl_809FD618
lbl_809FD52C:
/* 809FD52C  38 7B 10 D8 */	addi r3, r27, 0x10d8
/* 809FD530  4B 74 81 D8 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 809FD534  28 03 00 00 */	cmplwi r3, 0
/* 809FD538  41 82 00 E0 */	beq lbl_809FD618
/* 809FD53C  A0 03 06 BE */	lhz r0, 0x6be(r3)
/* 809FD540  60 00 00 02 */	ori r0, r0, 2
/* 809FD544  B0 03 06 BE */	sth r0, 0x6be(r3)
/* 809FD548  48 00 00 D0 */	b lbl_809FD618
lbl_809FD54C:
/* 809FD54C  80 1B 0B 58 */	lwz r0, 0xb58(r27)
/* 809FD550  2C 00 00 06 */	cmpwi r0, 6
/* 809FD554  41 82 00 24 */	beq lbl_809FD578
/* 809FD558  83 5B 0B 5C */	lwz r26, 0xb5c(r27)
/* 809FD55C  38 7B 0B 50 */	addi r3, r27, 0xb50
/* 809FD560  4B 74 83 38 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FD564  93 5B 0B 5C */	stw r26, 0xb5c(r27)
/* 809FD568  38 00 00 06 */	li r0, 6
/* 809FD56C  90 1B 0B 58 */	stw r0, 0xb58(r27)
/* 809FD570  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 809FD574  D0 1B 0B 68 */	stfs f0, 0xb68(r27)
lbl_809FD578:
/* 809FD578  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 809FD57C  2C 00 00 11 */	cmpwi r0, 0x11
/* 809FD580  41 82 00 24 */	beq lbl_809FD5A4
/* 809FD584  83 5B 0B 80 */	lwz r26, 0xb80(r27)
/* 809FD588  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 809FD58C  4B 74 83 0C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FD590  93 5B 0B 80 */	stw r26, 0xb80(r27)
/* 809FD594  38 00 00 11 */	li r0, 0x11
/* 809FD598  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 809FD59C  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 809FD5A0  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
lbl_809FD5A4:
/* 809FD5A4  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 809FD5A8  2C 00 00 00 */	cmpwi r0, 0
/* 809FD5AC  41 82 00 24 */	beq lbl_809FD5D0
/* 809FD5B0  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 809FD5B4  4B 74 81 48 */	b remove__18daNpcT_ActorMngr_cFv
/* 809FD5B8  38 00 00 00 */	li r0, 0
/* 809FD5BC  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 809FD5C0  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 809FD5C4  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 809FD5C8  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 809FD5CC  90 1B 0C E0 */	stw r0, 0xce0(r27)
lbl_809FD5D0:
/* 809FD5D0  38 00 00 00 */	li r0, 0
/* 809FD5D4  B0 1B 0C D4 */	sth r0, 0xcd4(r27)
/* 809FD5D8  B0 1B 0C D6 */	sth r0, 0xcd6(r27)
/* 809FD5DC  38 00 00 01 */	li r0, 1
/* 809FD5E0  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 809FD5E4  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050073@ha */
/* 809FD5E8  38 03 00 73 */	addi r0, r3, 0x0073 /* 0x00050073@l */
/* 809FD5EC  90 01 00 08 */	stw r0, 8(r1)
/* 809FD5F0  38 7B 05 80 */	addi r3, r27, 0x580
/* 809FD5F4  38 81 00 08 */	addi r4, r1, 8
/* 809FD5F8  38 A0 FF FF */	li r5, -1
/* 809FD5FC  81 9B 05 80 */	lwz r12, 0x580(r27)
/* 809FD600  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 809FD604  7D 89 03 A6 */	mtctr r12
/* 809FD608  4E 80 04 21 */	bctrl 
/* 809FD60C  48 00 00 0C */	b lbl_809FD618
lbl_809FD610:
/* 809FD610  7F 63 DB 78 */	mr r3, r27
/* 809FD614  4B FF E5 81 */	bl initDive__13daNpc_Hanjo_cFv
lbl_809FD618:
/* 809FD618  2C 1C 00 02 */	cmpwi r28, 2
/* 809FD61C  41 82 00 FC */	beq lbl_809FD718
/* 809FD620  40 80 00 14 */	bge lbl_809FD634
/* 809FD624  2C 1C 00 00 */	cmpwi r28, 0
/* 809FD628  41 82 00 18 */	beq lbl_809FD640
/* 809FD62C  40 80 00 B8 */	bge lbl_809FD6E4
/* 809FD630  48 00 02 20 */	b lbl_809FD850
lbl_809FD634:
/* 809FD634  2C 1C 00 04 */	cmpwi r28, 4
/* 809FD638  40 80 02 18 */	bge lbl_809FD850
/* 809FD63C  48 00 01 F0 */	b lbl_809FD82C
lbl_809FD640:
/* 809FD640  38 7B 0D C4 */	addi r3, r27, 0xdc4
/* 809FD644  48 00 28 29 */	bl func_809FFE6C
/* 809FD648  2C 03 00 00 */	cmpwi r3, 0
/* 809FD64C  40 82 02 04 */	bne lbl_809FD850
/* 809FD650  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 809FD654  2C 00 00 01 */	cmpwi r0, 1
/* 809FD658  41 82 00 28 */	beq lbl_809FD680
/* 809FD65C  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 809FD660  4B 74 80 9C */	b remove__18daNpcT_ActorMngr_cFv
/* 809FD664  38 00 00 00 */	li r0, 0
/* 809FD668  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 809FD66C  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 809FD670  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 809FD674  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 809FD678  38 00 00 01 */	li r0, 1
/* 809FD67C  90 1B 0C E0 */	stw r0, 0xce0(r27)
lbl_809FD680:
/* 809FD680  38 00 00 00 */	li r0, 0
/* 809FD684  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 809FD688  A8 9B 0D C8 */	lha r4, 0xdc8(r27)
/* 809FD68C  A8 1B 0D 7A */	lha r0, 0xd7a(r27)
/* 809FD690  7C 04 00 00 */	cmpw r4, r0
/* 809FD694  40 82 00 0C */	bne lbl_809FD6A0
/* 809FD698  3B A0 00 01 */	li r29, 1
/* 809FD69C  48 00 01 B4 */	b lbl_809FD850
lbl_809FD6A0:
/* 809FD6A0  88 1B 10 C4 */	lbz r0, 0x10c4(r27)
/* 809FD6A4  28 00 00 01 */	cmplwi r0, 1
/* 809FD6A8  40 82 00 20 */	bne lbl_809FD6C8
/* 809FD6AC  7F 63 DB 78 */	mr r3, r27
/* 809FD6B0  38 A0 00 07 */	li r5, 7
/* 809FD6B4  38 C0 00 0A */	li r6, 0xa
/* 809FD6B8  38 E0 00 0F */	li r7, 0xf
/* 809FD6BC  39 00 00 00 */	li r8, 0
/* 809FD6C0  4B 74 DF 88 */	b step__8daNpcT_cFsiiii
/* 809FD6C4  48 00 01 8C */	b lbl_809FD850
lbl_809FD6C8:
/* 809FD6C8  7F 63 DB 78 */	mr r3, r27
/* 809FD6CC  38 A0 00 07 */	li r5, 7
/* 809FD6D0  38 C0 00 0E */	li r6, 0xe
/* 809FD6D4  38 E0 00 0F */	li r7, 0xf
/* 809FD6D8  39 00 00 00 */	li r8, 0
/* 809FD6DC  4B 74 DF 6C */	b step__8daNpcT_cFsiiii
/* 809FD6E0  48 00 01 70 */	b lbl_809FD850
lbl_809FD6E4:
/* 809FD6E4  7F 63 DB 78 */	mr r3, r27
/* 809FD6E8  38 80 00 00 */	li r4, 0
/* 809FD6EC  38 A0 00 00 */	li r5, 0
/* 809FD6F0  38 C0 00 00 */	li r6, 0
/* 809FD6F4  38 E0 00 00 */	li r7, 0
/* 809FD6F8  4B 74 E5 80 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 809FD6FC  2C 03 00 00 */	cmpwi r3, 0
/* 809FD700  41 82 01 50 */	beq lbl_809FD850
/* 809FD704  88 1B 09 9A */	lbz r0, 0x99a(r27)
/* 809FD708  28 00 00 01 */	cmplwi r0, 1
/* 809FD70C  40 82 01 44 */	bne lbl_809FD850
/* 809FD710  3B A0 00 01 */	li r29, 1
/* 809FD714  48 00 01 3C */	b lbl_809FD850
lbl_809FD718:
/* 809FD718  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 809FD71C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809FD720  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809FD724  C0 1F 01 B4 */	lfs f0, 0x1b4(r31)
/* 809FD728  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 809FD72C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809FD730  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809FD734  A8 9B 0D 7A */	lha r4, 0xd7a(r27)
/* 809FD738  4B 60 EC A4 */	b mDoMtx_YrotS__FPA4_fs
/* 809FD73C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809FD740  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809FD744  38 81 00 14 */	addi r4, r1, 0x14
/* 809FD748  7C 85 23 78 */	mr r5, r4
/* 809FD74C  4B 94 96 20 */	b PSMTXMultVec
/* 809FD750  38 61 00 14 */	addi r3, r1, 0x14
/* 809FD754  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 809FD758  7C 65 1B 78 */	mr r5, r3
/* 809FD75C  4B 94 99 34 */	b PSVECAdd
/* 809FD760  C0 1B 05 54 */	lfs f0, 0x554(r27)
/* 809FD764  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809FD768  38 7B 09 30 */	addi r3, r27, 0x930
/* 809FD76C  38 81 00 14 */	addi r4, r1, 0x14
/* 809FD770  4B 86 A5 B8 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 809FD774  7F C3 F3 78 */	mr r3, r30
/* 809FD778  38 9B 09 30 */	addi r4, r27, 0x930
/* 809FD77C  4B 67 6D 24 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 809FD780  C0 1B 0D F4 */	lfs f0, 0xdf4(r27)
/* 809FD784  EC 21 00 28 */	fsubs f1, f1, f0
/* 809FD788  38 7F 00 00 */	addi r3, r31, 0
/* 809FD78C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 809FD790  FC 00 00 50 */	fneg f0, f0
/* 809FD794  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809FD798  40 80 00 08 */	bge lbl_809FD7A0
/* 809FD79C  3B A0 00 01 */	li r29, 1
lbl_809FD7A0:
/* 809FD7A0  88 1B 10 C4 */	lbz r0, 0x10c4(r27)
/* 809FD7A4  28 00 00 01 */	cmplwi r0, 1
/* 809FD7A8  40 82 00 40 */	bne lbl_809FD7E8
/* 809FD7AC  A8 7B 04 B6 */	lha r3, 0x4b6(r27)
/* 809FD7B0  38 03 80 00 */	addi r0, r3, -32768
/* 809FD7B4  B0 01 00 0E */	sth r0, 0xe(r1)
/* 809FD7B8  38 60 00 CF */	li r3, 0xcf
/* 809FD7BC  4B 74 F2 F0 */	b daNpcT_chkEvtBit__FUl
/* 809FD7C0  2C 03 00 00 */	cmpwi r3, 0
/* 809FD7C4  41 82 00 14 */	beq lbl_809FD7D8
/* 809FD7C8  A8 7B 04 B6 */	lha r3, 0x4b6(r27)
/* 809FD7CC  38 03 40 00 */	addi r0, r3, 0x4000
/* 809FD7D0  B0 01 00 0E */	sth r0, 0xe(r1)
/* 809FD7D4  48 00 00 1C */	b lbl_809FD7F0
lbl_809FD7D8:
/* 809FD7D8  A8 7B 04 B6 */	lha r3, 0x4b6(r27)
/* 809FD7DC  38 03 C0 00 */	addi r0, r3, -16384
/* 809FD7E0  B0 01 00 0E */	sth r0, 0xe(r1)
/* 809FD7E4  48 00 00 0C */	b lbl_809FD7F0
lbl_809FD7E8:
/* 809FD7E8  A8 1B 04 B6 */	lha r0, 0x4b6(r27)
/* 809FD7EC  B0 01 00 0E */	sth r0, 0xe(r1)
lbl_809FD7F0:
/* 809FD7F0  38 7B 04 DE */	addi r3, r27, 0x4de
/* 809FD7F4  A8 81 00 0E */	lha r4, 0xe(r1)
/* 809FD7F8  38 A0 00 04 */	li r5, 4
/* 809FD7FC  38 C0 08 00 */	li r6, 0x800
/* 809FD800  4B 87 2E 08 */	b cLib_addCalcAngleS2__FPssss
/* 809FD804  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 809FD808  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 809FD80C  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 809FD810  B0 1B 0D 7A */	sth r0, 0xd7a(r27)
/* 809FD814  38 7B 05 2C */	addi r3, r27, 0x52c
/* 809FD818  38 9F 00 00 */	addi r4, r31, 0
/* 809FD81C  C0 24 00 90 */	lfs f1, 0x90(r4)
/* 809FD820  C0 5F 01 18 */	lfs f2, 0x118(r31)
/* 809FD824  4B 87 2F 1C */	b cLib_chaseF__FPfff
/* 809FD828  48 00 00 28 */	b lbl_809FD850
lbl_809FD82C:
/* 809FD82C  88 1B 17 20 */	lbz r0, 0x1720(r27)
/* 809FD830  28 00 00 00 */	cmplwi r0, 0
/* 809FD834  41 82 00 1C */	beq lbl_809FD850
/* 809FD838  88 1B 10 C4 */	lbz r0, 0x10c4(r27)
/* 809FD83C  28 00 00 01 */	cmplwi r0, 1
/* 809FD840  40 82 00 0C */	bne lbl_809FD84C
/* 809FD844  38 60 00 D0 */	li r3, 0xd0
/* 809FD848  4B 74 F1 E4 */	b daNpcT_onEvtBit__FUl
lbl_809FD84C:
/* 809FD84C  3B A0 00 01 */	li r29, 1
lbl_809FD850:
/* 809FD850  7F A3 EB 78 */	mr r3, r29
/* 809FD854  39 61 00 40 */	addi r11, r1, 0x40
/* 809FD858  4B 96 49 BC */	b _restgpr_24
/* 809FD85C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809FD860  7C 08 03 A6 */	mtlr r0
/* 809FD864  38 21 00 40 */	addi r1, r1, 0x40
/* 809FD868  4E 80 00 20 */	blr 
