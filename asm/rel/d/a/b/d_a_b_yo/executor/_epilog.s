lbl_8062F3AC:
/* 8062F3AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062F3B0  7C 08 02 A6 */	mflr r0
/* 8062F3B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062F3B8  4B C3 3C D4 */	b ModuleEpilog
/* 8062F3BC  3C 60 80 64 */	lis r3, __destroy_global_chain_reference@ha
/* 8062F3C0  38 63 97 E8 */	addi r3, r3, __destroy_global_chain_reference@l
/* 8062F3C4  4B C3 3D CC */	b ModuleDestructorsX
/* 8062F3C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062F3CC  7C 08 03 A6 */	mtlr r0
/* 8062F3D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8062F3D4  4E 80 00 20 */	blr 
