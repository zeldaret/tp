lbl_80284EF4:
/* 80284EF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80284EF8  7C 08 02 A6 */	mflr r0
/* 80284EFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80284F00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80284F04  93 C1 00 08 */	stw r30, 8(r1)
/* 80284F08  7C 7E 1B 79 */	or. r30, r3, r3
/* 80284F0C  7C 9F 23 78 */	mr r31, r4
/* 80284F10  41 82 00 4C */	beq lbl_80284F5C
/* 80284F14  3C 60 80 3C */	lis r3, __vt__Q37JStudio3fvb16TObject_constant@ha
/* 80284F18  38 03 4A 90 */	addi r0, r3, __vt__Q37JStudio3fvb16TObject_constant@l
/* 80284F1C  90 1E 00 08 */	stw r0, 8(r30)
/* 80284F20  34 1E 00 18 */	addic. r0, r30, 0x18
/* 80284F24  41 82 00 1C */	beq lbl_80284F40
/* 80284F28  3C 60 80 3C */	lis r3, __vt__Q27JStudio23TFunctionValue_constant@ha
/* 80284F2C  38 03 49 60 */	addi r0, r3, __vt__Q27JStudio23TFunctionValue_constant@l
/* 80284F30  90 1E 00 18 */	stw r0, 0x18(r30)
/* 80284F34  38 7E 00 18 */	addi r3, r30, 0x18
/* 80284F38  38 80 00 00 */	li r4, 0
/* 80284F3C  4B FF C7 65 */	bl __dt__Q27JStudio14TFunctionValueFv
lbl_80284F40:
/* 80284F40  7F C3 F3 78 */	mr r3, r30
/* 80284F44  38 80 00 00 */	li r4, 0
/* 80284F48  4B FF F0 39 */	bl __dt__Q37JStudio3fvb7TObjectFv
/* 80284F4C  7F E0 07 35 */	extsh. r0, r31
/* 80284F50  40 81 00 0C */	ble lbl_80284F5C
/* 80284F54  7F C3 F3 78 */	mr r3, r30
/* 80284F58  48 04 9D E5 */	bl __dl__FPv
lbl_80284F5C:
/* 80284F5C  7F C3 F3 78 */	mr r3, r30
/* 80284F60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80284F64  83 C1 00 08 */	lwz r30, 8(r1)
/* 80284F68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80284F6C  7C 08 03 A6 */	mtlr r0
/* 80284F70  38 21 00 10 */	addi r1, r1, 0x10
/* 80284F74  4E 80 00 20 */	blr 
