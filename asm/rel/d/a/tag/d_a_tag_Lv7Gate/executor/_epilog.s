lbl_80D50A6C:
/* 80D50A6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D50A70  7C 08 02 A6 */	mflr r0
/* 80D50A74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D50A78  4B 51 26 14 */	b ModuleEpilog
/* 80D50A7C  3C 60 80 D5 */	lis r3, data_80D51AD0@ha
/* 80D50A80  38 63 1A D0 */	addi r3, r3, data_80D51AD0@l
/* 80D50A84  4B 51 27 0C */	b ModuleDestructorsX
/* 80D50A88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D50A8C  7C 08 03 A6 */	mtlr r0
/* 80D50A90  38 21 00 10 */	addi r1, r1, 0x10
/* 80D50A94  4E 80 00 20 */	blr 
