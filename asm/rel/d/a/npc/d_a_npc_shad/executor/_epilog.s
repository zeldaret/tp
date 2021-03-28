lbl_80AD814C:
/* 80AD814C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD8150  7C 08 02 A6 */	mflr r0
/* 80AD8154  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD8158  4B 78 AF 34 */	b ModuleEpilog
/* 80AD815C  3C 60 80 AE */	lis r3, __destroy_global_chain_reference@ha
/* 80AD8160  38 63 1F D0 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80AD8164  4B 78 B0 2C */	b ModuleDestructorsX
/* 80AD8168  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD816C  7C 08 03 A6 */	mtlr r0
/* 80AD8170  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD8174  4E 80 00 20 */	blr 
