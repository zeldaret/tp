lbl_809ADDAC:
/* 809ADDAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809ADDB0  7C 08 02 A6 */	mflr r0
/* 809ADDB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809ADDB8  4B 8B 52 D4 */	b ModuleEpilog
/* 809ADDBC  3C 60 80 9B */	lis r3, __destroy_global_chain_reference@ha
/* 809ADDC0  38 63 F9 98 */	addi r3, r3, __destroy_global_chain_reference@l
/* 809ADDC4  4B 8B 53 CC */	b ModuleDestructorsX
/* 809ADDC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809ADDCC  7C 08 03 A6 */	mtlr r0
/* 809ADDD0  38 21 00 10 */	addi r1, r1, 0x10
/* 809ADDD4  4E 80 00 20 */	blr 
