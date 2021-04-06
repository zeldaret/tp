lbl_80283DA4:
/* 80283DA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80283DA8  7C 08 02 A6 */	mflr r0
/* 80283DAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80283DB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80283DB4  93 C1 00 08 */	stw r30, 8(r1)
/* 80283DB8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80283DBC  7C 9F 23 78 */	mr r31, r4
/* 80283DC0  41 82 00 48 */	beq lbl_80283E08
/* 80283DC4  3C 60 80 3C */	lis r3, __vt__Q27JStudio24TFunctionValue_composite@ha /* 0x803C4980@ha */
/* 80283DC8  38 03 49 80 */	addi r0, r3, __vt__Q27JStudio24TFunctionValue_composite@l /* 0x803C4980@l */
/* 80283DCC  90 1E 00 00 */	stw r0, 0(r30)
/* 80283DD0  34 1E 00 04 */	addic. r0, r30, 4
/* 80283DD4  41 82 00 18 */	beq lbl_80283DEC
/* 80283DD8  34 1E 00 04 */	addic. r0, r30, 4
/* 80283DDC  41 82 00 10 */	beq lbl_80283DEC
/* 80283DE0  38 7E 00 04 */	addi r3, r30, 4
/* 80283DE4  38 80 00 00 */	li r4, 0
/* 80283DE8  48 05 8F 15 */	bl __dt__Q27JGadget20TVector_pointer_voidFv
lbl_80283DEC:
/* 80283DEC  7F C3 F3 78 */	mr r3, r30
/* 80283DF0  38 80 00 00 */	li r4, 0
/* 80283DF4  4B FF D8 AD */	bl __dt__Q27JStudio14TFunctionValueFv
/* 80283DF8  7F E0 07 35 */	extsh. r0, r31
/* 80283DFC  40 81 00 0C */	ble lbl_80283E08
/* 80283E00  7F C3 F3 78 */	mr r3, r30
/* 80283E04  48 04 AF 39 */	bl __dl__FPv
lbl_80283E08:
/* 80283E08  7F C3 F3 78 */	mr r3, r30
/* 80283E0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80283E10  83 C1 00 08 */	lwz r30, 8(r1)
/* 80283E14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80283E18  7C 08 03 A6 */	mtlr r0
/* 80283E1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80283E20  4E 80 00 20 */	blr 
