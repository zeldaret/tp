lbl_8094711C:
/* 8094711C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80947120  7C 08 02 A6 */	mflr r0
/* 80947124  90 01 00 14 */	stw r0, 0x14(r1)
/* 80947128  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8094712C  7C 7F 1B 78 */	mr r31, r3
/* 80947130  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80947134  28 00 00 01 */	cmplwi r0, 1
/* 80947138  40 82 00 70 */	bne lbl_809471A8
/* 8094713C  38 7F 06 20 */	addi r3, r31, 0x620
/* 80947140  7F E4 FB 78 */	mr r4, r31
/* 80947144  38 A0 00 00 */	li r5, 0
/* 80947148  38 C0 00 00 */	li r6, 0
/* 8094714C  4B 90 31 8C */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80947150  2C 03 00 00 */	cmpwi r3, 0
/* 80947154  41 82 00 54 */	beq lbl_809471A8
/* 80947158  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8094715C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80947160  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80947164  4B 6F B3 04 */	b reset__14dEvt_control_cFv
/* 80947168  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8094716C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80947170  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80947174  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80947178  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 8094717C  A0 84 06 44 */	lhz r4, 0x644(r4)
/* 80947180  4B 6E D8 3C */	b isEventBit__11dSv_event_cCFUs
/* 80947184  2C 03 00 00 */	cmpwi r3, 0
/* 80947188  41 82 00 18 */	beq lbl_809471A0
/* 8094718C  38 00 00 14 */	li r0, 0x14
/* 80947190  98 1F 09 37 */	stb r0, 0x937(r31)
/* 80947194  38 00 00 13 */	li r0, 0x13
/* 80947198  98 1F 09 2C */	stb r0, 0x92c(r31)
/* 8094719C  48 00 00 0C */	b lbl_809471A8
lbl_809471A0:
/* 809471A0  38 00 00 07 */	li r0, 7
/* 809471A4  98 1F 09 2C */	stb r0, 0x92c(r31)
lbl_809471A8:
/* 809471A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809471AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809471B0  7C 08 03 A6 */	mtlr r0
/* 809471B4  38 21 00 10 */	addi r1, r1, 0x10
/* 809471B8  4E 80 00 20 */	blr 
