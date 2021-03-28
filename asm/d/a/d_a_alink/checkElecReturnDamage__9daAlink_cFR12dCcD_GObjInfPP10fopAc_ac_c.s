lbl_800D7A98:
/* 800D7A98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D7A9C  7C 08 02 A6 */	mflr r0
/* 800D7AA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D7AA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800D7AA8  93 C1 00 08 */	stw r30, 8(r1)
/* 800D7AAC  7C 9E 23 78 */	mr r30, r4
/* 800D7AB0  7C BF 2B 78 */	mr r31, r5
/* 800D7AB4  7F C3 F3 78 */	mr r3, r30
/* 800D7AB8  4B FA C8 09 */	bl ChkAtHit__12dCcD_GObjInfFv
/* 800D7ABC  28 03 00 00 */	cmplwi r3, 0
/* 800D7AC0  41 82 00 3C */	beq lbl_800D7AFC
/* 800D7AC4  7F C3 F3 78 */	mr r3, r30
/* 800D7AC8  4B FA C8 E1 */	bl GetAtHitGObj__12dCcD_GObjInfFv
/* 800D7ACC  28 03 00 00 */	cmplwi r3, 0
/* 800D7AD0  41 82 00 2C */	beq lbl_800D7AFC
/* 800D7AD4  7F C3 F3 78 */	mr r3, r30
/* 800D7AD8  4B FA C8 D1 */	bl GetAtHitGObj__12dCcD_GObjInfFv
/* 800D7ADC  88 03 00 BB */	lbz r0, 0xbb(r3)
/* 800D7AE0  2C 00 00 01 */	cmpwi r0, 1
/* 800D7AE4  40 82 00 18 */	bne lbl_800D7AFC
/* 800D7AE8  38 7E 00 58 */	addi r3, r30, 0x58
/* 800D7AEC  4B FA BB 9D */	bl GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 800D7AF0  90 7F 00 00 */	stw r3, 0(r31)
/* 800D7AF4  38 60 00 01 */	li r3, 1
/* 800D7AF8  48 00 00 08 */	b lbl_800D7B00
lbl_800D7AFC:
/* 800D7AFC  38 60 00 00 */	li r3, 0
lbl_800D7B00:
/* 800D7B00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800D7B04  83 C1 00 08 */	lwz r30, 8(r1)
/* 800D7B08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D7B0C  7C 08 03 A6 */	mtlr r0
/* 800D7B10  38 21 00 10 */	addi r1, r1, 0x10
/* 800D7B14  4E 80 00 20 */	blr 
