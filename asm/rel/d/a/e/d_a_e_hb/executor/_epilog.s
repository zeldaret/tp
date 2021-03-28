lbl_804FBCAC:
/* 804FBCAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FBCB0  7C 08 02 A6 */	mflr r0
/* 804FBCB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FBCB8  4B D6 73 D4 */	b ModuleEpilog
/* 804FBCBC  3C 60 80 50 */	lis r3, __destroy_global_chain_reference@ha
/* 804FBCC0  38 63 0A F8 */	addi r3, r3, __destroy_global_chain_reference@l
/* 804FBCC4  4B D6 74 CC */	b ModuleDestructorsX
/* 804FBCC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FBCCC  7C 08 03 A6 */	mtlr r0
/* 804FBCD0  38 21 00 10 */	addi r1, r1, 0x10
/* 804FBCD4  4E 80 00 20 */	blr 
