lbl_80AB9598:
/* 80AB9598  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB959C  7C 08 02 A6 */	mflr r0
/* 80AB95A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB95A4  4B 7A 9A EC */	b ModuleUnresolved
/* 80AB95A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB95AC  7C 08 03 A6 */	mtlr r0
/* 80AB95B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB95B4  4E 80 00 20 */	blr 
