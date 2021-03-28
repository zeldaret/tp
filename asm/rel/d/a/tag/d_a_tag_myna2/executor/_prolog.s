lbl_80D5C620:
/* 80D5C620  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5C624  7C 08 02 A6 */	mflr r0
/* 80D5C628  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5C62C  3C 60 80 D6 */	lis r3, data_80D5CA34@ha
/* 80D5C630  38 63 CA 34 */	addi r3, r3, data_80D5CA34@l
/* 80D5C634  4B 50 6B 18 */	b ModuleConstructorsX
/* 80D5C638  4B 50 6A 50 */	b ModuleProlog
/* 80D5C63C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5C640  7C 08 03 A6 */	mtlr r0
/* 80D5C644  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5C648  4E 80 00 20 */	blr 
