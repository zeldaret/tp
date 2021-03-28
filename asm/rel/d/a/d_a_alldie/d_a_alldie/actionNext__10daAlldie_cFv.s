lbl_804D5A44:
/* 804D5A44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D5A48  7C 08 02 A6 */	mflr r0
/* 804D5A4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D5A50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D5A54  7C 7F 1B 78 */	mr r31, r3
/* 804D5A58  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 804D5A5C  28 00 00 02 */	cmplwi r0, 2
/* 804D5A60  40 82 00 78 */	bne lbl_804D5AD8
/* 804D5A64  A8 1F 05 6E */	lha r0, 0x56e(r31)
/* 804D5A68  B0 1F 05 6C */	sth r0, 0x56c(r31)
/* 804D5A6C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 804D5A70  7C 04 07 74 */	extsb r4, r0
/* 804D5A74  38 00 FF FF */	li r0, -1
/* 804D5A78  B0 1F 05 6E */	sth r0, 0x56e(r31)
/* 804D5A7C  A8 1F 05 70 */	lha r0, 0x570(r31)
/* 804D5A80  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 804D5A84  4B B6 DA 7C */	b searchMapEventData__14dEvt_control_cFUcl
/* 804D5A88  28 03 00 00 */	cmplwi r3, 0
/* 804D5A8C  41 82 00 30 */	beq lbl_804D5ABC
/* 804D5A90  88 03 00 05 */	lbz r0, 5(r3)
/* 804D5A94  B0 1F 05 70 */	sth r0, 0x570(r31)
/* 804D5A98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804D5A9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804D5AA0  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 804D5AA4  7F E4 FB 78 */	mr r4, r31
/* 804D5AA8  A8 1F 05 70 */	lha r0, 0x570(r31)
/* 804D5AAC  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 804D5AB0  4B B7 1B E8 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cUc
/* 804D5AB4  B0 7F 05 6E */	sth r3, 0x56e(r31)
/* 804D5AB8  48 00 00 0C */	b lbl_804D5AC4
lbl_804D5ABC:
/* 804D5ABC  38 00 FF FF */	li r0, -1
/* 804D5AC0  B0 1F 05 70 */	sth r0, 0x570(r31)
lbl_804D5AC4:
/* 804D5AC4  38 00 00 05 */	li r0, 5
/* 804D5AC8  98 1F 05 68 */	stb r0, 0x568(r31)
/* 804D5ACC  7F E3 FB 78 */	mr r3, r31
/* 804D5AD0  4B FF FE D1 */	bl actionEvent__10daAlldie_cFv
/* 804D5AD4  48 00 00 24 */	b lbl_804D5AF8
lbl_804D5AD8:
/* 804D5AD8  A8 9F 05 6E */	lha r4, 0x56e(r31)
/* 804D5ADC  A8 1F 05 70 */	lha r0, 0x570(r31)
/* 804D5AE0  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 804D5AE4  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 804D5AE8  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 804D5AEC  38 E0 00 00 */	li r7, 0
/* 804D5AF0  39 00 00 01 */	li r8, 1
/* 804D5AF4  4B B4 5B 88 */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
lbl_804D5AF8:
/* 804D5AF8  38 60 00 01 */	li r3, 1
/* 804D5AFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D5B00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D5B04  7C 08 03 A6 */	mtlr r0
/* 804D5B08  38 21 00 10 */	addi r1, r1, 0x10
/* 804D5B0C  4E 80 00 20 */	blr 
