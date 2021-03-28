lbl_80BC426C:
/* 80BC426C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC4270  7C 08 02 A6 */	mflr r0
/* 80BC4274  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC4278  4B 69 EE 14 */	b ModuleEpilog
/* 80BC427C  3C 60 80 BC */	lis r3, data_80BC49B0@ha
/* 80BC4280  38 63 49 B0 */	addi r3, r3, data_80BC49B0@l
/* 80BC4284  4B 69 EF 0C */	b ModuleDestructorsX
/* 80BC4288  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC428C  7C 08 03 A6 */	mtlr r0
/* 80BC4290  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC4294  4E 80 00 20 */	blr 
