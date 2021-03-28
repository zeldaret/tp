lbl_80860C0C:
/* 80860C0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80860C10  7C 08 02 A6 */	mflr r0
/* 80860C14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80860C18  4B A0 24 74 */	b ModuleEpilog
/* 80860C1C  3C 60 80 86 */	lis r3, data_80861130@ha
/* 80860C20  38 63 11 30 */	addi r3, r3, data_80861130@l
/* 80860C24  4B A0 25 6C */	b ModuleDestructorsX
/* 80860C28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80860C2C  7C 08 03 A6 */	mtlr r0
/* 80860C30  38 21 00 10 */	addi r1, r1, 0x10
/* 80860C34  4E 80 00 20 */	blr 
