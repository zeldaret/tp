lbl_8045E80C:
/* 8045E80C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045E810  7C 08 02 A6 */	mflr r0
/* 8045E814  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045E818  4B E0 48 74 */	b ModuleEpilog
/* 8045E81C  3C 60 80 46 */	lis r3, data_80460664@ha
/* 8045E820  38 63 06 64 */	addi r3, r3, data_80460664@l
/* 8045E824  4B E0 49 6C */	b ModuleDestructorsX
/* 8045E828  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045E82C  7C 08 03 A6 */	mtlr r0
/* 8045E830  38 21 00 10 */	addi r1, r1, 0x10
/* 8045E834  4E 80 00 20 */	blr 
