lbl_80ABA4A8:
/* 80ABA4A8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80ABA4AC  7C 08 02 A6 */	mflr r0
/* 80ABA4B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80ABA4B4  39 61 00 30 */	addi r11, r1, 0x30
/* 80ABA4B8  4B 8A 7D 21 */	bl _savegpr_28
/* 80ABA4BC  7C 7D 1B 78 */	mr r29, r3
/* 80ABA4C0  7C BE 2B 78 */	mr r30, r5
/* 80ABA4C4  A0 A4 00 14 */	lhz r5, 0x14(r4)
/* 80ABA4C8  7C BF 2B 78 */	mr r31, r5
/* 80ABA4CC  3C 60 80 AC */	lis r3, lit_4390@ha /* 0x80ABFA6C@ha */
/* 80ABA4D0  38 83 FA 6C */	addi r4, r3, lit_4390@l /* 0x80ABFA6C@l */
/* 80ABA4D4  80 64 00 00 */	lwz r3, 0(r4)
/* 80ABA4D8  80 04 00 04 */	lwz r0, 4(r4)
/* 80ABA4DC  90 61 00 08 */	stw r3, 8(r1)
/* 80ABA4E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80ABA4E4  80 04 00 08 */	lwz r0, 8(r4)
/* 80ABA4E8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80ABA4EC  2C 05 00 00 */	cmpwi r5, 0
/* 80ABA4F0  40 82 00 B0 */	bne lbl_80ABA5A0
/* 80ABA4F4  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80ABA4F8  80 63 00 04 */	lwz r3, 4(r3)
/* 80ABA4FC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80ABA500  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80ABA504  38 63 00 30 */	addi r3, r3, 0x30
/* 80ABA508  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80ABA50C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80ABA510  4B 88 BF A1 */	bl PSMTXCopy
/* 80ABA514  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80ABA518  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80ABA51C  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80ABA520  D0 1D 08 54 */	stfs f0, 0x854(r29)
/* 80ABA524  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80ABA528  D0 1D 08 58 */	stfs f0, 0x858(r29)
/* 80ABA52C  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80ABA530  D0 1D 08 5C */	stfs f0, 0x85c(r29)
/* 80ABA534  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80ABA538  80 63 00 04 */	lwz r3, 4(r3)
/* 80ABA53C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80ABA540  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80ABA544  38 63 00 90 */	addi r3, r3, 0x90
/* 80ABA548  7F 84 E3 78 */	mr r4, r28
/* 80ABA54C  4B 88 BF 65 */	bl PSMTXCopy
/* 80ABA550  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80ABA554  D0 1D 08 60 */	stfs f0, 0x860(r29)
/* 80ABA558  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80ABA55C  D0 1D 08 64 */	stfs f0, 0x864(r29)
/* 80ABA560  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80ABA564  D0 1D 08 68 */	stfs f0, 0x868(r29)
/* 80ABA568  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80ABA56C  80 63 00 04 */	lwz r3, 4(r3)
/* 80ABA570  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80ABA574  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80ABA578  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80ABA57C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80ABA580  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80ABA584  4B 88 BF 2D */	bl PSMTXCopy
/* 80ABA588  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80ABA58C  D0 1D 08 6C */	stfs f0, 0x86c(r29)
/* 80ABA590  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80ABA594  D0 1D 08 70 */	stfs f0, 0x870(r29)
/* 80ABA598  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80ABA59C  D0 1D 08 74 */	stfs f0, 0x874(r29)
lbl_80ABA5A0:
/* 80ABA5A0  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80ABA5A4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80ABA5A8  1F 9F 00 30 */	mulli r28, r31, 0x30
/* 80ABA5AC  7C 60 E2 14 */	add r3, r0, r28
/* 80ABA5B0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80ABA5B4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80ABA5B8  4B 88 BE F9 */	bl PSMTXCopy
/* 80ABA5BC  2C 1F 00 02 */	cmpwi r31, 2
/* 80ABA5C0  41 82 00 38 */	beq lbl_80ABA5F8
/* 80ABA5C4  40 80 00 10 */	bge lbl_80ABA5D4
/* 80ABA5C8  2C 1F 00 01 */	cmpwi r31, 1
/* 80ABA5CC  40 80 00 10 */	bge lbl_80ABA5DC
/* 80ABA5D0  48 00 00 28 */	b lbl_80ABA5F8
lbl_80ABA5D4:
/* 80ABA5D4  2C 1F 00 05 */	cmpwi r31, 5
/* 80ABA5D8  40 80 00 20 */	bge lbl_80ABA5F8
lbl_80ABA5DC:
/* 80ABA5DC  7F A3 EB 78 */	mr r3, r29
/* 80ABA5E0  7F E4 FB 78 */	mr r4, r31
/* 80ABA5E4  38 A1 00 08 */	addi r5, r1, 8
/* 80ABA5E8  3C C0 80 AC */	lis r6, m__19daNpcRafrel_Param_c@ha /* 0x80ABF9E0@ha */
/* 80ABA5EC  38 C6 F9 E0 */	addi r6, r6, m__19daNpcRafrel_Param_c@l /* 0x80ABF9E0@l */
/* 80ABA5F0  C0 26 00 40 */	lfs f1, 0x40(r6)
/* 80ABA5F4  4B 69 8D 89 */	bl setLookatMtx__8daNpcF_cFiPif
lbl_80ABA5F8:
/* 80ABA5F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80ABA5FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80ABA600  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 80ABA604  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80ABA608  7C 80 E2 14 */	add r4, r0, r28
/* 80ABA60C  4B 88 BE A5 */	bl PSMTXCopy
/* 80ABA610  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80ABA614  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80ABA618  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 80ABA61C  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 80ABA620  4B 88 BE 91 */	bl PSMTXCopy
/* 80ABA624  2C 1F 00 04 */	cmpwi r31, 4
/* 80ABA628  41 82 00 0C */	beq lbl_80ABA634
/* 80ABA62C  2C 1F 00 09 */	cmpwi r31, 9
/* 80ABA630  40 82 00 2C */	bne lbl_80ABA65C
lbl_80ABA634:
/* 80ABA634  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 80ABA638  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80ABA63C  41 82 00 20 */	beq lbl_80ABA65C
/* 80ABA640  83 9D 05 80 */	lwz r28, 0x580(r29)
/* 80ABA644  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80ABA648  80 83 00 08 */	lwz r4, 8(r3)
/* 80ABA64C  38 7D 05 6C */	addi r3, r29, 0x56c
/* 80ABA650  4B 55 33 41 */	bl changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform
/* 80ABA654  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80ABA658  93 83 00 08 */	stw r28, 8(r3)
lbl_80ABA65C:
/* 80ABA65C  38 60 00 01 */	li r3, 1
/* 80ABA660  39 61 00 30 */	addi r11, r1, 0x30
/* 80ABA664  4B 8A 7B C1 */	bl _restgpr_28
/* 80ABA668  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80ABA66C  7C 08 03 A6 */	mtlr r0
/* 80ABA670  38 21 00 30 */	addi r1, r1, 0x30
/* 80ABA674  4E 80 00 20 */	blr 
