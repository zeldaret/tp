lbl_8028CAC0:
/* 8028CAC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028CAC4  7C 08 02 A6 */	mflr r0
/* 8028CAC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028CACC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028CAD0  93 C1 00 08 */	stw r30, 8(r1)
/* 8028CAD4  7C 7E 1B 79 */	or. r30, r3, r3
/* 8028CAD8  7C 9F 23 78 */	mr r31, r4
/* 8028CADC  41 82 00 28 */	beq lbl_8028CB04
/* 8028CAE0  3C 80 80 3C */	lis r4, data_803C5A10@ha /* 0x803C5A10@ha */
/* 8028CAE4  38 04 5A 10 */	addi r0, r4, data_803C5A10@l /* 0x803C5A10@l */
/* 8028CAE8  90 1E 00 00 */	stw r0, 0(r30)
/* 8028CAEC  38 80 00 00 */	li r4, 0
/* 8028CAF0  4B FF 93 1D */	bl __dt__Q37JStudio14TVariableValue7TOutputFv
/* 8028CAF4  7F E0 07 35 */	extsh. r0, r31
/* 8028CAF8  40 81 00 0C */	ble lbl_8028CB04
/* 8028CAFC  7F C3 F3 78 */	mr r3, r30
/* 8028CB00  48 04 22 3D */	bl __dl__FPv
lbl_8028CB04:
/* 8028CB04  7F C3 F3 78 */	mr r3, r30
/* 8028CB08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028CB0C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8028CB10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028CB14  7C 08 03 A6 */	mtlr r0
/* 8028CB18  38 21 00 10 */	addi r1, r1, 0x10
/* 8028CB1C  4E 80 00 20 */	blr 
