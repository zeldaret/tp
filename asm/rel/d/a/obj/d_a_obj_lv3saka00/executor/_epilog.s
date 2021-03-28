lbl_80C5BE0C:
/* 80C5BE0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5BE10  7C 08 02 A6 */	mflr r0
/* 80C5BE14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5BE18  4B 60 72 74 */	b ModuleEpilog
/* 80C5BE1C  3C 60 80 C6 */	lis r3, data_80C5C3C0@ha
/* 80C5BE20  38 63 C3 C0 */	addi r3, r3, data_80C5C3C0@l
/* 80C5BE24  4B 60 73 6C */	b ModuleDestructorsX
/* 80C5BE28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5BE2C  7C 08 03 A6 */	mtlr r0
/* 80C5BE30  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5BE34  4E 80 00 20 */	blr 
