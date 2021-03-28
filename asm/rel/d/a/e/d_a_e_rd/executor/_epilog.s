lbl_805049AC:
/* 805049AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805049B0  7C 08 02 A6 */	mflr r0
/* 805049B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805049B8  4B D5 E6 D4 */	b ModuleEpilog
/* 805049BC  3C 60 80 52 */	lis r3, __destroy_global_chain_reference@ha
/* 805049C0  38 63 85 78 */	addi r3, r3, __destroy_global_chain_reference@l
/* 805049C4  4B D5 E7 CC */	b ModuleDestructorsX
/* 805049C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805049CC  7C 08 03 A6 */	mtlr r0
/* 805049D0  38 21 00 10 */	addi r1, r1, 0x10
/* 805049D4  4E 80 00 20 */	blr 
