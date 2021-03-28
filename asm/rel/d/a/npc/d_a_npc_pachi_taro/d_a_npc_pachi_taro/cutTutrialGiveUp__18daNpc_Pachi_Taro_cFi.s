lbl_80A9FCEC:
/* 80A9FCEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A9FCF0  7C 08 02 A6 */	mflr r0
/* 80A9FCF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A9FCF8  39 61 00 20 */	addi r11, r1, 0x20
/* 80A9FCFC  4B 8C 24 DC */	b _savegpr_28
/* 80A9FD00  7C 7C 1B 78 */	mr r28, r3
/* 80A9FD04  7C 9D 23 78 */	mr r29, r4
/* 80A9FD08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A9FD0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A9FD10  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80A9FD14  7F C3 F3 78 */	mr r3, r30
/* 80A9FD18  3C A0 80 AA */	lis r5, struct_80AA1814+0x0@ha
/* 80A9FD1C  38 A5 18 14 */	addi r5, r5, struct_80AA1814+0x0@l
/* 80A9FD20  38 A5 00 EF */	addi r5, r5, 0xef
/* 80A9FD24  38 C0 00 03 */	li r6, 3
/* 80A9FD28  4B 5A 83 C4 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A9FD2C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A9FD30  40 82 00 0C */	bne lbl_80A9FD3C
/* 80A9FD34  38 60 00 01 */	li r3, 1
/* 80A9FD38  48 00 00 30 */	b lbl_80A9FD68
lbl_80A9FD3C:
/* 80A9FD3C  7F C3 F3 78 */	mr r3, r30
/* 80A9FD40  7F A4 EB 78 */	mr r4, r29
/* 80A9FD44  4B 5A 80 08 */	b getIsAddvance__16dEvent_manager_cFi
/* 80A9FD48  2C 03 00 00 */	cmpwi r3, 0
/* 80A9FD4C  41 82 00 10 */	beq lbl_80A9FD5C
/* 80A9FD50  7F 83 E3 78 */	mr r3, r28
/* 80A9FD54  7F E4 FB 78 */	mr r4, r31
/* 80A9FD58  48 00 00 29 */	bl _cutTutrialGiveUp_Init__18daNpc_Pachi_Taro_cFRCi
lbl_80A9FD5C:
/* 80A9FD5C  7F 83 E3 78 */	mr r3, r28
/* 80A9FD60  7F E4 FB 78 */	mr r4, r31
/* 80A9FD64  48 00 00 D1 */	bl _cutTutrialGiveUp_Main__18daNpc_Pachi_Taro_cFRCi
lbl_80A9FD68:
/* 80A9FD68  39 61 00 20 */	addi r11, r1, 0x20
/* 80A9FD6C  4B 8C 24 B8 */	b _restgpr_28
/* 80A9FD70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A9FD74  7C 08 03 A6 */	mtlr r0
/* 80A9FD78  38 21 00 20 */	addi r1, r1, 0x20
/* 80A9FD7C  4E 80 00 20 */	blr 
