lbl_809B6C30:
/* 809B6C30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809B6C34  7C 08 02 A6 */	mflr r0
/* 809B6C38  90 01 00 24 */	stw r0, 0x24(r1)
/* 809B6C3C  39 61 00 20 */	addi r11, r1, 0x20
/* 809B6C40  4B 9A B5 98 */	b _savegpr_28
/* 809B6C44  7C 7C 1B 78 */	mr r28, r3
/* 809B6C48  7C 9D 23 78 */	mr r29, r4
/* 809B6C4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809B6C50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809B6C54  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 809B6C58  7F C3 F3 78 */	mr r3, r30
/* 809B6C5C  3C A0 80 9C */	lis r5, struct_809B94CC+0x0@ha
/* 809B6C60  38 A5 94 CC */	addi r5, r5, struct_809B94CC+0x0@l
/* 809B6C64  38 A5 00 FE */	addi r5, r5, 0xfe
/* 809B6C68  38 C0 00 03 */	li r6, 3
/* 809B6C6C  4B 69 14 80 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 809B6C70  7C 7F 1B 79 */	or. r31, r3, r3
/* 809B6C74  40 82 00 0C */	bne lbl_809B6C80
/* 809B6C78  38 60 00 01 */	li r3, 1
/* 809B6C7C  48 00 00 6C */	b lbl_809B6CE8
lbl_809B6C80:
/* 809B6C80  38 00 00 00 */	li r0, 0
/* 809B6C84  90 01 00 08 */	stw r0, 8(r1)
/* 809B6C88  7F C3 F3 78 */	mr r3, r30
/* 809B6C8C  7F A4 EB 78 */	mr r4, r29
/* 809B6C90  3C A0 80 9C */	lis r5, struct_809B94CC+0x0@ha
/* 809B6C94  38 A5 94 CC */	addi r5, r5, struct_809B94CC+0x0@l
/* 809B6C98  38 A5 01 04 */	addi r5, r5, 0x104
/* 809B6C9C  38 C0 00 03 */	li r6, 3
/* 809B6CA0  4B 69 14 4C */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 809B6CA4  28 03 00 00 */	cmplwi r3, 0
/* 809B6CA8  41 82 00 0C */	beq lbl_809B6CB4
/* 809B6CAC  80 03 00 00 */	lwz r0, 0(r3)
/* 809B6CB0  90 01 00 08 */	stw r0, 8(r1)
lbl_809B6CB4:
/* 809B6CB4  7F C3 F3 78 */	mr r3, r30
/* 809B6CB8  7F A4 EB 78 */	mr r4, r29
/* 809B6CBC  4B 69 10 90 */	b getIsAddvance__16dEvent_manager_cFi
/* 809B6CC0  2C 03 00 00 */	cmpwi r3, 0
/* 809B6CC4  41 82 00 14 */	beq lbl_809B6CD8
/* 809B6CC8  7F 83 E3 78 */	mr r3, r28
/* 809B6CCC  7F E4 FB 78 */	mr r4, r31
/* 809B6CD0  38 A1 00 08 */	addi r5, r1, 8
/* 809B6CD4  48 00 00 2D */	bl _cutAppear_50F_04_Init__13daNpc_Fairy_cFRCiRCi
lbl_809B6CD8:
/* 809B6CD8  7F 83 E3 78 */	mr r3, r28
/* 809B6CDC  7F E4 FB 78 */	mr r4, r31
/* 809B6CE0  38 A1 00 08 */	addi r5, r1, 8
/* 809B6CE4  48 00 02 5D */	bl _cutAppear_50F_04_Main__13daNpc_Fairy_cFRCiRCi
lbl_809B6CE8:
/* 809B6CE8  39 61 00 20 */	addi r11, r1, 0x20
/* 809B6CEC  4B 9A B5 38 */	b _restgpr_28
/* 809B6CF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809B6CF4  7C 08 03 A6 */	mtlr r0
/* 809B6CF8  38 21 00 20 */	addi r1, r1, 0x20
/* 809B6CFC  4E 80 00 20 */	blr 
