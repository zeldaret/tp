lbl_80AEB4C8:
/* 80AEB4C8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AEB4CC  7C 08 02 A6 */	mflr r0
/* 80AEB4D0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AEB4D4  39 61 00 30 */	addi r11, r1, 0x30
/* 80AEB4D8  4B 87 6D 05 */	bl _savegpr_29
/* 80AEB4DC  7C 7E 1B 78 */	mr r30, r3
/* 80AEB4E0  3B E0 00 01 */	li r31, 1
/* 80AEB4E4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AEB4E8  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AEB4EC  88 1D 4F AD */	lbz r0, 0x4fad(r29)
/* 80AEB4F0  28 00 00 00 */	cmplwi r0, 0
/* 80AEB4F4  41 82 00 D8 */	beq lbl_80AEB5CC
/* 80AEB4F8  3B E0 00 00 */	li r31, 0
/* 80AEB4FC  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 80AEB500  28 00 00 01 */	cmplwi r0, 1
/* 80AEB504  40 82 00 C8 */	bne lbl_80AEB5CC
/* 80AEB508  3C 80 80 AF */	lis r4, lit_4132@ha /* 0x80AEBC8C@ha */
/* 80AEB50C  38 A4 BC 8C */	addi r5, r4, lit_4132@l /* 0x80AEBC8C@l */
/* 80AEB510  80 85 00 00 */	lwz r4, 0(r5)
/* 80AEB514  80 05 00 04 */	lwz r0, 4(r5)
/* 80AEB518  90 81 00 14 */	stw r4, 0x14(r1)
/* 80AEB51C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80AEB520  80 05 00 08 */	lwz r0, 8(r5)
/* 80AEB524  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80AEB528  38 81 00 14 */	addi r4, r1, 0x14
/* 80AEB52C  48 00 02 C5 */	bl chkProcess__13daNpc_Shop0_cFM13daNpc_Shop0_cFPCvPvPv_i
/* 80AEB530  2C 03 00 00 */	cmpwi r3, 0
/* 80AEB534  41 82 00 20 */	beq lbl_80AEB554
/* 80AEB538  7F C3 F3 78 */	mr r3, r30
/* 80AEB53C  38 80 00 00 */	li r4, 0
/* 80AEB540  39 9E 09 DC */	addi r12, r30, 0x9dc
/* 80AEB544  4B 87 6B 41 */	bl __ptmf_scall
/* 80AEB548  60 00 00 00 */	nop 
/* 80AEB54C  7C 7F 1B 78 */	mr r31, r3
/* 80AEB550  48 00 00 74 */	b lbl_80AEB5C4
lbl_80AEB554:
/* 80AEB554  38 00 00 00 */	li r0, 0
/* 80AEB558  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AEB55C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AEB560  88 63 4F B5 */	lbz r3, 0x4fb5(r3)
/* 80AEB564  28 03 00 01 */	cmplwi r3, 1
/* 80AEB568  41 82 00 0C */	beq lbl_80AEB574
/* 80AEB56C  28 03 00 02 */	cmplwi r3, 2
/* 80AEB570  40 82 00 08 */	bne lbl_80AEB578
lbl_80AEB574:
/* 80AEB574  38 00 00 01 */	li r0, 1
lbl_80AEB578:
/* 80AEB578  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80AEB57C  41 82 00 14 */	beq lbl_80AEB590
/* 80AEB580  38 7D 4F F8 */	addi r3, r29, 0x4ff8
/* 80AEB584  4B 55 D2 6D */	bl ChkPresentEnd__16dEvent_manager_cFv
/* 80AEB588  2C 03 00 00 */	cmpwi r3, 0
/* 80AEB58C  41 82 00 38 */	beq lbl_80AEB5C4
lbl_80AEB590:
/* 80AEB590  3C 60 80 AF */	lis r3, lit_4140@ha /* 0x80AEBC98@ha */
/* 80AEB594  38 83 BC 98 */	addi r4, r3, lit_4140@l /* 0x80AEBC98@l */
/* 80AEB598  80 64 00 00 */	lwz r3, 0(r4)
/* 80AEB59C  80 04 00 04 */	lwz r0, 4(r4)
/* 80AEB5A0  90 61 00 08 */	stw r3, 8(r1)
/* 80AEB5A4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AEB5A8  80 04 00 08 */	lwz r0, 8(r4)
/* 80AEB5AC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AEB5B0  7F C3 F3 78 */	mr r3, r30
/* 80AEB5B4  38 81 00 08 */	addi r4, r1, 8
/* 80AEB5B8  38 A0 00 00 */	li r5, 0
/* 80AEB5BC  38 C0 00 00 */	li r6, 0
/* 80AEB5C0  48 00 02 65 */	bl setProcess__13daNpc_Shop0_cFM13daNpc_Shop0_cFPCvPvPv_iPvi
lbl_80AEB5C4:
/* 80AEB5C4  7F E3 FB 78 */	mr r3, r31
/* 80AEB5C8  48 00 00 08 */	b lbl_80AEB5D0
lbl_80AEB5CC:
/* 80AEB5CC  7F E3 FB 78 */	mr r3, r31
lbl_80AEB5D0:
/* 80AEB5D0  39 61 00 30 */	addi r11, r1, 0x30
/* 80AEB5D4  4B 87 6C 55 */	bl _restgpr_29
/* 80AEB5D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AEB5DC  7C 08 03 A6 */	mtlr r0
/* 80AEB5E0  38 21 00 30 */	addi r1, r1, 0x30
/* 80AEB5E4  4E 80 00 20 */	blr 
