lbl_80C1B800:
/* 80C1B800  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1B804  7C 08 02 A6 */	mflr r0
/* 80C1B808  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1B80C  3C 60 80 C2 */	lis r3, data_80C1C5F0@ha
/* 80C1B810  38 63 C5 F0 */	addi r3, r3, data_80C1C5F0@l
/* 80C1B814  4B 64 79 38 */	b ModuleConstructorsX
/* 80C1B818  4B 64 78 70 */	b ModuleProlog
/* 80C1B81C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1B820  7C 08 03 A6 */	mtlr r0
/* 80C1B824  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1B828  4E 80 00 20 */	blr 
