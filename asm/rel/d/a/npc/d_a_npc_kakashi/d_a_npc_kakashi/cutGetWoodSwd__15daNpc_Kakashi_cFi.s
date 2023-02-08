lbl_8054D57C:
/* 8054D57C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054D580  7C 08 02 A6 */	mflr r0
/* 8054D584  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054D588  39 61 00 20 */	addi r11, r1, 0x20
/* 8054D58C  4B E1 4C 4D */	bl _savegpr_28
/* 8054D590  7C 9C 23 78 */	mr r28, r4
/* 8054D594  3B C0 00 00 */	li r30, 0
/* 8054D598  3B A0 FF FF */	li r29, -1
/* 8054D59C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8054D5A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8054D5A4  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 8054D5A8  7F E3 FB 78 */	mr r3, r31
/* 8054D5AC  3C A0 80 55 */	lis r5, d_a_npc_kakashi__stringBase0@ha /* 0x8054EBD0@ha */
/* 8054D5B0  38 A5 EB D0 */	addi r5, r5, d_a_npc_kakashi__stringBase0@l /* 0x8054EBD0@l */
/* 8054D5B4  38 A5 01 C6 */	addi r5, r5, 0x1c6
/* 8054D5B8  38 C0 00 03 */	li r6, 3
/* 8054D5BC  4B AF AB 31 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8054D5C0  28 03 00 00 */	cmplwi r3, 0
/* 8054D5C4  41 82 00 08 */	beq lbl_8054D5CC
/* 8054D5C8  83 A3 00 00 */	lwz r29, 0(r3)
lbl_8054D5CC:
/* 8054D5CC  7F E3 FB 78 */	mr r3, r31
/* 8054D5D0  7F 84 E3 78 */	mr r4, r28
/* 8054D5D4  4B AF A7 79 */	bl getIsAddvance__16dEvent_manager_cFi
/* 8054D5D8  2C 1D 00 00 */	cmpwi r29, 0
/* 8054D5DC  41 82 00 08 */	beq lbl_8054D5E4
/* 8054D5E0  48 00 00 08 */	b lbl_8054D5E8
lbl_8054D5E4:
/* 8054D5E4  3B C0 00 01 */	li r30, 1
lbl_8054D5E8:
/* 8054D5E8  7F C3 F3 78 */	mr r3, r30
/* 8054D5EC  39 61 00 20 */	addi r11, r1, 0x20
/* 8054D5F0  4B E1 4C 35 */	bl _restgpr_28
/* 8054D5F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054D5F8  7C 08 03 A6 */	mtlr r0
/* 8054D5FC  38 21 00 20 */	addi r1, r1, 0x20
/* 8054D600  4E 80 00 20 */	blr 
