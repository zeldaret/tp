lbl_805EC95C:
/* 805EC95C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EC960  7C 08 02 A6 */	mflr r0
/* 805EC964  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EC968  4B FF F2 7D */	bl Create__8daB_GG_cFv
/* 805EC96C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EC970  7C 08 03 A6 */	mtlr r0
/* 805EC974  38 21 00 10 */	addi r1, r1, 0x10
/* 805EC978  4E 80 00 20 */	blr 
