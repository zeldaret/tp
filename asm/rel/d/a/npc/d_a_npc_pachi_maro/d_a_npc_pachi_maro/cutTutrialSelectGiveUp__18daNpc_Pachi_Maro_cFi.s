lbl_80A9A0F0:
/* 80A9A0F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A9A0F4  7C 08 02 A6 */	mflr r0
/* 80A9A0F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A9A0FC  39 61 00 20 */	addi r11, r1, 0x20
/* 80A9A100  4B 8C 80 D8 */	b _savegpr_28
/* 80A9A104  7C 7C 1B 78 */	mr r28, r3
/* 80A9A108  7C 9D 23 78 */	mr r29, r4
/* 80A9A10C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A9A110  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A9A114  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80A9A118  7F C3 F3 78 */	mr r3, r30
/* 80A9A11C  3C A0 80 AA */	lis r5, struct_80A9B988+0x0@ha
/* 80A9A120  38 A5 B9 88 */	addi r5, r5, struct_80A9B988+0x0@l
/* 80A9A124  38 A5 00 E9 */	addi r5, r5, 0xe9
/* 80A9A128  38 C0 00 03 */	li r6, 3
/* 80A9A12C  4B 5A DF C0 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A9A130  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A9A134  40 82 00 0C */	bne lbl_80A9A140
/* 80A9A138  38 60 00 01 */	li r3, 1
/* 80A9A13C  48 00 00 30 */	b lbl_80A9A16C
lbl_80A9A140:
/* 80A9A140  7F C3 F3 78 */	mr r3, r30
/* 80A9A144  7F A4 EB 78 */	mr r4, r29
/* 80A9A148  4B 5A DC 04 */	b getIsAddvance__16dEvent_manager_cFi
/* 80A9A14C  2C 03 00 00 */	cmpwi r3, 0
/* 80A9A150  41 82 00 10 */	beq lbl_80A9A160
/* 80A9A154  7F 83 E3 78 */	mr r3, r28
/* 80A9A158  7F E4 FB 78 */	mr r4, r31
/* 80A9A15C  48 00 00 29 */	bl _cutTutrialSelectGiveUp_Init__18daNpc_Pachi_Maro_cFRCi
lbl_80A9A160:
/* 80A9A160  7F 83 E3 78 */	mr r3, r28
/* 80A9A164  7F E4 FB 78 */	mr r4, r31
/* 80A9A168  48 00 00 25 */	bl _cutTutrialSelectGiveUp_Main__18daNpc_Pachi_Maro_cFRCi
lbl_80A9A16C:
/* 80A9A16C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A9A170  4B 8C 80 B4 */	b _restgpr_28
/* 80A9A174  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A9A178  7C 08 03 A6 */	mtlr r0
/* 80A9A17C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A9A180  4E 80 00 20 */	blr 
