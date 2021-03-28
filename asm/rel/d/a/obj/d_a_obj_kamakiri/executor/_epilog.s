lbl_80C350CC:
/* 80C350CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C350D0  7C 08 02 A6 */	mflr r0
/* 80C350D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C350D8  4B 62 DF B4 */	b ModuleEpilog
/* 80C350DC  3C 60 80 C4 */	lis r3, __destroy_global_chain_reference@ha
/* 80C350E0  38 63 83 FC */	addi r3, r3, __destroy_global_chain_reference@l
/* 80C350E4  4B 62 E0 AC */	b ModuleDestructorsX
/* 80C350E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C350EC  7C 08 03 A6 */	mtlr r0
/* 80C350F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C350F4  4E 80 00 20 */	blr 
