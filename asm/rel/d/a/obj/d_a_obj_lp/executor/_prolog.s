lbl_80C54120:
/* 80C54120  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C54124  7C 08 02 A6 */	mflr r0
/* 80C54128  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5412C  3C 60 80 C5 */	lis r3, data_80C55A08@ha
/* 80C54130  38 63 5A 08 */	addi r3, r3, data_80C55A08@l
/* 80C54134  4B 60 F0 18 */	b ModuleConstructorsX
/* 80C54138  4B 60 EF 50 */	b ModuleProlog
/* 80C5413C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C54140  7C 08 03 A6 */	mtlr r0
/* 80C54144  38 21 00 10 */	addi r1, r1, 0x10
/* 80C54148  4E 80 00 20 */	blr 
