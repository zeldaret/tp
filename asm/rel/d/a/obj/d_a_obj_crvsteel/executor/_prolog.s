lbl_80BD5B40:
/* 80BD5B40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD5B44  7C 08 02 A6 */	mflr r0
/* 80BD5B48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD5B4C  3C 60 80 BD */	lis r3, data_80BD6200@ha
/* 80BD5B50  38 63 62 00 */	addi r3, r3, data_80BD6200@l
/* 80BD5B54  4B 68 D5 F8 */	b ModuleConstructorsX
/* 80BD5B58  4B 68 D5 30 */	b ModuleProlog
/* 80BD5B5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD5B60  7C 08 03 A6 */	mtlr r0
/* 80BD5B64  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD5B68  4E 80 00 20 */	blr 
