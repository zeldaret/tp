lbl_807584AC:
/* 807584AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807584B0  7C 08 02 A6 */	mflr r0
/* 807584B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 807584B8  4B B0 AB D4 */	b ModuleEpilog
/* 807584BC  3C 60 80 76 */	lis r3, __destroy_global_chain_reference@ha
/* 807584C0  38 63 14 F0 */	addi r3, r3, __destroy_global_chain_reference@l
/* 807584C4  4B B0 AC CC */	b ModuleDestructorsX
/* 807584C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807584CC  7C 08 03 A6 */	mtlr r0
/* 807584D0  38 21 00 10 */	addi r1, r1, 0x10
/* 807584D4  4E 80 00 20 */	blr 
