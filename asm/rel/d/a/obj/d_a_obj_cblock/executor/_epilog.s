lbl_80BC594C:
/* 80BC594C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC5950  7C 08 02 A6 */	mflr r0
/* 80BC5954  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC5958  4B 69 D7 34 */	b ModuleEpilog
/* 80BC595C  3C 60 80 BC */	lis r3, __destroy_global_chain_reference@ha
/* 80BC5960  38 63 6A 2C */	addi r3, r3, __destroy_global_chain_reference@l
/* 80BC5964  4B 69 D8 2C */	b ModuleDestructorsX
/* 80BC5968  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC596C  7C 08 03 A6 */	mtlr r0
/* 80BC5970  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC5974  4E 80 00 20 */	blr 
