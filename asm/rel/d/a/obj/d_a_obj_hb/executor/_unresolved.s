lbl_80C19598:
/* 80C19598  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1959C  7C 08 02 A6 */	mflr r0
/* 80C195A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C195A4  4B 64 9A EC */	b ModuleUnresolved
/* 80C195A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C195AC  7C 08 03 A6 */	mtlr r0
/* 80C195B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C195B4  4E 80 00 20 */	blr 
