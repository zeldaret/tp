lbl_806D7FCC:
/* 806D7FCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806D7FD0  7C 08 02 A6 */	mflr r0
/* 806D7FD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806D7FD8  4B B8 B0 B4 */	b ModuleEpilog
/* 806D7FDC  3C 60 80 6E */	lis r3, __destroy_global_chain_reference@ha
/* 806D7FE0  38 63 EE 2C */	addi r3, r3, __destroy_global_chain_reference@l
/* 806D7FE4  4B B8 B1 AC */	b ModuleDestructorsX
/* 806D7FE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806D7FEC  7C 08 03 A6 */	mtlr r0
/* 806D7FF0  38 21 00 10 */	addi r1, r1, 0x10
/* 806D7FF4  4E 80 00 20 */	blr 
