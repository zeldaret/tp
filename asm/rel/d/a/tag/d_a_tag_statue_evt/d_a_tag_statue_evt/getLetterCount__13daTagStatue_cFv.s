lbl_805A7E94:
/* 805A7E94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A7E98  7C 08 02 A6 */	mflr r0
/* 805A7E9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A7EA0  39 61 00 20 */	addi r11, r1, 0x20
/* 805A7EA4  4B DB A3 31 */	bl _savegpr_27
/* 805A7EA8  3B 80 00 00 */	li r28, 0
/* 805A7EAC  3B 60 00 00 */	li r27, 0
/* 805A7EB0  3B E0 00 00 */	li r31, 0
/* 805A7EB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A7EB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A7EBC  3B A3 07 F0 */	addi r29, r3, 0x7f0
/* 805A7EC0  3C 60 80 5B */	lis r3, l_event_bit@ha /* 0x805A8104@ha */
/* 805A7EC4  3B C3 81 04 */	addi r30, r3, l_event_bit@l /* 0x805A8104@l */
lbl_805A7EC8:
/* 805A7EC8  7F A3 EB 78 */	mr r3, r29
/* 805A7ECC  7C 9E FA 2E */	lhzx r4, r30, r31
/* 805A7ED0  4B A8 CA ED */	bl isEventBit__11dSv_event_cCFUs
/* 805A7ED4  2C 03 00 00 */	cmpwi r3, 0
/* 805A7ED8  41 82 00 08 */	beq lbl_805A7EE0
/* 805A7EDC  3B 9C 00 01 */	addi r28, r28, 1
lbl_805A7EE0:
/* 805A7EE0  3B 7B 00 01 */	addi r27, r27, 1
/* 805A7EE4  2C 1B 00 06 */	cmpwi r27, 6
/* 805A7EE8  3B FF 00 02 */	addi r31, r31, 2
/* 805A7EEC  41 80 FF DC */	blt lbl_805A7EC8
/* 805A7EF0  7F 83 E3 78 */	mr r3, r28
/* 805A7EF4  39 61 00 20 */	addi r11, r1, 0x20
/* 805A7EF8  4B DB A3 29 */	bl _restgpr_27
/* 805A7EFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A7F00  7C 08 03 A6 */	mtlr r0
/* 805A7F04  38 21 00 20 */	addi r1, r1, 0x20
/* 805A7F08  4E 80 00 20 */	blr 
