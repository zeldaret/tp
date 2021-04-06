lbl_80D28CDC:
/* 80D28CDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D28CE0  7C 08 02 A6 */	mflr r0
/* 80D28CE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D28CE8  39 61 00 20 */	addi r11, r1, 0x20
/* 80D28CEC  4B 63 94 F1 */	bl _savegpr_29
/* 80D28CF0  7C 7D 1B 78 */	mr r29, r3
/* 80D28CF4  3B C0 00 00 */	li r30, 0
/* 80D28CF8  3B E0 00 00 */	li r31, 0
lbl_80D28CFC:
/* 80D28CFC  38 1F 06 88 */	addi r0, r31, 0x688
/* 80D28D00  7C BD 00 2E */	lwzx r5, r29, r0
/* 80D28D04  28 05 00 00 */	cmplwi r5, 0
/* 80D28D08  41 82 00 1C */	beq lbl_80D28D24
/* 80D28D0C  80 7D 05 B0 */	lwz r3, 0x5b0(r29)
/* 80D28D10  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80D28D14  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80D28D18  38 85 00 68 */	addi r4, r5, 0x68
/* 80D28D1C  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 80D28D20  4B 55 7A C1 */	bl func_802807E0
lbl_80D28D24:
/* 80D28D24  3B DE 00 01 */	addi r30, r30, 1
/* 80D28D28  2C 1E 00 04 */	cmpwi r30, 4
/* 80D28D2C  3B FF 00 04 */	addi r31, r31, 4
/* 80D28D30  41 80 FF CC */	blt lbl_80D28CFC
/* 80D28D34  39 61 00 20 */	addi r11, r1, 0x20
/* 80D28D38  4B 63 94 F1 */	bl _restgpr_29
/* 80D28D3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D28D40  7C 08 03 A6 */	mtlr r0
/* 80D28D44  38 21 00 20 */	addi r1, r1, 0x20
/* 80D28D48  4E 80 00 20 */	blr 
