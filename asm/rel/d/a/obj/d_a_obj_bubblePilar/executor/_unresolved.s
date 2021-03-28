lbl_80BC3358:
/* 80BC3358  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC335C  7C 08 02 A6 */	mflr r0
/* 80BC3360  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC3364  4B 69 FD 2C */	b ModuleUnresolved
/* 80BC3368  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC336C  7C 08 03 A6 */	mtlr r0
/* 80BC3370  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC3374  4E 80 00 20 */	blr 
