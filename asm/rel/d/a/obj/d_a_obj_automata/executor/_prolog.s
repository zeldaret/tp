lbl_80BA5600:
/* 80BA5600  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA5604  7C 08 02 A6 */	mflr r0
/* 80BA5608  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA560C  3C 60 80 BA */	lis r3, data_80BA6BFC@ha
/* 80BA5610  38 63 6B FC */	addi r3, r3, data_80BA6BFC@l
/* 80BA5614  4B 6B DB 38 */	b ModuleConstructorsX
/* 80BA5618  4B 6B DA 70 */	b ModuleProlog
/* 80BA561C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA5620  7C 08 03 A6 */	mtlr r0
/* 80BA5624  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA5628  4E 80 00 20 */	blr 
