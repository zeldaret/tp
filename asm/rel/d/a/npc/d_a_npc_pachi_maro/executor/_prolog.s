lbl_80A97BA0:
/* 80A97BA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A97BA4  7C 08 02 A6 */	mflr r0
/* 80A97BA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A97BAC  3C 60 80 AA */	lis r3, data_80A9B878@ha
/* 80A97BB0  38 63 B8 78 */	addi r3, r3, data_80A9B878@l
/* 80A97BB4  4B 7C B5 98 */	b ModuleConstructorsX
/* 80A97BB8  4B 7C B4 D0 */	b ModuleProlog
/* 80A97BBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A97BC0  7C 08 03 A6 */	mtlr r0
/* 80A97BC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A97BC8  4E 80 00 20 */	blr 
