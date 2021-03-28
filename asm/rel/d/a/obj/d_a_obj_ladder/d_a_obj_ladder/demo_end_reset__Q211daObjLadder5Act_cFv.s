lbl_8058D544:
/* 8058D544  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058D548  7C 08 02 A6 */	mflr r0
/* 8058D54C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058D550  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058D554  93 C1 00 08 */	stw r30, 8(r1)
/* 8058D558  7C 7E 1B 78 */	mr r30, r3
/* 8058D55C  88 03 06 1E */	lbz r0, 0x61e(r3)
/* 8058D560  28 00 00 00 */	cmplwi r0, 0
/* 8058D564  41 82 00 30 */	beq lbl_8058D594
/* 8058D568  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8058D56C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 8058D570  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 8058D574  A8 9E 06 1C */	lha r4, 0x61c(r30)
/* 8058D578  4B AB A5 00 */	b endCheck__16dEvent_manager_cFs
/* 8058D57C  2C 03 00 00 */	cmpwi r3, 0
/* 8058D580  41 82 00 14 */	beq lbl_8058D594
/* 8058D584  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 8058D588  4B AB 4E E0 */	b reset__14dEvt_control_cFv
/* 8058D58C  38 00 00 00 */	li r0, 0
/* 8058D590  98 1E 06 1E */	stb r0, 0x61e(r30)
lbl_8058D594:
/* 8058D594  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058D598  83 C1 00 08 */	lwz r30, 8(r1)
/* 8058D59C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058D5A0  7C 08 03 A6 */	mtlr r0
/* 8058D5A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8058D5A8  4E 80 00 20 */	blr 
