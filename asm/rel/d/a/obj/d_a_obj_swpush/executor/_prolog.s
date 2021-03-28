lbl_80482C60:
/* 80482C60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80482C64  7C 08 02 A6 */	mflr r0
/* 80482C68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80482C6C  3C 60 80 48 */	lis r3, data_80484D00@ha
/* 80482C70  38 63 4D 00 */	addi r3, r3, data_80484D00@l
/* 80482C74  4B DE 04 D8 */	b ModuleConstructorsX
/* 80482C78  4B DE 04 10 */	b ModuleProlog
/* 80482C7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80482C80  7C 08 03 A6 */	mtlr r0
/* 80482C84  38 21 00 10 */	addi r1, r1, 0x10
/* 80482C88  4E 80 00 20 */	blr 
