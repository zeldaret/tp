lbl_8055BDE8:
/* 8055BDE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055BDEC  7C 08 02 A6 */	mflr r0
/* 8055BDF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055BDF4  38 80 FF FF */	li r4, -1
/* 8055BDF8  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 8055BDFC  81 8C 00 08 */	lwz r12, 8(r12)
/* 8055BE00  7D 89 03 A6 */	mtctr r12
/* 8055BE04  4E 80 04 21 */	bctrl 
/* 8055BE08  38 60 00 01 */	li r3, 1
/* 8055BE0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055BE10  7C 08 03 A6 */	mtlr r0
/* 8055BE14  38 21 00 10 */	addi r1, r1, 0x10
/* 8055BE18  4E 80 00 20 */	blr 
