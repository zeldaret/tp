lbl_80C1F768:
/* 80C1F768  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1F76C  7C 08 02 A6 */	mflr r0
/* 80C1F770  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1F774  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80C1F778  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80C1F77C  7D 89 03 A6 */	mtctr r12
/* 80C1F780  4E 80 04 21 */	bctrl 
/* 80C1F784  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1F788  7C 08 03 A6 */	mtlr r0
/* 80C1F78C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1F790  4E 80 00 20 */	blr 
