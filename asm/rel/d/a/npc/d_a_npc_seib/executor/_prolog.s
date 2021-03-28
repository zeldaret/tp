lbl_80AC5000:
/* 80AC5000  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC5004  7C 08 02 A6 */	mflr r0
/* 80AC5008  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC500C  3C 60 80 AC */	lis r3, data_80AC7010@ha
/* 80AC5010  38 63 70 10 */	addi r3, r3, data_80AC7010@l
/* 80AC5014  4B 79 E1 38 */	b ModuleConstructorsX
/* 80AC5018  4B 79 E0 70 */	b ModuleProlog
/* 80AC501C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC5020  7C 08 03 A6 */	mtlr r0
/* 80AC5024  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC5028  4E 80 00 20 */	blr 
