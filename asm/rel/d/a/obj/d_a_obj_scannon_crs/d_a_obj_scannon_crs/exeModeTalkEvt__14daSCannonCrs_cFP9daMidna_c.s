lbl_80CCA240:
/* 80CCA240  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CCA244  7C 08 02 A6 */	mflr r0
/* 80CCA248  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CCA24C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CCA250  7C 7F 1B 78 */	mr r31, r3
/* 80CCA254  38 7F 05 80 */	addi r3, r31, 0x580
/* 80CCA258  7F E4 FB 78 */	mr r4, r31
/* 80CCA25C  38 A0 00 00 */	li r5, 0
/* 80CCA260  38 C0 00 00 */	li r6, 0
/* 80CCA264  4B 58 00 74 */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80CCA268  2C 03 00 00 */	cmpwi r3, 0
/* 80CCA26C  41 82 00 4C */	beq lbl_80CCA2B8
/* 80CCA270  38 00 00 01 */	li r0, 1
/* 80CCA274  98 1F 06 52 */	stb r0, 0x652(r31)
/* 80CCA278  38 00 00 02 */	li r0, 2
/* 80CCA27C  98 1F 06 4E */	stb r0, 0x64e(r31)
/* 80CCA280  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CCA284  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CCA288  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80CCA28C  4B 37 81 DC */	b reset__14dEvt_control_cFv
/* 80CCA290  38 7F 05 80 */	addi r3, r31, 0x580
/* 80CCA294  38 81 00 08 */	addi r4, r1, 8
/* 80CCA298  4B 58 02 90 */	b getEventId__10dMsgFlow_cFPi
/* 80CCA29C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80CCA2A0  28 00 00 0B */	cmplwi r0, 0xb
/* 80CCA2A4  40 82 00 14 */	bne lbl_80CCA2B8
/* 80CCA2A8  38 00 00 06 */	li r0, 6
/* 80CCA2AC  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80CCA2B0  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80CCA2B4  98 03 00 C1 */	stb r0, 0xc1(r3)
lbl_80CCA2B8:
/* 80CCA2B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CCA2BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CCA2C0  7C 08 03 A6 */	mtlr r0
/* 80CCA2C4  38 21 00 20 */	addi r1, r1, 0x20
/* 80CCA2C8  4E 80 00 20 */	blr 
