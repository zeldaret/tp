lbl_805CB16C:
/* 805CB16C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805CB170  7C 08 02 A6 */	mflr r0
/* 805CB174  90 01 00 14 */	stw r0, 0x14(r1)
/* 805CB178  4B C9 7F 14 */	b ModuleEpilog
/* 805CB17C  3C 60 80 5E */	lis r3, __destroy_global_chain_reference@ha
/* 805CB180  38 63 CA 48 */	addi r3, r3, __destroy_global_chain_reference@l
/* 805CB184  4B C9 80 0C */	b ModuleDestructorsX
/* 805CB188  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805CB18C  7C 08 03 A6 */	mtlr r0
/* 805CB190  38 21 00 10 */	addi r1, r1, 0x10
/* 805CB194  4E 80 00 20 */	blr 
