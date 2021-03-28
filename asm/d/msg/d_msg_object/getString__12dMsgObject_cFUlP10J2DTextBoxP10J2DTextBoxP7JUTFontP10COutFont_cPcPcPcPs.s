lbl_802380F4:
/* 802380F4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802380F8  7C 08 02 A6 */	mflr r0
/* 802380FC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80238100  39 61 00 30 */	addi r11, r1, 0x30
/* 80238104  48 12 A0 D1 */	bl _savegpr_27
/* 80238108  7C 7B 1B 78 */	mr r27, r3
/* 8023810C  7C 9C 23 78 */	mr r28, r4
/* 80238110  7C BD 2B 78 */	mr r29, r5
/* 80238114  7C DE 33 78 */	mr r30, r6
/* 80238118  7C FF 3B 78 */	mr r31, r7
/* 8023811C  7D 0C 43 78 */	mr r12, r8
/* 80238120  7D 2B 4B 78 */	mr r11, r9
/* 80238124  80 01 00 38 */	lwz r0, 0x38(r1)
/* 80238128  91 41 00 08 */	stw r10, 8(r1)
/* 8023812C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80238130  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80238134  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80238138  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 8023813C  7F 64 DB 78 */	mr r4, r27
/* 80238140  7F 85 E3 78 */	mr r5, r28
/* 80238144  7F A6 EB 78 */	mr r6, r29
/* 80238148  7F C7 F3 78 */	mr r7, r30
/* 8023814C  7F E8 FB 78 */	mr r8, r31
/* 80238150  7D 89 63 78 */	mr r9, r12
/* 80238154  7D 6A 5B 78 */	mr r10, r11
/* 80238158  4B FF EC 8D */	bl getStringLocal__12dMsgObject_cFUlP10J2DTextBoxP10J2DTextBoxP7JUTFontP10COutFont_cPcPcPcPs
/* 8023815C  39 61 00 30 */	addi r11, r1, 0x30
/* 80238160  48 12 A0 C1 */	bl _restgpr_27
/* 80238164  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80238168  7C 08 03 A6 */	mtlr r0
/* 8023816C  38 21 00 30 */	addi r1, r1, 0x30
/* 80238170  4E 80 00 20 */	blr 
