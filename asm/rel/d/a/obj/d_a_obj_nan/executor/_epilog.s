lbl_80CA04EC:
/* 80CA04EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA04F0  7C 08 02 A6 */	mflr r0
/* 80CA04F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA04F8  4B 5C 2B 94 */	b ModuleEpilog
/* 80CA04FC  3C 60 80 CA */	lis r3, __destroy_global_chain_reference@ha
/* 80CA0500  38 63 31 B0 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80CA0504  4B 5C 2C 8C */	b ModuleDestructorsX
/* 80CA0508  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA050C  7C 08 03 A6 */	mtlr r0
/* 80CA0510  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA0514  4E 80 00 20 */	blr 
