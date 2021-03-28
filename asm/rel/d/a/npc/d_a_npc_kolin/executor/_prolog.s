lbl_80553F00:
/* 80553F00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80553F04  7C 08 02 A6 */	mflr r0
/* 80553F08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80553F0C  3C 60 80 56 */	lis r3, data_8055A5A0@ha
/* 80553F10  38 63 A5 A0 */	addi r3, r3, data_8055A5A0@l
/* 80553F14  4B D0 F2 38 */	b ModuleConstructorsX
/* 80553F18  4B D0 F1 70 */	b ModuleProlog
/* 80553F1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80553F20  7C 08 03 A6 */	mtlr r0
/* 80553F24  38 21 00 10 */	addi r1, r1, 0x10
/* 80553F28  4E 80 00 20 */	blr 
