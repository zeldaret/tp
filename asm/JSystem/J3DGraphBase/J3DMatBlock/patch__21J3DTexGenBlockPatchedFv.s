lbl_8031AA88:
/* 8031AA88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8031AA8C  7C 08 02 A6 */	mflr r0
/* 8031AA90  90 01 00 24 */	stw r0, 0x24(r1)
/* 8031AA94  39 61 00 20 */	addi r11, r1, 0x20
/* 8031AA98  48 04 77 41 */	bl _savegpr_28
/* 8031AA9C  7C 7C 1B 78 */	mr r28, r3
/* 8031AAA0  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031AAA4  80 64 00 00 */	lwz r3, 0(r4)
/* 8031AAA8  80 1C 00 58 */	lwz r0, 0x58(r28)
/* 8031AAAC  7C 03 02 14 */	add r0, r3, r0
/* 8031AAB0  90 04 00 08 */	stw r0, 8(r4)
/* 8031AAB4  80 6D 94 00 */	lwz r3, __GDCurrentDL(r13)
/* 8031AAB8  83 C3 00 08 */	lwz r30, 8(r3)
/* 8031AABC  3B A0 00 00 */	li r29, 0
/* 8031AAC0  3B E0 00 00 */	li r31, 0
lbl_8031AAC4:
/* 8031AAC4  38 1F 00 38 */	addi r0, r31, 0x38
/* 8031AAC8  7C 7C 00 2E */	lwzx r3, r28, r0
/* 8031AACC  28 03 00 00 */	cmplwi r3, 0
/* 8031AAD0  41 82 00 0C */	beq lbl_8031AADC
/* 8031AAD4  7F A4 EB 78 */	mr r4, r29
/* 8031AAD8  48 00 8D ED */	bl load__9J3DTexMtxCFUl
lbl_8031AADC:
/* 8031AADC  3B BD 00 01 */	addi r29, r29, 1
/* 8031AAE0  28 1D 00 08 */	cmplwi r29, 8
/* 8031AAE4  3B FF 00 04 */	addi r31, r31, 4
/* 8031AAE8  41 80 FF DC */	blt lbl_8031AAC4
/* 8031AAEC  80 6D 94 00 */	lwz r3, __GDCurrentDL(r13)
/* 8031AAF0  80 03 00 08 */	lwz r0, 8(r3)
/* 8031AAF4  7F C3 F3 78 */	mr r3, r30
/* 8031AAF8  7C 9E 00 50 */	subf r4, r30, r0
/* 8031AAFC  48 02 0A E1 */	bl DCStoreRange
/* 8031AB00  39 61 00 20 */	addi r11, r1, 0x20
/* 8031AB04  48 04 77 21 */	bl _restgpr_28
/* 8031AB08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8031AB0C  7C 08 03 A6 */	mtlr r0
/* 8031AB10  38 21 00 20 */	addi r1, r1, 0x20
/* 8031AB14  4E 80 00 20 */	blr 
