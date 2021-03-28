lbl_805F498C:
/* 805F498C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F4990  7C 08 02 A6 */	mflr r0
/* 805F4994  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F4998  4B C6 E6 F4 */	b ModuleEpilog
/* 805F499C  3C 60 80 60 */	lis r3, __destroy_global_chain_reference@ha
/* 805F49A0  38 63 26 58 */	addi r3, r3, __destroy_global_chain_reference@l
/* 805F49A4  4B C6 E7 EC */	b ModuleDestructorsX
/* 805F49A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F49AC  7C 08 03 A6 */	mtlr r0
/* 805F49B0  38 21 00 10 */	addi r1, r1, 0x10
/* 805F49B4  4E 80 00 20 */	blr 
