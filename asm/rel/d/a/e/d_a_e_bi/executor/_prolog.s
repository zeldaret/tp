lbl_8068A500:
/* 8068A500  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8068A504  7C 08 02 A6 */	mflr r0
/* 8068A508  90 01 00 14 */	stw r0, 0x14(r1)
/* 8068A50C  3C 60 80 69 */	lis r3, data_8068D7D8@ha
/* 8068A510  38 63 D7 D8 */	addi r3, r3, data_8068D7D8@l
/* 8068A514  4B BD 8C 38 */	b ModuleConstructorsX
/* 8068A518  4B BD 8B 70 */	b ModuleProlog
/* 8068A51C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8068A520  7C 08 03 A6 */	mtlr r0
/* 8068A524  38 21 00 10 */	addi r1, r1, 0x10
/* 8068A528  4E 80 00 20 */	blr 
