lbl_809E9568:
/* 809E9568  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809E956C  7C 08 02 A6 */	mflr r0
/* 809E9570  90 01 00 34 */	stw r0, 0x34(r1)
/* 809E9574  39 61 00 30 */	addi r11, r1, 0x30
/* 809E9578  4B 97 8C 61 */	bl _savegpr_28
/* 809E957C  7C 7F 1B 78 */	mr r31, r3
/* 809E9580  7C BC 2B 78 */	mr r28, r5
/* 809E9584  A0 A4 00 14 */	lhz r5, 0x14(r4)
/* 809E9588  7C BD 2B 78 */	mr r29, r5
/* 809E958C  3C 60 80 9F */	lis r3, lit_4470@ha /* 0x809EF2A4@ha */
/* 809E9590  38 83 F2 A4 */	addi r4, r3, lit_4470@l /* 0x809EF2A4@l */
/* 809E9594  80 64 00 00 */	lwz r3, 0(r4)
/* 809E9598  80 04 00 04 */	lwz r0, 4(r4)
/* 809E959C  90 61 00 08 */	stw r3, 8(r1)
/* 809E95A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 809E95A4  80 04 00 08 */	lwz r0, 8(r4)
/* 809E95A8  90 01 00 10 */	stw r0, 0x10(r1)
/* 809E95AC  2C 05 00 00 */	cmpwi r5, 0
/* 809E95B0  40 82 00 B0 */	bne lbl_809E9660
/* 809E95B4  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809E95B8  80 63 00 04 */	lwz r3, 4(r3)
/* 809E95BC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809E95C0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809E95C4  38 63 00 30 */	addi r3, r3, 0x30
/* 809E95C8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809E95CC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809E95D0  4B 95 CE E1 */	bl PSMTXCopy
/* 809E95D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809E95D8  3B C3 D4 70 */	addi r30, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809E95DC  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 809E95E0  D0 1F 08 54 */	stfs f0, 0x854(r31)
/* 809E95E4  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 809E95E8  D0 1F 08 58 */	stfs f0, 0x858(r31)
/* 809E95EC  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 809E95F0  D0 1F 08 5C */	stfs f0, 0x85c(r31)
/* 809E95F4  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809E95F8  80 63 00 04 */	lwz r3, 4(r3)
/* 809E95FC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809E9600  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809E9604  38 63 00 90 */	addi r3, r3, 0x90
/* 809E9608  7F C4 F3 78 */	mr r4, r30
/* 809E960C  4B 95 CE A5 */	bl PSMTXCopy
/* 809E9610  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 809E9614  D0 1F 08 60 */	stfs f0, 0x860(r31)
/* 809E9618  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 809E961C  D0 1F 08 64 */	stfs f0, 0x864(r31)
/* 809E9620  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 809E9624  D0 1F 08 68 */	stfs f0, 0x868(r31)
/* 809E9628  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809E962C  80 63 00 04 */	lwz r3, 4(r3)
/* 809E9630  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809E9634  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809E9638  38 63 00 C0 */	addi r3, r3, 0xc0
/* 809E963C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809E9640  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809E9644  4B 95 CE 6D */	bl PSMTXCopy
/* 809E9648  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 809E964C  D0 1F 08 6C */	stfs f0, 0x86c(r31)
/* 809E9650  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 809E9654  D0 1F 08 70 */	stfs f0, 0x870(r31)
/* 809E9658  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 809E965C  D0 1F 08 74 */	stfs f0, 0x874(r31)
lbl_809E9660:
/* 809E9660  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 809E9664  80 03 00 0C */	lwz r0, 0xc(r3)
/* 809E9668  1F DD 00 30 */	mulli r30, r29, 0x30
/* 809E966C  7C 60 F2 14 */	add r3, r0, r30
/* 809E9670  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809E9674  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809E9678  4B 95 CE 39 */	bl PSMTXCopy
/* 809E967C  2C 1D 00 02 */	cmpwi r29, 2
/* 809E9680  41 82 00 38 */	beq lbl_809E96B8
/* 809E9684  40 80 00 10 */	bge lbl_809E9694
/* 809E9688  2C 1D 00 01 */	cmpwi r29, 1
/* 809E968C  40 80 00 10 */	bge lbl_809E969C
/* 809E9690  48 00 00 28 */	b lbl_809E96B8
lbl_809E9694:
/* 809E9694  2C 1D 00 05 */	cmpwi r29, 5
/* 809E9698  40 80 00 20 */	bge lbl_809E96B8
lbl_809E969C:
/* 809E969C  7F E3 FB 78 */	mr r3, r31
/* 809E96A0  7F A4 EB 78 */	mr r4, r29
/* 809E96A4  38 A1 00 08 */	addi r5, r1, 8
/* 809E96A8  3C C0 80 9F */	lis r6, m__17daNpc_Grz_Param_c@ha /* 0x809EF1F4@ha */
/* 809E96AC  38 C6 F1 F4 */	addi r6, r6, m__17daNpc_Grz_Param_c@l /* 0x809EF1F4@l */
/* 809E96B0  C0 26 00 40 */	lfs f1, 0x40(r6)
/* 809E96B4  4B 76 9C C9 */	bl setLookatMtx__8daNpcF_cFiPif
lbl_809E96B8:
/* 809E96B8  2C 1D 00 01 */	cmpwi r29, 1
/* 809E96BC  40 82 00 30 */	bne lbl_809E96EC
/* 809E96C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809E96C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809E96C8  A8 1F 09 0C */	lha r0, 0x90c(r31)
/* 809E96CC  7C 00 00 D0 */	neg r0, r0
/* 809E96D0  7C 04 07 34 */	extsh r4, r0
/* 809E96D4  4B 62 2D 61 */	bl mDoMtx_YrotM__FPA4_fs
/* 809E96D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809E96DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809E96E0  A8 9F 09 08 */	lha r4, 0x908(r31)
/* 809E96E4  4B 62 2D E9 */	bl mDoMtx_ZrotM__FPA4_fs
/* 809E96E8  48 00 00 34 */	b lbl_809E971C
lbl_809E96EC:
/* 809E96EC  2C 1D 00 04 */	cmpwi r29, 4
/* 809E96F0  40 82 00 2C */	bne lbl_809E971C
/* 809E96F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809E96F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809E96FC  A8 1F 09 18 */	lha r0, 0x918(r31)
/* 809E9700  7C 00 00 D0 */	neg r0, r0
/* 809E9704  7C 04 07 34 */	extsh r4, r0
/* 809E9708  4B 62 2D 2D */	bl mDoMtx_YrotM__FPA4_fs
/* 809E970C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809E9710  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809E9714  A8 9F 09 14 */	lha r4, 0x914(r31)
/* 809E9718  4B 62 2D B5 */	bl mDoMtx_ZrotM__FPA4_fs
lbl_809E971C:
/* 809E971C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809E9720  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809E9724  80 9C 00 84 */	lwz r4, 0x84(r28)
/* 809E9728  80 04 00 0C */	lwz r0, 0xc(r4)
/* 809E972C  7C 80 F2 14 */	add r4, r0, r30
/* 809E9730  4B 95 CD 81 */	bl PSMTXCopy
/* 809E9734  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809E9738  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809E973C  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 809E9740  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 809E9744  4B 95 CD 6D */	bl PSMTXCopy
/* 809E9748  2C 1D 00 04 */	cmpwi r29, 4
/* 809E974C  41 82 00 0C */	beq lbl_809E9758
/* 809E9750  2C 1D 00 0A */	cmpwi r29, 0xa
/* 809E9754  40 82 00 2C */	bne lbl_809E9780
lbl_809E9758:
/* 809E9758  80 1F 09 9C */	lwz r0, 0x99c(r31)
/* 809E975C  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 809E9760  41 82 00 20 */	beq lbl_809E9780
/* 809E9764  83 9F 05 80 */	lwz r28, 0x580(r31)
/* 809E9768  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809E976C  80 83 00 08 */	lwz r4, 8(r3)
/* 809E9770  38 7F 05 6C */	addi r3, r31, 0x56c
/* 809E9774  4B 62 42 1D */	bl changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform
/* 809E9778  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809E977C  93 83 00 08 */	stw r28, 8(r3)
lbl_809E9780:
/* 809E9780  38 60 00 01 */	li r3, 1
/* 809E9784  39 61 00 30 */	addi r11, r1, 0x30
/* 809E9788  4B 97 8A 9D */	bl _restgpr_28
/* 809E978C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809E9790  7C 08 03 A6 */	mtlr r0
/* 809E9794  38 21 00 30 */	addi r1, r1, 0x30
/* 809E9798  4E 80 00 20 */	blr 
