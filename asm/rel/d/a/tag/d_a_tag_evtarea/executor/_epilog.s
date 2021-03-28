lbl_8048C4AC:
/* 8048C4AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048C4B0  7C 08 02 A6 */	mflr r0
/* 8048C4B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048C4B8  4B DD 6B D4 */	b ModuleEpilog
/* 8048C4BC  3C 60 80 49 */	lis r3, data_8048CDCC@ha
/* 8048C4C0  38 63 CD CC */	addi r3, r3, data_8048CDCC@l
/* 8048C4C4  4B DD 6C CC */	b ModuleDestructorsX
/* 8048C4C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048C4CC  7C 08 03 A6 */	mtlr r0
/* 8048C4D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8048C4D4  4E 80 00 20 */	blr 
