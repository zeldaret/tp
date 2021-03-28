lbl_806A21AC:
/* 806A21AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A21B0  7C 08 02 A6 */	mflr r0
/* 806A21B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A21B8  4B BC 0E D4 */	b ModuleEpilog
/* 806A21BC  3C 60 80 6A */	lis r3, __destroy_global_chain_reference@ha
/* 806A21C0  38 63 71 B8 */	addi r3, r3, __destroy_global_chain_reference@l
/* 806A21C4  4B BC 0F CC */	b ModuleDestructorsX
/* 806A21C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A21CC  7C 08 03 A6 */	mtlr r0
/* 806A21D0  38 21 00 10 */	addi r1, r1, 0x10
/* 806A21D4  4E 80 00 20 */	blr 
