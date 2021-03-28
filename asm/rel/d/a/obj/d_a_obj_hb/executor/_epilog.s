lbl_80C1956C:
/* 80C1956C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C19570  7C 08 02 A6 */	mflr r0
/* 80C19574  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C19578  4B 64 9B 14 */	b ModuleEpilog
/* 80C1957C  3C 60 80 C2 */	lis r3, data_80C1B5FC@ha
/* 80C19580  38 63 B5 FC */	addi r3, r3, data_80C1B5FC@l
/* 80C19584  4B 64 9C 0C */	b ModuleDestructorsX
/* 80C19588  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1958C  7C 08 03 A6 */	mtlr r0
/* 80C19590  38 21 00 10 */	addi r1, r1, 0x10
/* 80C19594  4E 80 00 20 */	blr 
