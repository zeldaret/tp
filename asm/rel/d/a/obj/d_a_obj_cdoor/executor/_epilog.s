lbl_80BC6D6C:
/* 80BC6D6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC6D70  7C 08 02 A6 */	mflr r0
/* 80BC6D74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC6D78  4B 69 C3 14 */	b ModuleEpilog
/* 80BC6D7C  3C 60 80 BC */	lis r3, data_80BC7D14@ha
/* 80BC6D80  38 63 7D 14 */	addi r3, r3, data_80BC7D14@l
/* 80BC6D84  4B 69 C4 0C */	b ModuleDestructorsX
/* 80BC6D88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC6D8C  7C 08 03 A6 */	mtlr r0
/* 80BC6D90  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC6D94  4E 80 00 20 */	blr 
