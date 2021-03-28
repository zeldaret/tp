lbl_80D2414C:
/* 80D2414C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D24150  7C 08 02 A6 */	mflr r0
/* 80D24154  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D24158  4B 53 EF 34 */	b ModuleEpilog
/* 80D2415C  3C 60 80 D2 */	lis r3, data_80D26B58@ha
/* 80D24160  38 63 6B 58 */	addi r3, r3, data_80D26B58@l
/* 80D24164  4B 53 F0 2C */	b ModuleDestructorsX
/* 80D24168  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2416C  7C 08 03 A6 */	mtlr r0
/* 80D24170  38 21 00 10 */	addi r1, r1, 0x10
/* 80D24174  4E 80 00 20 */	blr 
