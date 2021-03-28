lbl_80CDF80C:
/* 80CDF80C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDF810  7C 08 02 A6 */	mflr r0
/* 80CDF814  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDF818  4B 58 38 74 */	b ModuleEpilog
/* 80CDF81C  3C 60 80 CE */	lis r3, data_80CE0238@ha
/* 80CDF820  38 63 02 38 */	addi r3, r3, data_80CE0238@l
/* 80CDF824  4B 58 39 6C */	b ModuleDestructorsX
/* 80CDF828  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDF82C  7C 08 03 A6 */	mtlr r0
/* 80CDF830  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDF834  4E 80 00 20 */	blr 
