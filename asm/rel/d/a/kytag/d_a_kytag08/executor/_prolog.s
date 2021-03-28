lbl_8085A500:
/* 8085A500  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8085A504  7C 08 02 A6 */	mflr r0
/* 8085A508  90 01 00 14 */	stw r0, 0x14(r1)
/* 8085A50C  3C 60 80 86 */	lis r3, data_8085B284@ha
/* 8085A510  38 63 B2 84 */	addi r3, r3, data_8085B284@l
/* 8085A514  4B A0 8C 38 */	b ModuleConstructorsX
/* 8085A518  4B A0 8B 70 */	b ModuleProlog
/* 8085A51C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8085A520  7C 08 03 A6 */	mtlr r0
/* 8085A524  38 21 00 10 */	addi r1, r1, 0x10
/* 8085A528  4E 80 00 20 */	blr 
