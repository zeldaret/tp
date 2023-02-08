lbl_8031A8E0:
/* 8031A8E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8031A8E4  7C 08 02 A6 */	mflr r0
/* 8031A8E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8031A8EC  39 61 00 20 */	addi r11, r1, 0x20
/* 8031A8F0  48 04 78 E9 */	bl _savegpr_28
/* 8031A8F4  7C 7C 1B 78 */	mr r28, r3
/* 8031A8F8  7C 9D 23 78 */	mr r29, r4
/* 8031A8FC  3B C0 00 00 */	li r30, 0
/* 8031A900  3B E0 00 00 */	li r31, 0
/* 8031A904  48 00 00 24 */	b lbl_8031A928
lbl_8031A908:
/* 8031A908  38 1F 00 20 */	addi r0, r31, 0x20
/* 8031A90C  7C 7C 00 2E */	lwzx r3, r28, r0
/* 8031A910  28 03 00 00 */	cmplwi r3, 0
/* 8031A914  41 82 00 0C */	beq lbl_8031A920
/* 8031A918  7F C4 F3 78 */	mr r4, r30
/* 8031A91C  48 00 8C 75 */	bl load__11J3DLightObjCFUl
lbl_8031A920:
/* 8031A920  3B DE 00 01 */	addi r30, r30, 1
/* 8031A924  3B FF 00 04 */	addi r31, r31, 4
lbl_8031A928:
/* 8031A928  7C 1E E8 40 */	cmplw r30, r29
/* 8031A92C  41 80 FF DC */	blt lbl_8031A908
/* 8031A930  39 61 00 20 */	addi r11, r1, 0x20
/* 8031A934  48 04 78 F1 */	bl _restgpr_28
/* 8031A938  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8031A93C  7C 08 03 A6 */	mtlr r0
/* 8031A940  38 21 00 20 */	addi r1, r1, 0x20
/* 8031A944  4E 80 00 20 */	blr 
