lbl_809B79A4:
/* 809B79A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809B79A8  7C 08 02 A6 */	mflr r0
/* 809B79AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 809B79B0  39 61 00 20 */	addi r11, r1, 0x20
/* 809B79B4  4B 9A A8 24 */	b _savegpr_28
/* 809B79B8  7C 7C 1B 78 */	mr r28, r3
/* 809B79BC  7C 9D 23 78 */	mr r29, r4
/* 809B79C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809B79C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809B79C8  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 809B79CC  7F C3 F3 78 */	mr r3, r30
/* 809B79D0  3C A0 80 9C */	lis r5, struct_809B94CC+0x0@ha
/* 809B79D4  38 A5 94 CC */	addi r5, r5, struct_809B94CC+0x0@l
/* 809B79D8  38 A5 00 FE */	addi r5, r5, 0xfe
/* 809B79DC  38 C0 00 03 */	li r6, 3
/* 809B79E0  4B 69 07 0C */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 809B79E4  7C 7F 1B 79 */	or. r31, r3, r3
/* 809B79E8  40 82 00 0C */	bne lbl_809B79F4
/* 809B79EC  38 60 00 01 */	li r3, 1
/* 809B79F0  48 00 00 30 */	b lbl_809B7A20
lbl_809B79F4:
/* 809B79F4  7F C3 F3 78 */	mr r3, r30
/* 809B79F8  7F A4 EB 78 */	mr r4, r29
/* 809B79FC  4B 69 03 50 */	b getIsAddvance__16dEvent_manager_cFi
/* 809B7A00  2C 03 00 00 */	cmpwi r3, 0
/* 809B7A04  41 82 00 10 */	beq lbl_809B7A14
/* 809B7A08  7F 83 E3 78 */	mr r3, r28
/* 809B7A0C  7F E4 FB 78 */	mr r4, r31
/* 809B7A10  48 00 00 29 */	bl _cutSelect_Return2_Init__13daNpc_Fairy_cFRCi
lbl_809B7A14:
/* 809B7A14  7F 83 E3 78 */	mr r3, r28
/* 809B7A18  7F E4 FB 78 */	mr r4, r31
/* 809B7A1C  48 00 00 81 */	bl _cutSelect_Return2_Main__13daNpc_Fairy_cFRCi
lbl_809B7A20:
/* 809B7A20  39 61 00 20 */	addi r11, r1, 0x20
/* 809B7A24  4B 9A A8 00 */	b _restgpr_28
/* 809B7A28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809B7A2C  7C 08 03 A6 */	mtlr r0
/* 809B7A30  38 21 00 20 */	addi r1, r1, 0x20
/* 809B7A34  4E 80 00 20 */	blr 
