lbl_80C6D6E0:
/* 80C6D6E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6D6E4  7C 08 02 A6 */	mflr r0
/* 80C6D6E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6D6EC  3C 60 80 C7 */	lis r3, data_80C6E978@ha
/* 80C6D6F0  38 63 E9 78 */	addi r3, r3, data_80C6E978@l
/* 80C6D6F4  4B 5F 5A 58 */	b ModuleConstructorsX
/* 80C6D6F8  4B 5F 59 90 */	b ModuleProlog
/* 80C6D6FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6D700  7C 08 03 A6 */	mtlr r0
/* 80C6D704  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6D708  4E 80 00 20 */	blr 
