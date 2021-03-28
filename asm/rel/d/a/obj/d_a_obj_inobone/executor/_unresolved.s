lbl_80C27698:
/* 80C27698  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C2769C  7C 08 02 A6 */	mflr r0
/* 80C276A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C276A4  4B 63 B9 EC */	b ModuleUnresolved
/* 80C276A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C276AC  7C 08 03 A6 */	mtlr r0
/* 80C276B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C276B4  4E 80 00 20 */	blr 
