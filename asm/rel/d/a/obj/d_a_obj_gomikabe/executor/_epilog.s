lbl_80BFE16C:
/* 80BFE16C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFE170  7C 08 02 A6 */	mflr r0
/* 80BFE174  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFE178  4B 66 4F 14 */	b ModuleEpilog
/* 80BFE17C  3C 60 80 C0 */	lis r3, __destroy_global_chain_reference@ha
/* 80BFE180  38 63 FC 10 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80BFE184  4B 66 50 0C */	b ModuleDestructorsX
/* 80BFE188  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFE18C  7C 08 03 A6 */	mtlr r0
/* 80BFE190  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFE194  4E 80 00 20 */	blr 
