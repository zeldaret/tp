lbl_806EA54C:
/* 806EA54C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806EA550  7C 08 02 A6 */	mflr r0
/* 806EA554  90 01 00 14 */	stw r0, 0x14(r1)
/* 806EA558  4B B7 8B 34 */	b ModuleEpilog
/* 806EA55C  3C 60 80 6F */	lis r3, __destroy_global_chain_reference@ha
/* 806EA560  38 63 08 54 */	addi r3, r3, __destroy_global_chain_reference@l
/* 806EA564  4B B7 8C 2C */	b ModuleDestructorsX
/* 806EA568  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806EA56C  7C 08 03 A6 */	mtlr r0
/* 806EA570  38 21 00 10 */	addi r1, r1, 0x10
/* 806EA574  4E 80 00 20 */	blr 
