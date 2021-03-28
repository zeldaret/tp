lbl_8057CB8C:
/* 8057CB8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057CB90  7C 08 02 A6 */	mflr r0
/* 8057CB94  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057CB98  4B CE 64 F4 */	b ModuleEpilog
/* 8057CB9C  3C 60 80 58 */	lis r3, data_8057CF64@ha
/* 8057CBA0  38 63 CF 64 */	addi r3, r3, data_8057CF64@l
/* 8057CBA4  4B CE 65 EC */	b ModuleDestructorsX
/* 8057CBA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057CBAC  7C 08 03 A6 */	mtlr r0
/* 8057CBB0  38 21 00 10 */	addi r1, r1, 0x10
/* 8057CBB4  4E 80 00 20 */	blr 
