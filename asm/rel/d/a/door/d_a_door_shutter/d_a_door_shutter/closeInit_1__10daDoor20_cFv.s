lbl_8046266C:
/* 8046266C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80462670  7C 08 02 A6 */	mflr r0
/* 80462674  90 01 00 24 */	stw r0, 0x24(r1)
/* 80462678  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8046267C  7C 7F 1B 78 */	mr r31, r3
/* 80462680  4B FF E5 25 */	bl getArcName__10daDoor20_cFv
/* 80462684  3C 80 80 46 */	lis r4, struct_804668D8+0x0@ha
/* 80462688  38 84 68 D8 */	addi r4, r4, struct_804668D8+0x0@l
/* 8046268C  38 84 01 40 */	addi r4, r4, 0x140
/* 80462690  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80462694  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80462698  3C A5 00 02 */	addis r5, r5, 2
/* 8046269C  38 C0 00 80 */	li r6, 0x80
/* 804626A0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 804626A4  4B BD 9C D8 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 804626A8  7C 64 1B 78 */	mr r4, r3
/* 804626AC  38 7F 05 84 */	addi r3, r31, 0x584
/* 804626B0  38 A0 00 01 */	li r5, 1
/* 804626B4  38 C0 00 00 */	li r6, 0
/* 804626B8  3C E0 80 46 */	lis r7, lit_4124@ha
/* 804626BC  C0 27 68 24 */	lfs f1, lit_4124@l(r7)
/* 804626C0  38 E0 00 00 */	li r7, 0
/* 804626C4  39 00 FF FF */	li r8, -1
/* 804626C8  39 20 00 01 */	li r9, 1
/* 804626CC  4B BA B1 10 */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 804626D0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 804626D4  7C 03 07 74 */	extsb r3, r0
/* 804626D8  4B BC A9 94 */	b dComIfGp_getReverb__Fi
/* 804626DC  7C 67 1B 78 */	mr r7, r3
/* 804626E0  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800B3@ha */
/* 804626E4  38 03 00 B3 */	addi r0, r3, 0x00B3 /* 0x000800B3@l */
/* 804626E8  90 01 00 08 */	stw r0, 8(r1)
/* 804626EC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 804626F0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 804626F4  80 63 00 00 */	lwz r3, 0(r3)
/* 804626F8  38 81 00 08 */	addi r4, r1, 8
/* 804626FC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80462700  38 C0 00 00 */	li r6, 0
/* 80462704  3D 00 80 46 */	lis r8, lit_4124@ha
/* 80462708  C0 28 68 24 */	lfs f1, lit_4124@l(r8)
/* 8046270C  FC 40 08 90 */	fmr f2, f1
/* 80462710  3D 00 80 46 */	lis r8, lit_4609@ha
/* 80462714  C0 68 68 70 */	lfs f3, lit_4609@l(r8)
/* 80462718  FC 80 18 90 */	fmr f4, f3
/* 8046271C  39 00 00 00 */	li r8, 0
/* 80462720  4B E4 92 64 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80462724  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80462728  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8046272C  7C 08 03 A6 */	mtlr r0
/* 80462730  38 21 00 20 */	addi r1, r1, 0x20
/* 80462734  4E 80 00 20 */	blr 
