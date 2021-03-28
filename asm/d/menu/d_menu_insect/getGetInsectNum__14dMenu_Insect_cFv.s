lbl_801D9D4C:
/* 801D9D4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D9D50  7C 08 02 A6 */	mflr r0
/* 801D9D54  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D9D58  39 61 00 20 */	addi r11, r1, 0x20
/* 801D9D5C  48 18 84 7D */	bl _savegpr_28
/* 801D9D60  3B C0 00 00 */	li r30, 0
/* 801D9D64  3C 60 80 3C */	lis r3, l_itemno_4346@ha
/* 801D9D68  38 03 D8 7C */	addi r0, r3, l_itemno_4346@l
/* 801D9D6C  7C 1D 03 78 */	mr r29, r0
/* 801D9D70  3B 80 00 00 */	li r28, 0
/* 801D9D74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801D9D78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801D9D7C  3B E3 00 CC */	addi r31, r3, 0xcc
lbl_801D9D80:
/* 801D9D80  88 9D 00 00 */	lbz r4, 0(r29)
/* 801D9D84  7F E3 FB 78 */	mr r3, r31
/* 801D9D88  3B BD 00 01 */	addi r29, r29, 1
/* 801D9D8C  4B E5 A1 3D */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 801D9D90  2C 03 00 00 */	cmpwi r3, 0
/* 801D9D94  41 82 00 10 */	beq lbl_801D9DA4
/* 801D9D98  57 C3 06 3E */	clrlwi r3, r30, 0x18
/* 801D9D9C  38 03 00 01 */	addi r0, r3, 1
/* 801D9DA0  54 1E 06 3E */	clrlwi r30, r0, 0x18
lbl_801D9DA4:
/* 801D9DA4  3B 9C 00 01 */	addi r28, r28, 1
/* 801D9DA8  28 1C 00 18 */	cmplwi r28, 0x18
/* 801D9DAC  41 80 FF D4 */	blt lbl_801D9D80
/* 801D9DB0  7F C3 F3 78 */	mr r3, r30
/* 801D9DB4  39 61 00 20 */	addi r11, r1, 0x20
/* 801D9DB8  48 18 84 6D */	bl _restgpr_28
/* 801D9DBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D9DC0  7C 08 03 A6 */	mtlr r0
/* 801D9DC4  38 21 00 20 */	addi r1, r1, 0x20
/* 801D9DC8  4E 80 00 20 */	blr 
