lbl_806F7E2C:
/* 806F7E2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F7E30  7C 08 02 A6 */	mflr r0
/* 806F7E34  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F7E38  4B B6 B2 54 */	b ModuleEpilog
/* 806F7E3C  3C 60 80 70 */	lis r3, __destroy_global_chain_reference@ha
/* 806F7E40  38 63 A3 98 */	addi r3, r3, __destroy_global_chain_reference@l
/* 806F7E44  4B B6 B3 4C */	b ModuleDestructorsX
/* 806F7E48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F7E4C  7C 08 03 A6 */	mtlr r0
/* 806F7E50  38 21 00 10 */	addi r1, r1, 0x10
/* 806F7E54  4E 80 00 20 */	blr 
