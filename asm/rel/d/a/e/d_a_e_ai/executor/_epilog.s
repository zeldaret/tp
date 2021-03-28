lbl_806790AC:
/* 806790AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806790B0  7C 08 02 A6 */	mflr r0
/* 806790B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806790B8  4B BE 9F D4 */	b ModuleEpilog
/* 806790BC  3C 60 80 68 */	lis r3, __destroy_global_chain_reference@ha
/* 806790C0  38 63 C3 F0 */	addi r3, r3, __destroy_global_chain_reference@l
/* 806790C4  4B BE A0 CC */	b ModuleDestructorsX
/* 806790C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806790CC  7C 08 03 A6 */	mtlr r0
/* 806790D0  38 21 00 10 */	addi r1, r1, 0x10
/* 806790D4  4E 80 00 20 */	blr 
