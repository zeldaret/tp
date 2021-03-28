lbl_8078A16C:
/* 8078A16C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8078A170  7C 08 02 A6 */	mflr r0
/* 8078A174  90 01 00 14 */	stw r0, 0x14(r1)
/* 8078A178  4B AD 8F 14 */	b ModuleEpilog
/* 8078A17C  3C 60 80 79 */	lis r3, __destroy_global_chain_reference@ha
/* 8078A180  38 63 DD 98 */	addi r3, r3, __destroy_global_chain_reference@l
/* 8078A184  4B AD 90 0C */	b ModuleDestructorsX
/* 8078A188  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8078A18C  7C 08 03 A6 */	mtlr r0
/* 8078A190  38 21 00 10 */	addi r1, r1, 0x10
/* 8078A194  4E 80 00 20 */	blr 
