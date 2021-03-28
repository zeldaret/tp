lbl_80C3D520:
/* 80C3D520  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3D524  7C 08 02 A6 */	mflr r0
/* 80C3D528  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3D52C  3C 60 80 C4 */	lis r3, data_80C3F044@ha
/* 80C3D530  38 63 F0 44 */	addi r3, r3, data_80C3F044@l
/* 80C3D534  4B 62 5C 18 */	b ModuleConstructorsX
/* 80C3D538  4B 62 5B 50 */	b ModuleProlog
/* 80C3D53C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3D540  7C 08 03 A6 */	mtlr r0
/* 80C3D544  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3D548  4E 80 00 20 */	blr 
