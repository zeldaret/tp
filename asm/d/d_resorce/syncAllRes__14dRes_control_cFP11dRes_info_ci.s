lbl_8003C470:
/* 8003C470  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003C474  7C 08 02 A6 */	mflr r0
/* 8003C478  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003C47C  39 61 00 20 */	addi r11, r1, 0x20
/* 8003C480  48 32 5D 5D */	bl _savegpr_29
/* 8003C484  7C 7D 1B 78 */	mr r29, r3
/* 8003C488  7C 9E 23 78 */	mr r30, r4
/* 8003C48C  3B E0 00 00 */	li r31, 0
/* 8003C490  48 00 00 30 */	b lbl_8003C4C0
lbl_8003C494:
/* 8003C494  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 8003C498  28 00 00 00 */	cmplwi r0, 0
/* 8003C49C  41 82 00 1C */	beq lbl_8003C4B8
/* 8003C4A0  7F A3 EB 78 */	mr r3, r29
/* 8003C4A4  4B FF F6 55 */	bl setRes__11dRes_info_cFv
/* 8003C4A8  2C 03 00 00 */	cmpwi r3, 0
/* 8003C4AC  40 81 00 0C */	ble lbl_8003C4B8
/* 8003C4B0  38 60 00 01 */	li r3, 1
/* 8003C4B4  48 00 00 18 */	b lbl_8003C4CC
lbl_8003C4B8:
/* 8003C4B8  3B BD 00 24 */	addi r29, r29, 0x24
/* 8003C4BC  3B FF 00 01 */	addi r31, r31, 1
lbl_8003C4C0:
/* 8003C4C0  7C 1F F0 00 */	cmpw r31, r30
/* 8003C4C4  41 80 FF D0 */	blt lbl_8003C494
/* 8003C4C8  38 60 00 00 */	li r3, 0
lbl_8003C4CC:
/* 8003C4CC  39 61 00 20 */	addi r11, r1, 0x20
/* 8003C4D0  48 32 5D 59 */	bl _restgpr_29
/* 8003C4D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003C4D8  7C 08 03 A6 */	mtlr r0
/* 8003C4DC  38 21 00 20 */	addi r1, r1, 0x20
/* 8003C4E0  4E 80 00 20 */	blr 
