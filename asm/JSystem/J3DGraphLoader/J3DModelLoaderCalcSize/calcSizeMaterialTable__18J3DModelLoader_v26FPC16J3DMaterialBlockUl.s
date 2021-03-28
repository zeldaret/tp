lbl_80336F60:
/* 80336F60  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80336F64  7C 08 02 A6 */	mflr r0
/* 80336F68  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80336F6C  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80336F70  48 02 B2 69 */	bl _savegpr_28
/* 80336F74  7C 9D 23 78 */	mr r29, r4
/* 80336F78  7C BC 2B 78 */	mr r28, r5
/* 80336F7C  3B E0 00 00 */	li r31, 0
/* 80336F80  A3 C4 00 08 */	lhz r30, 8(r4)
/* 80336F84  38 61 00 08 */	addi r3, r1, 8
/* 80336F88  4B FF 90 65 */	bl __ct__18J3DMaterialFactoryFRC16J3DMaterialBlock
/* 80336F8C  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 80336F90  28 00 00 00 */	cmplwi r0, 0
/* 80336F94  41 82 00 08 */	beq lbl_80336F9C
/* 80336F98  3B E0 00 10 */	li r31, 0x10
lbl_80336F9C:
/* 80336F9C  57 C0 10 3A */	slwi r0, r30, 2
/* 80336FA0  7F FF 02 14 */	add r31, r31, r0
/* 80336FA4  3B A0 00 00 */	li r29, 0
/* 80336FA8  48 00 00 20 */	b lbl_80336FC8
lbl_80336FAC:
/* 80336FAC  38 61 00 08 */	addi r3, r1, 8
/* 80336FB0  38 80 00 00 */	li r4, 0
/* 80336FB4  38 A0 00 00 */	li r5, 0
/* 80336FB8  7F 87 E3 78 */	mr r7, r28
/* 80336FBC  4B FF AA C1 */	bl calcSize__18J3DMaterialFactoryCFP11J3DMaterialQ218J3DMaterialFactory12MaterialTypeiUl
/* 80336FC0  7F FF 1A 14 */	add r31, r31, r3
/* 80336FC4  3B BD 00 01 */	addi r29, r29, 1
lbl_80336FC8:
/* 80336FC8  57 A6 04 3E */	clrlwi r6, r29, 0x10
/* 80336FCC  7C 06 F0 40 */	cmplw r6, r30
/* 80336FD0  41 80 FF DC */	blt lbl_80336FAC
/* 80336FD4  7F E3 FB 78 */	mr r3, r31
/* 80336FD8  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80336FDC  48 02 B2 49 */	bl _restgpr_28
/* 80336FE0  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80336FE4  7C 08 03 A6 */	mtlr r0
/* 80336FE8  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80336FEC  4E 80 00 20 */	blr 
