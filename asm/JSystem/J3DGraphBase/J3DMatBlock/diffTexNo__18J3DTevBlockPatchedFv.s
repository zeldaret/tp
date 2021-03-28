lbl_8031CE00:
/* 8031CE00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8031CE04  7C 08 02 A6 */	mflr r0
/* 8031CE08  90 01 00 24 */	stw r0, 0x24(r1)
/* 8031CE0C  39 61 00 20 */	addi r11, r1, 0x20
/* 8031CE10  48 04 53 CD */	bl _savegpr_29
/* 8031CE14  7C 7D 1B 78 */	mr r29, r3
/* 8031CE18  3B C0 00 00 */	li r30, 0
/* 8031CE1C  3B E0 00 00 */	li r31, 0
lbl_8031CE20:
/* 8031CE20  38 9F 00 08 */	addi r4, r31, 8
/* 8031CE24  7C 9D 22 14 */	add r4, r29, r4
/* 8031CE28  A0 04 00 00 */	lhz r0, 0(r4)
/* 8031CE2C  28 00 FF FF */	cmplwi r0, 0xffff
/* 8031CE30  41 82 00 0C */	beq lbl_8031CE3C
/* 8031CE34  7F C3 F3 78 */	mr r3, r30
/* 8031CE38  48 00 71 5D */	bl loadTexNo__FUlRCUs
lbl_8031CE3C:
/* 8031CE3C  3B DE 00 01 */	addi r30, r30, 1
/* 8031CE40  28 1E 00 08 */	cmplwi r30, 8
/* 8031CE44  3B FF 00 02 */	addi r31, r31, 2
/* 8031CE48  41 80 FF D8 */	blt lbl_8031CE20
/* 8031CE4C  39 61 00 20 */	addi r11, r1, 0x20
/* 8031CE50  48 04 53 D9 */	bl _restgpr_29
/* 8031CE54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8031CE58  7C 08 03 A6 */	mtlr r0
/* 8031CE5C  38 21 00 20 */	addi r1, r1, 0x20
/* 8031CE60  4E 80 00 20 */	blr 
