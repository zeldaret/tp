lbl_80D63C60:
/* 80D63C60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D63C64  7C 08 02 A6 */	mflr r0
/* 80D63C68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D63C6C  3C 60 80 D6 */	lis r3, data_80D63E4C@ha
/* 80D63C70  38 63 3E 4C */	addi r3, r3, data_80D63E4C@l
/* 80D63C74  4B 4F F4 D8 */	b ModuleConstructorsX
/* 80D63C78  4B 4F F4 10 */	b ModuleProlog
/* 80D63C7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D63C80  7C 08 03 A6 */	mtlr r0
/* 80D63C84  38 21 00 10 */	addi r1, r1, 0x10
/* 80D63C88  4E 80 00 20 */	blr 
