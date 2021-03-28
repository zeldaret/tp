lbl_80D4F5C0:
/* 80D4F5C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4F5C4  7C 08 02 A6 */	mflr r0
/* 80D4F5C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4F5CC  3C 60 80 D5 */	lis r3, data_80D4F7C0@ha
/* 80D4F5D0  38 63 F7 C0 */	addi r3, r3, data_80D4F7C0@l
/* 80D4F5D4  4B 51 3B 78 */	b ModuleConstructorsX
/* 80D4F5D8  4B 51 3A B0 */	b ModuleProlog
/* 80D4F5DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4F5E0  7C 08 03 A6 */	mtlr r0
/* 80D4F5E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4F5E8  4E 80 00 20 */	blr 
