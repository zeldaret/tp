lbl_80561328:
/* 80561328  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8056132C  7C 08 02 A6 */	mflr r0
/* 80561330  90 01 00 44 */	stw r0, 0x44(r1)
/* 80561334  39 61 00 40 */	addi r11, r1, 0x40
/* 80561338  4B E0 0E 95 */	bl _savegpr_25
/* 8056133C  7C 7C 1B 78 */	mr r28, r3
/* 80561340  7C 99 23 78 */	mr r25, r4
/* 80561344  3B C0 00 00 */	li r30, 0
/* 80561348  3B A0 FF FF */	li r29, -1
/* 8056134C  3B 40 00 00 */	li r26, 0
/* 80561350  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80561354  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80561358  3B 7F 4F F8 */	addi r27, r31, 0x4ff8
/* 8056135C  7F 63 DB 78 */	mr r3, r27
/* 80561360  3C A0 80 56 */	lis r5, d_a_npc_maro__stringBase0@ha /* 0x80564D58@ha */
/* 80561364  38 A5 4D 58 */	addi r5, r5, d_a_npc_maro__stringBase0@l /* 0x80564D58@l */
/* 80561368  38 A5 02 1B */	addi r5, r5, 0x21b
/* 8056136C  38 C0 00 03 */	li r6, 3
/* 80561370  4B AE 6D 7D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80561374  28 03 00 00 */	cmplwi r3, 0
/* 80561378  41 82 00 08 */	beq lbl_80561380
/* 8056137C  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80561380:
/* 80561380  7F 63 DB 78 */	mr r3, r27
/* 80561384  7F 24 CB 78 */	mr r4, r25
/* 80561388  3C A0 80 56 */	lis r5, d_a_npc_maro__stringBase0@ha /* 0x80564D58@ha */
/* 8056138C  38 A5 4D 58 */	addi r5, r5, d_a_npc_maro__stringBase0@l /* 0x80564D58@l */
/* 80561390  38 A5 02 1F */	addi r5, r5, 0x21f
/* 80561394  38 C0 00 03 */	li r6, 3
/* 80561398  4B AE 6D 55 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8056139C  28 03 00 00 */	cmplwi r3, 0
/* 805613A0  41 82 00 08 */	beq lbl_805613A8
/* 805613A4  83 43 00 00 */	lwz r26, 0(r3)
lbl_805613A8:
/* 805613A8  7F 63 DB 78 */	mr r3, r27
/* 805613AC  7F 24 CB 78 */	mr r4, r25
/* 805613B0  4B AE 69 9D */	bl getIsAddvance__16dEvent_manager_cFi
/* 805613B4  2C 03 00 00 */	cmpwi r3, 0
/* 805613B8  41 82 01 D8 */	beq lbl_80561590
/* 805613BC  2C 1D 00 03 */	cmpwi r29, 3
/* 805613C0  41 82 00 68 */	beq lbl_80561428
/* 805613C4  40 80 01 CC */	bge lbl_80561590
/* 805613C8  2C 1D 00 00 */	cmpwi r29, 0
/* 805613CC  41 82 00 0C */	beq lbl_805613D8
/* 805613D0  40 80 00 50 */	bge lbl_80561420
/* 805613D4  48 00 01 BC */	b lbl_80561590
lbl_805613D8:
/* 805613D8  38 00 00 00 */	li r0, 0
/* 805613DC  98 1C 11 34 */	stb r0, 0x1134(r28)
/* 805613E0  38 7C 10 C4 */	addi r3, r28, 0x10c4
/* 805613E4  4B BE 43 25 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 805613E8  7C 64 1B 78 */	mr r4, r3
/* 805613EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805613F0  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805613F4  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 805613F8  4B AB 93 19 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805613FC  7C 65 1B 78 */	mr r5, r3
/* 80561400  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80561404  38 83 04 D0 */	addi r4, r3, 0x4d0
/* 80561408  38 C0 00 00 */	li r6, 0
/* 8056140C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80561410  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80561414  7D 89 03 A6 */	mtctr r12
/* 80561418  4E 80 04 21 */	bctrl 
/* 8056141C  48 00 01 74 */	b lbl_80561590
lbl_80561420:
/* 80561420  93 5C 0D C4 */	stw r26, 0xdc4(r28)
/* 80561424  48 00 01 6C */	b lbl_80561590
lbl_80561428:
/* 80561428  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 8056142C  2C 00 00 09 */	cmpwi r0, 9
/* 80561430  41 82 00 28 */	beq lbl_80561458
/* 80561434  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 80561438  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 8056143C  4B BE 44 5D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80561440  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 80561444  38 00 00 09 */	li r0, 9
/* 80561448  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 8056144C  3C 60 80 56 */	lis r3, lit_4318@ha /* 0x80564CA0@ha */
/* 80561450  C0 03 4C A0 */	lfs f0, lit_4318@l(r3)  /* 0x80564CA0@l */
/* 80561454  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_80561458:
/* 80561458  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 8056145C  2C 00 00 00 */	cmpwi r0, 0
/* 80561460  41 82 00 28 */	beq lbl_80561488
/* 80561464  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 80561468  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 8056146C  4B BE 44 2D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80561470  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 80561474  38 00 00 00 */	li r0, 0
/* 80561478  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 8056147C  3C 60 80 56 */	lis r3, lit_4318@ha /* 0x80564CA0@ha */
/* 80561480  C0 03 4C A0 */	lfs f0, lit_4318@l(r3)  /* 0x80564CA0@l */
/* 80561484  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_80561488:
/* 80561488  7F 83 E3 78 */	mr r3, r28
/* 8056148C  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 80561490  4B BE 95 89 */	bl setAngle__8daNpcT_cFs
/* 80561494  3C 60 80 56 */	lis r3, lit_4318@ha /* 0x80564CA0@ha */
/* 80561498  C0 03 4C A0 */	lfs f0, lit_4318@l(r3)  /* 0x80564CA0@l */
/* 8056149C  D0 01 00 08 */	stfs f0, 8(r1)
/* 805614A0  3C 60 80 56 */	lis r3, lit_7191@ha /* 0x80564D48@ha */
/* 805614A4  C0 03 4D 48 */	lfs f0, lit_7191@l(r3)  /* 0x80564D48@l */
/* 805614A8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805614AC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805614B0  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 805614B4  4B AA B8 B1 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 805614B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805614BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805614C0  A8 9C 0D 7A */	lha r4, 0xd7a(r28)
/* 805614C4  38 04 D8 00 */	addi r0, r4, -10240
/* 805614C8  7C 04 07 34 */	extsh r4, r0
/* 805614CC  4B AA AF 69 */	bl mDoMtx_YrotM__FPA4_fs
/* 805614D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805614D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805614D8  38 81 00 08 */	addi r4, r1, 8
/* 805614DC  38 BC 0D 6C */	addi r5, r28, 0xd6c
/* 805614E0  4B DE 58 8D */	bl PSMTXMultVec
/* 805614E4  80 7C 0B C8 */	lwz r3, 0xbc8(r28)
/* 805614E8  38 1C 0D 6C */	addi r0, r28, 0xd6c
/* 805614EC  7C 63 00 50 */	subf r3, r3, r0
/* 805614F0  30 03 FF FF */	addic r0, r3, -1
/* 805614F4  7C 00 19 10 */	subfe r0, r0, r3
/* 805614F8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 805614FC  40 82 00 10 */	bne lbl_8056150C
/* 80561500  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80561504  2C 00 00 06 */	cmpwi r0, 6
/* 80561508  41 82 00 34 */	beq lbl_8056153C
lbl_8056150C:
/* 8056150C  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80561510  4B BE 41 ED */	bl remove__18daNpcT_ActorMngr_cFv
/* 80561514  38 00 00 00 */	li r0, 0
/* 80561518  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 8056151C  3C 60 80 56 */	lis r3, lit_4318@ha /* 0x80564CA0@ha */
/* 80561520  C0 03 4C A0 */	lfs f0, lit_4318@l(r3)  /* 0x80564CA0@l */
/* 80561524  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80561528  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 8056152C  38 00 00 06 */	li r0, 6
/* 80561530  90 1C 0C E0 */	stw r0, 0xce0(r28)
/* 80561534  38 00 00 01 */	li r0, 1
/* 80561538  48 00 00 08 */	b lbl_80561540
lbl_8056153C:
/* 8056153C  38 00 00 00 */	li r0, 0
lbl_80561540:
/* 80561540  2C 00 00 00 */	cmpwi r0, 0
/* 80561544  41 82 00 0C */	beq lbl_80561550
/* 80561548  38 1C 0D 6C */	addi r0, r28, 0xd6c
/* 8056154C  90 1C 0B C8 */	stw r0, 0xbc8(r28)
lbl_80561550:
/* 80561550  38 00 00 00 */	li r0, 0
/* 80561554  B0 1C 0C D4 */	sth r0, 0xcd4(r28)
/* 80561558  B0 1C 0C D6 */	sth r0, 0xcd6(r28)
/* 8056155C  38 00 00 01 */	li r0, 1
/* 80561560  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80561564  7F 83 E3 78 */	mr r3, r28
/* 80561568  38 80 00 16 */	li r4, 0x16
/* 8056156C  38 A0 00 00 */	li r5, 0
/* 80561570  4B BE A6 81 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80561574  3B 7F 4E C8 */	addi r27, r31, 0x4ec8
/* 80561578  7F 63 DB 78 */	mr r3, r27
/* 8056157C  7F 84 E3 78 */	mr r4, r28
/* 80561580  4B AE 21 0D */	bl setPtT__14dEvt_control_cFPv
/* 80561584  7F 63 DB 78 */	mr r3, r27
/* 80561588  7F 84 E3 78 */	mr r4, r28
/* 8056158C  4B AE 20 D1 */	bl setPt2__14dEvt_control_cFPv
lbl_80561590:
/* 80561590  2C 1D 00 03 */	cmpwi r29, 3
/* 80561594  41 82 00 38 */	beq lbl_805615CC
/* 80561598  40 80 00 5C */	bge lbl_805615F4
/* 8056159C  2C 1D 00 00 */	cmpwi r29, 0
/* 805615A0  41 82 00 0C */	beq lbl_805615AC
/* 805615A4  40 80 00 10 */	bge lbl_805615B4
/* 805615A8  48 00 00 4C */	b lbl_805615F4
lbl_805615AC:
/* 805615AC  3B C0 00 01 */	li r30, 1
/* 805615B0  48 00 00 48 */	b lbl_805615F8
lbl_805615B4:
/* 805615B4  38 7C 0D C4 */	addi r3, r28, 0xdc4
/* 805615B8  48 00 30 E5 */	bl func_8056469C
/* 805615BC  2C 03 00 00 */	cmpwi r3, 0
/* 805615C0  40 82 00 38 */	bne lbl_805615F8
/* 805615C4  3B C0 00 01 */	li r30, 1
/* 805615C8  48 00 00 30 */	b lbl_805615F8
lbl_805615CC:
/* 805615CC  7F 83 E3 78 */	mr r3, r28
/* 805615D0  38 80 00 00 */	li r4, 0
/* 805615D4  38 A0 00 00 */	li r5, 0
/* 805615D8  38 C0 00 00 */	li r6, 0
/* 805615DC  38 E0 00 00 */	li r7, 0
/* 805615E0  4B BE A6 99 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 805615E4  2C 03 00 00 */	cmpwi r3, 0
/* 805615E8  41 82 00 10 */	beq lbl_805615F8
/* 805615EC  3B C0 00 01 */	li r30, 1
/* 805615F0  48 00 00 08 */	b lbl_805615F8
lbl_805615F4:
/* 805615F4  3B C0 00 01 */	li r30, 1
lbl_805615F8:
/* 805615F8  7F C3 F3 78 */	mr r3, r30
/* 805615FC  39 61 00 40 */	addi r11, r1, 0x40
/* 80561600  4B E0 0C 19 */	bl _restgpr_25
/* 80561604  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80561608  7C 08 03 A6 */	mtlr r0
/* 8056160C  38 21 00 40 */	addi r1, r1, 0x40
/* 80561610  4E 80 00 20 */	blr 
