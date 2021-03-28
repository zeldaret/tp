lbl_80D55F60:
/* 80D55F60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D55F64  7C 08 02 A6 */	mflr r0
/* 80D55F68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D55F6C  3C 60 80 D5 */	lis r3, data_80D56650@ha
/* 80D55F70  38 63 66 50 */	addi r3, r3, data_80D56650@l
/* 80D55F74  4B 50 D1 D8 */	b ModuleConstructorsX
/* 80D55F78  4B 50 D1 10 */	b ModuleProlog
/* 80D55F7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D55F80  7C 08 03 A6 */	mtlr r0
/* 80D55F84  38 21 00 10 */	addi r1, r1, 0x10
/* 80D55F88  4E 80 00 20 */	blr 
