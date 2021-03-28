lbl_809B7718:
/* 809B7718  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809B771C  7C 08 02 A6 */	mflr r0
/* 809B7720  90 01 00 24 */	stw r0, 0x24(r1)
/* 809B7724  39 61 00 20 */	addi r11, r1, 0x20
/* 809B7728  4B 9A AA B0 */	b _savegpr_28
/* 809B772C  7C 7C 1B 78 */	mr r28, r3
/* 809B7730  7C 9D 23 78 */	mr r29, r4
/* 809B7734  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809B7738  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809B773C  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 809B7740  7F C3 F3 78 */	mr r3, r30
/* 809B7744  3C A0 80 9C */	lis r5, struct_809B94CC+0x0@ha
/* 809B7748  38 A5 94 CC */	addi r5, r5, struct_809B94CC+0x0@l
/* 809B774C  38 A5 00 FE */	addi r5, r5, 0xfe
/* 809B7750  38 C0 00 03 */	li r6, 3
/* 809B7754  4B 69 09 98 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 809B7758  7C 7F 1B 79 */	or. r31, r3, r3
/* 809B775C  40 82 00 0C */	bne lbl_809B7768
/* 809B7760  38 60 00 01 */	li r3, 1
/* 809B7764  48 00 00 30 */	b lbl_809B7794
lbl_809B7768:
/* 809B7768  7F C3 F3 78 */	mr r3, r30
/* 809B776C  7F A4 EB 78 */	mr r4, r29
/* 809B7770  4B 69 05 DC */	b getIsAddvance__16dEvent_manager_cFi
/* 809B7774  2C 03 00 00 */	cmpwi r3, 0
/* 809B7778  41 82 00 10 */	beq lbl_809B7788
/* 809B777C  7F 83 E3 78 */	mr r3, r28
/* 809B7780  7F E4 FB 78 */	mr r4, r31
/* 809B7784  48 00 00 29 */	bl _cutSelect_Return1_Init__13daNpc_Fairy_cFRCi
lbl_809B7788:
/* 809B7788  7F 83 E3 78 */	mr r3, r28
/* 809B778C  7F E4 FB 78 */	mr r4, r31
/* 809B7790  48 00 01 61 */	bl _cutSelect_Return1_Main__13daNpc_Fairy_cFRCi
lbl_809B7794:
/* 809B7794  39 61 00 20 */	addi r11, r1, 0x20
/* 809B7798  4B 9A AA 8C */	b _restgpr_28
/* 809B779C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809B77A0  7C 08 03 A6 */	mtlr r0
/* 809B77A4  38 21 00 20 */	addi r1, r1, 0x20
/* 809B77A8  4E 80 00 20 */	blr 
