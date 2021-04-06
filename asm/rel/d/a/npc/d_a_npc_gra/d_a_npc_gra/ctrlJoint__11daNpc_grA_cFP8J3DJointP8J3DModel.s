lbl_809BF504:
/* 809BF504  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809BF508  7C 08 02 A6 */	mflr r0
/* 809BF50C  90 01 00 34 */	stw r0, 0x34(r1)
/* 809BF510  39 61 00 30 */	addi r11, r1, 0x30
/* 809BF514  4B 9A 2C C5 */	bl _savegpr_28
/* 809BF518  7C 7F 1B 78 */	mr r31, r3
/* 809BF51C  7C BC 2B 78 */	mr r28, r5
/* 809BF520  A0 A4 00 14 */	lhz r5, 0x14(r4)
/* 809BF524  7C BD 2B 78 */	mr r29, r5
/* 809BF528  3C 60 80 9D */	lis r3, lit_4634@ha /* 0x809C9E38@ha */
/* 809BF52C  38 83 9E 38 */	addi r4, r3, lit_4634@l /* 0x809C9E38@l */
/* 809BF530  80 64 00 00 */	lwz r3, 0(r4)
/* 809BF534  80 04 00 04 */	lwz r0, 4(r4)
/* 809BF538  90 61 00 08 */	stw r3, 8(r1)
/* 809BF53C  90 01 00 0C */	stw r0, 0xc(r1)
/* 809BF540  80 04 00 08 */	lwz r0, 8(r4)
/* 809BF544  90 01 00 10 */	stw r0, 0x10(r1)
/* 809BF548  2C 05 00 00 */	cmpwi r5, 0
/* 809BF54C  40 82 00 B0 */	bne lbl_809BF5FC
/* 809BF550  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809BF554  80 63 00 04 */	lwz r3, 4(r3)
/* 809BF558  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809BF55C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809BF560  38 63 00 30 */	addi r3, r3, 0x30
/* 809BF564  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809BF568  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809BF56C  4B 98 6F 45 */	bl PSMTXCopy
/* 809BF570  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809BF574  3B C3 D4 70 */	addi r30, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809BF578  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 809BF57C  D0 1F 08 54 */	stfs f0, 0x854(r31)
/* 809BF580  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 809BF584  D0 1F 08 58 */	stfs f0, 0x858(r31)
/* 809BF588  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 809BF58C  D0 1F 08 5C */	stfs f0, 0x85c(r31)
/* 809BF590  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809BF594  80 63 00 04 */	lwz r3, 4(r3)
/* 809BF598  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809BF59C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809BF5A0  38 63 00 90 */	addi r3, r3, 0x90
/* 809BF5A4  7F C4 F3 78 */	mr r4, r30
/* 809BF5A8  4B 98 6F 09 */	bl PSMTXCopy
/* 809BF5AC  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 809BF5B0  D0 1F 08 60 */	stfs f0, 0x860(r31)
/* 809BF5B4  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 809BF5B8  D0 1F 08 64 */	stfs f0, 0x864(r31)
/* 809BF5BC  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 809BF5C0  D0 1F 08 68 */	stfs f0, 0x868(r31)
/* 809BF5C4  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809BF5C8  80 63 00 04 */	lwz r3, 4(r3)
/* 809BF5CC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809BF5D0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809BF5D4  38 63 00 C0 */	addi r3, r3, 0xc0
/* 809BF5D8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809BF5DC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809BF5E0  4B 98 6E D1 */	bl PSMTXCopy
/* 809BF5E4  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 809BF5E8  D0 1F 08 6C */	stfs f0, 0x86c(r31)
/* 809BF5EC  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 809BF5F0  D0 1F 08 70 */	stfs f0, 0x870(r31)
/* 809BF5F4  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 809BF5F8  D0 1F 08 74 */	stfs f0, 0x874(r31)
lbl_809BF5FC:
/* 809BF5FC  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 809BF600  80 03 00 0C */	lwz r0, 0xc(r3)
/* 809BF604  1F DD 00 30 */	mulli r30, r29, 0x30
/* 809BF608  7C 60 F2 14 */	add r3, r0, r30
/* 809BF60C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809BF610  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809BF614  4B 98 6E 9D */	bl PSMTXCopy
/* 809BF618  2C 1D 00 02 */	cmpwi r29, 2
/* 809BF61C  41 82 00 38 */	beq lbl_809BF654
/* 809BF620  40 80 00 10 */	bge lbl_809BF630
/* 809BF624  2C 1D 00 01 */	cmpwi r29, 1
/* 809BF628  40 80 00 10 */	bge lbl_809BF638
/* 809BF62C  48 00 00 28 */	b lbl_809BF654
lbl_809BF630:
/* 809BF630  2C 1D 00 05 */	cmpwi r29, 5
/* 809BF634  40 80 00 20 */	bge lbl_809BF654
lbl_809BF638:
/* 809BF638  7F E3 FB 78 */	mr r3, r31
/* 809BF63C  7F A4 EB 78 */	mr r4, r29
/* 809BF640  38 A1 00 08 */	addi r5, r1, 8
/* 809BF644  3C C0 80 9D */	lis r6, m__17daNpc_grA_Param_c@ha /* 0x809C9D98@ha */
/* 809BF648  38 C6 9D 98 */	addi r6, r6, m__17daNpc_grA_Param_c@l /* 0x809C9D98@l */
/* 809BF64C  C0 26 00 40 */	lfs f1, 0x40(r6)
/* 809BF650  4B 79 3D 2D */	bl setLookatMtx__8daNpcF_cFiPif
lbl_809BF654:
/* 809BF654  2C 1D 00 01 */	cmpwi r29, 1
/* 809BF658  40 82 00 30 */	bne lbl_809BF688
/* 809BF65C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809BF660  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809BF664  A8 1F 09 0C */	lha r0, 0x90c(r31)
/* 809BF668  7C 00 00 D0 */	neg r0, r0
/* 809BF66C  7C 04 07 34 */	extsh r4, r0
/* 809BF670  4B 64 CD C5 */	bl mDoMtx_YrotM__FPA4_fs
/* 809BF674  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809BF678  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809BF67C  A8 9F 09 08 */	lha r4, 0x908(r31)
/* 809BF680  4B 64 CE 4D */	bl mDoMtx_ZrotM__FPA4_fs
/* 809BF684  48 00 00 34 */	b lbl_809BF6B8
lbl_809BF688:
/* 809BF688  2C 1D 00 04 */	cmpwi r29, 4
/* 809BF68C  40 82 00 2C */	bne lbl_809BF6B8
/* 809BF690  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809BF694  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809BF698  A8 1F 09 18 */	lha r0, 0x918(r31)
/* 809BF69C  7C 00 00 D0 */	neg r0, r0
/* 809BF6A0  7C 04 07 34 */	extsh r4, r0
/* 809BF6A4  4B 64 CD 91 */	bl mDoMtx_YrotM__FPA4_fs
/* 809BF6A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809BF6AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809BF6B0  A8 9F 09 14 */	lha r4, 0x914(r31)
/* 809BF6B4  4B 64 CE 19 */	bl mDoMtx_ZrotM__FPA4_fs
lbl_809BF6B8:
/* 809BF6B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809BF6BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809BF6C0  80 9C 00 84 */	lwz r4, 0x84(r28)
/* 809BF6C4  80 04 00 0C */	lwz r0, 0xc(r4)
/* 809BF6C8  7C 80 F2 14 */	add r4, r0, r30
/* 809BF6CC  4B 98 6D E5 */	bl PSMTXCopy
/* 809BF6D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809BF6D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809BF6D8  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 809BF6DC  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 809BF6E0  4B 98 6D D1 */	bl PSMTXCopy
/* 809BF6E4  2C 1D 00 04 */	cmpwi r29, 4
/* 809BF6E8  41 82 00 0C */	beq lbl_809BF6F4
/* 809BF6EC  2C 1D 00 07 */	cmpwi r29, 7
/* 809BF6F0  40 82 00 2C */	bne lbl_809BF71C
lbl_809BF6F4:
/* 809BF6F4  80 1F 09 9C */	lwz r0, 0x99c(r31)
/* 809BF6F8  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 809BF6FC  41 82 00 20 */	beq lbl_809BF71C
/* 809BF700  83 9F 05 80 */	lwz r28, 0x580(r31)
/* 809BF704  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809BF708  80 83 00 08 */	lwz r4, 8(r3)
/* 809BF70C  38 7F 05 6C */	addi r3, r31, 0x56c
/* 809BF710  4B 64 E2 81 */	bl changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform
/* 809BF714  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809BF718  93 83 00 08 */	stw r28, 8(r3)
lbl_809BF71C:
/* 809BF71C  38 60 00 01 */	li r3, 1
/* 809BF720  39 61 00 30 */	addi r11, r1, 0x30
/* 809BF724  4B 9A 2B 01 */	bl _restgpr_28
/* 809BF728  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809BF72C  7C 08 03 A6 */	mtlr r0
/* 809BF730  38 21 00 30 */	addi r1, r1, 0x30
/* 809BF734  4E 80 00 20 */	blr 
