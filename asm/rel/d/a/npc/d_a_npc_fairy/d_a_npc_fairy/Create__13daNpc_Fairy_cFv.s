lbl_809B2430:
/* 809B2430  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809B2434  7C 08 02 A6 */	mflr r0
/* 809B2438  90 01 00 34 */	stw r0, 0x34(r1)
/* 809B243C  39 61 00 30 */	addi r11, r1, 0x30
/* 809B2440  4B 9A FD 9D */	bl _savegpr_29
/* 809B2444  7C 7D 1B 78 */	mr r29, r3
/* 809B2448  3C 80 80 9C */	lis r4, cNullVec__6Z2Calc@ha /* 0x809B95D8@ha */
/* 809B244C  3B C4 95 D8 */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x809B95D8@l */
/* 809B2450  3C 80 80 9C */	lis r4, m__19daNpc_Fairy_Param_c@ha /* 0x809B92E4@ha */
/* 809B2454  3B E4 92 E4 */	addi r31, r4, m__19daNpc_Fairy_Param_c@l /* 0x809B92E4@l */
/* 809B2458  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 809B245C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 809B2460  40 82 00 40 */	bne lbl_809B24A0
/* 809B2464  28 1D 00 00 */	cmplwi r29, 0
/* 809B2468  41 82 00 2C */	beq lbl_809B2494
/* 809B246C  38 1E 00 20 */	addi r0, r30, 0x20
/* 809B2470  90 01 00 08 */	stw r0, 8(r1)
/* 809B2474  38 9E 00 48 */	addi r4, r30, 0x48
/* 809B2478  38 BE 00 D4 */	addi r5, r30, 0xd4
/* 809B247C  38 DE 02 24 */	addi r6, r30, 0x224
/* 809B2480  38 E0 00 04 */	li r7, 4
/* 809B2484  39 1E 02 74 */	addi r8, r30, 0x274
/* 809B2488  39 20 00 04 */	li r9, 4
/* 809B248C  39 5E 03 24 */	addi r10, r30, 0x324
/* 809B2490  48 00 6B C5 */	bl __ct__13daNpc_Fairy_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_809B2494:
/* 809B2494  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 809B2498  60 00 00 08 */	ori r0, r0, 8
/* 809B249C  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_809B24A0:
/* 809B24A0  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 809B24A4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 809B24A8  28 00 00 FF */	cmplwi r0, 0xff
/* 809B24AC  40 82 00 08 */	bne lbl_809B24B4
/* 809B24B0  38 00 00 00 */	li r0, 0
lbl_809B24B4:
/* 809B24B4  98 1D 0F 80 */	stb r0, 0xf80(r29)
/* 809B24B8  A8 1D 04 B4 */	lha r0, 0x4b4(r29)
/* 809B24BC  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 809B24C0  28 03 FF FF */	cmplwi r3, 0xffff
/* 809B24C4  38 00 FF FF */	li r0, -1
/* 809B24C8  41 82 00 08 */	beq lbl_809B24D0
/* 809B24CC  7C 60 1B 78 */	mr r0, r3
lbl_809B24D0:
/* 809B24D0  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 809B24D4  38 00 00 00 */	li r0, 0
/* 809B24D8  98 1D 0A 89 */	stb r0, 0xa89(r29)
/* 809B24DC  7F A3 EB 78 */	mr r3, r29
/* 809B24E0  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 809B24E4  54 00 10 3A */	slwi r0, r0, 2
/* 809B24E8  38 9E 00 2C */	addi r4, r30, 0x2c
/* 809B24EC  7C 84 00 2E */	lwzx r4, r4, r0
/* 809B24F0  38 BE 00 20 */	addi r5, r30, 0x20
/* 809B24F4  4B 79 5F 05 */	bl loadRes__8daNpcT_cFPCScPPCc
/* 809B24F8  7C 7E 1B 78 */	mr r30, r3
/* 809B24FC  2C 1E 00 04 */	cmpwi r30, 4
/* 809B2500  40 82 01 CC */	bne lbl_809B26CC
/* 809B2504  7F A3 EB 78 */	mr r3, r29
/* 809B2508  3C 80 80 9B */	lis r4, createHeapCallBack__13daNpc_Fairy_cFP10fopAc_ac_c@ha /* 0x809B3074@ha */
/* 809B250C  38 84 30 74 */	addi r4, r4, createHeapCallBack__13daNpc_Fairy_cFP10fopAc_ac_c@l /* 0x809B3074@l */
/* 809B2510  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008000@ha */
/* 809B2514  38 A5 80 00 */	addi r5, r5, 0x8000 /* 0x00008000@l */
/* 809B2518  4B 66 7F 99 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 809B251C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809B2520  40 82 00 0C */	bne lbl_809B252C
/* 809B2524  38 60 00 05 */	li r3, 5
/* 809B2528  48 00 01 A8 */	b lbl_809B26D0
lbl_809B252C:
/* 809B252C  7F A3 EB 78 */	mr r3, r29
/* 809B2530  48 00 0B BD */	bl isDelete__13daNpc_Fairy_cFv
/* 809B2534  2C 03 00 00 */	cmpwi r3, 0
/* 809B2538  41 82 00 0C */	beq lbl_809B2544
/* 809B253C  38 60 00 05 */	li r3, 5
/* 809B2540  48 00 01 90 */	b lbl_809B26D0
lbl_809B2544:
/* 809B2544  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 809B2548  80 63 00 04 */	lwz r3, 4(r3)
/* 809B254C  38 03 00 24 */	addi r0, r3, 0x24
/* 809B2550  90 1D 05 04 */	stw r0, 0x504(r29)
/* 809B2554  7F A3 EB 78 */	mr r3, r29
/* 809B2558  C0 3F 01 04 */	lfs f1, 0x104(r31)
/* 809B255C  C0 5F 01 08 */	lfs f2, 0x108(r31)
/* 809B2560  C0 7F 01 0C */	lfs f3, 0x10c(r31)
/* 809B2564  C0 9F 01 10 */	lfs f4, 0x110(r31)
/* 809B2568  C0 BF 01 14 */	lfs f5, 0x114(r31)
/* 809B256C  FC C0 28 90 */	fmr f6, f5
/* 809B2570  4B 66 7F D9 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 809B2574  38 7D 05 80 */	addi r3, r29, 0x580
/* 809B2578  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 809B257C  38 BD 05 38 */	addi r5, r29, 0x538
/* 809B2580  38 C0 00 03 */	li r6, 3
/* 809B2584  38 E0 00 01 */	li r7, 1
/* 809B2588  4B 90 DF A9 */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 809B258C  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 809B2590  90 01 00 08 */	stw r0, 8(r1)
/* 809B2594  38 7D 06 8C */	addi r3, r29, 0x68c
/* 809B2598  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 809B259C  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 809B25A0  7F A6 EB 78 */	mr r6, r29
/* 809B25A4  38 E0 00 01 */	li r7, 1
/* 809B25A8  39 1D 08 A0 */	addi r8, r29, 0x8a0
/* 809B25AC  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 809B25B0  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 809B25B4  4B 6C 3C 95 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 809B25B8  38 7D 08 64 */	addi r3, r29, 0x864
/* 809B25BC  38 9F 00 00 */	addi r4, r31, 0
/* 809B25C0  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 809B25C4  FC 00 00 1E */	fctiwz f0, f0
/* 809B25C8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 809B25CC  80 81 00 14 */	lwz r4, 0x14(r1)
/* 809B25D0  38 A0 00 00 */	li r5, 0
/* 809B25D4  7F A6 EB 78 */	mr r6, r29
/* 809B25D8  4B 6D 12 89 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 809B25DC  38 7D 0E 44 */	addi r3, r29, 0xe44
/* 809B25E0  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha /* 0x803B36D8@ha */
/* 809B25E4  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l /* 0x803B36D8@l */
/* 809B25E8  4B 6D 22 CD */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 809B25EC  38 1D 08 64 */	addi r0, r29, 0x864
/* 809B25F0  90 1D 0E 88 */	stw r0, 0xe88(r29)
/* 809B25F4  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha /* 0x80147FA4@ha */
/* 809B25F8  38 03 7F A4 */	addi r0, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l /* 0x80147FA4@l */
/* 809B25FC  90 1D 0E E8 */	stw r0, 0xee8(r29)
/* 809B2600  38 7D 06 8C */	addi r3, r29, 0x68c
/* 809B2604  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809B2608  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809B260C  38 84 0F 38 */	addi r4, r4, 0xf38
/* 809B2610  4B 6C 44 9D */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 809B2614  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 809B2618  90 1D 09 30 */	stw r0, 0x930(r29)
/* 809B261C  80 1D 07 6C */	lwz r0, 0x76c(r29)
/* 809B2620  90 1D 09 34 */	stw r0, 0x934(r29)
/* 809B2624  80 1D 07 70 */	lwz r0, 0x770(r29)
/* 809B2628  90 1D 09 38 */	stw r0, 0x938(r29)
/* 809B262C  88 1D 07 74 */	lbz r0, 0x774(r29)
/* 809B2630  98 1D 09 3C */	stb r0, 0x93c(r29)
/* 809B2634  A0 1D 07 7C */	lhz r0, 0x77c(r29)
/* 809B2638  B0 1D 09 44 */	sth r0, 0x944(r29)
/* 809B263C  A0 1D 07 7E */	lhz r0, 0x77e(r29)
/* 809B2640  B0 1D 09 46 */	sth r0, 0x946(r29)
/* 809B2644  80 1D 07 80 */	lwz r0, 0x780(r29)
/* 809B2648  90 1D 09 48 */	stw r0, 0x948(r29)
/* 809B264C  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 809B2650  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 809B2654  C0 1D 07 8C */	lfs f0, 0x78c(r29)
/* 809B2658  D0 1D 09 54 */	stfs f0, 0x954(r29)
/* 809B265C  C0 1D 07 90 */	lfs f0, 0x790(r29)
/* 809B2660  D0 1D 09 58 */	stfs f0, 0x958(r29)
/* 809B2664  C0 1D 07 94 */	lfs f0, 0x794(r29)
/* 809B2668  D0 1D 09 5C */	stfs f0, 0x95c(r29)
/* 809B266C  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 809B2670  90 1D 09 60 */	stw r0, 0x960(r29)
/* 809B2674  C0 1D 07 9C */	lfs f0, 0x79c(r29)
/* 809B2678  D0 1D 09 64 */	stfs f0, 0x964(r29)
/* 809B267C  80 1D 07 A0 */	lwz r0, 0x7a0(r29)
/* 809B2680  90 1D 09 68 */	stw r0, 0x968(r29)
/* 809B2684  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 809B2688  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 809B268C  C0 3F 01 18 */	lfs f1, 0x118(r31)
/* 809B2690  C0 1D 0D F4 */	lfs f0, 0xdf4(r29)
/* 809B2694  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 809B2698  41 82 00 14 */	beq lbl_809B26AC
/* 809B269C  7F A3 EB 78 */	mr r3, r29
/* 809B26A0  4B 79 65 D1 */	bl setEnvTevColor__8daNpcT_cFv
/* 809B26A4  7F A3 EB 78 */	mr r3, r29
/* 809B26A8  4B 79 66 25 */	bl setRoomNo__8daNpcT_cFv
lbl_809B26AC:
/* 809B26AC  7F A3 EB 78 */	mr r3, r29
/* 809B26B0  48 00 0A 45 */	bl reset__13daNpc_Fairy_cFv
/* 809B26B4  38 00 00 01 */	li r0, 1
/* 809B26B8  98 1D 0A 88 */	stb r0, 0xa88(r29)
/* 809B26BC  7F A3 EB 78 */	mr r3, r29
/* 809B26C0  48 00 08 71 */	bl Execute__13daNpc_Fairy_cFv
/* 809B26C4  38 00 00 00 */	li r0, 0
/* 809B26C8  98 1D 0A 88 */	stb r0, 0xa88(r29)
lbl_809B26CC:
/* 809B26CC  7F C3 F3 78 */	mr r3, r30
lbl_809B26D0:
/* 809B26D0  39 61 00 30 */	addi r11, r1, 0x30
/* 809B26D4  4B 9A FB 55 */	bl _restgpr_29
/* 809B26D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809B26DC  7C 08 03 A6 */	mtlr r0
/* 809B26E0  38 21 00 30 */	addi r1, r1, 0x30
/* 809B26E4  4E 80 00 20 */	blr 
