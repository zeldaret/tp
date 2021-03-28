lbl_806A762C:
/* 806A762C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A7630  7C 08 02 A6 */	mflr r0
/* 806A7634  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A7638  4B BB BA 54 */	b ModuleEpilog
/* 806A763C  3C 60 80 6B */	lis r3, __destroy_global_chain_reference@ha
/* 806A7640  38 63 9F 24 */	addi r3, r3, __destroy_global_chain_reference@l
/* 806A7644  4B BB BB 4C */	b ModuleDestructorsX
/* 806A7648  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A764C  7C 08 03 A6 */	mtlr r0
/* 806A7650  38 21 00 10 */	addi r1, r1, 0x10
/* 806A7654  4E 80 00 20 */	blr 
