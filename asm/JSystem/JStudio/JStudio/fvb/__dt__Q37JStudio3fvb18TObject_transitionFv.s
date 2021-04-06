lbl_80284E70:
/* 80284E70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80284E74  7C 08 02 A6 */	mflr r0
/* 80284E78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80284E7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80284E80  93 C1 00 08 */	stw r30, 8(r1)
/* 80284E84  7C 7E 1B 79 */	or. r30, r3, r3
/* 80284E88  7C 9F 23 78 */	mr r31, r4
/* 80284E8C  41 82 00 4C */	beq lbl_80284ED8
/* 80284E90  3C 60 80 3C */	lis r3, __vt__Q37JStudio3fvb18TObject_transition@ha /* 0x803C4A80@ha */
/* 80284E94  38 03 4A 80 */	addi r0, r3, __vt__Q37JStudio3fvb18TObject_transition@l /* 0x803C4A80@l */
/* 80284E98  90 1E 00 08 */	stw r0, 8(r30)
/* 80284E9C  34 1E 00 18 */	addic. r0, r30, 0x18
/* 80284EA0  41 82 00 1C */	beq lbl_80284EBC
/* 80284EA4  3C 60 80 3C */	lis r3, __vt__Q27JStudio25TFunctionValue_transition@ha /* 0x803C4940@ha */
/* 80284EA8  38 03 49 40 */	addi r0, r3, __vt__Q27JStudio25TFunctionValue_transition@l /* 0x803C4940@l */
/* 80284EAC  90 1E 00 18 */	stw r0, 0x18(r30)
/* 80284EB0  38 7E 00 18 */	addi r3, r30, 0x18
/* 80284EB4  38 80 00 00 */	li r4, 0
/* 80284EB8  4B FF C7 E9 */	bl __dt__Q27JStudio14TFunctionValueFv
lbl_80284EBC:
/* 80284EBC  7F C3 F3 78 */	mr r3, r30
/* 80284EC0  38 80 00 00 */	li r4, 0
/* 80284EC4  4B FF F0 BD */	bl __dt__Q37JStudio3fvb7TObjectFv
/* 80284EC8  7F E0 07 35 */	extsh. r0, r31
/* 80284ECC  40 81 00 0C */	ble lbl_80284ED8
/* 80284ED0  7F C3 F3 78 */	mr r3, r30
/* 80284ED4  48 04 9E 69 */	bl __dl__FPv
lbl_80284ED8:
/* 80284ED8  7F C3 F3 78 */	mr r3, r30
/* 80284EDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80284EE0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80284EE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80284EE8  7C 08 03 A6 */	mtlr r0
/* 80284EEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80284EF0  4E 80 00 20 */	blr 
