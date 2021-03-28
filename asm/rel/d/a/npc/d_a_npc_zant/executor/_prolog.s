lbl_80B6C0C0:
/* 80B6C0C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6C0C4  7C 08 02 A6 */	mflr r0
/* 80B6C0C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6C0CC  3C 60 80 B7 */	lis r3, data_80B6E994@ha
/* 80B6C0D0  38 63 E9 94 */	addi r3, r3, data_80B6E994@l
/* 80B6C0D4  4B 6F 70 78 */	b ModuleConstructorsX
/* 80B6C0D8  4B 6F 6F B0 */	b ModuleProlog
/* 80B6C0DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6C0E0  7C 08 03 A6 */	mtlr r0
/* 80B6C0E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6C0E8  4E 80 00 20 */	blr 
