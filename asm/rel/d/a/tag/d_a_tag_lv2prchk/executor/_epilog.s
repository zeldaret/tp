lbl_805A4C0C:
/* 805A4C0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A4C10  7C 08 02 A6 */	mflr r0
/* 805A4C14  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A4C18  4B CB E4 74 */	b ModuleEpilog
/* 805A4C1C  3C 60 80 5A */	lis r3, data_805A5360@ha
/* 805A4C20  38 63 53 60 */	addi r3, r3, data_805A5360@l
/* 805A4C24  4B CB E5 6C */	b ModuleDestructorsX
/* 805A4C28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A4C2C  7C 08 03 A6 */	mtlr r0
/* 805A4C30  38 21 00 10 */	addi r1, r1, 0x10
/* 805A4C34  4E 80 00 20 */	blr 
