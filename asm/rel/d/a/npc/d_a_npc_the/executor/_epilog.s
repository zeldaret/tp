lbl_80AF760C:
/* 80AF760C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF7610  7C 08 02 A6 */	mflr r0
/* 80AF7614  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF7618  4B 76 BA 74 */	b ModuleEpilog
/* 80AF761C  3C 60 80 B0 */	lis r3, __destroy_global_chain_reference@ha
/* 80AF7620  38 63 BE 00 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80AF7624  4B 76 BB 6C */	b ModuleDestructorsX
/* 80AF7628  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF762C  7C 08 03 A6 */	mtlr r0
/* 80AF7630  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF7634  4E 80 00 20 */	blr 
