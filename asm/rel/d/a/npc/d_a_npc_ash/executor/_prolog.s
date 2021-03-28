lbl_80958200:
/* 80958200  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80958204  7C 08 02 A6 */	mflr r0
/* 80958208  90 01 00 14 */	stw r0, 0x14(r1)
/* 8095820C  3C 60 80 96 */	lis r3, data_8095D62C@ha
/* 80958210  38 63 D6 2C */	addi r3, r3, data_8095D62C@l
/* 80958214  4B 90 AF 38 */	b ModuleConstructorsX
/* 80958218  4B 90 AE 70 */	b ModuleProlog
/* 8095821C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80958220  7C 08 03 A6 */	mtlr r0
/* 80958224  38 21 00 10 */	addi r1, r1, 0x10
/* 80958228  4E 80 00 20 */	blr 
