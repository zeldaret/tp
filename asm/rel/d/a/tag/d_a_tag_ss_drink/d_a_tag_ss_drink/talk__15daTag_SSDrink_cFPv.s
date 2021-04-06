lbl_80D635C8:
/* 80D635C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D635CC  7C 08 02 A6 */	mflr r0
/* 80D635D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D635D4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D635D8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80D635DC  7C 7E 1B 78 */	mr r30, r3
/* 80D635E0  3B E0 00 00 */	li r31, 0
/* 80D635E4  A0 03 05 D0 */	lhz r0, 0x5d0(r3)
/* 80D635E8  2C 00 00 01 */	cmpwi r0, 1
/* 80D635EC  41 82 00 38 */	beq lbl_80D63624
/* 80D635F0  40 80 00 90 */	bge lbl_80D63680
/* 80D635F4  2C 00 00 00 */	cmpwi r0, 0
/* 80D635F8  40 80 00 0C */	bge lbl_80D63604
/* 80D635FC  48 00 00 84 */	b lbl_80D63680
/* 80D63600  48 00 00 80 */	b lbl_80D63680
lbl_80D63604:
/* 80D63604  4B FF F9 89 */	bl getFlowNodeNum__15daTag_SSDrink_cFv
/* 80D63608  54 65 04 3E */	clrlwi r5, r3, 0x10
/* 80D6360C  38 7E 05 78 */	addi r3, r30, 0x578
/* 80D63610  7F C4 F3 78 */	mr r4, r30
/* 80D63614  38 C0 00 00 */	li r6, 0
/* 80D63618  38 E0 00 00 */	li r7, 0
/* 80D6361C  4B 4E 69 75 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80D63620  48 00 00 60 */	b lbl_80D63680
lbl_80D63624:
/* 80D63624  38 7E 05 78 */	addi r3, r30, 0x578
/* 80D63628  7F C4 F3 78 */	mr r4, r30
/* 80D6362C  38 A0 00 00 */	li r5, 0
/* 80D63630  38 C0 00 00 */	li r6, 0
/* 80D63634  4B 4E 6C A5 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80D63638  2C 03 00 00 */	cmpwi r3, 0
/* 80D6363C  41 82 00 44 */	beq lbl_80D63680
/* 80D63640  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D63644  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D63648  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80D6364C  4B 2D EE 1D */	bl reset__14dEvt_control_cFv
/* 80D63650  3C 60 80 D6 */	lis r3, lit_4003@ha /* 0x80D637FC@ha */
/* 80D63654  38 83 37 FC */	addi r4, r3, lit_4003@l /* 0x80D637FC@l */
/* 80D63658  80 64 00 00 */	lwz r3, 0(r4)
/* 80D6365C  80 04 00 04 */	lwz r0, 4(r4)
/* 80D63660  90 61 00 08 */	stw r3, 8(r1)
/* 80D63664  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D63668  80 04 00 08 */	lwz r0, 8(r4)
/* 80D6366C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D63670  7F C3 F3 78 */	mr r3, r30
/* 80D63674  38 81 00 08 */	addi r4, r1, 8
/* 80D63678  4B FF FA 71 */	bl setProcess__15daTag_SSDrink_cFM15daTag_SSDrink_cFPCvPvPv_i
/* 80D6367C  3B E0 00 01 */	li r31, 1
lbl_80D63680:
/* 80D63680  7F E3 FB 78 */	mr r3, r31
/* 80D63684  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D63688  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80D6368C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D63690  7C 08 03 A6 */	mtlr r0
/* 80D63694  38 21 00 20 */	addi r1, r1, 0x20
/* 80D63698  4E 80 00 20 */	blr 
