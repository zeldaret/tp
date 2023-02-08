lbl_80053BC0:
/* 80053BC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80053BC4  7C 08 02 A6 */	mflr r0
/* 80053BC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80053BCC  80 03 00 EC */	lwz r0, 0xec(r3)
/* 80053BD0  28 00 00 00 */	cmplwi r0, 0
/* 80053BD4  41 82 00 1C */	beq lbl_80053BF0
/* 80053BD8  C0 23 00 D4 */	lfs f1, 0xd4(r3)
/* 80053BDC  C0 43 00 D8 */	lfs f2, 0xd8(r3)
/* 80053BE0  81 83 00 00 */	lwz r12, 0(r3)
/* 80053BE4  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80053BE8  7D 89 03 A6 */	mtctr r12
/* 80053BEC  4E 80 04 21 */	bctrl 
lbl_80053BF0:
/* 80053BF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80053BF4  7C 08 03 A6 */	mtlr r0
/* 80053BF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80053BFC  4E 80 00 20 */	blr 
