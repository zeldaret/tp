lbl_80C7CAA0:
/* 80C7CAA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7CAA4  7C 08 02 A6 */	mflr r0
/* 80C7CAA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7CAAC  3C 60 80 C8 */	lis r3, data_80C7DEC4@ha
/* 80C7CAB0  38 63 DE C4 */	addi r3, r3, data_80C7DEC4@l
/* 80C7CAB4  4B 5E 66 98 */	b ModuleConstructorsX
/* 80C7CAB8  4B 5E 65 D0 */	b ModuleProlog
/* 80C7CABC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7CAC0  7C 08 03 A6 */	mtlr r0
/* 80C7CAC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7CAC8  4E 80 00 20 */	blr 
