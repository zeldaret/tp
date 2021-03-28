lbl_80C56BC0:
/* 80C56BC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C56BC4  7C 08 02 A6 */	mflr r0
/* 80C56BC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C56BCC  3C 60 80 C5 */	lis r3, data_80C57848@ha
/* 80C56BD0  38 63 78 48 */	addi r3, r3, data_80C57848@l
/* 80C56BD4  4B 60 C5 78 */	b ModuleConstructorsX
/* 80C56BD8  4B 60 C4 B0 */	b ModuleProlog
/* 80C56BDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C56BE0  7C 08 03 A6 */	mtlr r0
/* 80C56BE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C56BE8  4E 80 00 20 */	blr 
