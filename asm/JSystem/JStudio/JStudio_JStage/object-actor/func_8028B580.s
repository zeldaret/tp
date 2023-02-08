lbl_8028B580:
/* 8028B580  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028B584  7C 08 02 A6 */	mflr r0
/* 8028B588  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028B58C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028B590  93 C1 00 08 */	stw r30, 8(r1)
/* 8028B594  7C 7E 1B 79 */	or. r30, r3, r3
/* 8028B598  7C 9F 23 78 */	mr r31, r4
/* 8028B59C  41 82 00 28 */	beq lbl_8028B5C4
/* 8028B5A0  3C 80 80 3C */	lis r4, data_803C5864@ha /* 0x803C5864@ha */
/* 8028B5A4  38 04 58 64 */	addi r0, r4, data_803C5864@l /* 0x803C5864@l */
/* 8028B5A8  90 1E 00 00 */	stw r0, 0(r30)
/* 8028B5AC  38 80 00 00 */	li r4, 0
/* 8028B5B0  4B FF A8 5D */	bl __dt__Q37JStudio14TVariableValue7TOutputFv
/* 8028B5B4  7F E0 07 35 */	extsh. r0, r31
/* 8028B5B8  40 81 00 0C */	ble lbl_8028B5C4
/* 8028B5BC  7F C3 F3 78 */	mr r3, r30
/* 8028B5C0  48 04 37 7D */	bl __dl__FPv
lbl_8028B5C4:
/* 8028B5C4  7F C3 F3 78 */	mr r3, r30
/* 8028B5C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028B5CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8028B5D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028B5D4  7C 08 03 A6 */	mtlr r0
/* 8028B5D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8028B5DC  4E 80 00 20 */	blr 
