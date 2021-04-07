lbl_80AED508:
/* 80AED508  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AED50C  7C 08 02 A6 */	mflr r0
/* 80AED510  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AED514  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80AED518  7C 7F 1B 78 */	mr r31, r3
/* 80AED51C  3C 80 80 AF */	lis r4, lit_4578@ha /* 0x80AEF2A4@ha */
/* 80AED520  38 A4 F2 A4 */	addi r5, r4, lit_4578@l /* 0x80AEF2A4@l */
/* 80AED524  80 85 00 00 */	lwz r4, 0(r5)
/* 80AED528  80 05 00 04 */	lwz r0, 4(r5)
/* 80AED52C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80AED530  90 01 00 18 */	stw r0, 0x18(r1)
/* 80AED534  80 05 00 08 */	lwz r0, 8(r5)
/* 80AED538  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80AED53C  38 81 00 14 */	addi r4, r1, 0x14
/* 80AED540  48 00 05 D1 */	bl chkAction__12daNpc_solA_cFM12daNpc_solA_cFPCvPvPv_i
/* 80AED544  2C 03 00 00 */	cmpwi r3, 0
/* 80AED548  41 82 00 1C */	beq lbl_80AED564
/* 80AED54C  7F E3 FB 78 */	mr r3, r31
/* 80AED550  38 80 00 00 */	li r4, 0
/* 80AED554  39 9F 0F 90 */	addi r12, r31, 0xf90
/* 80AED558  4B 87 4B 2D */	bl __ptmf_scall
/* 80AED55C  60 00 00 00 */	nop 
/* 80AED560  48 00 00 90 */	b lbl_80AED5F0
lbl_80AED564:
/* 80AED564  38 00 00 00 */	li r0, 0
/* 80AED568  98 1F 0E 2E */	stb r0, 0xe2e(r31)
/* 80AED56C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AED570  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AED574  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 80AED578  28 04 00 01 */	cmplwi r4, 1
/* 80AED57C  41 82 00 0C */	beq lbl_80AED588
/* 80AED580  28 04 00 02 */	cmplwi r4, 2
/* 80AED584  40 82 00 08 */	bne lbl_80AED58C
lbl_80AED588:
/* 80AED588  38 00 00 01 */	li r0, 1
lbl_80AED58C:
/* 80AED58C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80AED590  41 82 00 34 */	beq lbl_80AED5C4
/* 80AED594  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80AED598  4B 55 B2 59 */	bl ChkPresentEnd__16dEvent_manager_cFv
/* 80AED59C  2C 03 00 00 */	cmpwi r3, 0
/* 80AED5A0  40 82 00 0C */	bne lbl_80AED5AC
/* 80AED5A4  38 60 00 01 */	li r3, 1
/* 80AED5A8  48 00 00 4C */	b lbl_80AED5F4
lbl_80AED5AC:
/* 80AED5AC  38 00 00 01 */	li r0, 1
/* 80AED5B0  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80AED5B4  7F E3 FB 78 */	mr r3, r31
/* 80AED5B8  4B 65 CC 6D */	bl evtChange__8daNpcT_cFv
/* 80AED5BC  38 60 00 01 */	li r3, 1
/* 80AED5C0  48 00 00 34 */	b lbl_80AED5F4
lbl_80AED5C4:
/* 80AED5C4  3C 60 80 AF */	lis r3, lit_4588@ha /* 0x80AEF2B0@ha */
/* 80AED5C8  38 83 F2 B0 */	addi r4, r3, lit_4588@l /* 0x80AEF2B0@l */
/* 80AED5CC  80 64 00 00 */	lwz r3, 0(r4)
/* 80AED5D0  80 04 00 04 */	lwz r0, 4(r4)
/* 80AED5D4  90 61 00 08 */	stw r3, 8(r1)
/* 80AED5D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AED5DC  80 04 00 08 */	lwz r0, 8(r4)
/* 80AED5E0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AED5E4  7F E3 FB 78 */	mr r3, r31
/* 80AED5E8  38 81 00 08 */	addi r4, r1, 8
/* 80AED5EC  48 00 05 51 */	bl setAction__12daNpc_solA_cFM12daNpc_solA_cFPCvPvPv_i
lbl_80AED5F0:
/* 80AED5F0  38 60 00 01 */	li r3, 1
lbl_80AED5F4:
/* 80AED5F4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80AED5F8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AED5FC  7C 08 03 A6 */	mtlr r0
/* 80AED600  38 21 00 30 */	addi r1, r1, 0x30
/* 80AED604  4E 80 00 20 */	blr 
