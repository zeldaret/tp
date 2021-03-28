lbl_80C41160:
/* 80C41160  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C41164  7C 08 02 A6 */	mflr r0
/* 80C41168  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4116C  3C 60 80 C4 */	lis r3, data_80C439D0@ha
/* 80C41170  38 63 39 D0 */	addi r3, r3, data_80C439D0@l
/* 80C41174  4B 62 1F D8 */	b ModuleConstructorsX
/* 80C41178  4B 62 1F 10 */	b ModuleProlog
/* 80C4117C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C41180  7C 08 03 A6 */	mtlr r0
/* 80C41184  38 21 00 10 */	addi r1, r1, 0x10
/* 80C41188  4E 80 00 20 */	blr 
