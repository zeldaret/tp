lbl_80946B40:
/* 80946B40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80946B44  7C 08 02 A6 */	mflr r0
/* 80946B48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80946B4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80946B50  7C 7F 1B 78 */	mr r31, r3
/* 80946B54  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80946B58  28 00 00 01 */	cmplwi r0, 1
/* 80946B5C  40 82 00 44 */	bne lbl_80946BA0
/* 80946B60  38 7F 06 20 */	addi r3, r31, 0x620
/* 80946B64  7F E4 FB 78 */	mr r4, r31
/* 80946B68  38 A0 00 00 */	li r5, 0
/* 80946B6C  38 C0 00 00 */	li r6, 0
/* 80946B70  4B 90 37 68 */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80946B74  2C 03 00 00 */	cmpwi r3, 0
/* 80946B78  41 82 00 28 */	beq lbl_80946BA0
/* 80946B7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80946B80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80946B84  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80946B88  4B 6F B8 E0 */	b reset__14dEvt_control_cFv
/* 80946B8C  88 1F 09 2F */	lbz r0, 0x92f(r31)
/* 80946B90  60 00 00 02 */	ori r0, r0, 2
/* 80946B94  98 1F 09 2F */	stb r0, 0x92f(r31)
/* 80946B98  38 00 00 02 */	li r0, 2
/* 80946B9C  98 1F 09 2C */	stb r0, 0x92c(r31)
lbl_80946BA0:
/* 80946BA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80946BA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80946BA8  7C 08 03 A6 */	mtlr r0
/* 80946BAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80946BB0  4E 80 00 20 */	blr 
