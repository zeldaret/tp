lbl_804D6B8C:
/* 804D6B8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D6B90  7C 08 02 A6 */	mflr r0
/* 804D6B94  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D6B98  4B D8 C4 F4 */	b ModuleEpilog
/* 804D6B9C  3C 60 80 4E */	lis r3, __destroy_global_chain_reference@ha
/* 804D6BA0  38 63 9E 58 */	addi r3, r3, __destroy_global_chain_reference@l
/* 804D6BA4  4B D8 C5 EC */	b ModuleDestructorsX
/* 804D6BA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D6BAC  7C 08 03 A6 */	mtlr r0
/* 804D6BB0  38 21 00 10 */	addi r1, r1, 0x10
/* 804D6BB4  4E 80 00 20 */	blr 
