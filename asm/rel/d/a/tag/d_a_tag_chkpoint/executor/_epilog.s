lbl_8048A6AC:
/* 8048A6AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048A6B0  7C 08 02 A6 */	mflr r0
/* 8048A6B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048A6B8  4B DD 89 D4 */	b ModuleEpilog
/* 8048A6BC  3C 60 80 49 */	lis r3, data_8048AC24@ha
/* 8048A6C0  38 63 AC 24 */	addi r3, r3, data_8048AC24@l
/* 8048A6C4  4B DD 8A CC */	b ModuleDestructorsX
/* 8048A6C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048A6CC  7C 08 03 A6 */	mtlr r0
/* 8048A6D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8048A6D4  4E 80 00 20 */	blr 
