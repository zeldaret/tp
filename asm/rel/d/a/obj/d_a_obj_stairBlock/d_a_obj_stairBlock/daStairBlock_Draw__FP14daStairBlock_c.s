lbl_80CE8C38:
/* 80CE8C38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE8C3C  7C 08 02 A6 */	mflr r0
/* 80CE8C40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE8C44  81 83 05 68 */	lwz r12, 0x568(r3)
/* 80CE8C48  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80CE8C4C  7D 89 03 A6 */	mtctr r12
/* 80CE8C50  4E 80 04 21 */	bctrl 
/* 80CE8C54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE8C58  7C 08 03 A6 */	mtlr r0
/* 80CE8C5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE8C60  4E 80 00 20 */	blr 
