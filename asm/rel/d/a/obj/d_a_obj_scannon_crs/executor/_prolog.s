lbl_80CC9600:
/* 80CC9600  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC9604  7C 08 02 A6 */	mflr r0
/* 80CC9608  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC960C  3C 60 80 CD */	lis r3, data_80CCB074@ha
/* 80CC9610  38 63 B0 74 */	addi r3, r3, data_80CCB074@l
/* 80CC9614  4B 59 9B 38 */	b ModuleConstructorsX
/* 80CC9618  4B 59 9A 70 */	b ModuleProlog
/* 80CC961C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC9620  7C 08 03 A6 */	mtlr r0
/* 80CC9624  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC9628  4E 80 00 20 */	blr 
