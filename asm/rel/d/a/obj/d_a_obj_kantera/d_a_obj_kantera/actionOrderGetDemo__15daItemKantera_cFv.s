lbl_80C392D0:
/* 80C392D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C392D4  7C 08 02 A6 */	mflr r0
/* 80C392D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C392DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C392E0  7C 7F 1B 78 */	mr r31, r3
/* 80C392E4  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80C392E8  28 00 00 04 */	cmplwi r0, 4
/* 80C392EC  40 82 00 30 */	bne lbl_80C3931C
/* 80C392F0  38 00 00 03 */	li r0, 3
/* 80C392F4  98 1F 09 34 */	stb r0, 0x934(r31)
/* 80C392F8  80 9F 09 2C */	lwz r4, 0x92c(r31)
/* 80C392FC  3C 04 00 01 */	addis r0, r4, 1
/* 80C39300  28 00 FF FF */	cmplwi r0, 0xffff
/* 80C39304  41 82 00 30 */	beq lbl_80C39334
/* 80C39308  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C3930C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C39310  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80C39314  4B 40 A3 D8 */	b setPtI_Id__14dEvt_control_cFUi
/* 80C39318  48 00 00 1C */	b lbl_80C39334
lbl_80C3931C:
/* 80C3931C  38 80 00 00 */	li r4, 0
/* 80C39320  38 A0 00 00 */	li r5, 0
/* 80C39324  4B 3E 26 AC */	b fopAcM_orderItemEvent__FP10fopAc_ac_cUsUs
/* 80C39328  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80C3932C  60 00 00 08 */	ori r0, r0, 8
/* 80C39330  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80C39334:
/* 80C39334  38 60 00 01 */	li r3, 1
/* 80C39338  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C3933C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C39340  7C 08 03 A6 */	mtlr r0
/* 80C39344  38 21 00 10 */	addi r1, r1, 0x10
/* 80C39348  4E 80 00 20 */	blr 
