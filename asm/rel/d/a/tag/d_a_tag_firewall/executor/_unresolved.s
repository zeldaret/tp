lbl_80D58918:
/* 80D58918  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5891C  7C 08 02 A6 */	mflr r0
/* 80D58920  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D58924  4B 50 A7 6C */	b ModuleUnresolved
/* 80D58928  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5892C  7C 08 03 A6 */	mtlr r0
/* 80D58930  38 21 00 10 */	addi r1, r1, 0x10
/* 80D58934  4E 80 00 20 */	blr 
