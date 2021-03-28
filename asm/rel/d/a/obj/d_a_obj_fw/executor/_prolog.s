lbl_80BF1F60:
/* 80BF1F60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF1F64  7C 08 02 A6 */	mflr r0
/* 80BF1F68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF1F6C  3C 60 80 BF */	lis r3, data_80BF2B34@ha
/* 80BF1F70  38 63 2B 34 */	addi r3, r3, data_80BF2B34@l
/* 80BF1F74  4B 67 11 D8 */	b ModuleConstructorsX
/* 80BF1F78  4B 67 11 10 */	b ModuleProlog
/* 80BF1F7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF1F80  7C 08 03 A6 */	mtlr r0
/* 80BF1F84  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF1F88  4E 80 00 20 */	blr 
