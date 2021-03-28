lbl_80C8EF94:
/* 80C8EF94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8EF98  7C 08 02 A6 */	mflr r0
/* 80C8EF9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8EFA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C8EFA4  93 C1 00 08 */	stw r30, 8(r1)
/* 80C8EFA8  7C 7E 1B 78 */	mr r30, r3
/* 80C8EFAC  7C 9F 23 78 */	mr r31, r4
/* 80C8EFB0  48 00 00 7D */	bl moveLift__14daMagLiftRot_cFv
/* 80C8EFB4  88 1E 05 DC */	lbz r0, 0x5dc(r30)
/* 80C8EFB8  54 00 10 3A */	slwi r0, r0, 2
/* 80C8EFBC  3C 60 80 C9 */	lis r3, l_btkIdx@ha
/* 80C8EFC0  38 63 FB 30 */	addi r3, r3, l_btkIdx@l
/* 80C8EFC4  7C 03 00 2E */	lwzx r0, r3, r0
/* 80C8EFC8  2C 00 FF FF */	cmpwi r0, -1
/* 80C8EFCC  41 82 00 0C */	beq lbl_80C8EFD8
/* 80C8EFD0  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 80C8EFD4  4B 37 E4 54 */	b play__14mDoExt_baseAnmFv
lbl_80C8EFD8:
/* 80C8EFD8  88 1E 05 DC */	lbz r0, 0x5dc(r30)
/* 80C8EFDC  54 00 10 3A */	slwi r0, r0, 2
/* 80C8EFE0  3C 60 80 C9 */	lis r3, l_brkIdx@ha
/* 80C8EFE4  38 63 FB 3C */	addi r3, r3, l_brkIdx@l
/* 80C8EFE8  7C 03 00 2E */	lwzx r0, r3, r0
/* 80C8EFEC  2C 00 FF FF */	cmpwi r0, -1
/* 80C8EFF0  41 82 00 0C */	beq lbl_80C8EFFC
/* 80C8EFF4  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80C8EFF8  4B 37 E4 30 */	b play__14mDoExt_baseAnmFv
lbl_80C8EFFC:
/* 80C8EFFC  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C8F000  38 03 00 24 */	addi r0, r3, 0x24
/* 80C8F004  90 1F 00 00 */	stw r0, 0(r31)
/* 80C8F008  7F C3 F3 78 */	mr r3, r30
/* 80C8F00C  4B FF FA 1D */	bl setBaseMtx__14daMagLiftRot_cFv
/* 80C8F010  38 60 00 01 */	li r3, 1
/* 80C8F014  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8F018  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C8F01C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8F020  7C 08 03 A6 */	mtlr r0
/* 80C8F024  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8F028  4E 80 00 20 */	blr 
