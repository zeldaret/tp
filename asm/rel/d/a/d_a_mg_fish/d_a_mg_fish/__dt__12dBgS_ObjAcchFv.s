lbl_80535E94:
/* 80535E94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80535E98  7C 08 02 A6 */	mflr r0
/* 80535E9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80535EA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80535EA4  93 C1 00 08 */	stw r30, 8(r1)
/* 80535EA8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80535EAC  7C 9F 23 78 */	mr r31, r4
/* 80535EB0  41 82 00 38 */	beq lbl_80535EE8
/* 80535EB4  3C 80 80 53 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80536AF8@ha */
/* 80535EB8  38 84 6A F8 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80536AF8@l */
/* 80535EBC  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80535EC0  38 04 00 0C */	addi r0, r4, 0xc
/* 80535EC4  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80535EC8  38 04 00 18 */	addi r0, r4, 0x18
/* 80535ECC  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80535ED0  38 80 00 00 */	li r4, 0
/* 80535ED4  4B B4 00 C1 */	bl __dt__9dBgS_AcchFv
/* 80535ED8  7F E0 07 35 */	extsh. r0, r31
/* 80535EDC  40 81 00 0C */	ble lbl_80535EE8
/* 80535EE0  7F C3 F3 78 */	mr r3, r30
/* 80535EE4  4B D9 8E 59 */	bl __dl__FPv
lbl_80535EE8:
/* 80535EE8  7F C3 F3 78 */	mr r3, r30
/* 80535EEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80535EF0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80535EF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80535EF8  7C 08 03 A6 */	mtlr r0
/* 80535EFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80535F00  4E 80 00 20 */	blr 
