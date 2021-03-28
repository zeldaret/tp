lbl_80500ECC:
/* 80500ECC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80500ED0  7C 08 02 A6 */	mflr r0
/* 80500ED4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80500ED8  4B D6 21 B4 */	b ModuleEpilog
/* 80500EDC  3C 60 80 50 */	lis r3, __destroy_global_chain_reference@ha
/* 80500EE0  38 63 46 D0 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80500EE4  4B D6 22 AC */	b ModuleDestructorsX
/* 80500EE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80500EEC  7C 08 03 A6 */	mtlr r0
/* 80500EF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80500EF4  4E 80 00 20 */	blr 
