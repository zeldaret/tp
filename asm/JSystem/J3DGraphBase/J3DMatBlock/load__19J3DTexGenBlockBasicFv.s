lbl_8031A9E8:
/* 8031A9E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8031A9EC  7C 08 02 A6 */	mflr r0
/* 8031A9F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8031A9F4  39 61 00 20 */	addi r11, r1, 0x20
/* 8031A9F8  48 04 77 E1 */	bl _savegpr_28
/* 8031A9FC  7C 7C 1B 78 */	mr r28, r3
/* 8031AA00  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031AA04  80 64 00 00 */	lwz r3, 0(r4)
/* 8031AA08  80 04 00 08 */	lwz r0, 8(r4)
/* 8031AA0C  7C 03 00 50 */	subf r0, r3, r0
/* 8031AA10  90 1C 00 58 */	stw r0, 0x58(r28)
/* 8031AA14  3B A0 00 00 */	li r29, 0
/* 8031AA18  3B E0 00 00 */	li r31, 0
/* 8031AA1C  3B C0 00 00 */	li r30, 0
lbl_8031AA20:
/* 8031AA20  38 1E 00 38 */	addi r0, r30, 0x38
/* 8031AA24  7C 7C 00 2E */	lwzx r3, r28, r0
/* 8031AA28  28 03 00 00 */	cmplwi r3, 0
/* 8031AA2C  41 82 00 1C */	beq lbl_8031AA48
/* 8031AA30  38 1F 00 0A */	addi r0, r31, 0xa
/* 8031AA34  7C 1C 00 AE */	lbzx r0, r28, r0
/* 8031AA38  28 00 00 3C */	cmplwi r0, 0x3c
/* 8031AA3C  41 82 00 0C */	beq lbl_8031AA48
/* 8031AA40  7F A4 EB 78 */	mr r4, r29
/* 8031AA44  48 00 8E 81 */	bl load__9J3DTexMtxCFUl
lbl_8031AA48:
/* 8031AA48  3B BD 00 01 */	addi r29, r29, 1
/* 8031AA4C  28 1D 00 08 */	cmplwi r29, 8
/* 8031AA50  3B FF 00 06 */	addi r31, r31, 6
/* 8031AA54  3B DE 00 04 */	addi r30, r30, 4
/* 8031AA58  41 80 FF C8 */	blt lbl_8031AA20
/* 8031AA5C  80 7C 00 04 */	lwz r3, 4(r28)
/* 8031AA60  28 03 00 00 */	cmplwi r3, 0
/* 8031AA64  41 82 00 0C */	beq lbl_8031AA70
/* 8031AA68  38 9C 00 08 */	addi r4, r28, 8
/* 8031AA6C  48 00 8B D9 */	bl loadTexCoordGens__FUlP11J3DTexCoord
lbl_8031AA70:
/* 8031AA70  39 61 00 20 */	addi r11, r1, 0x20
/* 8031AA74  48 04 77 B1 */	bl _restgpr_28
/* 8031AA78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8031AA7C  7C 08 03 A6 */	mtlr r0
/* 8031AA80  38 21 00 20 */	addi r1, r1, 0x20
/* 8031AA84  4E 80 00 20 */	blr 
