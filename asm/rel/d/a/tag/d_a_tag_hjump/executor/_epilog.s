lbl_805A3A6C:
/* 805A3A6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A3A70  7C 08 02 A6 */	mflr r0
/* 805A3A74  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A3A78  4B CB F6 14 */	b ModuleEpilog
/* 805A3A7C  3C 60 80 5A */	lis r3, data_805A4234@ha
/* 805A3A80  38 63 42 34 */	addi r3, r3, data_805A4234@l
/* 805A3A84  4B CB F7 0C */	b ModuleDestructorsX
/* 805A3A88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A3A8C  7C 08 03 A6 */	mtlr r0
/* 805A3A90  38 21 00 10 */	addi r1, r1, 0x10
/* 805A3A94  4E 80 00 20 */	blr 
