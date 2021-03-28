lbl_80798A60:
/* 80798A60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80798A64  7C 08 02 A6 */	mflr r0
/* 80798A68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80798A6C  3C 60 80 7A */	lis r3, data_8079D59C@ha
/* 80798A70  38 63 D5 9C */	addi r3, r3, data_8079D59C@l
/* 80798A74  4B AC A6 D8 */	b ModuleConstructorsX
/* 80798A78  4B AC A6 10 */	b ModuleProlog
/* 80798A7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80798A80  7C 08 03 A6 */	mtlr r0
/* 80798A84  38 21 00 10 */	addi r1, r1, 0x10
/* 80798A88  4E 80 00 20 */	blr 
