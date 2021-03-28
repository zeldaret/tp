lbl_80BE4BEC:
/* 80BE4BEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE4BF0  7C 08 02 A6 */	mflr r0
/* 80BE4BF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE4BF8  4B 67 E4 94 */	b ModuleEpilog
/* 80BE4BFC  3C 60 80 BE */	lis r3, data_80BE5D7C@ha
/* 80BE4C00  38 63 5D 7C */	addi r3, r3, data_80BE5D7C@l
/* 80BE4C04  4B 67 E5 8C */	b ModuleDestructorsX
/* 80BE4C08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE4C0C  7C 08 03 A6 */	mtlr r0
/* 80BE4C10  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE4C14  4E 80 00 20 */	blr 
