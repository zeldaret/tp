lbl_809DA4AC:
/* 809DA4AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809DA4B0  7C 08 02 A6 */	mflr r0
/* 809DA4B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809DA4B8  4B 88 8B D4 */	b ModuleEpilog
/* 809DA4BC  3C 60 80 9E */	lis r3, __destroy_global_chain_reference@ha
/* 809DA4C0  38 63 EF 70 */	addi r3, r3, __destroy_global_chain_reference@l
/* 809DA4C4  4B 88 8C CC */	b ModuleDestructorsX
/* 809DA4C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809DA4CC  7C 08 03 A6 */	mtlr r0
/* 809DA4D0  38 21 00 10 */	addi r1, r1, 0x10
/* 809DA4D4  4E 80 00 20 */	blr 
