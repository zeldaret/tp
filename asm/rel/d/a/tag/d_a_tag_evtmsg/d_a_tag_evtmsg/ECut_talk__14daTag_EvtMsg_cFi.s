lbl_8048D54C:
/* 8048D54C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048D550  7C 08 02 A6 */	mflr r0
/* 8048D554  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048D558  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048D55C  7C 7F 1B 78 */	mr r31, r3
/* 8048D560  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8048D564  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8048D568  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8048D56C  4B BB A7 E0 */	b getIsAddvance__16dEvent_manager_cFi
/* 8048D570  2C 03 00 00 */	cmpwi r3, 0
/* 8048D574  41 82 00 1C */	beq lbl_8048D590
/* 8048D578  38 7F 05 74 */	addi r3, r31, 0x574
/* 8048D57C  7F E4 FB 78 */	mr r4, r31
/* 8048D580  80 BF 05 6C */	lwz r5, 0x56c(r31)
/* 8048D584  38 C0 00 00 */	li r6, 0
/* 8048D588  38 E0 00 00 */	li r7, 0
/* 8048D58C  4B DB CA 04 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
lbl_8048D590:
/* 8048D590  38 7F 05 74 */	addi r3, r31, 0x574
/* 8048D594  7F E4 FB 78 */	mr r4, r31
/* 8048D598  38 A0 00 00 */	li r5, 0
/* 8048D59C  38 C0 00 00 */	li r6, 0
/* 8048D5A0  4B DB CD 38 */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 8048D5A4  2C 03 00 00 */	cmpwi r3, 0
/* 8048D5A8  41 82 00 0C */	beq lbl_8048D5B4
/* 8048D5AC  38 60 00 01 */	li r3, 1
/* 8048D5B0  48 00 00 08 */	b lbl_8048D5B8
lbl_8048D5B4:
/* 8048D5B4  38 60 00 00 */	li r3, 0
lbl_8048D5B8:
/* 8048D5B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048D5BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048D5C0  7C 08 03 A6 */	mtlr r0
/* 8048D5C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8048D5C8  4E 80 00 20 */	blr 
