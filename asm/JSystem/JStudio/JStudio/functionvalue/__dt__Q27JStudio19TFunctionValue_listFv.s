lbl_80283C84:
/* 80283C84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80283C88  7C 08 02 A6 */	mflr r0
/* 80283C8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80283C90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80283C94  93 C1 00 08 */	stw r30, 8(r1)
/* 80283C98  7C 7E 1B 79 */	or. r30, r3, r3
/* 80283C9C  7C 9F 23 78 */	mr r31, r4
/* 80283CA0  41 82 00 28 */	beq lbl_80283CC8
/* 80283CA4  3C 80 80 3C */	lis r4, __vt__Q27JStudio19TFunctionValue_list@ha /* 0x803C4920@ha */
/* 80283CA8  38 04 49 20 */	addi r0, r4, __vt__Q27JStudio19TFunctionValue_list@l /* 0x803C4920@l */
/* 80283CAC  90 1E 00 00 */	stw r0, 0(r30)
/* 80283CB0  38 80 00 00 */	li r4, 0
/* 80283CB4  4B FF D9 ED */	bl __dt__Q27JStudio14TFunctionValueFv
/* 80283CB8  7F E0 07 35 */	extsh. r0, r31
/* 80283CBC  40 81 00 0C */	ble lbl_80283CC8
/* 80283CC0  7F C3 F3 78 */	mr r3, r30
/* 80283CC4  48 04 B0 79 */	bl __dl__FPv
lbl_80283CC8:
/* 80283CC8  7F C3 F3 78 */	mr r3, r30
/* 80283CCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80283CD0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80283CD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80283CD8  7C 08 03 A6 */	mtlr r0
/* 80283CDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80283CE0  4E 80 00 20 */	blr 
