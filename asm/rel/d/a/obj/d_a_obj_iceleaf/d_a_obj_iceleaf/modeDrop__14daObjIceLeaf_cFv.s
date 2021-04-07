lbl_80C25614:
/* 80C25614  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80C25618  7C 08 02 A6 */	mflr r0
/* 80C2561C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C25620  39 61 00 50 */	addi r11, r1, 0x50
/* 80C25624  4B 73 CB B5 */	bl _savegpr_28
/* 80C25628  7C 7E 1B 78 */	mr r30, r3
/* 80C2562C  3C 60 80 C2 */	lis r3, lit_3703@ha /* 0x80C25D64@ha */
/* 80C25630  3B E3 5D 64 */	addi r31, r3, lit_3703@l /* 0x80C25D64@l */
/* 80C25634  80 7E 09 04 */	lwz r3, 0x904(r30)
/* 80C25638  4B 3E 7D F1 */	bl play__14mDoExt_baseAnmFv
/* 80C2563C  2C 03 00 00 */	cmpwi r3, 0
/* 80C25640  41 82 00 F4 */	beq lbl_80C25734
/* 80C25644  3C 60 80 C2 */	lis r3, l_arcName@ha /* 0x80C25DD0@ha */
/* 80C25648  38 63 5D D0 */	addi r3, r3, l_arcName@l /* 0x80C25DD0@l */
/* 80C2564C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C25650  38 80 00 04 */	li r4, 4
/* 80C25654  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C25658  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C2565C  3C A5 00 02 */	addis r5, r5, 2
/* 80C25660  38 C0 00 80 */	li r6, 0x80
/* 80C25664  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C25668  4B 41 6C 85 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C2566C  38 80 00 00 */	li r4, 0
/* 80C25670  38 BE 09 08 */	addi r5, r30, 0x908
/* 80C25674  81 83 00 00 */	lwz r12, 0(r3)
/* 80C25678  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80C2567C  7D 89 03 A6 */	mtctr r12
/* 80C25680  4E 80 04 21 */	bctrl 
/* 80C25684  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C25688  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C2568C  C0 3E 09 1C */	lfs f1, 0x91c(r30)
/* 80C25690  C0 5E 09 20 */	lfs f2, 0x920(r30)
/* 80C25694  C0 7E 09 24 */	lfs f3, 0x924(r30)
/* 80C25698  4B 72 12 51 */	bl PSMTXTrans
/* 80C2569C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C256A0  4B 3E 77 35 */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 80C256A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C256A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C256AC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80C256B0  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80C256B4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80C256B8  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80C256BC  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80C256C0  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80C256C4  A8 7E 04 E4 */	lha r3, 0x4e4(r30)
/* 80C256C8  A8 1E 09 14 */	lha r0, 0x914(r30)
/* 80C256CC  7C 03 02 14 */	add r0, r3, r0
/* 80C256D0  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80C256D4  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 80C256D8  A8 1E 09 16 */	lha r0, 0x916(r30)
/* 80C256DC  7C 03 02 14 */	add r0, r3, r0
/* 80C256E0  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80C256E4  A8 7E 04 E8 */	lha r3, 0x4e8(r30)
/* 80C256E8  A8 1E 09 18 */	lha r0, 0x918(r30)
/* 80C256EC  7C 03 02 14 */	add r0, r3, r0
/* 80C256F0  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 80C256F4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C256F8  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80C256FC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C25700  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80C25704  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C25708  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80C2570C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C25710  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 80C25714  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C25718  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80C2571C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C25720  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 80C25724  38 00 00 00 */	li r0, 0
/* 80C25728  90 1E 09 04 */	stw r0, 0x904(r30)
/* 80C2572C  38 00 00 02 */	li r0, 2
/* 80C25730  98 1E 09 28 */	stb r0, 0x928(r30)
lbl_80C25734:
/* 80C25734  80 7E 09 04 */	lwz r3, 0x904(r30)
/* 80C25738  28 03 00 00 */	cmplwi r3, 0
/* 80C2573C  41 82 01 A4 */	beq lbl_80C258E0
/* 80C25740  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80C25744  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80C25748  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80C2574C  40 82 01 94 */	bne lbl_80C258E0
/* 80C25750  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80C25754  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C25758  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C2575C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C25760  3C 60 80 C2 */	lis r3, l_arcName@ha /* 0x80C25DD0@ha */
/* 80C25764  38 63 5D D0 */	addi r3, r3, l_arcName@l /* 0x80C25DD0@l */
/* 80C25768  80 63 00 00 */	lwz r3, 0(r3)
/* 80C2576C  38 80 00 04 */	li r4, 4
/* 80C25770  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C25774  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C25778  3C A5 00 02 */	addis r5, r5, 2
/* 80C2577C  38 C0 00 80 */	li r6, 0x80
/* 80C25780  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C25784  4B 41 6B 69 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C25788  38 80 00 00 */	li r4, 0
/* 80C2578C  38 BE 09 08 */	addi r5, r30, 0x908
/* 80C25790  81 83 00 00 */	lwz r12, 0(r3)
/* 80C25794  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80C25798  7D 89 03 A6 */	mtctr r12
/* 80C2579C  4E 80 04 21 */	bctrl 
/* 80C257A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C257A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C257A8  C0 3E 09 1C */	lfs f1, 0x91c(r30)
/* 80C257AC  C0 5E 09 20 */	lfs f2, 0x920(r30)
/* 80C257B0  C0 7E 09 24 */	lfs f3, 0x924(r30)
/* 80C257B4  4B 72 11 35 */	bl PSMTXTrans
/* 80C257B8  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C257BC  4B 3E 76 19 */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 80C257C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C257C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C257C8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80C257CC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C257D0  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80C257D4  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80C257D8  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80C257DC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C257E0  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80C257E4  EC 01 00 2A */	fadds f0, f1, f0
/* 80C257E8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C257EC  38 61 00 1C */	addi r3, r1, 0x1c
/* 80C257F0  4B 3F 84 CD */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80C257F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C257F8  41 82 00 E8 */	beq lbl_80C258E0
/* 80C257FC  38 60 00 00 */	li r3, 0
/* 80C25800  90 61 00 08 */	stw r3, 8(r1)
/* 80C25804  38 00 FF FF */	li r0, -1
/* 80C25808  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C2580C  90 61 00 10 */	stw r3, 0x10(r1)
/* 80C25810  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C25814  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C25818  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80C2581C  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000881F@ha */
/* 80C25820  38 84 88 1F */	addi r4, r4, 0x881F /* 0x0000881F@l */
/* 80C25824  3C A0 80 3F */	lis r5, mGndCheck__11fopAcM_gc_c@ha /* 0x803F1CC4@ha */
/* 80C25828  38 A5 1C C4 */	addi r5, r5, mGndCheck__11fopAcM_gc_c@l /* 0x803F1CC4@l */
/* 80C2582C  3B 85 00 14 */	addi r28, r5, 0x14
/* 80C25830  7F 85 E3 78 */	mr r5, r28
/* 80C25834  38 C1 00 1C */	addi r6, r1, 0x1c
/* 80C25838  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80C2583C  39 1E 04 DC */	addi r8, r30, 0x4dc
/* 80C25840  39 21 00 28 */	addi r9, r1, 0x28
/* 80C25844  39 40 00 00 */	li r10, 0
/* 80C25848  4B 42 78 21 */	bl setPoly__13dPa_control_cFUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz
/* 80C2584C  38 60 00 00 */	li r3, 0
/* 80C25850  90 61 00 08 */	stw r3, 8(r1)
/* 80C25854  38 00 FF FF */	li r0, -1
/* 80C25858  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C2585C  90 61 00 10 */	stw r3, 0x10(r1)
/* 80C25860  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80C25864  3C 80 00 01 */	lis r4, 0x0001 /* 0x00008820@ha */
/* 80C25868  38 84 88 20 */	addi r4, r4, 0x8820 /* 0x00008820@l */
/* 80C2586C  7F 85 E3 78 */	mr r5, r28
/* 80C25870  38 C1 00 1C */	addi r6, r1, 0x1c
/* 80C25874  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80C25878  39 1E 04 DC */	addi r8, r30, 0x4dc
/* 80C2587C  39 21 00 28 */	addi r9, r1, 0x28
/* 80C25880  39 40 00 00 */	li r10, 0
/* 80C25884  4B 42 77 E5 */	bl setPoly__13dPa_control_cFUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz
/* 80C25888  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80C2588C  D0 1E 09 64 */	stfs f0, 0x964(r30)
/* 80C25890  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80C25894  D0 1E 09 68 */	stfs f0, 0x968(r30)
/* 80C25898  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80C2589C  D0 1E 09 6C */	stfs f0, 0x96c(r30)
/* 80C258A0  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802A2@ha */
/* 80C258A4  38 03 02 A2 */	addi r0, r3, 0x02A2 /* 0x000802A2@l */
/* 80C258A8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80C258AC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C258B0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C258B4  80 63 00 00 */	lwz r3, 0(r3)
/* 80C258B8  38 81 00 18 */	addi r4, r1, 0x18
/* 80C258BC  38 BE 09 64 */	addi r5, r30, 0x964
/* 80C258C0  38 C0 00 00 */	li r6, 0
/* 80C258C4  38 E0 00 00 */	li r7, 0
/* 80C258C8  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80C258CC  FC 40 08 90 */	fmr f2, f1
/* 80C258D0  C0 7F 00 3C */	lfs f3, 0x3c(r31)
/* 80C258D4  FC 80 18 90 */	fmr f4, f3
/* 80C258D8  39 00 00 00 */	li r8, 0
/* 80C258DC  4B 68 60 A9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C258E0:
/* 80C258E0  39 61 00 50 */	addi r11, r1, 0x50
/* 80C258E4  4B 73 C9 41 */	bl _restgpr_28
/* 80C258E8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80C258EC  7C 08 03 A6 */	mtlr r0
/* 80C258F0  38 21 00 50 */	addi r1, r1, 0x50
/* 80C258F4  4E 80 00 20 */	blr 
