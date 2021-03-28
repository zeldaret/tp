lbl_809EFD0C:
/* 809EFD0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809EFD10  7C 08 02 A6 */	mflr r0
/* 809EFD14  90 01 00 14 */	stw r0, 0x14(r1)
/* 809EFD18  4B 87 33 74 */	b ModuleEpilog
/* 809EFD1C  3C 60 80 9F */	lis r3, data_809F2C4C@ha
/* 809EFD20  38 63 2C 4C */	addi r3, r3, data_809F2C4C@l
/* 809EFD24  4B 87 34 6C */	b ModuleDestructorsX
/* 809EFD28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809EFD2C  7C 08 03 A6 */	mtlr r0
/* 809EFD30  38 21 00 10 */	addi r1, r1, 0x10
/* 809EFD34  4E 80 00 20 */	blr 
