lbl_80870B40:
/* 80870B40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80870B44  7C 08 02 A6 */	mflr r0
/* 80870B48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80870B4C  3C 60 80 87 */	lis r3, data_80872584@ha
/* 80870B50  38 63 25 84 */	addi r3, r3, data_80872584@l
/* 80870B54  4B 9F 25 F8 */	b ModuleConstructorsX
/* 80870B58  4B 9F 25 30 */	b ModuleProlog
/* 80870B5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80870B60  7C 08 03 A6 */	mtlr r0
/* 80870B64  38 21 00 10 */	addi r1, r1, 0x10
/* 80870B68  4E 80 00 20 */	blr 
