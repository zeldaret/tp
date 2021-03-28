lbl_806E5D00:
/* 806E5D00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806E5D04  7C 08 02 A6 */	mflr r0
/* 806E5D08  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E5D0C  3C 60 80 6F */	lis r3, data_806EA1E0@ha
/* 806E5D10  38 63 A1 E0 */	addi r3, r3, data_806EA1E0@l
/* 806E5D14  4B B7 D4 38 */	b ModuleConstructorsX
/* 806E5D18  4B B7 D3 70 */	b ModuleProlog
/* 806E5D1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E5D20  7C 08 03 A6 */	mtlr r0
/* 806E5D24  38 21 00 10 */	addi r1, r1, 0x10
/* 806E5D28  4E 80 00 20 */	blr 
