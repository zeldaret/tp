lbl_80284D68:
/* 80284D68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80284D6C  7C 08 02 A6 */	mflr r0
/* 80284D70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80284D74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80284D78  93 C1 00 08 */	stw r30, 8(r1)
/* 80284D7C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80284D80  7C 9F 23 78 */	mr r31, r4
/* 80284D84  41 82 00 4C */	beq lbl_80284DD0
/* 80284D88  3C 60 80 3C */	lis r3, __vt__Q37JStudio3fvb22TObject_list_parameter@ha
/* 80284D8C  38 03 4A 60 */	addi r0, r3, __vt__Q37JStudio3fvb22TObject_list_parameter@l
/* 80284D90  90 1E 00 08 */	stw r0, 8(r30)
/* 80284D94  34 1E 00 18 */	addic. r0, r30, 0x18
/* 80284D98  41 82 00 1C */	beq lbl_80284DB4
/* 80284D9C  3C 60 80 3C */	lis r3, __vt__Q27JStudio29TFunctionValue_list_parameter@ha
/* 80284DA0  38 03 49 00 */	addi r0, r3, __vt__Q27JStudio29TFunctionValue_list_parameter@l
/* 80284DA4  90 1E 00 18 */	stw r0, 0x18(r30)
/* 80284DA8  38 7E 00 18 */	addi r3, r30, 0x18
/* 80284DAC  38 80 00 00 */	li r4, 0
/* 80284DB0  4B FF C8 F1 */	bl __dt__Q27JStudio14TFunctionValueFv
lbl_80284DB4:
/* 80284DB4  7F C3 F3 78 */	mr r3, r30
/* 80284DB8  38 80 00 00 */	li r4, 0
/* 80284DBC  4B FF F1 C5 */	bl __dt__Q37JStudio3fvb7TObjectFv
/* 80284DC0  7F E0 07 35 */	extsh. r0, r31
/* 80284DC4  40 81 00 0C */	ble lbl_80284DD0
/* 80284DC8  7F C3 F3 78 */	mr r3, r30
/* 80284DCC  48 04 9F 71 */	bl __dl__FPv
lbl_80284DD0:
/* 80284DD0  7F C3 F3 78 */	mr r3, r30
/* 80284DD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80284DD8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80284DDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80284DE0  7C 08 03 A6 */	mtlr r0
/* 80284DE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80284DE8  4E 80 00 20 */	blr 
