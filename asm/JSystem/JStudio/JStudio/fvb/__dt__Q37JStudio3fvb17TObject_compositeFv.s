lbl_80284F78:
/* 80284F78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80284F7C  7C 08 02 A6 */	mflr r0
/* 80284F80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80284F84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80284F88  93 C1 00 08 */	stw r30, 8(r1)
/* 80284F8C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80284F90  7C 9F 23 78 */	mr r31, r4
/* 80284F94  41 82 00 68 */	beq lbl_80284FFC
/* 80284F98  3C 60 80 3C */	lis r3, __vt__Q37JStudio3fvb17TObject_composite@ha
/* 80284F9C  38 03 4A A0 */	addi r0, r3, __vt__Q37JStudio3fvb17TObject_composite@l
/* 80284FA0  90 1E 00 08 */	stw r0, 8(r30)
/* 80284FA4  34 1E 00 18 */	addic. r0, r30, 0x18
/* 80284FA8  41 82 00 38 */	beq lbl_80284FE0
/* 80284FAC  3C 60 80 3C */	lis r3, __vt__Q27JStudio24TFunctionValue_composite@ha
/* 80284FB0  38 03 49 80 */	addi r0, r3, __vt__Q27JStudio24TFunctionValue_composite@l
/* 80284FB4  90 1E 00 18 */	stw r0, 0x18(r30)
/* 80284FB8  34 1E 00 1C */	addic. r0, r30, 0x1c
/* 80284FBC  41 82 00 18 */	beq lbl_80284FD4
/* 80284FC0  34 1E 00 1C */	addic. r0, r30, 0x1c
/* 80284FC4  41 82 00 10 */	beq lbl_80284FD4
/* 80284FC8  38 7E 00 1C */	addi r3, r30, 0x1c
/* 80284FCC  38 80 00 00 */	li r4, 0
/* 80284FD0  48 05 7D 2D */	bl __dt__Q27JGadget20TVector_pointer_voidFv
lbl_80284FD4:
/* 80284FD4  38 7E 00 18 */	addi r3, r30, 0x18
/* 80284FD8  38 80 00 00 */	li r4, 0
/* 80284FDC  4B FF C6 C5 */	bl __dt__Q27JStudio14TFunctionValueFv
lbl_80284FE0:
/* 80284FE0  7F C3 F3 78 */	mr r3, r30
/* 80284FE4  38 80 00 00 */	li r4, 0
/* 80284FE8  4B FF EF 99 */	bl __dt__Q37JStudio3fvb7TObjectFv
/* 80284FEC  7F E0 07 35 */	extsh. r0, r31
/* 80284FF0  40 81 00 0C */	ble lbl_80284FFC
/* 80284FF4  7F C3 F3 78 */	mr r3, r30
/* 80284FF8  48 04 9D 45 */	bl __dl__FPv
lbl_80284FFC:
/* 80284FFC  7F C3 F3 78 */	mr r3, r30
/* 80285000  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80285004  83 C1 00 08 */	lwz r30, 8(r1)
/* 80285008  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028500C  7C 08 03 A6 */	mtlr r0
/* 80285010  38 21 00 10 */	addi r1, r1, 0x10
/* 80285014  4E 80 00 20 */	blr 
