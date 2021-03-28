lbl_80456C0C:
/* 80456C0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80456C10  7C 08 02 A6 */	mflr r0
/* 80456C14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80456C18  48 00 00 55 */	bl ModuleEpilog
/* 80456C1C  3C 60 80 45 */	lis r3, data_80456C80@ha
/* 80456C20  38 63 6C 80 */	addi r3, r3, data_80456C80@l
/* 80456C24  4B E0 C5 6C */	b ModuleDestructorsX
/* 80456C28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80456C2C  7C 08 03 A6 */	mtlr r0
/* 80456C30  38 21 00 10 */	addi r1, r1, 0x10
/* 80456C34  4E 80 00 20 */	blr 
