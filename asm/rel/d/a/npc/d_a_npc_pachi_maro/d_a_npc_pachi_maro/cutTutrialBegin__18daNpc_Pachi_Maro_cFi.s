lbl_80A999E4:
/* 80A999E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A999E8  7C 08 02 A6 */	mflr r0
/* 80A999EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A999F0  39 61 00 20 */	addi r11, r1, 0x20
/* 80A999F4  4B 8C 87 E4 */	b _savegpr_28
/* 80A999F8  7C 7C 1B 78 */	mr r28, r3
/* 80A999FC  7C 9D 23 78 */	mr r29, r4
/* 80A99A00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A99A04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A99A08  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80A99A0C  7F C3 F3 78 */	mr r3, r30
/* 80A99A10  3C A0 80 AA */	lis r5, struct_80A9B988+0x0@ha
/* 80A99A14  38 A5 B9 88 */	addi r5, r5, struct_80A9B988+0x0@l
/* 80A99A18  38 A5 00 E9 */	addi r5, r5, 0xe9
/* 80A99A1C  38 C0 00 03 */	li r6, 3
/* 80A99A20  4B 5A E6 CC */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A99A24  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A99A28  40 82 00 0C */	bne lbl_80A99A34
/* 80A99A2C  38 60 00 01 */	li r3, 1
/* 80A99A30  48 00 00 30 */	b lbl_80A99A60
lbl_80A99A34:
/* 80A99A34  7F C3 F3 78 */	mr r3, r30
/* 80A99A38  7F A4 EB 78 */	mr r4, r29
/* 80A99A3C  4B 5A E3 10 */	b getIsAddvance__16dEvent_manager_cFi
/* 80A99A40  2C 03 00 00 */	cmpwi r3, 0
/* 80A99A44  41 82 00 10 */	beq lbl_80A99A54
/* 80A99A48  7F 83 E3 78 */	mr r3, r28
/* 80A99A4C  7F E4 FB 78 */	mr r4, r31
/* 80A99A50  48 00 00 29 */	bl _cutTutrialBegin_Init__18daNpc_Pachi_Maro_cFRCi
lbl_80A99A54:
/* 80A99A54  7F 83 E3 78 */	mr r3, r28
/* 80A99A58  7F E4 FB 78 */	mr r4, r31
/* 80A99A5C  48 00 00 25 */	bl _cutTutrialBegin_Main__18daNpc_Pachi_Maro_cFRCi
lbl_80A99A60:
/* 80A99A60  39 61 00 20 */	addi r11, r1, 0x20
/* 80A99A64  4B 8C 87 C0 */	b _restgpr_28
/* 80A99A68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A99A6C  7C 08 03 A6 */	mtlr r0
/* 80A99A70  38 21 00 20 */	addi r1, r1, 0x20
/* 80A99A74  4E 80 00 20 */	blr 
