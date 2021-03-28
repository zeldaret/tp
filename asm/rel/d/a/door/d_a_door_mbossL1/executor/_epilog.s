lbl_806727EC:
/* 806727EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806727F0  7C 08 02 A6 */	mflr r0
/* 806727F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806727F8  4B BF 08 94 */	b ModuleEpilog
/* 806727FC  3C 60 80 67 */	lis r3, data_80677554@ha
/* 80672800  38 63 75 54 */	addi r3, r3, data_80677554@l
/* 80672804  4B BF 09 8C */	b ModuleDestructorsX
/* 80672808  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8067280C  7C 08 03 A6 */	mtlr r0
/* 80672810  38 21 00 10 */	addi r1, r1, 0x10
/* 80672814  4E 80 00 20 */	blr 
