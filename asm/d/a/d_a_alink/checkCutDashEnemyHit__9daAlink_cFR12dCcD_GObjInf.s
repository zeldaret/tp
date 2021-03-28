lbl_800D0EFC:
/* 800D0EFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D0F00  7C 08 02 A6 */	mflr r0
/* 800D0F04  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D0F08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800D0F0C  93 C1 00 08 */	stw r30, 8(r1)
/* 800D0F10  7C 9E 23 78 */	mr r30, r4
/* 800D0F14  3B E0 00 00 */	li r31, 0
/* 800D0F18  7F C3 F3 78 */	mr r3, r30
/* 800D0F1C  4B FB 33 A5 */	bl ChkAtHit__12dCcD_GObjInfFv
/* 800D0F20  28 03 00 00 */	cmplwi r3, 0
/* 800D0F24  41 82 00 1C */	beq lbl_800D0F40
/* 800D0F28  38 7E 00 58 */	addi r3, r30, 0x58
/* 800D0F2C  4B FB 27 5D */	bl GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 800D0F30  48 00 B6 19 */	bl checkEnemyGroup__9daAlink_cFP10fopAc_ac_c
/* 800D0F34  2C 03 00 00 */	cmpwi r3, 0
/* 800D0F38  41 82 00 08 */	beq lbl_800D0F40
/* 800D0F3C  3B E0 00 01 */	li r31, 1
lbl_800D0F40:
/* 800D0F40  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 800D0F44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800D0F48  83 C1 00 08 */	lwz r30, 8(r1)
/* 800D0F4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D0F50  7C 08 03 A6 */	mtlr r0
/* 800D0F54  38 21 00 10 */	addi r1, r1, 0x10
/* 800D0F58  4E 80 00 20 */	blr 
