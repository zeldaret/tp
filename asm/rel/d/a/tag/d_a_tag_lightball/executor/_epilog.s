lbl_80D5A7AC:
/* 80D5A7AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5A7B0  7C 08 02 A6 */	mflr r0
/* 80D5A7B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5A7B8  4B 50 88 D4 */	b ModuleEpilog
/* 80D5A7BC  3C 60 80 D6 */	lis r3, data_80D5AC74@ha
/* 80D5A7C0  38 63 AC 74 */	addi r3, r3, data_80D5AC74@l
/* 80D5A7C4  4B 50 89 CC */	b ModuleDestructorsX
/* 80D5A7C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5A7CC  7C 08 03 A6 */	mtlr r0
/* 80D5A7D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5A7D4  4E 80 00 20 */	blr 
