lbl_80336EA0:
/* 80336EA0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80336EA4  7C 08 02 A6 */	mflr r0
/* 80336EA8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80336EAC  39 61 00 40 */	addi r11, r1, 0x40
/* 80336EB0  48 02 B3 29 */	bl _savegpr_28
/* 80336EB4  7C 7C 1B 78 */	mr r28, r3
/* 80336EB8  7C 9E 23 78 */	mr r30, r4
/* 80336EBC  7C BD 2B 78 */	mr r29, r5
/* 80336EC0  3B E0 00 00 */	li r31, 0
/* 80336EC4  38 61 00 08 */	addi r3, r1, 8
/* 80336EC8  48 00 04 89 */	bl __ct__15J3DShapeFactoryFRC13J3DShapeBlock
/* 80336ECC  A0 9E 00 08 */	lhz r4, 8(r30)
/* 80336ED0  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 80336ED4  28 00 00 00 */	cmplwi r0, 0
/* 80336ED8  41 82 00 08 */	beq lbl_80336EE0
/* 80336EDC  3B E0 00 10 */	li r31, 0x10
lbl_80336EE0:
/* 80336EE0  54 80 10 3A */	slwi r0, r4, 2
/* 80336EE4  7F FF 02 14 */	add r31, r31, r0
/* 80336EE8  38 61 00 08 */	addi r3, r1, 8
/* 80336EEC  48 00 0A ED */	bl calcSizeVcdVatCmdBuffer__15J3DShapeFactoryFUl
/* 80336EF0  7F FF 1A 14 */	add r31, r31, r3
/* 80336EF4  83 DC 00 14 */	lwz r30, 0x14(r28)
/* 80336EF8  48 00 00 24 */	b lbl_80336F1C
lbl_80336EFC:
/* 80336EFC  28 00 00 12 */	cmplwi r0, 0x12
/* 80336F00  40 82 00 18 */	bne lbl_80336F18
/* 80336F04  38 61 00 08 */	addi r3, r1, 8
/* 80336F08  A0 9E 00 02 */	lhz r4, 2(r30)
/* 80336F0C  7F A5 EB 78 */	mr r5, r29
/* 80336F10  48 00 0A 35 */	bl calcSize__15J3DShapeFactoryFiUl
/* 80336F14  7F FF 1A 14 */	add r31, r31, r3
lbl_80336F18:
/* 80336F18  3B DE 00 04 */	addi r30, r30, 4
lbl_80336F1C:
/* 80336F1C  A0 1E 00 00 */	lhz r0, 0(r30)
/* 80336F20  28 00 00 00 */	cmplwi r0, 0
/* 80336F24  40 82 FF D8 */	bne lbl_80336EFC
/* 80336F28  7F E3 FB 78 */	mr r3, r31
/* 80336F2C  39 61 00 40 */	addi r11, r1, 0x40
/* 80336F30  48 02 B2 F5 */	bl _restgpr_28
/* 80336F34  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80336F38  7C 08 03 A6 */	mtlr r0
/* 80336F3C  38 21 00 40 */	addi r1, r1, 0x40
/* 80336F40  4E 80 00 20 */	blr 
