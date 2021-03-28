lbl_80283D44:
/* 80283D44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80283D48  7C 08 02 A6 */	mflr r0
/* 80283D4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80283D50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80283D54  93 C1 00 08 */	stw r30, 8(r1)
/* 80283D58  7C 7E 1B 79 */	or. r30, r3, r3
/* 80283D5C  7C 9F 23 78 */	mr r31, r4
/* 80283D60  41 82 00 28 */	beq lbl_80283D88
/* 80283D64  3C 80 80 3C */	lis r4, __vt__Q27JStudio23TFunctionValue_constant@ha
/* 80283D68  38 04 49 60 */	addi r0, r4, __vt__Q27JStudio23TFunctionValue_constant@l
/* 80283D6C  90 1E 00 00 */	stw r0, 0(r30)
/* 80283D70  38 80 00 00 */	li r4, 0
/* 80283D74  4B FF D9 2D */	bl __dt__Q27JStudio14TFunctionValueFv
/* 80283D78  7F E0 07 35 */	extsh. r0, r31
/* 80283D7C  40 81 00 0C */	ble lbl_80283D88
/* 80283D80  7F C3 F3 78 */	mr r3, r30
/* 80283D84  48 04 AF B9 */	bl __dl__FPv
lbl_80283D88:
/* 80283D88  7F C3 F3 78 */	mr r3, r30
/* 80283D8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80283D90  83 C1 00 08 */	lwz r30, 8(r1)
/* 80283D94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80283D98  7C 08 03 A6 */	mtlr r0
/* 80283D9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80283DA0  4E 80 00 20 */	blr 
