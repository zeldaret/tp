lbl_809483DC:
/* 809483DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809483E0  7C 08 02 A6 */	mflr r0
/* 809483E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809483E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809483EC  7C 7F 1B 78 */	mr r31, r3
/* 809483F0  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 809483F4  28 00 00 01 */	cmplwi r0, 1
/* 809483F8  40 82 00 38 */	bne lbl_80948430
/* 809483FC  38 7F 06 20 */	addi r3, r31, 0x620
/* 80948400  7F E4 FB 78 */	mr r4, r31
/* 80948404  38 A0 00 00 */	li r5, 0
/* 80948408  38 C0 00 00 */	li r6, 0
/* 8094840C  4B 90 1E CD */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80948410  2C 03 00 00 */	cmpwi r3, 0
/* 80948414  41 82 00 1C */	beq lbl_80948430
/* 80948418  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8094841C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80948420  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80948424  4B 6F A0 45 */	bl reset__14dEvt_control_cFv
/* 80948428  38 00 00 13 */	li r0, 0x13
/* 8094842C  98 1F 09 2C */	stb r0, 0x92c(r31)
lbl_80948430:
/* 80948430  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80948434  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80948438  7C 08 03 A6 */	mtlr r0
/* 8094843C  38 21 00 10 */	addi r1, r1, 0x10
/* 80948440  4E 80 00 20 */	blr 
