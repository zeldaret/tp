lbl_806BE88C:
/* 806BE88C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806BE890  7C 08 02 A6 */	mflr r0
/* 806BE894  90 01 00 14 */	stw r0, 0x14(r1)
/* 806BE898  4B BA 47 F4 */	b ModuleEpilog
/* 806BE89C  3C 60 80 6C */	lis r3, __destroy_global_chain_reference@ha
/* 806BE8A0  38 63 19 2C */	addi r3, r3, __destroy_global_chain_reference@l
/* 806BE8A4  4B BA 48 EC */	b ModuleDestructorsX
/* 806BE8A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806BE8AC  7C 08 03 A6 */	mtlr r0
/* 806BE8B0  38 21 00 10 */	addi r1, r1, 0x10
/* 806BE8B4  4E 80 00 20 */	blr 
