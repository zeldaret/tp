lbl_80D0E82C:
/* 80D0E82C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0E830  7C 08 02 A6 */	mflr r0
/* 80D0E834  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0E838  4B 55 48 54 */	b ModuleEpilog
/* 80D0E83C  3C 60 80 D1 */	lis r3, __destroy_global_chain_reference@ha
/* 80D0E840  38 63 F0 D8 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80D0E844  4B 55 49 4C */	b ModuleDestructorsX
/* 80D0E848  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0E84C  7C 08 03 A6 */	mtlr r0
/* 80D0E850  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0E854  4E 80 00 20 */	blr 
