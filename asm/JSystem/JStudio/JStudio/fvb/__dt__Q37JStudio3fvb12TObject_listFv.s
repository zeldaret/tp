lbl_80284DEC:
/* 80284DEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80284DF0  7C 08 02 A6 */	mflr r0
/* 80284DF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80284DF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80284DFC  93 C1 00 08 */	stw r30, 8(r1)
/* 80284E00  7C 7E 1B 79 */	or. r30, r3, r3
/* 80284E04  7C 9F 23 78 */	mr r31, r4
/* 80284E08  41 82 00 4C */	beq lbl_80284E54
/* 80284E0C  3C 60 80 3C */	lis r3, __vt__Q37JStudio3fvb12TObject_list@ha
/* 80284E10  38 03 4A 70 */	addi r0, r3, __vt__Q37JStudio3fvb12TObject_list@l
/* 80284E14  90 1E 00 08 */	stw r0, 8(r30)
/* 80284E18  34 1E 00 18 */	addic. r0, r30, 0x18
/* 80284E1C  41 82 00 1C */	beq lbl_80284E38
/* 80284E20  3C 60 80 3C */	lis r3, __vt__Q27JStudio19TFunctionValue_list@ha
/* 80284E24  38 03 49 20 */	addi r0, r3, __vt__Q27JStudio19TFunctionValue_list@l
/* 80284E28  90 1E 00 18 */	stw r0, 0x18(r30)
/* 80284E2C  38 7E 00 18 */	addi r3, r30, 0x18
/* 80284E30  38 80 00 00 */	li r4, 0
/* 80284E34  4B FF C8 6D */	bl __dt__Q27JStudio14TFunctionValueFv
lbl_80284E38:
/* 80284E38  7F C3 F3 78 */	mr r3, r30
/* 80284E3C  38 80 00 00 */	li r4, 0
/* 80284E40  4B FF F1 41 */	bl __dt__Q37JStudio3fvb7TObjectFv
/* 80284E44  7F E0 07 35 */	extsh. r0, r31
/* 80284E48  40 81 00 0C */	ble lbl_80284E54
/* 80284E4C  7F C3 F3 78 */	mr r3, r30
/* 80284E50  48 04 9E ED */	bl __dl__FPv
lbl_80284E54:
/* 80284E54  7F C3 F3 78 */	mr r3, r30
/* 80284E58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80284E5C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80284E60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80284E64  7C 08 03 A6 */	mtlr r0
/* 80284E68  38 21 00 10 */	addi r1, r1, 0x10
/* 80284E6C  4E 80 00 20 */	blr 
