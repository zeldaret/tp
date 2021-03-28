lbl_80280E90:
/* 80280E90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80280E94  7C 08 02 A6 */	mflr r0
/* 80280E98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80280E9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80280EA0  93 C1 00 08 */	stw r30, 8(r1)
/* 80280EA4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80280EA8  7C 9F 23 78 */	mr r31, r4
/* 80280EAC  41 82 00 28 */	beq lbl_80280ED4
/* 80280EB0  3C 80 80 3C */	lis r4, __vt__Q26JStage7TSystem@ha
/* 80280EB4  38 04 48 28 */	addi r0, r4, __vt__Q26JStage7TSystem@l
/* 80280EB8  90 1E 00 00 */	stw r0, 0(r30)
/* 80280EBC  38 80 00 00 */	li r4, 0
/* 80280EC0  4B FF FF 15 */	bl __dt__Q26JStage7TObjectFv
/* 80280EC4  7F E0 07 35 */	extsh. r0, r31
/* 80280EC8  40 81 00 0C */	ble lbl_80280ED4
/* 80280ECC  7F C3 F3 78 */	mr r3, r30
/* 80280ED0  48 04 DE 6D */	bl __dl__FPv
lbl_80280ED4:
/* 80280ED4  7F C3 F3 78 */	mr r3, r30
/* 80280ED8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80280EDC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80280EE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80280EE4  7C 08 03 A6 */	mtlr r0
/* 80280EE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80280EEC  4E 80 00 20 */	blr 
