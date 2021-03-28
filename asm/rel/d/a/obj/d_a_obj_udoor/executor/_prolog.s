lbl_80D206C0:
/* 80D206C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D206C4  7C 08 02 A6 */	mflr r0
/* 80D206C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D206CC  3C 60 80 D2 */	lis r3, data_80D20DD8@ha
/* 80D206D0  38 63 0D D8 */	addi r3, r3, data_80D20DD8@l
/* 80D206D4  4B 54 2A 78 */	b ModuleConstructorsX
/* 80D206D8  4B 54 29 B0 */	b ModuleProlog
/* 80D206DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D206E0  7C 08 03 A6 */	mtlr r0
/* 80D206E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D206E8  4E 80 00 20 */	blr 
