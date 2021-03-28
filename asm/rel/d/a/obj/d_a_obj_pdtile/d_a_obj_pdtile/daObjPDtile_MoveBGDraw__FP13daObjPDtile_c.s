lbl_80CAC300:
/* 80CAC300  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAC304  7C 08 02 A6 */	mflr r0
/* 80CAC308  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAC30C  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80CAC310  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80CAC314  7D 89 03 A6 */	mtctr r12
/* 80CAC318  4E 80 04 21 */	bctrl 
/* 80CAC31C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAC320  7C 08 03 A6 */	mtlr r0
/* 80CAC324  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAC328  4E 80 00 20 */	blr 
