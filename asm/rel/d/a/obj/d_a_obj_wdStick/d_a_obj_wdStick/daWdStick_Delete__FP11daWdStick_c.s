lbl_80D33F9C:
/* 80D33F9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D33FA0  7C 08 02 A6 */	mflr r0
/* 80D33FA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D33FA8  81 83 05 68 */	lwz r12, 0x568(r3)
/* 80D33FAC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80D33FB0  7D 89 03 A6 */	mtctr r12
/* 80D33FB4  4E 80 04 21 */	bctrl 
/* 80D33FB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D33FBC  7C 08 03 A6 */	mtlr r0
/* 80D33FC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D33FC4  4E 80 00 20 */	blr 
