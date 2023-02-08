lbl_80A9D4CC:
/* 80A9D4CC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A9D4D0  7C 08 02 A6 */	mflr r0
/* 80A9D4D4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A9D4D8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80A9D4DC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80A9D4E0  7C 7F 1B 78 */	mr r31, r3
/* 80A9D4E4  3C 80 80 AA */	lis r4, lit_4815@ha /* 0x80AA27CC@ha */
/* 80A9D4E8  38 A4 27 CC */	addi r5, r4, lit_4815@l /* 0x80AA27CC@l */
/* 80A9D4EC  80 85 00 00 */	lwz r4, 0(r5)
/* 80A9D4F0  80 05 00 04 */	lwz r0, 4(r5)
/* 80A9D4F4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80A9D4F8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A9D4FC  80 05 00 08 */	lwz r0, 8(r5)
/* 80A9D500  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A9D504  38 81 00 14 */	addi r4, r1, 0x14
/* 80A9D508  48 00 08 99 */	bl chkAction__18daNpc_Pachi_Taro_cFM18daNpc_Pachi_Taro_cFPCvPvPv_i
/* 80A9D50C  2C 03 00 00 */	cmpwi r3, 0
/* 80A9D510  41 82 00 1C */	beq lbl_80A9D52C
/* 80A9D514  7F E3 FB 78 */	mr r3, r31
/* 80A9D518  38 80 00 00 */	li r4, 0
/* 80A9D51C  39 9F 0F C8 */	addi r12, r31, 0xfc8
/* 80A9D520  4B 8C 4B 65 */	bl __ptmf_scall
/* 80A9D524  60 00 00 00 */	nop 
/* 80A9D528  48 00 00 8C */	b lbl_80A9D5B4
lbl_80A9D52C:
/* 80A9D52C  38 00 00 00 */	li r0, 0
/* 80A9D530  98 1F 0E 2E */	stb r0, 0xe2e(r31)
/* 80A9D534  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A9D538  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A9D53C  3B C3 4E C8 */	addi r30, r3, 0x4ec8
/* 80A9D540  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 80A9D544  28 04 00 01 */	cmplwi r4, 1
/* 80A9D548  41 82 00 0C */	beq lbl_80A9D554
/* 80A9D54C  28 04 00 02 */	cmplwi r4, 2
/* 80A9D550  40 82 00 08 */	bne lbl_80A9D558
lbl_80A9D554:
/* 80A9D554  38 00 00 01 */	li r0, 1
lbl_80A9D558:
/* 80A9D558  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80A9D55C  41 82 00 2C */	beq lbl_80A9D588
/* 80A9D560  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80A9D564  4B 5A B2 8D */	bl ChkPresentEnd__16dEvent_manager_cFv
/* 80A9D568  2C 03 00 00 */	cmpwi r3, 0
/* 80A9D56C  40 82 00 0C */	bne lbl_80A9D578
/* 80A9D570  38 60 00 01 */	li r3, 1
/* 80A9D574  48 00 00 44 */	b lbl_80A9D5B8
lbl_80A9D578:
/* 80A9D578  7F C3 F3 78 */	mr r3, r30
/* 80A9D57C  4B 5A 4E ED */	bl reset__14dEvt_control_cFv
/* 80A9D580  38 60 00 01 */	li r3, 1
/* 80A9D584  48 00 00 34 */	b lbl_80A9D5B8
lbl_80A9D588:
/* 80A9D588  3C 60 80 AA */	lis r3, lit_4825@ha /* 0x80AA27D8@ha */
/* 80A9D58C  38 83 27 D8 */	addi r4, r3, lit_4825@l /* 0x80AA27D8@l */
/* 80A9D590  80 64 00 00 */	lwz r3, 0(r4)
/* 80A9D594  80 04 00 04 */	lwz r0, 4(r4)
/* 80A9D598  90 61 00 08 */	stw r3, 8(r1)
/* 80A9D59C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A9D5A0  80 04 00 08 */	lwz r0, 8(r4)
/* 80A9D5A4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A9D5A8  7F E3 FB 78 */	mr r3, r31
/* 80A9D5AC  38 81 00 08 */	addi r4, r1, 8
/* 80A9D5B0  48 00 08 1D */	bl setAction__18daNpc_Pachi_Taro_cFM18daNpc_Pachi_Taro_cFPCvPvPv_i
lbl_80A9D5B4:
/* 80A9D5B4  38 60 00 01 */	li r3, 1
lbl_80A9D5B8:
/* 80A9D5B8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80A9D5BC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80A9D5C0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A9D5C4  7C 08 03 A6 */	mtlr r0
/* 80A9D5C8  38 21 00 30 */	addi r1, r1, 0x30
/* 80A9D5CC  4E 80 00 20 */	blr 
