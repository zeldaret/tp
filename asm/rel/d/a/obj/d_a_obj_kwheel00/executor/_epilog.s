lbl_80C4D6AC:
/* 80C4D6AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4D6B0  7C 08 02 A6 */	mflr r0
/* 80C4D6B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4D6B8  4B 61 59 D4 */	b ModuleEpilog
/* 80C4D6BC  3C 60 80 C5 */	lis r3, data_80C4E7FC@ha
/* 80C4D6C0  38 63 E7 FC */	addi r3, r3, data_80C4E7FC@l
/* 80C4D6C4  4B 61 5A CC */	b ModuleDestructorsX
/* 80C4D6C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4D6CC  7C 08 03 A6 */	mtlr r0
/* 80C4D6D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4D6D4  4E 80 00 20 */	blr 
