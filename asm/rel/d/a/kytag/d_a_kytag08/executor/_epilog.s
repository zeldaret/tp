lbl_8085A52C:
/* 8085A52C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8085A530  7C 08 02 A6 */	mflr r0
/* 8085A534  90 01 00 14 */	stw r0, 0x14(r1)
/* 8085A538  4B A0 8B 54 */	b ModuleEpilog
/* 8085A53C  3C 60 80 86 */	lis r3, data_8085B288@ha
/* 8085A540  38 63 B2 88 */	addi r3, r3, data_8085B288@l
/* 8085A544  4B A0 8C 4C */	b ModuleDestructorsX
/* 8085A548  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8085A54C  7C 08 03 A6 */	mtlr r0
/* 8085A550  38 21 00 10 */	addi r1, r1, 0x10
/* 8085A554  4E 80 00 20 */	blr 
