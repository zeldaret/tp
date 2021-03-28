lbl_8061DC6C:
/* 8061DC6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8061DC70  7C 08 02 A6 */	mflr r0
/* 8061DC74  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061DC78  4B C4 54 14 */	b ModuleEpilog
/* 8061DC7C  3C 60 80 62 */	lis r3, data_8061EA34@ha
/* 8061DC80  38 63 EA 34 */	addi r3, r3, data_8061EA34@l
/* 8061DC84  4B C4 55 0C */	b ModuleDestructorsX
/* 8061DC88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061DC8C  7C 08 03 A6 */	mtlr r0
/* 8061DC90  38 21 00 10 */	addi r1, r1, 0x10
/* 8061DC94  4E 80 00 20 */	blr 
