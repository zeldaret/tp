lbl_809B464C:
/* 809B464C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809B4650  7C 08 02 A6 */	mflr r0
/* 809B4654  90 01 00 24 */	stw r0, 0x24(r1)
/* 809B4658  39 61 00 20 */	addi r11, r1, 0x20
/* 809B465C  4B 9A DB 7C */	b _savegpr_28
/* 809B4660  7C 7C 1B 78 */	mr r28, r3
/* 809B4664  7C 9D 23 78 */	mr r29, r4
/* 809B4668  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809B466C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809B4670  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 809B4674  7F C3 F3 78 */	mr r3, r30
/* 809B4678  3C A0 80 9C */	lis r5, struct_809B94CC+0x0@ha
/* 809B467C  38 A5 94 CC */	addi r5, r5, struct_809B94CC+0x0@l
/* 809B4680  38 A5 00 FE */	addi r5, r5, 0xfe
/* 809B4684  38 C0 00 03 */	li r6, 3
/* 809B4688  4B 69 3A 64 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 809B468C  7C 7F 1B 79 */	or. r31, r3, r3
/* 809B4690  40 82 00 0C */	bne lbl_809B469C
/* 809B4694  38 60 00 01 */	li r3, 1
/* 809B4698  48 00 00 30 */	b lbl_809B46C8
lbl_809B469C:
/* 809B469C  7F C3 F3 78 */	mr r3, r30
/* 809B46A0  7F A4 EB 78 */	mr r4, r29
/* 809B46A4  4B 69 36 A8 */	b getIsAddvance__16dEvent_manager_cFi
/* 809B46A8  2C 03 00 00 */	cmpwi r3, 0
/* 809B46AC  41 82 00 10 */	beq lbl_809B46BC
/* 809B46B0  7F 83 E3 78 */	mr r3, r28
/* 809B46B4  7F E4 FB 78 */	mr r4, r31
/* 809B46B8  48 00 00 29 */	bl _cutAppear_10F_01_Init__13daNpc_Fairy_cFRCi
lbl_809B46BC:
/* 809B46BC  7F 83 E3 78 */	mr r3, r28
/* 809B46C0  7F E4 FB 78 */	mr r4, r31
/* 809B46C4  48 00 02 01 */	bl _cutAppear_10F_01_Main__13daNpc_Fairy_cFRCi
lbl_809B46C8:
/* 809B46C8  39 61 00 20 */	addi r11, r1, 0x20
/* 809B46CC  4B 9A DB 58 */	b _restgpr_28
/* 809B46D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809B46D4  7C 08 03 A6 */	mtlr r0
/* 809B46D8  38 21 00 20 */	addi r1, r1, 0x20
/* 809B46DC  4E 80 00 20 */	blr 
