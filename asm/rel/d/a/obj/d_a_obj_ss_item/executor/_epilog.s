lbl_80CE6BCC:
/* 80CE6BCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE6BD0  7C 08 02 A6 */	mflr r0
/* 80CE6BD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE6BD8  4B 57 C4 B4 */	b ModuleEpilog
/* 80CE6BDC  3C 60 80 CE */	lis r3, data_80CE7EAC@ha
/* 80CE6BE0  38 63 7E AC */	addi r3, r3, data_80CE7EAC@l
/* 80CE6BE4  4B 57 C5 AC */	b ModuleDestructorsX
/* 80CE6BE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE6BEC  7C 08 03 A6 */	mtlr r0
/* 80CE6BF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE6BF4  4E 80 00 20 */	blr 
