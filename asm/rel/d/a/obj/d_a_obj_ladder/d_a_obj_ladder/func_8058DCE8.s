lbl_8058DCE8:
/* 8058DCE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058DCEC  7C 08 02 A6 */	mflr r0
/* 8058DCF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058DCF4  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 8058DCF8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8058DCFC  7D 89 03 A6 */	mtctr r12
/* 8058DD00  4E 80 04 21 */	bctrl 
/* 8058DD04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058DD08  7C 08 03 A6 */	mtlr r0
/* 8058DD0C  38 21 00 10 */	addi r1, r1, 0x10
/* 8058DD10  4E 80 00 20 */	blr 
