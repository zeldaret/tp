lbl_806910EC:
/* 806910EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806910F0  7C 08 02 A6 */	mflr r0
/* 806910F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806910F8  4B BD 1F 94 */	b ModuleEpilog
/* 806910FC  3C 60 80 69 */	lis r3, __destroy_global_chain_reference@ha
/* 80691100  38 63 46 84 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80691104  4B BD 20 8C */	b ModuleDestructorsX
/* 80691108  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8069110C  7C 08 03 A6 */	mtlr r0
/* 80691110  38 21 00 10 */	addi r1, r1, 0x10
/* 80691114  4E 80 00 20 */	blr 
