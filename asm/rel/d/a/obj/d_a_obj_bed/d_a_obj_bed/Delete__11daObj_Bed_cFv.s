lbl_80BADC80:
/* 80BADC80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BADC84  7C 08 02 A6 */	mflr r0
/* 80BADC88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BADC8C  38 80 FF FF */	li r4, -1
/* 80BADC90  81 83 08 40 */	lwz r12, 0x840(r3)
/* 80BADC94  81 8C 00 08 */	lwz r12, 8(r12)
/* 80BADC98  7D 89 03 A6 */	mtctr r12
/* 80BADC9C  4E 80 04 21 */	bctrl 
/* 80BADCA0  38 60 00 01 */	li r3, 1
/* 80BADCA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BADCA8  7C 08 03 A6 */	mtlr r0
/* 80BADCAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BADCB0  4E 80 00 20 */	blr 
