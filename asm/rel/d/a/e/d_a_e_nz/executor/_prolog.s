lbl_80729900:
/* 80729900  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80729904  7C 08 02 A6 */	mflr r0
/* 80729908  90 01 00 14 */	stw r0, 0x14(r1)
/* 8072990C  3C 60 80 73 */	lis r3, data_8072C16C@ha
/* 80729910  38 63 C1 6C */	addi r3, r3, data_8072C16C@l
/* 80729914  4B B3 98 38 */	b ModuleConstructorsX
/* 80729918  4B B3 97 70 */	b ModuleProlog
/* 8072991C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80729920  7C 08 03 A6 */	mtlr r0
/* 80729924  38 21 00 10 */	addi r1, r1, 0x10
/* 80729928  4E 80 00 20 */	blr 
