lbl_80B2DE2C:
/* 80B2DE2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B2DE30  7C 08 02 A6 */	mflr r0
/* 80B2DE34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B2DE38  4B 73 52 54 */	b ModuleEpilog
/* 80B2DE3C  3C 60 80 B3 */	lis r3, data_80B2F07C@ha
/* 80B2DE40  38 63 F0 7C */	addi r3, r3, data_80B2F07C@l
/* 80B2DE44  4B 73 53 4C */	b ModuleDestructorsX
/* 80B2DE48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2DE4C  7C 08 03 A6 */	mtlr r0
/* 80B2DE50  38 21 00 10 */	addi r1, r1, 0x10
/* 80B2DE54  4E 80 00 20 */	blr 
