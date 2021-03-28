lbl_8057B90C:
/* 8057B90C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057B910  7C 08 02 A6 */	mflr r0
/* 8057B914  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057B918  4B CE 77 74 */	b ModuleEpilog
/* 8057B91C  3C 60 80 58 */	lis r3, data_8057BDCC@ha
/* 8057B920  38 63 BD CC */	addi r3, r3, data_8057BDCC@l
/* 8057B924  4B CE 78 6C */	b ModuleDestructorsX
/* 8057B928  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057B92C  7C 08 03 A6 */	mtlr r0
/* 8057B930  38 21 00 10 */	addi r1, r1, 0x10
/* 8057B934  4E 80 00 20 */	blr 
