lbl_809AFC8C:
/* 809AFC8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AFC90  7C 08 02 A6 */	mflr r0
/* 809AFC94  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AFC98  4B 8B 33 F4 */	b ModuleEpilog
/* 809AFC9C  3C 60 80 9B */	lis r3, __destroy_global_chain_reference@ha
/* 809AFCA0  38 63 18 3C */	addi r3, r3, __destroy_global_chain_reference@l
/* 809AFCA4  4B 8B 34 EC */	b ModuleDestructorsX
/* 809AFCA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AFCAC  7C 08 03 A6 */	mtlr r0
/* 809AFCB0  38 21 00 10 */	addi r1, r1, 0x10
/* 809AFCB4  4E 80 00 20 */	blr 
