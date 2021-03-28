lbl_80C21EA4:
/* 80C21EA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C21EA8  7C 08 02 A6 */	mflr r0
/* 80C21EAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C21EB0  39 61 00 20 */	addi r11, r1, 0x20
/* 80C21EB4  4B 74 03 20 */	b _savegpr_27
/* 80C21EB8  7C 7B 1B 78 */	mr r27, r3
/* 80C21EBC  3B A0 00 00 */	li r29, 0
/* 80C21EC0  3B 80 00 00 */	li r28, 0
/* 80C21EC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C21EC8  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80C21ECC  3B E0 00 01 */	li r31, 1
/* 80C21ED0  48 00 00 34 */	b lbl_80C21F04
lbl_80C21ED4:
/* 80C21ED4  7F C3 F3 78 */	mr r3, r30
/* 80C21ED8  88 1B 09 C0 */	lbz r0, 0x9c0(r27)
/* 80C21EDC  7C 80 E2 14 */	add r4, r0, r28
/* 80C21EE0  88 1B 04 BA */	lbz r0, 0x4ba(r27)
/* 80C21EE4  7C 05 07 74 */	extsb r5, r0
/* 80C21EE8  4B 41 34 78 */	b isSwitch__10dSv_info_cCFii
/* 80C21EEC  2C 03 00 00 */	cmpwi r3, 0
/* 80C21EF0  41 82 00 10 */	beq lbl_80C21F00
/* 80C21EF4  7F E0 E0 30 */	slw r0, r31, r28
/* 80C21EF8  7F A0 03 78 */	or r0, r29, r0
/* 80C21EFC  54 1D 04 3E */	clrlwi r29, r0, 0x10
lbl_80C21F00:
/* 80C21F00  3B 9C 00 01 */	addi r28, r28, 1
lbl_80C21F04:
/* 80C21F04  88 1B 09 C1 */	lbz r0, 0x9c1(r27)
/* 80C21F08  7C 1C 00 00 */	cmpw r28, r0
/* 80C21F0C  41 80 FF C8 */	blt lbl_80C21ED4
/* 80C21F10  7F A3 EB 78 */	mr r3, r29
/* 80C21F14  39 61 00 20 */	addi r11, r1, 0x20
/* 80C21F18  4B 74 03 08 */	b _restgpr_27
/* 80C21F1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C21F20  7C 08 03 A6 */	mtlr r0
/* 80C21F24  38 21 00 20 */	addi r1, r1, 0x20
/* 80C21F28  4E 80 00 20 */	blr 
