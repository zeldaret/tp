lbl_805A6A0C:
/* 805A6A0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A6A10  7C 08 02 A6 */	mflr r0
/* 805A6A14  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A6A18  4B CB C6 74 */	b ModuleEpilog
/* 805A6A1C  3C 60 80 5A */	lis r3, data_805A6E68@ha
/* 805A6A20  38 63 6E 68 */	addi r3, r3, data_805A6E68@l
/* 805A6A24  4B CB C7 6C */	b ModuleDestructorsX
/* 805A6A28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A6A2C  7C 08 03 A6 */	mtlr r0
/* 805A6A30  38 21 00 10 */	addi r1, r1, 0x10
/* 805A6A34  4E 80 00 20 */	blr 
