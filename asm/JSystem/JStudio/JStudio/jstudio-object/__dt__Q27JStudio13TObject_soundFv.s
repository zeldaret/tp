lbl_80287F04:
/* 80287F04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80287F08  7C 08 02 A6 */	mflr r0
/* 80287F0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80287F10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80287F14  93 C1 00 08 */	stw r30, 8(r1)
/* 80287F18  7C 7E 1B 79 */	or. r30, r3, r3
/* 80287F1C  7C 9F 23 78 */	mr r31, r4
/* 80287F20  41 82 00 28 */	beq lbl_80287F48
/* 80287F24  3C 80 80 3C */	lis r4, __vt__Q27JStudio13TObject_sound@ha
/* 80287F28  38 04 53 3C */	addi r0, r4, __vt__Q27JStudio13TObject_sound@l
/* 80287F2C  90 1E 00 08 */	stw r0, 8(r30)
/* 80287F30  38 80 00 00 */	li r4, 0
/* 80287F34  4B FF E7 7D */	bl __dt__Q27JStudio7TObjectFv
/* 80287F38  7F E0 07 35 */	extsh. r0, r31
/* 80287F3C  40 81 00 0C */	ble lbl_80287F48
/* 80287F40  7F C3 F3 78 */	mr r3, r30
/* 80287F44  48 04 6D F9 */	bl __dl__FPv
lbl_80287F48:
/* 80287F48  7F C3 F3 78 */	mr r3, r30
/* 80287F4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80287F50  83 C1 00 08 */	lwz r30, 8(r1)
/* 80287F54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80287F58  7C 08 03 A6 */	mtlr r0
/* 80287F5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80287F60  4E 80 00 20 */	blr 
