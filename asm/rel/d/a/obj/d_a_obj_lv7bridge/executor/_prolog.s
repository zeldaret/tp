lbl_80C86300:
/* 80C86300  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C86304  7C 08 02 A6 */	mflr r0
/* 80C86308  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8630C  3C 60 80 C8 */	lis r3, data_80C87998@ha
/* 80C86310  38 63 79 98 */	addi r3, r3, data_80C87998@l
/* 80C86314  4B 5D CE 38 */	b ModuleConstructorsX
/* 80C86318  4B 5D CD 70 */	b ModuleProlog
/* 80C8631C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C86320  7C 08 03 A6 */	mtlr r0
/* 80C86324  38 21 00 10 */	addi r1, r1, 0x10
/* 80C86328  4E 80 00 20 */	blr 
