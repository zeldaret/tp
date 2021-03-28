lbl_80D4CCF0:
/* 80D4CCF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4CCF4  7C 08 02 A6 */	mflr r0
/* 80D4CCF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4CCFC  38 80 FF FF */	li r4, -1
/* 80D4CD00  81 83 05 70 */	lwz r12, 0x570(r3)
/* 80D4CD04  81 8C 00 08 */	lwz r12, 8(r12)
/* 80D4CD08  7D 89 03 A6 */	mtctr r12
/* 80D4CD0C  4E 80 04 21 */	bctrl 
/* 80D4CD10  38 60 00 01 */	li r3, 1
/* 80D4CD14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4CD18  7C 08 03 A6 */	mtlr r0
/* 80D4CD1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4CD20  4E 80 00 20 */	blr 
