lbl_8031A948:
/* 8031A948  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8031A94C  7C 08 02 A6 */	mflr r0
/* 8031A950  90 01 00 24 */	stw r0, 0x24(r1)
/* 8031A954  39 61 00 20 */	addi r11, r1, 0x20
/* 8031A958  48 04 78 81 */	bl _savegpr_28
/* 8031A95C  7C 7C 1B 78 */	mr r28, r3
/* 8031A960  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031A964  80 64 00 00 */	lwz r3, 0(r4)
/* 8031A968  80 04 00 08 */	lwz r0, 8(r4)
/* 8031A96C  7C 03 00 50 */	subf r0, r3, r0
/* 8031A970  90 1C 00 58 */	stw r0, 0x58(r28)
/* 8031A974  3B A0 00 00 */	li r29, 0
/* 8031A978  3B E0 00 00 */	li r31, 0
/* 8031A97C  3B C0 00 00 */	li r30, 0
lbl_8031A980:
/* 8031A980  38 1E 00 38 */	addi r0, r30, 0x38
/* 8031A984  7C 7C 00 2E */	lwzx r3, r28, r0
/* 8031A988  28 03 00 00 */	cmplwi r3, 0
/* 8031A98C  41 82 00 1C */	beq lbl_8031A9A8
/* 8031A990  38 1F 00 0A */	addi r0, r31, 0xa
/* 8031A994  7C 1C 00 AE */	lbzx r0, r28, r0
/* 8031A998  28 00 00 3C */	cmplwi r0, 0x3c
/* 8031A99C  41 82 00 0C */	beq lbl_8031A9A8
/* 8031A9A0  7F A4 EB 78 */	mr r4, r29
/* 8031A9A4  48 00 8F 21 */	bl load__9J3DTexMtxCFUl
lbl_8031A9A8:
/* 8031A9A8  3B BD 00 01 */	addi r29, r29, 1
/* 8031A9AC  28 1D 00 04 */	cmplwi r29, 4
/* 8031A9B0  3B FF 00 06 */	addi r31, r31, 6
/* 8031A9B4  3B DE 00 04 */	addi r30, r30, 4
/* 8031A9B8  41 80 FF C8 */	blt lbl_8031A980
/* 8031A9BC  80 7C 00 04 */	lwz r3, 4(r28)
/* 8031A9C0  28 03 00 00 */	cmplwi r3, 0
/* 8031A9C4  41 82 00 0C */	beq lbl_8031A9D0
/* 8031A9C8  38 9C 00 08 */	addi r4, r28, 8
/* 8031A9CC  48 00 8C 79 */	bl loadTexCoordGens__FUlP11J3DTexCoord
lbl_8031A9D0:
/* 8031A9D0  39 61 00 20 */	addi r11, r1, 0x20
/* 8031A9D4  48 04 78 51 */	bl _restgpr_28
/* 8031A9D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8031A9DC  7C 08 03 A6 */	mtlr r0
/* 8031A9E0  38 21 00 20 */	addi r1, r1, 0x20
/* 8031A9E4  4E 80 00 20 */	blr 
