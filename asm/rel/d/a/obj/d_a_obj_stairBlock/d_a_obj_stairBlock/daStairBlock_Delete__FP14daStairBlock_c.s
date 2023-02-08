lbl_80CE8C90:
/* 80CE8C90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE8C94  7C 08 02 A6 */	mflr r0
/* 80CE8C98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE8C9C  81 83 05 68 */	lwz r12, 0x568(r3)
/* 80CE8CA0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80CE8CA4  7D 89 03 A6 */	mtctr r12
/* 80CE8CA8  4E 80 04 21 */	bctrl 
/* 80CE8CAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE8CB0  7C 08 03 A6 */	mtlr r0
/* 80CE8CB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE8CB8  4E 80 00 20 */	blr 
