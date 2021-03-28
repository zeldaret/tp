lbl_80CBD2FC:
/* 80CBD2FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBD300  7C 08 02 A6 */	mflr r0
/* 80CBD304  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBD308  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80CBD30C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80CBD310  7D 89 03 A6 */	mtctr r12
/* 80CBD314  4E 80 04 21 */	bctrl 
/* 80CBD318  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBD31C  7C 08 03 A6 */	mtlr r0
/* 80CBD320  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBD324  4E 80 00 20 */	blr 
