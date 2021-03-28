lbl_80C6D70C:
/* 80C6D70C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6D710  7C 08 02 A6 */	mflr r0
/* 80C6D714  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6D718  4B 5F 59 74 */	b ModuleEpilog
/* 80C6D71C  3C 60 80 C7 */	lis r3, data_80C6E97C@ha
/* 80C6D720  38 63 E9 7C */	addi r3, r3, data_80C6E97C@l
/* 80C6D724  4B 5F 5A 6C */	b ModuleDestructorsX
/* 80C6D728  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6D72C  7C 08 03 A6 */	mtlr r0
/* 80C6D730  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6D734  4E 80 00 20 */	blr 
