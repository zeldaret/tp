lbl_8031ABC0:
/* 8031ABC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8031ABC4  7C 08 02 A6 */	mflr r0
/* 8031ABC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8031ABCC  39 61 00 20 */	addi r11, r1, 0x20
/* 8031ABD0  48 04 76 05 */	bl _savegpr_27
/* 8031ABD4  7C 7B 1B 78 */	mr r27, r3
/* 8031ABD8  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031ABDC  80 64 00 00 */	lwz r3, 0(r4)
/* 8031ABE0  80 1B 00 58 */	lwz r0, 0x58(r27)
/* 8031ABE4  7C 03 02 14 */	add r0, r3, r0
/* 8031ABE8  90 04 00 08 */	stw r0, 8(r4)
/* 8031ABEC  80 6D 94 00 */	lwz r3, __GDCurrentDL(r13)
/* 8031ABF0  83 A3 00 08 */	lwz r29, 8(r3)
/* 8031ABF4  3B 80 00 00 */	li r28, 0
/* 8031ABF8  3B E0 00 00 */	li r31, 0
/* 8031ABFC  3B C0 00 00 */	li r30, 0
lbl_8031AC00:
/* 8031AC00  38 1E 00 38 */	addi r0, r30, 0x38
/* 8031AC04  7C 7B 00 2E */	lwzx r3, r27, r0
/* 8031AC08  28 03 00 00 */	cmplwi r3, 0
/* 8031AC0C  41 82 00 1C */	beq lbl_8031AC28
/* 8031AC10  38 1F 00 0A */	addi r0, r31, 0xa
/* 8031AC14  7C 1B 00 AE */	lbzx r0, r27, r0
/* 8031AC18  28 00 00 3C */	cmplwi r0, 0x3c
/* 8031AC1C  41 82 00 0C */	beq lbl_8031AC28
/* 8031AC20  7F 84 E3 78 */	mr r4, r28
/* 8031AC24  48 00 8C A1 */	bl load__9J3DTexMtxCFUl
lbl_8031AC28:
/* 8031AC28  3B 9C 00 01 */	addi r28, r28, 1
/* 8031AC2C  28 1C 00 08 */	cmplwi r28, 8
/* 8031AC30  3B FF 00 06 */	addi r31, r31, 6
/* 8031AC34  3B DE 00 04 */	addi r30, r30, 4
/* 8031AC38  41 80 FF C8 */	blt lbl_8031AC00
/* 8031AC3C  80 6D 94 00 */	lwz r3, __GDCurrentDL(r13)
/* 8031AC40  80 03 00 08 */	lwz r0, 8(r3)
/* 8031AC44  7F A3 EB 78 */	mr r3, r29
/* 8031AC48  7C 9D 00 50 */	subf r4, r29, r0
/* 8031AC4C  48 02 09 91 */	bl DCStoreRange
/* 8031AC50  39 61 00 20 */	addi r11, r1, 0x20
/* 8031AC54  48 04 75 CD */	bl _restgpr_27
/* 8031AC58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8031AC5C  7C 08 03 A6 */	mtlr r0
/* 8031AC60  38 21 00 20 */	addi r1, r1, 0x20
/* 8031AC64  4E 80 00 20 */	blr 
