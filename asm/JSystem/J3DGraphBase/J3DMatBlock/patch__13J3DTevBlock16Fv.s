lbl_8031CCF8:
/* 8031CCF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8031CCFC  7C 08 02 A6 */	mflr r0
/* 8031CD00  90 01 00 14 */	stw r0, 0x14(r1)
/* 8031CD04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8031CD08  7C 7F 1B 78 */	mr r31, r3
/* 8031CD0C  81 83 00 00 */	lwz r12, 0(r3)
/* 8031CD10  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8031CD14  7D 89 03 A6 */	mtctr r12
/* 8031CD18  4E 80 04 21 */	bctrl 
/* 8031CD1C  7F E3 FB 78 */	mr r3, r31
/* 8031CD20  81 9F 00 00 */	lwz r12, 0(r31)
/* 8031CD24  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8031CD28  7D 89 03 A6 */	mtctr r12
/* 8031CD2C  4E 80 04 21 */	bctrl 
/* 8031CD30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8031CD34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8031CD38  7C 08 03 A6 */	mtlr r0
/* 8031CD3C  38 21 00 10 */	addi r1, r1, 0x10
/* 8031CD40  4E 80 00 20 */	blr 
