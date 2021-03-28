lbl_80535F74:
/* 80535F74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80535F78  7C 08 02 A6 */	mflr r0
/* 80535F7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80535F80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80535F84  93 C1 00 08 */	stw r30, 8(r1)
/* 80535F88  7C 7E 1B 79 */	or. r30, r3, r3
/* 80535F8C  7C 9F 23 78 */	mr r31, r4
/* 80535F90  41 82 00 28 */	beq lbl_80535FB8
/* 80535F94  3C 80 80 53 */	lis r4, __dt__4cXyzFv@ha
/* 80535F98  38 84 9E 4C */	addi r4, r4, __dt__4cXyzFv@l
/* 80535F9C  38 A0 00 0C */	li r5, 0xc
/* 80535FA0  38 C0 00 05 */	li r6, 5
/* 80535FA4  4B E2 BD 44 */	b __destroy_arr
/* 80535FA8  7F E0 07 35 */	extsh. r0, r31
/* 80535FAC  40 81 00 0C */	ble lbl_80535FB8
/* 80535FB0  7F C3 F3 78 */	mr r3, r30
/* 80535FB4  4B D9 8D 88 */	b __dl__FPv
lbl_80535FB8:
/* 80535FB8  7F C3 F3 78 */	mr r3, r30
/* 80535FBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80535FC0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80535FC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80535FC8  7C 08 03 A6 */	mtlr r0
/* 80535FCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80535FD0  4E 80 00 20 */	blr 
