lbl_806F7E00:
/* 806F7E00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F7E04  7C 08 02 A6 */	mflr r0
/* 806F7E08  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F7E0C  3C 60 80 70 */	lis r3, data_806FA390@ha
/* 806F7E10  38 63 A3 90 */	addi r3, r3, data_806FA390@l
/* 806F7E14  4B B6 B3 38 */	b ModuleConstructorsX
/* 806F7E18  4B B6 B2 70 */	b ModuleProlog
/* 806F7E1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F7E20  7C 08 03 A6 */	mtlr r0
/* 806F7E24  38 21 00 10 */	addi r1, r1, 0x10
/* 806F7E28  4E 80 00 20 */	blr 
