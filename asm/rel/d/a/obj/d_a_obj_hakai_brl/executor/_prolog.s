lbl_80C166C0:
/* 80C166C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C166C4  7C 08 02 A6 */	mflr r0
/* 80C166C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C166CC  3C 60 80 C1 */	lis r3, data_80C172F4@ha
/* 80C166D0  38 63 72 F4 */	addi r3, r3, data_80C172F4@l
/* 80C166D4  4B 64 CA 78 */	b ModuleConstructorsX
/* 80C166D8  4B 64 C9 B0 */	b ModuleProlog
/* 80C166DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C166E0  7C 08 03 A6 */	mtlr r0
/* 80C166E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C166E8  4E 80 00 20 */	blr 
