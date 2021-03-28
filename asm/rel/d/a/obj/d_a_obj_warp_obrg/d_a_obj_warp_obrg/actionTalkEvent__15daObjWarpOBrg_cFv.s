lbl_80D2A740:
/* 80D2A740  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D2A744  7C 08 02 A6 */	mflr r0
/* 80D2A748  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D2A74C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D2A750  7C 7F 1B 78 */	mr r31, r3
/* 80D2A754  38 7F 05 B4 */	addi r3, r31, 0x5b4
/* 80D2A758  7F E4 FB 78 */	mr r4, r31
/* 80D2A75C  38 A0 00 00 */	li r5, 0
/* 80D2A760  38 C0 00 00 */	li r6, 0
/* 80D2A764  4B 51 FB 74 */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80D2A768  2C 03 00 00 */	cmpwi r3, 0
/* 80D2A76C  41 82 00 44 */	beq lbl_80D2A7B0
/* 80D2A770  38 00 00 01 */	li r0, 1
/* 80D2A774  98 1F 06 3B */	stb r0, 0x63b(r31)
/* 80D2A778  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D2A77C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D2A780  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80D2A784  4B 31 7C E4 */	b reset__14dEvt_control_cFv
/* 80D2A788  38 7F 05 B4 */	addi r3, r31, 0x5b4
/* 80D2A78C  38 81 00 08 */	addi r4, r1, 8
/* 80D2A790  4B 51 FD 98 */	b getEventId__10dMsgFlow_cFPi
/* 80D2A794  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80D2A798  28 00 00 0B */	cmplwi r0, 0xb
/* 80D2A79C  40 82 00 14 */	bne lbl_80D2A7B0
/* 80D2A7A0  38 00 00 06 */	li r0, 6
/* 80D2A7A4  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80D2A7A8  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80D2A7AC  98 03 00 C1 */	stb r0, 0xc1(r3)
lbl_80D2A7B0:
/* 80D2A7B0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D2A7B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D2A7B8  7C 08 03 A6 */	mtlr r0
/* 80D2A7BC  38 21 00 20 */	addi r1, r1, 0x20
/* 80D2A7C0  4E 80 00 20 */	blr 
