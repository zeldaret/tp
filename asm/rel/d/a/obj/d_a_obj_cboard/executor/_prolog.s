lbl_8057B8E0:
/* 8057B8E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057B8E4  7C 08 02 A6 */	mflr r0
/* 8057B8E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057B8EC  3C 60 80 58 */	lis r3, data_8057BDC8@ha
/* 8057B8F0  38 63 BD C8 */	addi r3, r3, data_8057BDC8@l
/* 8057B8F4  4B CE 78 58 */	b ModuleConstructorsX
/* 8057B8F8  4B CE 77 90 */	b ModuleProlog
/* 8057B8FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057B900  7C 08 03 A6 */	mtlr r0
/* 8057B904  38 21 00 10 */	addi r1, r1, 0x10
/* 8057B908  4E 80 00 20 */	blr 
