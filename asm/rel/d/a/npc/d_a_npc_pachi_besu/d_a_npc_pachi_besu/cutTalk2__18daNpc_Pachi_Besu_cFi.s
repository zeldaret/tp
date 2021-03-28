lbl_80A94FC4:
/* 80A94FC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A94FC8  7C 08 02 A6 */	mflr r0
/* 80A94FCC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A94FD0  39 61 00 20 */	addi r11, r1, 0x20
/* 80A94FD4  4B 8C D2 04 */	b _savegpr_28
/* 80A94FD8  7C 7C 1B 78 */	mr r28, r3
/* 80A94FDC  7C 9D 23 78 */	mr r29, r4
/* 80A94FE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A94FE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A94FE8  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80A94FEC  7F C3 F3 78 */	mr r3, r30
/* 80A94FF0  3C A0 80 A9 */	lis r5, struct_80A96B60+0x0@ha
/* 80A94FF4  38 A5 6B 60 */	addi r5, r5, struct_80A96B60+0x0@l
/* 80A94FF8  38 A5 00 D8 */	addi r5, r5, 0xd8
/* 80A94FFC  38 C0 00 03 */	li r6, 3
/* 80A95000  4B 5B 30 EC */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A95004  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A95008  40 82 00 0C */	bne lbl_80A95014
/* 80A9500C  38 60 00 01 */	li r3, 1
/* 80A95010  48 00 00 30 */	b lbl_80A95040
lbl_80A95014:
/* 80A95014  7F C3 F3 78 */	mr r3, r30
/* 80A95018  7F A4 EB 78 */	mr r4, r29
/* 80A9501C  4B 5B 2D 30 */	b getIsAddvance__16dEvent_manager_cFi
/* 80A95020  2C 03 00 00 */	cmpwi r3, 0
/* 80A95024  41 82 00 10 */	beq lbl_80A95034
/* 80A95028  7F 83 E3 78 */	mr r3, r28
/* 80A9502C  7F E4 FB 78 */	mr r4, r31
/* 80A95030  48 00 00 29 */	bl _cutTalk2_Init__18daNpc_Pachi_Besu_cFRCi
lbl_80A95034:
/* 80A95034  7F 83 E3 78 */	mr r3, r28
/* 80A95038  7F E4 FB 78 */	mr r4, r31
/* 80A9503C  48 00 00 25 */	bl _cutTalk2_Main__18daNpc_Pachi_Besu_cFRCi
lbl_80A95040:
/* 80A95040  39 61 00 20 */	addi r11, r1, 0x20
/* 80A95044  4B 8C D1 E0 */	b _restgpr_28
/* 80A95048  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A9504C  7C 08 03 A6 */	mtlr r0
/* 80A95050  38 21 00 20 */	addi r1, r1, 0x20
/* 80A95054  4E 80 00 20 */	blr 
