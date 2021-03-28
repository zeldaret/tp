lbl_804CD98C:
/* 804CD98C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CD990  7C 08 02 A6 */	mflr r0
/* 804CD994  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CD998  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804CD99C  7C 7F 1B 78 */	mr r31, r3
/* 804CD9A0  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 804CD9A4  28 00 00 04 */	cmplwi r0, 4
/* 804CD9A8  40 82 00 30 */	bne lbl_804CD9D8
/* 804CD9AC  38 00 00 02 */	li r0, 2
/* 804CD9B0  98 1F 09 34 */	stb r0, 0x934(r31)
/* 804CD9B4  80 9F 09 2C */	lwz r4, 0x92c(r31)
/* 804CD9B8  3C 04 00 01 */	addis r0, r4, 1
/* 804CD9BC  28 00 FF FF */	cmplwi r0, 0xffff
/* 804CD9C0  41 82 00 30 */	beq lbl_804CD9F0
/* 804CD9C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804CD9C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804CD9CC  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 804CD9D0  4B B7 5D 1C */	b setPtI_Id__14dEvt_control_cFUi
/* 804CD9D4  48 00 00 1C */	b lbl_804CD9F0
lbl_804CD9D8:
/* 804CD9D8  38 80 00 00 */	li r4, 0
/* 804CD9DC  38 A0 00 00 */	li r5, 0
/* 804CD9E0  4B B4 DF F0 */	b fopAcM_orderItemEvent__FP10fopAc_ac_cUsUs
/* 804CD9E4  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 804CD9E8  60 00 00 08 */	ori r0, r0, 8
/* 804CD9EC  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_804CD9F0:
/* 804CD9F0  38 60 00 01 */	li r3, 1
/* 804CD9F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804CD9F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CD9FC  7C 08 03 A6 */	mtlr r0
/* 804CDA00  38 21 00 10 */	addi r1, r1, 0x10
/* 804CDA04  4E 80 00 20 */	blr 
