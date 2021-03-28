lbl_80C67ECC:
/* 80C67ECC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C67ED0  7C 08 02 A6 */	mflr r0
/* 80C67ED4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C67ED8  4B 5F B1 B4 */	b ModuleEpilog
/* 80C67EDC  3C 60 80 C7 */	lis r3, data_80C684FC@ha
/* 80C67EE0  38 63 84 FC */	addi r3, r3, data_80C684FC@l
/* 80C67EE4  4B 5F B2 AC */	b ModuleDestructorsX
/* 80C67EE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C67EEC  7C 08 03 A6 */	mtlr r0
/* 80C67EF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C67EF4  4E 80 00 20 */	blr 
