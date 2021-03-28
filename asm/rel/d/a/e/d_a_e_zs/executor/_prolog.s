lbl_80832FC0:
/* 80832FC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80832FC4  7C 08 02 A6 */	mflr r0
/* 80832FC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80832FCC  3C 60 80 83 */	lis r3, data_808352BC@ha
/* 80832FD0  38 63 52 BC */	addi r3, r3, data_808352BC@l
/* 80832FD4  4B A3 01 78 */	b ModuleConstructorsX
/* 80832FD8  4B A3 00 B0 */	b ModuleProlog
/* 80832FDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80832FE0  7C 08 03 A6 */	mtlr r0
/* 80832FE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80832FE8  4E 80 00 20 */	blr 
