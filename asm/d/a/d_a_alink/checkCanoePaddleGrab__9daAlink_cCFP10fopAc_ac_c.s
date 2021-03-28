lbl_800F3EB8:
/* 800F3EB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800F3EBC  7C 08 02 A6 */	mflr r0
/* 800F3EC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800F3EC4  39 61 00 20 */	addi r11, r1, 0x20
/* 800F3EC8  48 26 E3 11 */	bl _savegpr_28
/* 800F3ECC  7C 7C 1B 78 */	mr r28, r3
/* 800F3ED0  7C 9D 23 78 */	mr r29, r4
/* 800F3ED4  3B C0 00 00 */	li r30, 0
/* 800F3ED8  A0 03 2F DC */	lhz r0, 0x2fdc(r3)
/* 800F3EDC  28 00 01 0B */	cmplwi r0, 0x10b
/* 800F3EE0  40 82 00 3C */	bne lbl_800F3F1C
/* 800F3EE4  7F DF F3 78 */	mr r31, r30
/* 800F3EE8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 800F3EEC  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 800F3EF0  7D 89 03 A6 */	mtctr r12
/* 800F3EF4  4E 80 04 21 */	bctrl 
/* 800F3EF8  28 03 00 00 */	cmplwi r3, 0
/* 800F3EFC  41 82 00 14 */	beq lbl_800F3F10
/* 800F3F00  80 1C 28 18 */	lwz r0, 0x2818(r28)
/* 800F3F04  7C 00 E8 40 */	cmplw r0, r29
/* 800F3F08  40 82 00 08 */	bne lbl_800F3F10
/* 800F3F0C  3B E0 00 01 */	li r31, 1
lbl_800F3F10:
/* 800F3F10  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 800F3F14  41 82 00 08 */	beq lbl_800F3F1C
/* 800F3F18  3B C0 00 01 */	li r30, 1
lbl_800F3F1C:
/* 800F3F1C  57 C3 06 3E */	clrlwi r3, r30, 0x18
/* 800F3F20  39 61 00 20 */	addi r11, r1, 0x20
/* 800F3F24  48 26 E3 01 */	bl _restgpr_28
/* 800F3F28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800F3F2C  7C 08 03 A6 */	mtlr r0
/* 800F3F30  38 21 00 20 */	addi r1, r1, 0x20
/* 800F3F34  4E 80 00 20 */	blr 
