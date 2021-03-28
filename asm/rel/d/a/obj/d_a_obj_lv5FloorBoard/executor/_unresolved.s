lbl_80C6A578:
/* 80C6A578  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6A57C  7C 08 02 A6 */	mflr r0
/* 80C6A580  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6A584  4B 5F 8B 0C */	b ModuleUnresolved
/* 80C6A588  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6A58C  7C 08 03 A6 */	mtlr r0
/* 80C6A590  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6A594  4E 80 00 20 */	blr 
