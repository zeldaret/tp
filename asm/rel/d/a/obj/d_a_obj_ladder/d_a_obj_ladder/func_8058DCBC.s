lbl_8058DCBC:
/* 8058DCBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058DCC0  7C 08 02 A6 */	mflr r0
/* 8058DCC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058DCC8  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 8058DCCC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8058DCD0  7D 89 03 A6 */	mtctr r12
/* 8058DCD4  4E 80 04 21 */	bctrl 
/* 8058DCD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058DCDC  7C 08 03 A6 */	mtlr r0
/* 8058DCE0  38 21 00 10 */	addi r1, r1, 0x10
/* 8058DCE4  4E 80 00 20 */	blr 
