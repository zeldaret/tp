lbl_8028C4E4:
/* 8028C4E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028C4E8  7C 08 02 A6 */	mflr r0
/* 8028C4EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028C4F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028C4F4  93 C1 00 08 */	stw r30, 8(r1)
/* 8028C4F8  7C 7E 1B 79 */	or. r30, r3, r3
/* 8028C4FC  7C 9F 23 78 */	mr r31, r4
/* 8028C500  41 82 00 28 */	beq lbl_8028C528
/* 8028C504  3C 80 80 3C */	lis r4, data_803C5980@ha /* 0x803C5980@ha */
/* 8028C508  38 04 59 80 */	addi r0, r4, data_803C5980@l /* 0x803C5980@l */
/* 8028C50C  90 1E 00 00 */	stw r0, 0(r30)
/* 8028C510  38 80 00 00 */	li r4, 0
/* 8028C514  4B FF 98 F9 */	bl __dt__Q37JStudio14TVariableValue7TOutputFv
/* 8028C518  7F E0 07 35 */	extsh. r0, r31
/* 8028C51C  40 81 00 0C */	ble lbl_8028C528
/* 8028C520  7F C3 F3 78 */	mr r3, r30
/* 8028C524  48 04 28 19 */	bl __dl__FPv
lbl_8028C528:
/* 8028C528  7F C3 F3 78 */	mr r3, r30
/* 8028C52C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028C530  83 C1 00 08 */	lwz r30, 8(r1)
/* 8028C534  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028C538  7C 08 03 A6 */	mtlr r0
/* 8028C53C  38 21 00 10 */	addi r1, r1, 0x10
/* 8028C540  4E 80 00 20 */	blr 
