lbl_805BADAC:
/* 805BADAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BADB0  7C 08 02 A6 */	mflr r0
/* 805BADB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BADB8  4B CA 82 D4 */	b ModuleEpilog
/* 805BADBC  3C 60 80 5C */	lis r3, __destroy_global_chain_reference@ha
/* 805BADC0  38 63 6C 68 */	addi r3, r3, __destroy_global_chain_reference@l
/* 805BADC4  4B CA 83 CC */	b ModuleDestructorsX
/* 805BADC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BADCC  7C 08 03 A6 */	mtlr r0
/* 805BADD0  38 21 00 10 */	addi r1, r1, 0x10
/* 805BADD4  4E 80 00 20 */	blr 
