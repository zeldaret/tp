lbl_80C8CDEC:
/* 80C8CDEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8CDF0  7C 08 02 A6 */	mflr r0
/* 80C8CDF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8CDF8  4B 5D 62 94 */	b ModuleEpilog
/* 80C8CDFC  3C 60 80 C9 */	lis r3, __destroy_global_chain_reference@ha
/* 80C8CE00  38 63 D7 D0 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80C8CE04  4B 5D 63 8C */	b ModuleDestructorsX
/* 80C8CE08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8CE0C  7C 08 03 A6 */	mtlr r0
/* 80C8CE10  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8CE14  4E 80 00 20 */	blr 
