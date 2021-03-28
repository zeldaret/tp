lbl_80AA2BA0:
/* 80AA2BA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA2BA4  7C 08 02 A6 */	mflr r0
/* 80AA2BA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA2BAC  3C 60 80 AA */	lis r3, data_80AA6980@ha
/* 80AA2BB0  38 63 69 80 */	addi r3, r3, data_80AA6980@l
/* 80AA2BB4  4B 7C 05 98 */	b ModuleConstructorsX
/* 80AA2BB8  4B 7C 04 D0 */	b ModuleProlog
/* 80AA2BBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA2BC0  7C 08 03 A6 */	mtlr r0
/* 80AA2BC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA2BC8  4E 80 00 20 */	blr 
