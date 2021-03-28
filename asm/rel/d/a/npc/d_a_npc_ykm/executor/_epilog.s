lbl_80B5342C:
/* 80B5342C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B53430  7C 08 02 A6 */	mflr r0
/* 80B53434  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B53438  4B 70 FC 54 */	b ModuleEpilog
/* 80B5343C  3C 60 80 B6 */	lis r3, __destroy_global_chain_reference@ha
/* 80B53440  38 63 D7 88 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80B53444  4B 70 FD 4C */	b ModuleDestructorsX
/* 80B53448  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B5344C  7C 08 03 A6 */	mtlr r0
/* 80B53450  38 21 00 10 */	addi r1, r1, 0x10
/* 80B53454  4E 80 00 20 */	blr 
