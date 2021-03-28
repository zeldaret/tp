lbl_809B5D30:
/* 809B5D30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809B5D34  7C 08 02 A6 */	mflr r0
/* 809B5D38  90 01 00 24 */	stw r0, 0x24(r1)
/* 809B5D3C  39 61 00 20 */	addi r11, r1, 0x20
/* 809B5D40  4B 9A C4 98 */	b _savegpr_28
/* 809B5D44  7C 7C 1B 78 */	mr r28, r3
/* 809B5D48  7C 9D 23 78 */	mr r29, r4
/* 809B5D4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809B5D50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809B5D54  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 809B5D58  7F C3 F3 78 */	mr r3, r30
/* 809B5D5C  3C A0 80 9C */	lis r5, struct_809B94CC+0x0@ha
/* 809B5D60  38 A5 94 CC */	addi r5, r5, struct_809B94CC+0x0@l
/* 809B5D64  38 A5 00 FE */	addi r5, r5, 0xfe
/* 809B5D68  38 C0 00 03 */	li r6, 3
/* 809B5D6C  4B 69 23 80 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 809B5D70  7C 7F 1B 79 */	or. r31, r3, r3
/* 809B5D74  40 82 00 0C */	bne lbl_809B5D80
/* 809B5D78  38 60 00 01 */	li r3, 1
/* 809B5D7C  48 00 00 6C */	b lbl_809B5DE8
lbl_809B5D80:
/* 809B5D80  38 00 00 00 */	li r0, 0
/* 809B5D84  90 01 00 08 */	stw r0, 8(r1)
/* 809B5D88  7F C3 F3 78 */	mr r3, r30
/* 809B5D8C  7F A4 EB 78 */	mr r4, r29
/* 809B5D90  3C A0 80 9C */	lis r5, struct_809B94CC+0x0@ha
/* 809B5D94  38 A5 94 CC */	addi r5, r5, struct_809B94CC+0x0@l
/* 809B5D98  38 A5 01 04 */	addi r5, r5, 0x104
/* 809B5D9C  38 C0 00 03 */	li r6, 3
/* 809B5DA0  4B 69 23 4C */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 809B5DA4  28 03 00 00 */	cmplwi r3, 0
/* 809B5DA8  41 82 00 0C */	beq lbl_809B5DB4
/* 809B5DAC  80 03 00 00 */	lwz r0, 0(r3)
/* 809B5DB0  90 01 00 08 */	stw r0, 8(r1)
lbl_809B5DB4:
/* 809B5DB4  7F C3 F3 78 */	mr r3, r30
/* 809B5DB8  7F A4 EB 78 */	mr r4, r29
/* 809B5DBC  4B 69 1F 90 */	b getIsAddvance__16dEvent_manager_cFi
/* 809B5DC0  2C 03 00 00 */	cmpwi r3, 0
/* 809B5DC4  41 82 00 14 */	beq lbl_809B5DD8
/* 809B5DC8  7F 83 E3 78 */	mr r3, r28
/* 809B5DCC  7F E4 FB 78 */	mr r4, r31
/* 809B5DD0  38 A1 00 08 */	addi r5, r1, 8
/* 809B5DD4  48 00 00 2D */	bl _cutAppear_50F_01_Init__13daNpc_Fairy_cFRCiRCi
lbl_809B5DD8:
/* 809B5DD8  7F 83 E3 78 */	mr r3, r28
/* 809B5DDC  7F E4 FB 78 */	mr r4, r31
/* 809B5DE0  38 A1 00 08 */	addi r5, r1, 8
/* 809B5DE4  48 00 02 A1 */	bl _cutAppear_50F_01_Main__13daNpc_Fairy_cFRCiRCi
lbl_809B5DE8:
/* 809B5DE8  39 61 00 20 */	addi r11, r1, 0x20
/* 809B5DEC  4B 9A C4 38 */	b _restgpr_28
/* 809B5DF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809B5DF4  7C 08 03 A6 */	mtlr r0
/* 809B5DF8  38 21 00 20 */	addi r1, r1, 0x20
/* 809B5DFC  4E 80 00 20 */	blr 
