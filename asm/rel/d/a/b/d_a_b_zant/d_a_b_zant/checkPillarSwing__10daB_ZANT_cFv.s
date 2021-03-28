lbl_80647A34:
/* 80647A34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80647A38  7C 08 02 A6 */	mflr r0
/* 80647A3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80647A40  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80647A44  7C 7F 1B 78 */	mr r31, r3
/* 80647A48  88 03 07 07 */	lbz r0, 0x707(r3)
/* 80647A4C  28 00 00 00 */	cmplwi r0, 0
/* 80647A50  41 82 00 64 */	beq lbl_80647AB4
/* 80647A54  88 1F 07 0A */	lbz r0, 0x70a(r31)
/* 80647A58  54 00 10 3A */	slwi r0, r0, 2
/* 80647A5C  7C 7F 02 14 */	add r3, r31, r0
/* 80647A60  80 63 07 3C */	lwz r3, 0x73c(r3)
/* 80647A64  38 81 00 08 */	addi r4, r1, 8
/* 80647A68  4B 9D 1F 54 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80647A6C  80 61 00 08 */	lwz r3, 8(r1)
/* 80647A70  28 03 00 00 */	cmplwi r3, 0
/* 80647A74  41 82 00 40 */	beq lbl_80647AB4
/* 80647A78  88 03 07 32 */	lbz r0, 0x732(r3)
/* 80647A7C  28 00 00 01 */	cmplwi r0, 1
/* 80647A80  40 82 00 34 */	bne lbl_80647AB4
/* 80647A84  80 1F 06 D4 */	lwz r0, 0x6d4(r31)
/* 80647A88  2C 00 00 10 */	cmpwi r0, 0x10
/* 80647A8C  41 82 00 18 */	beq lbl_80647AA4
/* 80647A90  7F E3 FB 78 */	mr r3, r31
/* 80647A94  38 80 00 10 */	li r4, 0x10
/* 80647A98  38 A0 00 00 */	li r5, 0
/* 80647A9C  4B FF 6C 29 */	bl setActionMode__10daB_ZANT_cFii
/* 80647AA0  48 00 00 14 */	b lbl_80647AB4
lbl_80647AA4:
/* 80647AA4  7F E3 FB 78 */	mr r3, r31
/* 80647AA8  38 80 00 10 */	li r4, 0x10
/* 80647AAC  38 A0 00 0A */	li r5, 0xa
/* 80647AB0  4B FF 6C 15 */	bl setActionMode__10daB_ZANT_cFii
lbl_80647AB4:
/* 80647AB4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80647AB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80647ABC  7C 08 03 A6 */	mtlr r0
/* 80647AC0  38 21 00 20 */	addi r1, r1, 0x20
/* 80647AC4  4E 80 00 20 */	blr 
