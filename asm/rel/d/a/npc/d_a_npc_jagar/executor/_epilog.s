lbl_80A1464C:
/* 80A1464C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A14650  7C 08 02 A6 */	mflr r0
/* 80A14654  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A14658  4B 84 EA 34 */	b ModuleEpilog
/* 80A1465C  3C 60 80 A2 */	lis r3, __destroy_global_chain_reference@ha
/* 80A14660  38 63 A3 24 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80A14664  4B 84 EB 2C */	b ModuleDestructorsX
/* 80A14668  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A1466C  7C 08 03 A6 */	mtlr r0
/* 80A14670  38 21 00 10 */	addi r1, r1, 0x10
/* 80A14674  4E 80 00 20 */	blr 
