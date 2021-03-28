lbl_806DFF0C:
/* 806DFF0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806DFF10  7C 08 02 A6 */	mflr r0
/* 806DFF14  90 01 00 14 */	stw r0, 0x14(r1)
/* 806DFF18  4B B8 31 74 */	b ModuleEpilog
/* 806DFF1C  3C 60 80 6E */	lis r3, data_806E028C@ha
/* 806DFF20  38 63 02 8C */	addi r3, r3, data_806E028C@l
/* 806DFF24  4B B8 32 6C */	b ModuleDestructorsX
/* 806DFF28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806DFF2C  7C 08 03 A6 */	mtlr r0
/* 806DFF30  38 21 00 10 */	addi r1, r1, 0x10
/* 806DFF34  4E 80 00 20 */	blr 
