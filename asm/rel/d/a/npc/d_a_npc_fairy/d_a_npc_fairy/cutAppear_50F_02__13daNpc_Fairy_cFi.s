lbl_809B631C:
/* 809B631C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809B6320  7C 08 02 A6 */	mflr r0
/* 809B6324  90 01 00 24 */	stw r0, 0x24(r1)
/* 809B6328  39 61 00 20 */	addi r11, r1, 0x20
/* 809B632C  4B 9A BE AC */	b _savegpr_28
/* 809B6330  7C 7C 1B 78 */	mr r28, r3
/* 809B6334  7C 9D 23 78 */	mr r29, r4
/* 809B6338  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809B633C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809B6340  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 809B6344  7F C3 F3 78 */	mr r3, r30
/* 809B6348  3C A0 80 9C */	lis r5, struct_809B94CC+0x0@ha
/* 809B634C  38 A5 94 CC */	addi r5, r5, struct_809B94CC+0x0@l
/* 809B6350  38 A5 00 FE */	addi r5, r5, 0xfe
/* 809B6354  38 C0 00 03 */	li r6, 3
/* 809B6358  4B 69 1D 94 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 809B635C  7C 7F 1B 79 */	or. r31, r3, r3
/* 809B6360  40 82 00 0C */	bne lbl_809B636C
/* 809B6364  38 60 00 01 */	li r3, 1
/* 809B6368  48 00 00 6C */	b lbl_809B63D4
lbl_809B636C:
/* 809B636C  38 00 00 00 */	li r0, 0
/* 809B6370  90 01 00 08 */	stw r0, 8(r1)
/* 809B6374  7F C3 F3 78 */	mr r3, r30
/* 809B6378  7F A4 EB 78 */	mr r4, r29
/* 809B637C  3C A0 80 9C */	lis r5, struct_809B94CC+0x0@ha
/* 809B6380  38 A5 94 CC */	addi r5, r5, struct_809B94CC+0x0@l
/* 809B6384  38 A5 01 04 */	addi r5, r5, 0x104
/* 809B6388  38 C0 00 03 */	li r6, 3
/* 809B638C  4B 69 1D 60 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 809B6390  28 03 00 00 */	cmplwi r3, 0
/* 809B6394  41 82 00 0C */	beq lbl_809B63A0
/* 809B6398  80 03 00 00 */	lwz r0, 0(r3)
/* 809B639C  90 01 00 08 */	stw r0, 8(r1)
lbl_809B63A0:
/* 809B63A0  7F C3 F3 78 */	mr r3, r30
/* 809B63A4  7F A4 EB 78 */	mr r4, r29
/* 809B63A8  4B 69 19 A4 */	b getIsAddvance__16dEvent_manager_cFi
/* 809B63AC  2C 03 00 00 */	cmpwi r3, 0
/* 809B63B0  41 82 00 14 */	beq lbl_809B63C4
/* 809B63B4  7F 83 E3 78 */	mr r3, r28
/* 809B63B8  7F E4 FB 78 */	mr r4, r31
/* 809B63BC  38 A1 00 08 */	addi r5, r1, 8
/* 809B63C0  48 00 00 2D */	bl _cutAppear_50F_02_Init__13daNpc_Fairy_cFRCiRCi
lbl_809B63C4:
/* 809B63C4  7F 83 E3 78 */	mr r3, r28
/* 809B63C8  7F E4 FB 78 */	mr r4, r31
/* 809B63CC  38 A1 00 08 */	addi r5, r1, 8
/* 809B63D0  48 00 02 5D */	bl _cutAppear_50F_02_Main__13daNpc_Fairy_cFRCiRCi
lbl_809B63D4:
/* 809B63D4  39 61 00 20 */	addi r11, r1, 0x20
/* 809B63D8  4B 9A BE 4C */	b _restgpr_28
/* 809B63DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809B63E0  7C 08 03 A6 */	mtlr r0
/* 809B63E4  38 21 00 20 */	addi r1, r1, 0x20
/* 809B63E8  4E 80 00 20 */	blr 
