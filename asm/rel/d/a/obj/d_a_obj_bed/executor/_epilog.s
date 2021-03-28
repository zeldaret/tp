lbl_80BAD5AC:
/* 80BAD5AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BAD5B0  7C 08 02 A6 */	mflr r0
/* 80BAD5B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BAD5B8  4B 6B 5A D4 */	b ModuleEpilog
/* 80BAD5BC  3C 60 80 BB */	lis r3, __destroy_global_chain_reference@ha
/* 80BAD5C0  38 63 E1 5C */	addi r3, r3, __destroy_global_chain_reference@l
/* 80BAD5C4  4B 6B 5B CC */	b ModuleDestructorsX
/* 80BAD5C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BAD5CC  7C 08 03 A6 */	mtlr r0
/* 80BAD5D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BAD5D4  4E 80 00 20 */	blr 
