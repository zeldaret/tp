lbl_80CEEDF0:
/* 80CEEDF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CEEDF4  7C 08 02 A6 */	mflr r0
/* 80CEEDF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CEEDFC  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80CEEE00  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80CEEE04  7D 89 03 A6 */	mtctr r12
/* 80CEEE08  4E 80 04 21 */	bctrl 
/* 80CEEE0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CEEE10  7C 08 03 A6 */	mtlr r0
/* 80CEEE14  38 21 00 10 */	addi r1, r1, 0x10
/* 80CEEE18  4E 80 00 20 */	blr 
