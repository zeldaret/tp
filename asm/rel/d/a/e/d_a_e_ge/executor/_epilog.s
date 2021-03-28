lbl_806C798C:
/* 806C798C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806C7990  7C 08 02 A6 */	mflr r0
/* 806C7994  90 01 00 14 */	stw r0, 0x14(r1)
/* 806C7998  4B B9 B6 F4 */	b ModuleEpilog
/* 806C799C  3C 60 80 6D */	lis r3, __destroy_global_chain_reference@ha
/* 806C79A0  38 63 CF F4 */	addi r3, r3, __destroy_global_chain_reference@l
/* 806C79A4  4B B9 B7 EC */	b ModuleDestructorsX
/* 806C79A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806C79AC  7C 08 03 A6 */	mtlr r0
/* 806C79B0  38 21 00 10 */	addi r1, r1, 0x10
/* 806C79B4  4E 80 00 20 */	blr 
