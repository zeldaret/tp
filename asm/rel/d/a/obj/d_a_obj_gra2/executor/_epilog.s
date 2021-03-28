lbl_80BFFE4C:
/* 80BFFE4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFFE50  7C 08 02 A6 */	mflr r0
/* 80BFFE54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFFE58  4B 66 32 34 */	b ModuleEpilog
/* 80BFFE5C  3C 60 80 C1 */	lis r3, __destroy_global_chain_reference@ha
/* 80BFFE60  38 63 FA 70 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80BFFE64  4B 66 33 2C */	b ModuleDestructorsX
/* 80BFFE68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFFE6C  7C 08 03 A6 */	mtlr r0
/* 80BFFE70  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFFE74  4E 80 00 20 */	blr 
