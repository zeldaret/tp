lbl_8057366C:
/* 8057366C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80573670  7C 08 02 A6 */	mflr r0
/* 80573674  90 01 00 14 */	stw r0, 0x14(r1)
/* 80573678  4B CE FA 14 */	b ModuleEpilog
/* 8057367C  3C 60 80 57 */	lis r3, __destroy_global_chain_reference@ha
/* 80573680  38 63 65 8C */	addi r3, r3, __destroy_global_chain_reference@l
/* 80573684  4B CE FB 0C */	b ModuleDestructorsX
/* 80573688  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057368C  7C 08 03 A6 */	mtlr r0
/* 80573690  38 21 00 10 */	addi r1, r1, 0x10
/* 80573694  4E 80 00 20 */	blr 
