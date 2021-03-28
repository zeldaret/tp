lbl_807C2500:
/* 807C2500  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807C2504  7C 08 02 A6 */	mflr r0
/* 807C2508  90 01 00 14 */	stw r0, 0x14(r1)
/* 807C250C  3C 60 80 7D */	lis r3, data_807CEC94@ha
/* 807C2510  38 63 EC 94 */	addi r3, r3, data_807CEC94@l
/* 807C2514  4B AA 0C 38 */	b ModuleConstructorsX
/* 807C2518  4B AA 0B 70 */	b ModuleProlog
/* 807C251C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807C2520  7C 08 03 A6 */	mtlr r0
/* 807C2524  38 21 00 10 */	addi r1, r1, 0x10
/* 807C2528  4E 80 00 20 */	blr 
