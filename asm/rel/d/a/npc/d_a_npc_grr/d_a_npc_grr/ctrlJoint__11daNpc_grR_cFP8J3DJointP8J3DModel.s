lbl_809E04E0:
/* 809E04E0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809E04E4  7C 08 02 A6 */	mflr r0
/* 809E04E8  90 01 00 34 */	stw r0, 0x34(r1)
/* 809E04EC  39 61 00 30 */	addi r11, r1, 0x30
/* 809E04F0  4B 98 1C E8 */	b _savegpr_28
/* 809E04F4  7C 7F 1B 78 */	mr r31, r3
/* 809E04F8  7C BC 2B 78 */	mr r28, r5
/* 809E04FC  A0 A4 00 14 */	lhz r5, 0x14(r4)
/* 809E0500  7C BD 2B 78 */	mr r29, r5
/* 809E0504  3C 60 80 9E */	lis r3, lit_4505@ha
/* 809E0508  38 83 39 6C */	addi r4, r3, lit_4505@l
/* 809E050C  80 64 00 00 */	lwz r3, 0(r4)
/* 809E0510  80 04 00 04 */	lwz r0, 4(r4)
/* 809E0514  90 61 00 08 */	stw r3, 8(r1)
/* 809E0518  90 01 00 0C */	stw r0, 0xc(r1)
/* 809E051C  80 04 00 08 */	lwz r0, 8(r4)
/* 809E0520  90 01 00 10 */	stw r0, 0x10(r1)
/* 809E0524  2C 05 00 00 */	cmpwi r5, 0
/* 809E0528  40 82 00 B0 */	bne lbl_809E05D8
/* 809E052C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809E0530  80 63 00 04 */	lwz r3, 4(r3)
/* 809E0534  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809E0538  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809E053C  38 63 00 30 */	addi r3, r3, 0x30
/* 809E0540  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 809E0544  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 809E0548  4B 96 5F 68 */	b PSMTXCopy
/* 809E054C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809E0550  3B C3 D4 70 */	addi r30, r3, now__14mDoMtx_stack_c@l
/* 809E0554  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 809E0558  D0 1F 08 54 */	stfs f0, 0x854(r31)
/* 809E055C  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 809E0560  D0 1F 08 58 */	stfs f0, 0x858(r31)
/* 809E0564  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 809E0568  D0 1F 08 5C */	stfs f0, 0x85c(r31)
/* 809E056C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809E0570  80 63 00 04 */	lwz r3, 4(r3)
/* 809E0574  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809E0578  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809E057C  38 63 00 90 */	addi r3, r3, 0x90
/* 809E0580  7F C4 F3 78 */	mr r4, r30
/* 809E0584  4B 96 5F 2C */	b PSMTXCopy
/* 809E0588  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 809E058C  D0 1F 08 60 */	stfs f0, 0x860(r31)
/* 809E0590  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 809E0594  D0 1F 08 64 */	stfs f0, 0x864(r31)
/* 809E0598  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 809E059C  D0 1F 08 68 */	stfs f0, 0x868(r31)
/* 809E05A0  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809E05A4  80 63 00 04 */	lwz r3, 4(r3)
/* 809E05A8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809E05AC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809E05B0  38 63 00 C0 */	addi r3, r3, 0xc0
/* 809E05B4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 809E05B8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 809E05BC  4B 96 5E F4 */	b PSMTXCopy
/* 809E05C0  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 809E05C4  D0 1F 08 6C */	stfs f0, 0x86c(r31)
/* 809E05C8  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 809E05CC  D0 1F 08 70 */	stfs f0, 0x870(r31)
/* 809E05D0  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 809E05D4  D0 1F 08 74 */	stfs f0, 0x874(r31)
lbl_809E05D8:
/* 809E05D8  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 809E05DC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 809E05E0  1F DD 00 30 */	mulli r30, r29, 0x30
/* 809E05E4  7C 60 F2 14 */	add r3, r0, r30
/* 809E05E8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 809E05EC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 809E05F0  4B 96 5E C0 */	b PSMTXCopy
/* 809E05F4  2C 1D 00 02 */	cmpwi r29, 2
/* 809E05F8  41 82 00 38 */	beq lbl_809E0630
/* 809E05FC  40 80 00 10 */	bge lbl_809E060C
/* 809E0600  2C 1D 00 01 */	cmpwi r29, 1
/* 809E0604  40 80 00 10 */	bge lbl_809E0614
/* 809E0608  48 00 00 28 */	b lbl_809E0630
lbl_809E060C:
/* 809E060C  2C 1D 00 05 */	cmpwi r29, 5
/* 809E0610  40 80 00 20 */	bge lbl_809E0630
lbl_809E0614:
/* 809E0614  7F E3 FB 78 */	mr r3, r31
/* 809E0618  7F A4 EB 78 */	mr r4, r29
/* 809E061C  38 A1 00 08 */	addi r5, r1, 8
/* 809E0620  3C C0 80 9E */	lis r6, m__17daNpc_grR_Param_c@ha
/* 809E0624  38 C6 38 D8 */	addi r6, r6, m__17daNpc_grR_Param_c@l
/* 809E0628  C0 26 00 40 */	lfs f1, 0x40(r6)
/* 809E062C  4B 77 2D 50 */	b setLookatMtx__8daNpcF_cFiPif
lbl_809E0630:
/* 809E0630  2C 1D 00 01 */	cmpwi r29, 1
/* 809E0634  40 82 00 30 */	bne lbl_809E0664
/* 809E0638  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809E063C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809E0640  A8 1F 09 0C */	lha r0, 0x90c(r31)
/* 809E0644  7C 00 00 D0 */	neg r0, r0
/* 809E0648  7C 04 07 34 */	extsh r4, r0
/* 809E064C  4B 62 BD E8 */	b mDoMtx_YrotM__FPA4_fs
/* 809E0650  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809E0654  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809E0658  A8 9F 09 08 */	lha r4, 0x908(r31)
/* 809E065C  4B 62 BE 70 */	b mDoMtx_ZrotM__FPA4_fs
/* 809E0660  48 00 00 34 */	b lbl_809E0694
lbl_809E0664:
/* 809E0664  2C 1D 00 04 */	cmpwi r29, 4
/* 809E0668  40 82 00 2C */	bne lbl_809E0694
/* 809E066C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809E0670  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809E0674  A8 1F 09 18 */	lha r0, 0x918(r31)
/* 809E0678  7C 00 00 D0 */	neg r0, r0
/* 809E067C  7C 04 07 34 */	extsh r4, r0
/* 809E0680  4B 62 BD B4 */	b mDoMtx_YrotM__FPA4_fs
/* 809E0684  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809E0688  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809E068C  A8 9F 09 14 */	lha r4, 0x914(r31)
/* 809E0690  4B 62 BE 3C */	b mDoMtx_ZrotM__FPA4_fs
lbl_809E0694:
/* 809E0694  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809E0698  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809E069C  80 9C 00 84 */	lwz r4, 0x84(r28)
/* 809E06A0  80 04 00 0C */	lwz r0, 0xc(r4)
/* 809E06A4  7C 80 F2 14 */	add r4, r0, r30
/* 809E06A8  4B 96 5E 08 */	b PSMTXCopy
/* 809E06AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809E06B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809E06B4  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 809E06B8  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 809E06BC  4B 96 5D F4 */	b PSMTXCopy
/* 809E06C0  2C 1D 00 04 */	cmpwi r29, 4
/* 809E06C4  41 82 00 0C */	beq lbl_809E06D0
/* 809E06C8  2C 1D 00 07 */	cmpwi r29, 7
/* 809E06CC  40 82 00 2C */	bne lbl_809E06F8
lbl_809E06D0:
/* 809E06D0  80 1F 09 9C */	lwz r0, 0x99c(r31)
/* 809E06D4  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 809E06D8  41 82 00 20 */	beq lbl_809E06F8
/* 809E06DC  83 9F 05 80 */	lwz r28, 0x580(r31)
/* 809E06E0  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809E06E4  80 83 00 08 */	lwz r4, 8(r3)
/* 809E06E8  38 7F 05 6C */	addi r3, r31, 0x56c
/* 809E06EC  4B 62 D2 A4 */	b changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform
/* 809E06F0  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809E06F4  93 83 00 08 */	stw r28, 8(r3)
lbl_809E06F8:
/* 809E06F8  38 60 00 01 */	li r3, 1
/* 809E06FC  39 61 00 30 */	addi r11, r1, 0x30
/* 809E0700  4B 98 1B 24 */	b _restgpr_28
/* 809E0704  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809E0708  7C 08 03 A6 */	mtlr r0
/* 809E070C  38 21 00 30 */	addi r1, r1, 0x30
/* 809E0710  4E 80 00 20 */	blr 
