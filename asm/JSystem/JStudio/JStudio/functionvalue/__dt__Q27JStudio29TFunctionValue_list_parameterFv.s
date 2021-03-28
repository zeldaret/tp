lbl_80283C24:
/* 80283C24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80283C28  7C 08 02 A6 */	mflr r0
/* 80283C2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80283C30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80283C34  93 C1 00 08 */	stw r30, 8(r1)
/* 80283C38  7C 7E 1B 79 */	or. r30, r3, r3
/* 80283C3C  7C 9F 23 78 */	mr r31, r4
/* 80283C40  41 82 00 28 */	beq lbl_80283C68
/* 80283C44  3C 80 80 3C */	lis r4, __vt__Q27JStudio29TFunctionValue_list_parameter@ha
/* 80283C48  38 04 49 00 */	addi r0, r4, __vt__Q27JStudio29TFunctionValue_list_parameter@l
/* 80283C4C  90 1E 00 00 */	stw r0, 0(r30)
/* 80283C50  38 80 00 00 */	li r4, 0
/* 80283C54  4B FF DA 4D */	bl __dt__Q27JStudio14TFunctionValueFv
/* 80283C58  7F E0 07 35 */	extsh. r0, r31
/* 80283C5C  40 81 00 0C */	ble lbl_80283C68
/* 80283C60  7F C3 F3 78 */	mr r3, r30
/* 80283C64  48 04 B0 D9 */	bl __dl__FPv
lbl_80283C68:
/* 80283C68  7F C3 F3 78 */	mr r3, r30
/* 80283C6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80283C70  83 C1 00 08 */	lwz r30, 8(r1)
/* 80283C74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80283C78  7C 08 03 A6 */	mtlr r0
/* 80283C7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80283C80  4E 80 00 20 */	blr 
