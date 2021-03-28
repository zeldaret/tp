lbl_80D5DE2C:
/* 80D5DE2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5DE30  7C 08 02 A6 */	mflr r0
/* 80D5DE34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5DE38  4B 50 52 54 */	b ModuleEpilog
/* 80D5DE3C  3C 60 80 D6 */	lis r3, data_80D5ECDC@ha
/* 80D5DE40  38 63 EC DC */	addi r3, r3, data_80D5ECDC@l
/* 80D5DE44  4B 50 53 4C */	b ModuleDestructorsX
/* 80D5DE48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5DE4C  7C 08 03 A6 */	mtlr r0
/* 80D5DE50  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5DE54  4E 80 00 20 */	blr 
