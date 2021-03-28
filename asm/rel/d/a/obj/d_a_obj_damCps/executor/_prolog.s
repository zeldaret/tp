lbl_80BDA3E0:
/* 80BDA3E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDA3E4  7C 08 02 A6 */	mflr r0
/* 80BDA3E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDA3EC  3C 60 80 BE */	lis r3, data_80BDA458@ha
/* 80BDA3F0  38 63 A4 58 */	addi r3, r3, data_80BDA458@l
/* 80BDA3F4  4B 68 8D 58 */	b ModuleConstructorsX
/* 80BDA3F8  4B 68 8C 90 */	b ModuleProlog
/* 80BDA3FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDA400  7C 08 03 A6 */	mtlr r0
/* 80BDA404  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDA408  4E 80 00 20 */	blr 
