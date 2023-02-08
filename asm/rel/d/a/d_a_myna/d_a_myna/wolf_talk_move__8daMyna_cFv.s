lbl_80948118:
/* 80948118  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8094811C  7C 08 02 A6 */	mflr r0
/* 80948120  90 01 00 14 */	stw r0, 0x14(r1)
/* 80948124  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80948128  7C 7F 1B 78 */	mr r31, r3
/* 8094812C  38 7F 06 20 */	addi r3, r31, 0x620
/* 80948130  7F E4 FB 78 */	mr r4, r31
/* 80948134  38 A0 00 00 */	li r5, 0
/* 80948138  38 C0 00 00 */	li r6, 0
/* 8094813C  4B 90 21 9D */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80948140  2C 03 00 00 */	cmpwi r3, 0
/* 80948144  41 82 00 1C */	beq lbl_80948160
/* 80948148  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8094814C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80948150  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80948154  4B 6F A3 15 */	bl reset__14dEvt_control_cFv
/* 80948158  88 1F 09 2E */	lbz r0, 0x92e(r31)
/* 8094815C  98 1F 09 2C */	stb r0, 0x92c(r31)
lbl_80948160:
/* 80948160  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80948164  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80948168  7C 08 03 A6 */	mtlr r0
/* 8094816C  38 21 00 10 */	addi r1, r1, 0x10
/* 80948170  4E 80 00 20 */	blr 
