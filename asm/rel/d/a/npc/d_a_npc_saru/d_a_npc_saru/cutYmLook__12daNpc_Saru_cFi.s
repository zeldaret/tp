lbl_80AC2598:
/* 80AC2598  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80AC259C  7C 08 02 A6 */	mflr r0
/* 80AC25A0  90 01 00 94 */	stw r0, 0x94(r1)
/* 80AC25A4  39 61 00 90 */	addi r11, r1, 0x90
/* 80AC25A8  4B 89 FC 24 */	b _savegpr_25
/* 80AC25AC  7C 7D 1B 78 */	mr r29, r3
/* 80AC25B0  7C 99 23 78 */	mr r25, r4
/* 80AC25B4  3B E0 00 00 */	li r31, 0
/* 80AC25B8  3B C0 FF FF */	li r30, -1
/* 80AC25BC  3B 40 00 00 */	li r26, 0
/* 80AC25C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AC25C4  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 80AC25C8  3B 7C 4F F8 */	addi r27, r28, 0x4ff8
/* 80AC25CC  7F 63 DB 78 */	mr r3, r27
/* 80AC25D0  3C A0 80 AC */	lis r5, struct_80AC4654+0x0@ha
/* 80AC25D4  38 A5 46 54 */	addi r5, r5, struct_80AC4654+0x0@l
/* 80AC25D8  38 A5 00 42 */	addi r5, r5, 0x42
/* 80AC25DC  38 C0 00 03 */	li r6, 3
/* 80AC25E0  4B 58 5B 0C */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80AC25E4  28 03 00 00 */	cmplwi r3, 0
/* 80AC25E8  41 82 00 08 */	beq lbl_80AC25F0
/* 80AC25EC  83 C3 00 00 */	lwz r30, 0(r3)
lbl_80AC25F0:
/* 80AC25F0  7F 63 DB 78 */	mr r3, r27
/* 80AC25F4  7F 24 CB 78 */	mr r4, r25
/* 80AC25F8  3C A0 80 AC */	lis r5, struct_80AC4654+0x0@ha
/* 80AC25FC  38 A5 46 54 */	addi r5, r5, struct_80AC4654+0x0@l
/* 80AC2600  38 A5 00 46 */	addi r5, r5, 0x46
/* 80AC2604  38 C0 00 03 */	li r6, 3
/* 80AC2608  4B 58 5A E4 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80AC260C  28 03 00 00 */	cmplwi r3, 0
/* 80AC2610  41 82 00 08 */	beq lbl_80AC2618
/* 80AC2614  83 43 00 00 */	lwz r26, 0(r3)
lbl_80AC2618:
/* 80AC2618  7F 63 DB 78 */	mr r3, r27
/* 80AC261C  7F 24 CB 78 */	mr r4, r25
/* 80AC2620  4B 58 57 2C */	b getIsAddvance__16dEvent_manager_cFi
/* 80AC2624  2C 03 00 00 */	cmpwi r3, 0
/* 80AC2628  41 82 01 24 */	beq lbl_80AC274C
/* 80AC262C  2C 1E 00 04 */	cmpwi r30, 4
/* 80AC2630  41 82 00 D8 */	beq lbl_80AC2708
/* 80AC2634  40 80 00 28 */	bge lbl_80AC265C
/* 80AC2638  2C 1E 00 01 */	cmpwi r30, 1
/* 80AC263C  41 82 00 7C */	beq lbl_80AC26B8
/* 80AC2640  40 80 00 10 */	bge lbl_80AC2650
/* 80AC2644  2C 1E 00 00 */	cmpwi r30, 0
/* 80AC2648  40 80 00 24 */	bge lbl_80AC266C
/* 80AC264C  48 00 01 00 */	b lbl_80AC274C
lbl_80AC2650:
/* 80AC2650  2C 1E 00 03 */	cmpwi r30, 3
/* 80AC2654  40 80 00 A0 */	bge lbl_80AC26F4
/* 80AC2658  48 00 00 68 */	b lbl_80AC26C0
lbl_80AC265C:
/* 80AC265C  2C 1E 00 63 */	cmpwi r30, 0x63
/* 80AC2660  41 82 00 DC */	beq lbl_80AC273C
/* 80AC2664  40 80 00 E8 */	bge lbl_80AC274C
/* 80AC2668  48 00 00 E4 */	b lbl_80AC274C
lbl_80AC266C:
/* 80AC266C  38 61 00 08 */	addi r3, r1, 8
/* 80AC2670  3C 80 80 AC */	lis r4, l_evtList@ha
/* 80AC2674  38 84 46 E4 */	addi r4, r4, l_evtList@l
/* 80AC2678  80 84 00 10 */	lwz r4, 0x10(r4)
/* 80AC267C  4B 8A 64 B0 */	b strcpy
/* 80AC2680  38 61 00 08 */	addi r3, r1, 8
/* 80AC2684  3C 80 80 AC */	lis r4, struct_80AC4654+0x0@ha
/* 80AC2688  38 84 46 54 */	addi r4, r4, struct_80AC4654+0x0@l
/* 80AC268C  38 84 00 4C */	addi r4, r4, 0x4c
/* 80AC2690  4B 8A 64 2C */	b strcat
/* 80AC2694  3B 7C 4E C8 */	addi r27, r28, 0x4ec8
/* 80AC2698  7F 63 DB 78 */	mr r3, r27
/* 80AC269C  7F A4 EB 78 */	mr r4, r29
/* 80AC26A0  38 A1 00 08 */	addi r5, r1, 8
/* 80AC26A4  4B 58 02 B4 */	b setSkipZev__14dEvt_control_cFPvPc
/* 80AC26A8  7F 63 DB 78 */	mr r3, r27
/* 80AC26AC  4B 58 02 FC */	b onSkipFade__14dEvt_control_cFv
/* 80AC26B0  38 00 00 01 */	li r0, 1
/* 80AC26B4  98 1D 0F D9 */	stb r0, 0xfd9(r29)
lbl_80AC26B8:
/* 80AC26B8  93 5D 0D C4 */	stw r26, 0xdc4(r29)
/* 80AC26BC  48 00 00 90 */	b lbl_80AC274C
lbl_80AC26C0:
/* 80AC26C0  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80AC26C4  2C 00 00 02 */	cmpwi r0, 2
/* 80AC26C8  41 82 00 84 */	beq lbl_80AC274C
/* 80AC26CC  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80AC26D0  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80AC26D4  4B 68 31 C4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC26D8  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80AC26DC  38 00 00 02 */	li r0, 2
/* 80AC26E0  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80AC26E4  3C 60 80 AC */	lis r3, lit_4608@ha
/* 80AC26E8  C0 03 45 CC */	lfs f0, lit_4608@l(r3)
/* 80AC26EC  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
/* 80AC26F0  48 00 00 5C */	b lbl_80AC274C
lbl_80AC26F4:
/* 80AC26F4  7F A3 EB 78 */	mr r3, r29
/* 80AC26F8  80 9D 0A 7C */	lwz r4, 0xa7c(r29)
/* 80AC26FC  38 A0 00 00 */	li r5, 0
/* 80AC2700  4B 68 94 F0 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80AC2704  48 00 00 48 */	b lbl_80AC274C
lbl_80AC2708:
/* 80AC2708  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80AC270C  2C 00 00 06 */	cmpwi r0, 6
/* 80AC2710  41 82 00 3C */	beq lbl_80AC274C
/* 80AC2714  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80AC2718  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80AC271C  4B 68 31 7C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC2720  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80AC2724  38 00 00 06 */	li r0, 6
/* 80AC2728  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80AC272C  3C 60 80 AC */	lis r3, lit_4608@ha
/* 80AC2730  C0 03 45 CC */	lfs f0, lit_4608@l(r3)
/* 80AC2734  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
/* 80AC2738  48 00 00 14 */	b lbl_80AC274C
lbl_80AC273C:
/* 80AC273C  38 60 01 6C */	li r3, 0x16c
/* 80AC2740  4B 68 A2 EC */	b daNpcT_onEvtBit__FUl
/* 80AC2744  38 7D 09 74 */	addi r3, r29, 0x974
/* 80AC2748  4B 78 7D 7C */	b remove__10dMsgFlow_cFv
lbl_80AC274C:
/* 80AC274C  2C 1E 00 04 */	cmpwi r30, 4
/* 80AC2750  41 82 01 14 */	beq lbl_80AC2864
/* 80AC2754  40 80 00 28 */	bge lbl_80AC277C
/* 80AC2758  2C 1E 00 01 */	cmpwi r30, 1
/* 80AC275C  41 82 00 90 */	beq lbl_80AC27EC
/* 80AC2760  40 80 00 10 */	bge lbl_80AC2770
/* 80AC2764  2C 1E 00 00 */	cmpwi r30, 0
/* 80AC2768  40 80 00 2C */	bge lbl_80AC2794
/* 80AC276C  48 00 01 1C */	b lbl_80AC2888
lbl_80AC2770:
/* 80AC2770  2C 1E 00 03 */	cmpwi r30, 3
/* 80AC2774  40 80 00 BC */	bge lbl_80AC2830
/* 80AC2778  48 00 00 A0 */	b lbl_80AC2818
lbl_80AC277C:
/* 80AC277C  2C 1E 00 63 */	cmpwi r30, 0x63
/* 80AC2780  41 82 01 04 */	beq lbl_80AC2884
/* 80AC2784  40 80 01 04 */	bge lbl_80AC2888
/* 80AC2788  2C 1E 00 06 */	cmpwi r30, 6
/* 80AC278C  40 80 00 FC */	bge lbl_80AC2888
/* 80AC2790  48 00 00 EC */	b lbl_80AC287C
lbl_80AC2794:
/* 80AC2794  38 00 00 00 */	li r0, 0
/* 80AC2798  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha
/* 80AC279C  90 03 0F DC */	stw r0, mFindCount__8daNpcT_c@l(r3)
/* 80AC27A0  3C 60 80 AC */	lis r3, srchYm__12daNpc_Saru_cFPvPv@ha
/* 80AC27A4  38 63 0B 64 */	addi r3, r3, srchYm__12daNpc_Saru_cFPvPv@l
/* 80AC27A8  7F A4 EB 78 */	mr r4, r29
/* 80AC27AC  4B 55 70 4C */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80AC27B0  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha
/* 80AC27B4  80 03 0F DC */	lwz r0, mFindCount__8daNpcT_c@l(r3)
/* 80AC27B8  2C 00 00 00 */	cmpwi r0, 0
/* 80AC27BC  40 82 00 18 */	bne lbl_80AC27D4
/* 80AC27C0  38 7D 0D C4 */	addi r3, r29, 0xdc4
/* 80AC27C4  48 00 1B 01 */	bl func_80AC42C4
/* 80AC27C8  2C 03 00 00 */	cmpwi r3, 0
/* 80AC27CC  40 82 00 08 */	bne lbl_80AC27D4
/* 80AC27D0  3B E0 00 01 */	li r31, 1
lbl_80AC27D4:
/* 80AC27D4  7F A3 EB 78 */	mr r3, r29
/* 80AC27D8  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 80AC27DC  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80AC27E0  7D 89 03 A6 */	mtctr r12
/* 80AC27E4  4E 80 04 21 */	bctrl 
/* 80AC27E8  48 00 00 A0 */	b lbl_80AC2888
lbl_80AC27EC:
/* 80AC27EC  7F A3 EB 78 */	mr r3, r29
/* 80AC27F0  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 80AC27F4  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80AC27F8  7D 89 03 A6 */	mtctr r12
/* 80AC27FC  4E 80 04 21 */	bctrl 
/* 80AC2800  38 7D 0D C4 */	addi r3, r29, 0xdc4
/* 80AC2804  48 00 1A C1 */	bl func_80AC42C4
/* 80AC2808  2C 03 00 00 */	cmpwi r3, 0
/* 80AC280C  40 82 00 7C */	bne lbl_80AC2888
/* 80AC2810  3B E0 00 01 */	li r31, 1
/* 80AC2814  48 00 00 74 */	b lbl_80AC2888
lbl_80AC2818:
/* 80AC2818  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80AC281C  4B 68 32 08 */	b checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 80AC2820  2C 03 00 00 */	cmpwi r3, 0
/* 80AC2824  41 82 00 64 */	beq lbl_80AC2888
/* 80AC2828  3B E0 00 01 */	li r31, 1
/* 80AC282C  48 00 00 5C */	b lbl_80AC2888
lbl_80AC2830:
/* 80AC2830  7F A3 EB 78 */	mr r3, r29
/* 80AC2834  38 80 00 00 */	li r4, 0
/* 80AC2838  38 A0 00 00 */	li r5, 0
/* 80AC283C  38 C0 00 00 */	li r6, 0
/* 80AC2840  38 E0 00 00 */	li r7, 0
/* 80AC2844  4B 68 94 34 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80AC2848  2C 03 00 00 */	cmpwi r3, 0
/* 80AC284C  41 82 00 3C */	beq lbl_80AC2888
/* 80AC2850  88 1D 09 9A */	lbz r0, 0x99a(r29)
/* 80AC2854  28 00 00 01 */	cmplwi r0, 1
/* 80AC2858  40 82 00 30 */	bne lbl_80AC2888
/* 80AC285C  3B E0 00 01 */	li r31, 1
/* 80AC2860  48 00 00 28 */	b lbl_80AC2888
lbl_80AC2864:
/* 80AC2864  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80AC2868  4B 68 31 BC */	b checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 80AC286C  2C 03 00 00 */	cmpwi r3, 0
/* 80AC2870  41 82 00 18 */	beq lbl_80AC2888
/* 80AC2874  3B E0 00 01 */	li r31, 1
/* 80AC2878  48 00 00 10 */	b lbl_80AC2888
lbl_80AC287C:
/* 80AC287C  3B E0 00 01 */	li r31, 1
/* 80AC2880  48 00 00 08 */	b lbl_80AC2888
lbl_80AC2884:
/* 80AC2884  3B E0 00 01 */	li r31, 1
lbl_80AC2888:
/* 80AC2888  7F E3 FB 78 */	mr r3, r31
/* 80AC288C  39 61 00 90 */	addi r11, r1, 0x90
/* 80AC2890  4B 89 F9 88 */	b _restgpr_25
/* 80AC2894  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80AC2898  7C 08 03 A6 */	mtlr r0
/* 80AC289C  38 21 00 90 */	addi r1, r1, 0x90
/* 80AC28A0  4E 80 00 20 */	blr 
