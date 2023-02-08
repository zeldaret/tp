lbl_802DFDA4:
/* 802DFDA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DFDA8  7C 08 02 A6 */	mflr r0
/* 802DFDAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DFDB0  7C 65 1B 78 */	mr r5, r3
/* 802DFDB4  7C 83 23 78 */	mr r3, r4
/* 802DFDB8  80 85 00 6C */	lwz r4, 0x6c(r5)
/* 802DFDBC  81 84 00 00 */	lwz r12, 0(r4)
/* 802DFDC0  7D 89 03 A6 */	mtctr r12
/* 802DFDC4  4E 80 04 21 */	bctrl 
/* 802DFDC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DFDCC  7C 08 03 A6 */	mtlr r0
/* 802DFDD0  38 21 00 10 */	addi r1, r1, 0x10
/* 802DFDD4  4E 80 00 20 */	blr 
