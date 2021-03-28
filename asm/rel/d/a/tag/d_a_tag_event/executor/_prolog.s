lbl_8048ACC0:
/* 8048ACC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048ACC4  7C 08 02 A6 */	mflr r0
/* 8048ACC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048ACCC  3C 60 80 49 */	lis r3, data_8048B828@ha
/* 8048ACD0  38 63 B8 28 */	addi r3, r3, data_8048B828@l
/* 8048ACD4  4B DD 84 78 */	b ModuleConstructorsX
/* 8048ACD8  4B DD 83 B0 */	b ModuleProlog
/* 8048ACDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048ACE0  7C 08 03 A6 */	mtlr r0
/* 8048ACE4  38 21 00 10 */	addi r1, r1, 0x10
/* 8048ACE8  4E 80 00 20 */	blr 
