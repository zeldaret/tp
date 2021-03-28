lbl_80BF2C40:
/* 80BF2C40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF2C44  7C 08 02 A6 */	mflr r0
/* 80BF2C48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF2C4C  3C 60 80 BF */	lis r3, data_80BF4930@ha
/* 80BF2C50  38 63 49 30 */	addi r3, r3, data_80BF4930@l
/* 80BF2C54  4B 67 04 F8 */	b ModuleConstructorsX
/* 80BF2C58  4B 67 04 30 */	b ModuleProlog
/* 80BF2C5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF2C60  7C 08 03 A6 */	mtlr r0
/* 80BF2C64  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF2C68  4E 80 00 20 */	blr 
