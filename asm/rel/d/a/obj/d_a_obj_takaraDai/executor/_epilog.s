lbl_80D06CCC:
/* 80D06CCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D06CD0  7C 08 02 A6 */	mflr r0
/* 80D06CD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D06CD8  4B 55 C3 B4 */	b ModuleEpilog
/* 80D06CDC  3C 60 80 D0 */	lis r3, __destroy_global_chain_reference@ha
/* 80D06CE0  38 63 77 FC */	addi r3, r3, __destroy_global_chain_reference@l
/* 80D06CE4  4B 55 C4 AC */	b ModuleDestructorsX
/* 80D06CE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D06CEC  7C 08 03 A6 */	mtlr r0
/* 80D06CF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D06CF4  4E 80 00 20 */	blr 
