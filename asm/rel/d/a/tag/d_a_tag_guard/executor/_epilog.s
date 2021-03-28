lbl_80D597AC:
/* 80D597AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D597B0  7C 08 02 A6 */	mflr r0
/* 80D597B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D597B8  4B 50 98 D4 */	b ModuleEpilog
/* 80D597BC  3C 60 80 D6 */	lis r3, data_80D59A14@ha
/* 80D597C0  38 63 9A 14 */	addi r3, r3, data_80D59A14@l
/* 80D597C4  4B 50 99 CC */	b ModuleDestructorsX
/* 80D597C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D597CC  7C 08 03 A6 */	mtlr r0
/* 80D597D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D597D4  4E 80 00 20 */	blr 
