lbl_8048CEEC:
/* 8048CEEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048CEF0  7C 08 02 A6 */	mflr r0
/* 8048CEF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048CEF8  4B DD 61 94 */	b ModuleEpilog
/* 8048CEFC  3C 60 80 49 */	lis r3, data_8048D7E4@ha
/* 8048CF00  38 63 D7 E4 */	addi r3, r3, data_8048D7E4@l
/* 8048CF04  4B DD 62 8C */	b ModuleDestructorsX
/* 8048CF08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048CF0C  7C 08 03 A6 */	mtlr r0
/* 8048CF10  38 21 00 10 */	addi r1, r1, 0x10
/* 8048CF14  4E 80 00 20 */	blr 
