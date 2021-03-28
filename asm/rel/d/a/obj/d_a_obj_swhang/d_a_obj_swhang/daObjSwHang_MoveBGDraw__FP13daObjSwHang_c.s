lbl_80CFCF60:
/* 80CFCF60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFCF64  7C 08 02 A6 */	mflr r0
/* 80CFCF68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFCF6C  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80CFCF70  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80CFCF74  7D 89 03 A6 */	mtctr r12
/* 80CFCF78  4E 80 04 21 */	bctrl 
/* 80CFCF7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFCF80  7C 08 03 A6 */	mtlr r0
/* 80CFCF84  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFCF88  4E 80 00 20 */	blr 
