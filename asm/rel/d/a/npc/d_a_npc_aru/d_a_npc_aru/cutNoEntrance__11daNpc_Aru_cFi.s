lbl_8095533C:
/* 8095533C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80955340  7C 08 02 A6 */	mflr r0
/* 80955344  90 01 00 44 */	stw r0, 0x44(r1)
/* 80955348  39 61 00 40 */	addi r11, r1, 0x40
/* 8095534C  4B A0 CE 7D */	bl _savegpr_24
/* 80955350  7C 78 1B 78 */	mr r24, r3
/* 80955354  7C 9E 23 78 */	mr r30, r4
/* 80955358  3C 60 80 95 */	lis r3, m__17daNpc_Aru_Param_c@ha /* 0x809576D0@ha */
/* 8095535C  3B A3 76 D0 */	addi r29, r3, m__17daNpc_Aru_Param_c@l /* 0x809576D0@l */
/* 80955360  3B 40 00 00 */	li r26, 0
/* 80955364  3B 20 FF FF */	li r25, -1
/* 80955368  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8095536C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80955370  3B 63 0F 38 */	addi r27, r3, 0xf38
/* 80955374  3B 9B 40 C0 */	addi r28, r27, 0x40c0
/* 80955378  7F 83 E3 78 */	mr r3, r28
/* 8095537C  3C A0 80 95 */	lis r5, d_a_npc_aru__stringBase0@ha /* 0x8095781C@ha */
/* 80955380  38 A5 78 1C */	addi r5, r5, d_a_npc_aru__stringBase0@l /* 0x8095781C@l */
/* 80955384  38 A5 00 C8 */	addi r5, r5, 0xc8
/* 80955388  38 C0 00 03 */	li r6, 3
/* 8095538C  4B 6F 2D 61 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80955390  28 03 00 00 */	cmplwi r3, 0
/* 80955394  41 82 00 08 */	beq lbl_8095539C
/* 80955398  83 23 00 00 */	lwz r25, 0(r3)
lbl_8095539C:
/* 8095539C  7F 83 E3 78 */	mr r3, r28
/* 809553A0  7F C4 F3 78 */	mr r4, r30
/* 809553A4  4B 6F 29 A9 */	bl getIsAddvance__16dEvent_manager_cFi
/* 809553A8  2C 03 00 00 */	cmpwi r3, 0
/* 809553AC  41 82 01 F0 */	beq lbl_8095559C
/* 809553B0  2C 19 00 01 */	cmpwi r25, 1
/* 809553B4  41 82 01 D8 */	beq lbl_8095558C
/* 809553B8  40 80 01 E4 */	bge lbl_8095559C
/* 809553BC  2C 19 00 00 */	cmpwi r25, 0
/* 809553C0  40 80 00 08 */	bge lbl_809553C8
/* 809553C4  48 00 01 D8 */	b lbl_8095559C
lbl_809553C8:
/* 809553C8  38 78 0F 9C */	addi r3, r24, 0xf9c
/* 809553CC  4B 7F 03 3D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 809553D0  7C 7E 1B 78 */	mr r30, r3
/* 809553D4  C0 3D 00 DC */	lfs f1, 0xdc(r29)
/* 809553D8  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 809553DC  EC 21 00 2A */	fadds f1, f1, f0
/* 809553E0  C0 1D 00 C8 */	lfs f0, 0xc8(r29)
/* 809553E4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809553E8  C0 1D 01 48 */	lfs f0, 0x148(r29)
/* 809553EC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809553F0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 809553F4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809553F8  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809553FC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80955400  4B 6C 53 11 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80955404  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80955408  7C 60 18 50 */	subf r3, r0, r3
/* 8095540C  7C 60 07 34 */	extsh r0, r3
/* 80955410  B0 61 00 0A */	sth r3, 0xa(r1)
/* 80955414  2C 00 20 00 */	cmpwi r0, 0x2000
/* 80955418  40 81 00 10 */	ble lbl_80955428
/* 8095541C  38 00 20 00 */	li r0, 0x2000
/* 80955420  B0 01 00 0A */	sth r0, 0xa(r1)
/* 80955424  48 00 00 14 */	b lbl_80955438
lbl_80955428:
/* 80955428  2C 00 E0 00 */	cmpwi r0, -8192
/* 8095542C  40 80 00 0C */	bge lbl_80955438
/* 80955430  38 00 E0 00 */	li r0, -8192
/* 80955434  B0 01 00 0A */	sth r0, 0xa(r1)
lbl_80955438:
/* 80955438  A8 61 00 0A */	lha r3, 0xa(r1)
/* 8095543C  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80955440  7C 03 02 14 */	add r0, r3, r0
/* 80955444  B0 01 00 0A */	sth r0, 0xa(r1)
/* 80955448  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8095544C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80955450  7C 04 07 34 */	extsh r4, r0
/* 80955454  4B 6B 6F 89 */	bl mDoMtx_YrotS__FPA4_fs
/* 80955458  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8095545C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80955460  38 81 00 10 */	addi r4, r1, 0x10
/* 80955464  7C 85 23 78 */	mr r5, r4
/* 80955468  4B 9F 19 05 */	bl PSMTXMultVec
/* 8095546C  38 61 00 10 */	addi r3, r1, 0x10
/* 80955470  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80955474  7C 65 1B 78 */	mr r5, r3
/* 80955478  4B 9F 1C 19 */	bl PSVECAdd
/* 8095547C  38 78 09 30 */	addi r3, r24, 0x930
/* 80955480  38 81 00 10 */	addi r4, r1, 0x10
/* 80955484  4B 91 28 A5 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80955488  7F 63 DB 78 */	mr r3, r27
/* 8095548C  38 98 09 30 */	addi r4, r24, 0x930
/* 80955490  4B 71 F0 11 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80955494  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80955498  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8095549C  7F 04 C3 78 */	mr r4, r24
/* 809554A0  4B 6C 52 71 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809554A4  7C 60 1B 78 */	mr r0, r3
/* 809554A8  B0 01 00 0A */	sth r0, 0xa(r1)
/* 809554AC  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 809554B0  38 81 00 10 */	addi r4, r1, 0x10
/* 809554B4  7C 05 07 34 */	extsh r5, r0
/* 809554B8  38 C0 00 00 */	li r6, 0
/* 809554BC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 809554C0  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 809554C4  7D 89 03 A6 */	mtctr r12
/* 809554C8  4E 80 04 21 */	bctrl 
/* 809554CC  7F 83 E3 78 */	mr r3, r28
/* 809554D0  38 81 00 10 */	addi r4, r1, 0x10
/* 809554D4  4B 6F 2E F1 */	bl setGoal__16dEvent_manager_cFP4cXyz
/* 809554D8  80 18 0B 58 */	lwz r0, 0xb58(r24)
/* 809554DC  2C 00 00 0C */	cmpwi r0, 0xc
/* 809554E0  41 82 00 24 */	beq lbl_80955504
/* 809554E4  83 78 0B 5C */	lwz r27, 0xb5c(r24)
/* 809554E8  38 78 0B 50 */	addi r3, r24, 0xb50
/* 809554EC  4B 7F 03 AD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809554F0  93 78 0B 5C */	stw r27, 0xb5c(r24)
/* 809554F4  38 00 00 0C */	li r0, 0xc
/* 809554F8  90 18 0B 58 */	stw r0, 0xb58(r24)
/* 809554FC  C0 1D 00 C8 */	lfs f0, 0xc8(r29)
/* 80955500  D0 18 0B 68 */	stfs f0, 0xb68(r24)
lbl_80955504:
/* 80955504  80 18 0B 7C */	lwz r0, 0xb7c(r24)
/* 80955508  2C 00 00 00 */	cmpwi r0, 0
/* 8095550C  41 82 00 24 */	beq lbl_80955530
/* 80955510  83 78 0B 80 */	lwz r27, 0xb80(r24)
/* 80955514  38 78 0B 74 */	addi r3, r24, 0xb74
/* 80955518  4B 7F 03 81 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8095551C  93 78 0B 80 */	stw r27, 0xb80(r24)
/* 80955520  38 00 00 00 */	li r0, 0
/* 80955524  90 18 0B 7C */	stw r0, 0xb7c(r24)
/* 80955528  C0 1D 00 C8 */	lfs f0, 0xc8(r29)
/* 8095552C  D0 18 0B 8C */	stfs f0, 0xb8c(r24)
lbl_80955530:
/* 80955530  80 18 0C E0 */	lwz r0, 0xce0(r24)
/* 80955534  2C 00 00 00 */	cmpwi r0, 0
/* 80955538  41 82 00 24 */	beq lbl_8095555C
/* 8095553C  38 78 0B A8 */	addi r3, r24, 0xba8
/* 80955540  4B 7F 01 BD */	bl remove__18daNpcT_ActorMngr_cFv
/* 80955544  38 00 00 00 */	li r0, 0
/* 80955548  90 18 0B C8 */	stw r0, 0xbc8(r24)
/* 8095554C  C0 1D 00 C8 */	lfs f0, 0xc8(r29)
/* 80955550  D0 18 0C F4 */	stfs f0, 0xcf4(r24)
/* 80955554  98 18 0C FF */	stb r0, 0xcff(r24)
/* 80955558  90 18 0C E0 */	stw r0, 0xce0(r24)
lbl_8095555C:
/* 8095555C  38 00 00 00 */	li r0, 0
/* 80955560  B0 18 0C D4 */	sth r0, 0xcd4(r24)
/* 80955564  B0 18 0C D6 */	sth r0, 0xcd6(r24)
/* 80955568  38 00 00 01 */	li r0, 1
/* 8095556C  98 18 0C FF */	stb r0, 0xcff(r24)
/* 80955570  38 78 04 D0 */	addi r3, r24, 0x4d0
/* 80955574  38 81 00 10 */	addi r4, r1, 0x10
/* 80955578  4B 91 B6 8D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8095557C  7C 64 1B 78 */	mr r4, r3
/* 80955580  7F 03 C3 78 */	mr r3, r24
/* 80955584  4B 7F 54 95 */	bl setAngle__8daNpcT_cFs
/* 80955588  48 00 00 14 */	b lbl_8095559C
lbl_8095558C:
/* 8095558C  7F 03 C3 78 */	mr r3, r24
/* 80955590  38 80 00 36 */	li r4, 0x36
/* 80955594  38 A0 00 00 */	li r5, 0
/* 80955598  4B 7F 66 59 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_8095559C:
/* 8095559C  2C 19 00 01 */	cmpwi r25, 1
/* 809555A0  41 82 00 1C */	beq lbl_809555BC
/* 809555A4  40 80 00 48 */	bge lbl_809555EC
/* 809555A8  2C 19 00 00 */	cmpwi r25, 0
/* 809555AC  40 80 00 08 */	bge lbl_809555B4
/* 809555B0  48 00 00 3C */	b lbl_809555EC
lbl_809555B4:
/* 809555B4  3B 40 00 01 */	li r26, 1
/* 809555B8  48 00 00 34 */	b lbl_809555EC
lbl_809555BC:
/* 809555BC  7F 03 C3 78 */	mr r3, r24
/* 809555C0  38 80 00 00 */	li r4, 0
/* 809555C4  38 A0 00 00 */	li r5, 0
/* 809555C8  38 C0 00 00 */	li r6, 0
/* 809555CC  38 E0 00 00 */	li r7, 0
/* 809555D0  4B 7F 66 A9 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 809555D4  2C 03 00 00 */	cmpwi r3, 0
/* 809555D8  41 82 00 14 */	beq lbl_809555EC
/* 809555DC  88 18 09 9A */	lbz r0, 0x99a(r24)
/* 809555E0  28 00 00 01 */	cmplwi r0, 1
/* 809555E4  40 82 00 08 */	bne lbl_809555EC
/* 809555E8  3B 40 00 01 */	li r26, 1
lbl_809555EC:
/* 809555EC  7F 43 D3 78 */	mr r3, r26
/* 809555F0  39 61 00 40 */	addi r11, r1, 0x40
/* 809555F4  4B A0 CC 21 */	bl _restgpr_24
/* 809555F8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809555FC  7C 08 03 A6 */	mtlr r0
/* 80955600  38 21 00 40 */	addi r1, r1, 0x40
/* 80955604  4E 80 00 20 */	blr 
