lbl_8031AB18:
/* 8031AB18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8031AB1C  7C 08 02 A6 */	mflr r0
/* 8031AB20  90 01 00 24 */	stw r0, 0x24(r1)
/* 8031AB24  39 61 00 20 */	addi r11, r1, 0x20
/* 8031AB28  48 04 76 AD */	bl _savegpr_27
/* 8031AB2C  7C 7B 1B 78 */	mr r27, r3
/* 8031AB30  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031AB34  80 64 00 00 */	lwz r3, 0(r4)
/* 8031AB38  80 1B 00 58 */	lwz r0, 0x58(r27)
/* 8031AB3C  7C 03 02 14 */	add r0, r3, r0
/* 8031AB40  90 04 00 08 */	stw r0, 8(r4)
/* 8031AB44  80 6D 94 00 */	lwz r3, __GDCurrentDL(r13)
/* 8031AB48  83 A3 00 08 */	lwz r29, 8(r3)
/* 8031AB4C  3B 80 00 00 */	li r28, 0
/* 8031AB50  3B E0 00 00 */	li r31, 0
/* 8031AB54  3B C0 00 00 */	li r30, 0
lbl_8031AB58:
/* 8031AB58  38 1E 00 38 */	addi r0, r30, 0x38
/* 8031AB5C  7C 7B 00 2E */	lwzx r3, r27, r0
/* 8031AB60  28 03 00 00 */	cmplwi r3, 0
/* 8031AB64  41 82 00 1C */	beq lbl_8031AB80
/* 8031AB68  38 1F 00 0A */	addi r0, r31, 0xa
/* 8031AB6C  7C 1B 00 AE */	lbzx r0, r27, r0
/* 8031AB70  28 00 00 3C */	cmplwi r0, 0x3c
/* 8031AB74  41 82 00 0C */	beq lbl_8031AB80
/* 8031AB78  7F 84 E3 78 */	mr r4, r28
/* 8031AB7C  48 00 8D 49 */	bl load__9J3DTexMtxCFUl
lbl_8031AB80:
/* 8031AB80  3B 9C 00 01 */	addi r28, r28, 1
/* 8031AB84  28 1C 00 04 */	cmplwi r28, 4
/* 8031AB88  3B FF 00 06 */	addi r31, r31, 6
/* 8031AB8C  3B DE 00 04 */	addi r30, r30, 4
/* 8031AB90  41 80 FF C8 */	blt lbl_8031AB58
/* 8031AB94  80 6D 94 00 */	lwz r3, __GDCurrentDL(r13)
/* 8031AB98  80 03 00 08 */	lwz r0, 8(r3)
/* 8031AB9C  7F A3 EB 78 */	mr r3, r29
/* 8031ABA0  7C 9D 00 50 */	subf r4, r29, r0
/* 8031ABA4  48 02 0A 39 */	bl DCStoreRange
/* 8031ABA8  39 61 00 20 */	addi r11, r1, 0x20
/* 8031ABAC  48 04 76 75 */	bl _restgpr_27
/* 8031ABB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8031ABB4  7C 08 03 A6 */	mtlr r0
/* 8031ABB8  38 21 00 20 */	addi r1, r1, 0x20
/* 8031ABBC  4E 80 00 20 */	blr 
