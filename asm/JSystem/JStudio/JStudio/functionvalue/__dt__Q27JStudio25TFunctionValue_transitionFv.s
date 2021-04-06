lbl_80283CE4:
/* 80283CE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80283CE8  7C 08 02 A6 */	mflr r0
/* 80283CEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80283CF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80283CF4  93 C1 00 08 */	stw r30, 8(r1)
/* 80283CF8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80283CFC  7C 9F 23 78 */	mr r31, r4
/* 80283D00  41 82 00 28 */	beq lbl_80283D28
/* 80283D04  3C 80 80 3C */	lis r4, __vt__Q27JStudio25TFunctionValue_transition@ha /* 0x803C4940@ha */
/* 80283D08  38 04 49 40 */	addi r0, r4, __vt__Q27JStudio25TFunctionValue_transition@l /* 0x803C4940@l */
/* 80283D0C  90 1E 00 00 */	stw r0, 0(r30)
/* 80283D10  38 80 00 00 */	li r4, 0
/* 80283D14  4B FF D9 8D */	bl __dt__Q27JStudio14TFunctionValueFv
/* 80283D18  7F E0 07 35 */	extsh. r0, r31
/* 80283D1C  40 81 00 0C */	ble lbl_80283D28
/* 80283D20  7F C3 F3 78 */	mr r3, r30
/* 80283D24  48 04 B0 19 */	bl __dl__FPv
lbl_80283D28:
/* 80283D28  7F C3 F3 78 */	mr r3, r30
/* 80283D2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80283D30  83 C1 00 08 */	lwz r30, 8(r1)
/* 80283D34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80283D38  7C 08 03 A6 */	mtlr r0
/* 80283D3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80283D40  4E 80 00 20 */	blr 
