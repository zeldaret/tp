lbl_80C586E0:
/* 80C586E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C586E4  7C 08 02 A6 */	mflr r0
/* 80C586E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C586EC  3C 60 80 C6 */	lis r3, data_80C59E5C@ha
/* 80C586F0  38 63 9E 5C */	addi r3, r3, data_80C59E5C@l
/* 80C586F4  4B 60 AA 58 */	b ModuleConstructorsX
/* 80C586F8  4B 60 A9 90 */	b ModuleProlog
/* 80C586FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C58700  7C 08 03 A6 */	mtlr r0
/* 80C58704  38 21 00 10 */	addi r1, r1, 0x10
/* 80C58708  4E 80 00 20 */	blr 
