lbl_809F3BD8:
/* 809F3BD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F3BDC  7C 08 02 A6 */	mflr r0
/* 809F3BE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F3BE4  38 80 FF FF */	li r4, -1
/* 809F3BE8  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809F3BEC  81 8C 00 08 */	lwz r12, 8(r12)
/* 809F3BF0  7D 89 03 A6 */	mtctr r12
/* 809F3BF4  4E 80 04 21 */	bctrl 
/* 809F3BF8  38 60 00 01 */	li r3, 1
/* 809F3BFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F3C00  7C 08 03 A6 */	mtlr r0
/* 809F3C04  38 21 00 10 */	addi r1, r1, 0x10
/* 809F3C08  4E 80 00 20 */	blr 
