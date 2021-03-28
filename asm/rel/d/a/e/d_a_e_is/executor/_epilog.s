lbl_806F598C:
/* 806F598C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F5990  7C 08 02 A6 */	mflr r0
/* 806F5994  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F5998  4B B6 D6 F4 */	b ModuleEpilog
/* 806F599C  3C 60 80 6F */	lis r3, __destroy_global_chain_reference@ha
/* 806F59A0  38 63 7B 60 */	addi r3, r3, __destroy_global_chain_reference@l
/* 806F59A4  4B B6 D7 EC */	b ModuleDestructorsX
/* 806F59A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F59AC  7C 08 03 A6 */	mtlr r0
/* 806F59B0  38 21 00 10 */	addi r1, r1, 0x10
/* 806F59B4  4E 80 00 20 */	blr 
