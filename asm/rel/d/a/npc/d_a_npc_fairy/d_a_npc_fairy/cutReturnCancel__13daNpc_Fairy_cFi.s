lbl_809B7E30:
/* 809B7E30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809B7E34  7C 08 02 A6 */	mflr r0
/* 809B7E38  90 01 00 24 */	stw r0, 0x24(r1)
/* 809B7E3C  39 61 00 20 */	addi r11, r1, 0x20
/* 809B7E40  4B 9A A3 98 */	b _savegpr_28
/* 809B7E44  7C 7C 1B 78 */	mr r28, r3
/* 809B7E48  7C 9D 23 78 */	mr r29, r4
/* 809B7E4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809B7E50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809B7E54  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 809B7E58  7F C3 F3 78 */	mr r3, r30
/* 809B7E5C  3C A0 80 9C */	lis r5, struct_809B94CC+0x0@ha
/* 809B7E60  38 A5 94 CC */	addi r5, r5, struct_809B94CC+0x0@l
/* 809B7E64  38 A5 00 FE */	addi r5, r5, 0xfe
/* 809B7E68  38 C0 00 03 */	li r6, 3
/* 809B7E6C  4B 69 02 80 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 809B7E70  7C 7F 1B 79 */	or. r31, r3, r3
/* 809B7E74  40 82 00 0C */	bne lbl_809B7E80
/* 809B7E78  38 60 00 01 */	li r3, 1
/* 809B7E7C  48 00 00 30 */	b lbl_809B7EAC
lbl_809B7E80:
/* 809B7E80  7F C3 F3 78 */	mr r3, r30
/* 809B7E84  7F A4 EB 78 */	mr r4, r29
/* 809B7E88  4B 68 FE C4 */	b getIsAddvance__16dEvent_manager_cFi
/* 809B7E8C  2C 03 00 00 */	cmpwi r3, 0
/* 809B7E90  41 82 00 10 */	beq lbl_809B7EA0
/* 809B7E94  7F 83 E3 78 */	mr r3, r28
/* 809B7E98  7F E4 FB 78 */	mr r4, r31
/* 809B7E9C  48 00 00 29 */	bl _cutReturnCancel_Init__13daNpc_Fairy_cFRCi
lbl_809B7EA0:
/* 809B7EA0  7F 83 E3 78 */	mr r3, r28
/* 809B7EA4  7F E4 FB 78 */	mr r4, r31
/* 809B7EA8  48 00 00 25 */	bl _cutReturnCancel_Main__13daNpc_Fairy_cFRCi
lbl_809B7EAC:
/* 809B7EAC  39 61 00 20 */	addi r11, r1, 0x20
/* 809B7EB0  4B 9A A3 74 */	b _restgpr_28
/* 809B7EB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809B7EB8  7C 08 03 A6 */	mtlr r0
/* 809B7EBC  38 21 00 20 */	addi r1, r1, 0x20
/* 809B7EC0  4E 80 00 20 */	blr 
