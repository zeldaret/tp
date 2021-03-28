lbl_80B1548C:
/* 80B1548C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B15490  7C 08 02 A6 */	mflr r0
/* 80B15494  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B15498  39 61 00 30 */	addi r11, r1, 0x30
/* 80B1549C  4B 84 CD 3C */	b _savegpr_28
/* 80B154A0  7C 7D 1B 78 */	mr r29, r3
/* 80B154A4  7C BE 2B 78 */	mr r30, r5
/* 80B154A8  A0 A4 00 14 */	lhz r5, 0x14(r4)
/* 80B154AC  7C BF 2B 78 */	mr r31, r5
/* 80B154B0  3C 60 80 B2 */	lis r3, lit_4586@ha
/* 80B154B4  38 83 DE 10 */	addi r4, r3, lit_4586@l
/* 80B154B8  80 64 00 00 */	lwz r3, 0(r4)
/* 80B154BC  80 04 00 04 */	lwz r0, 4(r4)
/* 80B154C0  90 61 00 08 */	stw r3, 8(r1)
/* 80B154C4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B154C8  80 04 00 08 */	lwz r0, 8(r4)
/* 80B154CC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B154D0  2C 05 00 00 */	cmpwi r5, 0
/* 80B154D4  40 82 00 B0 */	bne lbl_80B15584
/* 80B154D8  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B154DC  80 63 00 04 */	lwz r3, 4(r3)
/* 80B154E0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B154E4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B154E8  38 63 02 D0 */	addi r3, r3, 0x2d0
/* 80B154EC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80B154F0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80B154F4  4B 83 0F BC */	b PSMTXCopy
/* 80B154F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B154FC  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l
/* 80B15500  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80B15504  D0 1D 08 54 */	stfs f0, 0x854(r29)
/* 80B15508  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80B1550C  D0 1D 08 58 */	stfs f0, 0x858(r29)
/* 80B15510  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80B15514  D0 1D 08 5C */	stfs f0, 0x85c(r29)
/* 80B15518  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B1551C  80 63 00 04 */	lwz r3, 4(r3)
/* 80B15520  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B15524  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B15528  38 63 03 00 */	addi r3, r3, 0x300
/* 80B1552C  7F 84 E3 78 */	mr r4, r28
/* 80B15530  4B 83 0F 80 */	b PSMTXCopy
/* 80B15534  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80B15538  D0 1D 08 60 */	stfs f0, 0x860(r29)
/* 80B1553C  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80B15540  D0 1D 08 64 */	stfs f0, 0x864(r29)
/* 80B15544  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80B15548  D0 1D 08 68 */	stfs f0, 0x868(r29)
/* 80B1554C  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B15550  80 63 00 04 */	lwz r3, 4(r3)
/* 80B15554  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B15558  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B1555C  38 63 03 30 */	addi r3, r3, 0x330
/* 80B15560  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80B15564  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80B15568  4B 83 0F 48 */	b PSMTXCopy
/* 80B1556C  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80B15570  D0 1D 08 6C */	stfs f0, 0x86c(r29)
/* 80B15574  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80B15578  D0 1D 08 70 */	stfs f0, 0x870(r29)
/* 80B1557C  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80B15580  D0 1D 08 74 */	stfs f0, 0x874(r29)
lbl_80B15584:
/* 80B15584  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80B15588  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80B1558C  1F 9F 00 30 */	mulli r28, r31, 0x30
/* 80B15590  7C 60 E2 14 */	add r3, r0, r28
/* 80B15594  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80B15598  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80B1559C  4B 83 0F 14 */	b PSMTXCopy
/* 80B155A0  2C 1F 00 12 */	cmpwi r31, 0x12
/* 80B155A4  40 80 00 2C */	bge lbl_80B155D0
/* 80B155A8  2C 1F 00 0F */	cmpwi r31, 0xf
/* 80B155AC  40 80 00 08 */	bge lbl_80B155B4
/* 80B155B0  48 00 00 20 */	b lbl_80B155D0
lbl_80B155B4:
/* 80B155B4  7F A3 EB 78 */	mr r3, r29
/* 80B155B8  7F E4 FB 78 */	mr r4, r31
/* 80B155BC  38 A1 00 08 */	addi r5, r1, 8
/* 80B155C0  3C C0 80 B2 */	lis r6, m__16daNpcTks_Param_c@ha
/* 80B155C4  38 C6 DD 58 */	addi r6, r6, m__16daNpcTks_Param_c@l
/* 80B155C8  C0 26 00 40 */	lfs f1, 0x40(r6)
/* 80B155CC  4B 63 DD B0 */	b setLookatMtx__8daNpcF_cFiPif
lbl_80B155D0:
/* 80B155D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B155D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B155D8  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 80B155DC  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80B155E0  7C 80 E2 14 */	add r4, r0, r28
/* 80B155E4  4B 83 0E CC */	b PSMTXCopy
/* 80B155E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B155EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B155F0  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 80B155F4  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 80B155F8  4B 83 0E B8 */	b PSMTXCopy
/* 80B155FC  2C 1F 00 11 */	cmpwi r31, 0x11
/* 80B15600  41 82 00 0C */	beq lbl_80B1560C
/* 80B15604  2C 1F 00 13 */	cmpwi r31, 0x13
/* 80B15608  40 82 00 2C */	bne lbl_80B15634
lbl_80B1560C:
/* 80B1560C  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 80B15610  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80B15614  41 82 00 20 */	beq lbl_80B15634
/* 80B15618  83 9D 05 80 */	lwz r28, 0x580(r29)
/* 80B1561C  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B15620  80 83 00 08 */	lwz r4, 8(r3)
/* 80B15624  38 7D 05 6C */	addi r3, r29, 0x56c
/* 80B15628  4B 4F 83 68 */	b changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform
/* 80B1562C  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B15630  93 83 00 08 */	stw r28, 8(r3)
lbl_80B15634:
/* 80B15634  38 60 00 01 */	li r3, 1
/* 80B15638  39 61 00 30 */	addi r11, r1, 0x30
/* 80B1563C  4B 84 CB E8 */	b _restgpr_28
/* 80B15640  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B15644  7C 08 03 A6 */	mtlr r0
/* 80B15648  38 21 00 30 */	addi r1, r1, 0x30
/* 80B1564C  4E 80 00 20 */	blr 
