lbl_80D379AC:
/* 80D379AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D379B0  7C 08 02 A6 */	mflr r0
/* 80D379B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D379B8  4B 52 B6 D4 */	b ModuleEpilog
/* 80D379BC  3C 60 80 D4 */	lis r3, data_80D38604@ha
/* 80D379C0  38 63 86 04 */	addi r3, r3, data_80D38604@l
/* 80D379C4  4B 52 B7 CC */	b ModuleDestructorsX
/* 80D379C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D379CC  7C 08 03 A6 */	mtlr r0
/* 80D379D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D379D4  4E 80 00 20 */	blr 
