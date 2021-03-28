lbl_8056D310:
/* 8056D310  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8056D314  7C 08 02 A6 */	mflr r0
/* 8056D318  90 01 00 44 */	stw r0, 0x44(r1)
/* 8056D31C  39 61 00 40 */	addi r11, r1, 0x40
/* 8056D320  4B DF 4E B0 */	b _savegpr_26
/* 8056D324  7C 7C 1B 78 */	mr r28, r3
/* 8056D328  7C 9A 23 78 */	mr r26, r4
/* 8056D32C  38 7C 0B A0 */	addi r3, r28, 0xba0
/* 8056D330  4B BD 83 D8 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 8056D334  7C 7F 1B 78 */	mr r31, r3
/* 8056D338  3B C0 00 00 */	li r30, 0
/* 8056D33C  3B A0 FF FF */	li r29, -1
/* 8056D340  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8056D344  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8056D348  3B 63 4F F8 */	addi r27, r3, 0x4ff8
/* 8056D34C  7F 63 DB 78 */	mr r3, r27
/* 8056D350  7F 44 D3 78 */	mr r4, r26
/* 8056D354  3C A0 80 57 */	lis r5, struct_80571908+0x0@ha
/* 8056D358  38 A5 19 08 */	addi r5, r5, struct_80571908+0x0@l
/* 8056D35C  38 A5 02 9C */	addi r5, r5, 0x29c
/* 8056D360  38 C0 00 03 */	li r6, 3
/* 8056D364  4B AD AD 88 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 8056D368  28 03 00 00 */	cmplwi r3, 0
/* 8056D36C  41 82 00 08 */	beq lbl_8056D374
/* 8056D370  83 A3 00 00 */	lwz r29, 0(r3)
lbl_8056D374:
/* 8056D374  7F 63 DB 78 */	mr r3, r27
/* 8056D378  7F 44 D3 78 */	mr r4, r26
/* 8056D37C  4B AD A9 D0 */	b getIsAddvance__16dEvent_manager_cFi
/* 8056D380  2C 03 00 00 */	cmpwi r3, 0
/* 8056D384  41 82 01 7C */	beq lbl_8056D500
/* 8056D388  2C 1D 00 01 */	cmpwi r29, 1
/* 8056D38C  41 82 00 8C */	beq lbl_8056D418
/* 8056D390  40 80 01 70 */	bge lbl_8056D500
/* 8056D394  2C 1D 00 00 */	cmpwi r29, 0
/* 8056D398  40 80 00 08 */	bge lbl_8056D3A0
/* 8056D39C  48 00 01 64 */	b lbl_8056D500
lbl_8056D3A0:
/* 8056D3A0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8056D3A4  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 8056D3A8  28 04 00 FF */	cmplwi r4, 0xff
/* 8056D3AC  38 00 FF FF */	li r0, -1
/* 8056D3B0  41 82 00 08 */	beq lbl_8056D3B8
/* 8056D3B4  7C 80 23 78 */	mr r0, r4
lbl_8056D3B8:
/* 8056D3B8  2C 00 FF FF */	cmpwi r0, -1
/* 8056D3BC  40 81 01 44 */	ble lbl_8056D500
/* 8056D3C0  28 04 00 FF */	cmplwi r4, 0xff
/* 8056D3C4  38 60 FF FF */	li r3, -1
/* 8056D3C8  41 82 00 08 */	beq lbl_8056D3D0
/* 8056D3CC  54 83 04 3E */	clrlwi r3, r4, 0x10
lbl_8056D3D0:
/* 8056D3D0  88 9F 04 E2 */	lbz r4, 0x4e2(r31)
/* 8056D3D4  7C 84 07 74 */	extsb r4, r4
/* 8056D3D8  38 A1 00 14 */	addi r5, r1, 0x14
/* 8056D3DC  38 C1 00 0C */	addi r6, r1, 0xc
/* 8056D3E0  4B BD F1 20 */	b daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz
/* 8056D3E4  2C 03 00 00 */	cmpwi r3, 0
/* 8056D3E8  41 82 01 18 */	beq lbl_8056D500
/* 8056D3EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8056D3F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8056D3F4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8056D3F8  38 81 00 14 */	addi r4, r1, 0x14
/* 8056D3FC  A8 A1 00 0E */	lha r5, 0xe(r1)
/* 8056D400  38 C0 00 00 */	li r6, 0
/* 8056D404  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8056D408  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8056D40C  7D 89 03 A6 */	mtctr r12
/* 8056D410  4E 80 04 21 */	bctrl 
/* 8056D414  48 00 00 EC */	b lbl_8056D500
lbl_8056D418:
/* 8056D418  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 8056D41C  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8056D420  41 82 00 28 */	beq lbl_8056D448
/* 8056D424  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 8056D428  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 8056D42C  4B BD 84 6C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056D430  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 8056D434  38 00 00 1F */	li r0, 0x1f
/* 8056D438  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 8056D43C  3C 60 80 57 */	lis r3, lit_4472@ha
/* 8056D440  C0 03 17 AC */	lfs f0, lit_4472@l(r3)
/* 8056D444  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_8056D448:
/* 8056D448  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 8056D44C  2C 00 00 00 */	cmpwi r0, 0
/* 8056D450  41 82 00 28 */	beq lbl_8056D478
/* 8056D454  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 8056D458  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 8056D45C  4B BD 84 3C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056D460  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 8056D464  38 00 00 00 */	li r0, 0
/* 8056D468  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 8056D46C  3C 60 80 57 */	lis r3, lit_4472@ha
/* 8056D470  C0 03 17 AC */	lfs f0, lit_4472@l(r3)
/* 8056D474  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_8056D478:
/* 8056D478  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 8056D47C  2C 00 00 00 */	cmpwi r0, 0
/* 8056D480  41 82 00 28 */	beq lbl_8056D4A8
/* 8056D484  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 8056D488  4B BD 82 74 */	b remove__18daNpcT_ActorMngr_cFv
/* 8056D48C  38 00 00 00 */	li r0, 0
/* 8056D490  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 8056D494  3C 60 80 57 */	lis r3, lit_4472@ha
/* 8056D498  C0 03 17 AC */	lfs f0, lit_4472@l(r3)
/* 8056D49C  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 8056D4A0  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 8056D4A4  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_8056D4A8:
/* 8056D4A8  38 00 00 00 */	li r0, 0
/* 8056D4AC  B0 1C 0C D4 */	sth r0, 0xcd4(r28)
/* 8056D4B0  B0 1C 0C D6 */	sth r0, 0xcd6(r28)
/* 8056D4B4  38 00 00 01 */	li r0, 1
/* 8056D4B8  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 8056D4BC  A8 7F 04 B4 */	lha r3, 0x4b4(r31)
/* 8056D4C0  3C 03 00 00 */	addis r0, r3, 0
/* 8056D4C4  28 00 FF FF */	cmplwi r0, 0xffff
/* 8056D4C8  38 80 FF FF */	li r4, -1
/* 8056D4CC  41 82 00 08 */	beq lbl_8056D4D4
/* 8056D4D0  54 64 04 3E */	clrlwi r4, r3, 0x10
lbl_8056D4D4:
/* 8056D4D4  7F 83 E3 78 */	mr r3, r28
/* 8056D4D8  38 A0 00 00 */	li r5, 0
/* 8056D4DC  4B BD E7 14 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 8056D4E0  7F 83 E3 78 */	mr r3, r28
/* 8056D4E4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8056D4E8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8056D4EC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8056D4F0  4B AA D2 20 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8056D4F4  7C 64 1B 78 */	mr r4, r3
/* 8056D4F8  7F 83 E3 78 */	mr r3, r28
/* 8056D4FC  4B BD D5 1C */	b setAngle__8daNpcT_cFs
lbl_8056D500:
/* 8056D500  2C 1D 00 01 */	cmpwi r29, 1
/* 8056D504  41 82 00 30 */	beq lbl_8056D534
/* 8056D508  40 80 00 98 */	bge lbl_8056D5A0
/* 8056D50C  2C 1D 00 00 */	cmpwi r29, 0
/* 8056D510  40 80 00 08 */	bge lbl_8056D518
/* 8056D514  48 00 00 8C */	b lbl_8056D5A0
lbl_8056D518:
/* 8056D518  7F 83 E3 78 */	mr r3, r28
/* 8056D51C  81 9C 0E 3C */	lwz r12, 0xe3c(r28)
/* 8056D520  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8056D524  7D 89 03 A6 */	mtctr r12
/* 8056D528  4E 80 04 21 */	bctrl 
/* 8056D52C  3B C0 00 01 */	li r30, 1
/* 8056D530  48 00 00 74 */	b lbl_8056D5A4
lbl_8056D534:
/* 8056D534  7F 83 E3 78 */	mr r3, r28
/* 8056D538  38 80 00 00 */	li r4, 0
/* 8056D53C  38 A0 00 00 */	li r5, 0
/* 8056D540  38 C0 00 00 */	li r6, 0
/* 8056D544  38 E0 00 00 */	li r7, 0
/* 8056D548  4B BD E7 30 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 8056D54C  2C 03 00 00 */	cmpwi r3, 0
/* 8056D550  41 82 00 54 */	beq lbl_8056D5A4
/* 8056D554  38 7C 09 74 */	addi r3, r28, 0x974
/* 8056D558  38 81 00 08 */	addi r4, r1, 8
/* 8056D55C  4B CD CF CC */	b getEventId__10dMsgFlow_cFPi
/* 8056D560  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8056D564  28 00 00 02 */	cmplwi r0, 2
/* 8056D568  40 82 00 20 */	bne lbl_8056D588
/* 8056D56C  3C 60 80 57 */	lis r3, struct_80571908+0x0@ha
/* 8056D570  38 63 19 08 */	addi r3, r3, struct_80571908+0x0@l
/* 8056D574  38 63 02 B8 */	addi r3, r3, 0x2b8
/* 8056D578  38 80 00 14 */	li r4, 0x14
/* 8056D57C  38 A0 00 01 */	li r5, 1
/* 8056D580  38 C0 00 08 */	li r6, 8
/* 8056D584  4B AB FF D0 */	b dComIfGp_setNextStage__FPCcsScSc
lbl_8056D588:
/* 8056D588  38 00 00 01 */	li r0, 1
/* 8056D58C  98 1C 11 A0 */	stb r0, 0x11a0(r28)
/* 8056D590  38 7C 0B A0 */	addi r3, r28, 0xba0
/* 8056D594  4B BD 81 68 */	b remove__18daNpcT_ActorMngr_cFv
/* 8056D598  3B C0 00 01 */	li r30, 1
/* 8056D59C  48 00 00 08 */	b lbl_8056D5A4
lbl_8056D5A0:
/* 8056D5A0  3B C0 00 01 */	li r30, 1
lbl_8056D5A4:
/* 8056D5A4  7F C3 F3 78 */	mr r3, r30
/* 8056D5A8  39 61 00 40 */	addi r11, r1, 0x40
/* 8056D5AC  4B DF 4C 70 */	b _restgpr_26
/* 8056D5B0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8056D5B4  7C 08 03 A6 */	mtlr r0
/* 8056D5B8  38 21 00 40 */	addi r1, r1, 0x40
/* 8056D5BC  4E 80 00 20 */	blr 
