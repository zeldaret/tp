lbl_80284CE4:
/* 80284CE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80284CE8  7C 08 02 A6 */	mflr r0
/* 80284CEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80284CF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80284CF4  93 C1 00 08 */	stw r30, 8(r1)
/* 80284CF8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80284CFC  7C 9F 23 78 */	mr r31, r4
/* 80284D00  41 82 00 4C */	beq lbl_80284D4C
/* 80284D04  3C 60 80 3C */	lis r3, __vt__Q37JStudio3fvb15TObject_hermite@ha /* 0x803C4A50@ha */
/* 80284D08  38 03 4A 50 */	addi r0, r3, __vt__Q37JStudio3fvb15TObject_hermite@l /* 0x803C4A50@l */
/* 80284D0C  90 1E 00 08 */	stw r0, 8(r30)
/* 80284D10  34 1E 00 18 */	addic. r0, r30, 0x18
/* 80284D14  41 82 00 1C */	beq lbl_80284D30
/* 80284D18  3C 60 80 3C */	lis r3, __vt__Q27JStudio22TFunctionValue_hermite@ha /* 0x803C48E0@ha */
/* 80284D1C  38 03 48 E0 */	addi r0, r3, __vt__Q27JStudio22TFunctionValue_hermite@l /* 0x803C48E0@l */
/* 80284D20  90 1E 00 18 */	stw r0, 0x18(r30)
/* 80284D24  38 7E 00 18 */	addi r3, r30, 0x18
/* 80284D28  38 80 00 00 */	li r4, 0
/* 80284D2C  4B FF C9 75 */	bl __dt__Q27JStudio14TFunctionValueFv
lbl_80284D30:
/* 80284D30  7F C3 F3 78 */	mr r3, r30
/* 80284D34  38 80 00 00 */	li r4, 0
/* 80284D38  4B FF F2 49 */	bl __dt__Q37JStudio3fvb7TObjectFv
/* 80284D3C  7F E0 07 35 */	extsh. r0, r31
/* 80284D40  40 81 00 0C */	ble lbl_80284D4C
/* 80284D44  7F C3 F3 78 */	mr r3, r30
/* 80284D48  48 04 9F F5 */	bl __dl__FPv
lbl_80284D4C:
/* 80284D4C  7F C3 F3 78 */	mr r3, r30
/* 80284D50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80284D54  83 C1 00 08 */	lwz r30, 8(r1)
/* 80284D58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80284D5C  7C 08 03 A6 */	mtlr r0
/* 80284D60  38 21 00 10 */	addi r1, r1, 0x10
/* 80284D64  4E 80 00 20 */	blr 
