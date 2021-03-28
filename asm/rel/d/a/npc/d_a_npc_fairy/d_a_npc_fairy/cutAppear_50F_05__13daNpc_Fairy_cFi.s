lbl_809B7168:
/* 809B7168  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809B716C  7C 08 02 A6 */	mflr r0
/* 809B7170  90 01 00 24 */	stw r0, 0x24(r1)
/* 809B7174  39 61 00 20 */	addi r11, r1, 0x20
/* 809B7178  4B 9A B0 60 */	b _savegpr_28
/* 809B717C  7C 7C 1B 78 */	mr r28, r3
/* 809B7180  7C 9D 23 78 */	mr r29, r4
/* 809B7184  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809B7188  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809B718C  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 809B7190  7F C3 F3 78 */	mr r3, r30
/* 809B7194  3C A0 80 9C */	lis r5, struct_809B94CC+0x0@ha
/* 809B7198  38 A5 94 CC */	addi r5, r5, struct_809B94CC+0x0@l
/* 809B719C  38 A5 00 FE */	addi r5, r5, 0xfe
/* 809B71A0  38 C0 00 03 */	li r6, 3
/* 809B71A4  4B 69 0F 48 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 809B71A8  7C 7F 1B 79 */	or. r31, r3, r3
/* 809B71AC  40 82 00 0C */	bne lbl_809B71B8
/* 809B71B0  38 60 00 01 */	li r3, 1
/* 809B71B4  48 00 00 6C */	b lbl_809B7220
lbl_809B71B8:
/* 809B71B8  38 00 00 00 */	li r0, 0
/* 809B71BC  90 01 00 08 */	stw r0, 8(r1)
/* 809B71C0  7F C3 F3 78 */	mr r3, r30
/* 809B71C4  7F A4 EB 78 */	mr r4, r29
/* 809B71C8  3C A0 80 9C */	lis r5, struct_809B94CC+0x0@ha
/* 809B71CC  38 A5 94 CC */	addi r5, r5, struct_809B94CC+0x0@l
/* 809B71D0  38 A5 01 04 */	addi r5, r5, 0x104
/* 809B71D4  38 C0 00 03 */	li r6, 3
/* 809B71D8  4B 69 0F 14 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 809B71DC  28 03 00 00 */	cmplwi r3, 0
/* 809B71E0  41 82 00 0C */	beq lbl_809B71EC
/* 809B71E4  80 03 00 00 */	lwz r0, 0(r3)
/* 809B71E8  90 01 00 08 */	stw r0, 8(r1)
lbl_809B71EC:
/* 809B71EC  7F C3 F3 78 */	mr r3, r30
/* 809B71F0  7F A4 EB 78 */	mr r4, r29
/* 809B71F4  4B 69 0B 58 */	b getIsAddvance__16dEvent_manager_cFi
/* 809B71F8  2C 03 00 00 */	cmpwi r3, 0
/* 809B71FC  41 82 00 14 */	beq lbl_809B7210
/* 809B7200  7F 83 E3 78 */	mr r3, r28
/* 809B7204  7F E4 FB 78 */	mr r4, r31
/* 809B7208  38 A1 00 08 */	addi r5, r1, 8
/* 809B720C  48 00 00 2D */	bl _cutAppear_50F_05_Init__13daNpc_Fairy_cFRCiRCi
lbl_809B7210:
/* 809B7210  7F 83 E3 78 */	mr r3, r28
/* 809B7214  7F E4 FB 78 */	mr r4, r31
/* 809B7218  38 A1 00 08 */	addi r5, r1, 8
/* 809B721C  48 00 02 91 */	bl _cutAppear_50F_05_Main__13daNpc_Fairy_cFRCiRCi
lbl_809B7220:
/* 809B7220  39 61 00 20 */	addi r11, r1, 0x20
/* 809B7224  4B 9A B0 00 */	b _restgpr_28
/* 809B7228  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809B722C  7C 08 03 A6 */	mtlr r0
/* 809B7230  38 21 00 20 */	addi r1, r1, 0x20
/* 809B7234  4E 80 00 20 */	blr 
