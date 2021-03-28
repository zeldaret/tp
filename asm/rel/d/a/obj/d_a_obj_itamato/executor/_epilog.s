lbl_80C2942C:
/* 80C2942C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C29430  7C 08 02 A6 */	mflr r0
/* 80C29434  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C29438  4B 63 9C 54 */	b ModuleEpilog
/* 80C2943C  3C 60 80 C3 */	lis r3, __destroy_global_chain_reference@ha
/* 80C29440  38 63 AB 64 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80C29444  4B 63 9D 4C */	b ModuleDestructorsX
/* 80C29448  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2944C  7C 08 03 A6 */	mtlr r0
/* 80C29450  38 21 00 10 */	addi r1, r1, 0x10
/* 80C29454  4E 80 00 20 */	blr 
