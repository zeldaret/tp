lbl_807E762C:
/* 807E762C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E7630  7C 08 02 A6 */	mflr r0
/* 807E7634  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E7638  4B A7 BA 54 */	b ModuleEpilog
/* 807E763C  3C 60 80 7F */	lis r3, __destroy_global_chain_reference@ha
/* 807E7640  38 63 F7 64 */	addi r3, r3, __destroy_global_chain_reference@l
/* 807E7644  4B A7 BB 4C */	b ModuleDestructorsX
/* 807E7648  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E764C  7C 08 03 A6 */	mtlr r0
/* 807E7650  38 21 00 10 */	addi r1, r1, 0x10
/* 807E7654  4E 80 00 20 */	blr 
