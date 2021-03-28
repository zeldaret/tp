lbl_80C88640:
/* 80C88640  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C88644  7C 08 02 A6 */	mflr r0
/* 80C88648  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8864C  3C 60 80 C9 */	lis r3, data_80C89F4C@ha
/* 80C88650  38 63 9F 4C */	addi r3, r3, data_80C89F4C@l
/* 80C88654  4B 5D AA F8 */	b ModuleConstructorsX
/* 80C88658  4B 5D AA 30 */	b ModuleProlog
/* 80C8865C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C88660  7C 08 03 A6 */	mtlr r0
/* 80C88664  38 21 00 10 */	addi r1, r1, 0x10
/* 80C88668  4E 80 00 20 */	blr 
