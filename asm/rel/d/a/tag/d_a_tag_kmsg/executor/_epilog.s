lbl_8048DE2C:
/* 8048DE2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048DE30  7C 08 02 A6 */	mflr r0
/* 8048DE34  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048DE38  4B DD 52 54 */	b ModuleEpilog
/* 8048DE3C  3C 60 80 49 */	lis r3, data_8048EAD8@ha
/* 8048DE40  38 63 EA D8 */	addi r3, r3, data_8048EAD8@l
/* 8048DE44  4B DD 53 4C */	b ModuleDestructorsX
/* 8048DE48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048DE4C  7C 08 03 A6 */	mtlr r0
/* 8048DE50  38 21 00 10 */	addi r1, r1, 0x10
/* 8048DE54  4E 80 00 20 */	blr 
