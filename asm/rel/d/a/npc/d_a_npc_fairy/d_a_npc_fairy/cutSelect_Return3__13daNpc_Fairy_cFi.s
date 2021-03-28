lbl_809B7BA4:
/* 809B7BA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809B7BA8  7C 08 02 A6 */	mflr r0
/* 809B7BAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 809B7BB0  39 61 00 20 */	addi r11, r1, 0x20
/* 809B7BB4  4B 9A A6 24 */	b _savegpr_28
/* 809B7BB8  7C 7C 1B 78 */	mr r28, r3
/* 809B7BBC  7C 9D 23 78 */	mr r29, r4
/* 809B7BC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809B7BC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809B7BC8  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 809B7BCC  7F C3 F3 78 */	mr r3, r30
/* 809B7BD0  3C A0 80 9C */	lis r5, struct_809B94CC+0x0@ha
/* 809B7BD4  38 A5 94 CC */	addi r5, r5, struct_809B94CC+0x0@l
/* 809B7BD8  38 A5 00 FE */	addi r5, r5, 0xfe
/* 809B7BDC  38 C0 00 03 */	li r6, 3
/* 809B7BE0  4B 69 05 0C */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 809B7BE4  7C 7F 1B 79 */	or. r31, r3, r3
/* 809B7BE8  40 82 00 0C */	bne lbl_809B7BF4
/* 809B7BEC  38 60 00 01 */	li r3, 1
/* 809B7BF0  48 00 00 30 */	b lbl_809B7C20
lbl_809B7BF4:
/* 809B7BF4  7F C3 F3 78 */	mr r3, r30
/* 809B7BF8  7F A4 EB 78 */	mr r4, r29
/* 809B7BFC  4B 69 01 50 */	b getIsAddvance__16dEvent_manager_cFi
/* 809B7C00  2C 03 00 00 */	cmpwi r3, 0
/* 809B7C04  41 82 00 10 */	beq lbl_809B7C14
/* 809B7C08  7F 83 E3 78 */	mr r3, r28
/* 809B7C0C  7F E4 FB 78 */	mr r4, r31
/* 809B7C10  48 00 00 29 */	bl _cutSelect_Return3_Init__13daNpc_Fairy_cFRCi
lbl_809B7C14:
/* 809B7C14  7F 83 E3 78 */	mr r3, r28
/* 809B7C18  7F E4 FB 78 */	mr r4, r31
/* 809B7C1C  48 00 01 61 */	bl _cutSelect_Return3_Main__13daNpc_Fairy_cFRCi
lbl_809B7C20:
/* 809B7C20  39 61 00 20 */	addi r11, r1, 0x20
/* 809B7C24  4B 9A A6 00 */	b _restgpr_28
/* 809B7C28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809B7C2C  7C 08 03 A6 */	mtlr r0
/* 809B7C30  38 21 00 20 */	addi r1, r1, 0x20
/* 809B7C34  4E 80 00 20 */	blr 
