lbl_80B9FA00:
/* 80B9FA00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9FA04  7C 08 02 A6 */	mflr r0
/* 80B9FA08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9FA0C  3C 60 80 BA */	lis r3, data_80BA1144@ha
/* 80B9FA10  38 63 11 44 */	addi r3, r3, data_80BA1144@l
/* 80B9FA14  4B 6C 37 38 */	b ModuleConstructorsX
/* 80B9FA18  4B 6C 36 70 */	b ModuleProlog
/* 80B9FA1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9FA20  7C 08 03 A6 */	mtlr r0
/* 80B9FA24  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9FA28  4E 80 00 20 */	blr 
