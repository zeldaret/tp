lbl_80489B6C:
/* 80489B6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80489B70  7C 08 02 A6 */	mflr r0
/* 80489B74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80489B78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80489B7C  93 C1 00 08 */	stw r30, 8(r1)
/* 80489B80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80489B84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80489B88  83 C3 5D B8 */	lwz r30, 0x5db8(r3)
/* 80489B8C  3B E0 00 00 */	li r31, 0
/* 80489B90  3C 60 80 49 */	lis r3, data_8048A670@ha
/* 80489B94  38 63 A6 70 */	addi r3, r3, data_8048A670@l
/* 80489B98  80 63 00 00 */	lwz r3, 0(r3)
/* 80489B9C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80489BA0  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 80489BA4  7D 89 03 A6 */	mtctr r12
/* 80489BA8  4E 80 04 21 */	bctrl 
/* 80489BAC  28 03 00 00 */	cmplwi r3, 0
/* 80489BB0  41 82 00 14 */	beq lbl_80489BC4
/* 80489BB4  88 1E 16 B4 */	lbz r0, 0x16b4(r30)
/* 80489BB8  28 00 00 04 */	cmplwi r0, 4
/* 80489BBC  40 82 00 08 */	bne lbl_80489BC4
/* 80489BC0  3B E0 00 01 */	li r31, 1
lbl_80489BC4:
/* 80489BC4  7F E3 FB 78 */	mr r3, r31
/* 80489BC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80489BCC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80489BD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80489BD4  7C 08 03 A6 */	mtlr r0
/* 80489BD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80489BDC  4E 80 00 20 */	blr 
