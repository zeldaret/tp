lbl_80B8DB20:
/* 80B8DB20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B8DB24  7C 08 02 A6 */	mflr r0
/* 80B8DB28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B8DB2C  3C 60 80 B9 */	lis r3, data_80B931E8@ha
/* 80B8DB30  38 63 31 E8 */	addi r3, r3, data_80B931E8@l
/* 80B8DB34  4B 6D 56 18 */	b ModuleConstructorsX
/* 80B8DB38  4B 6D 55 50 */	b ModuleProlog
/* 80B8DB3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B8DB40  7C 08 03 A6 */	mtlr r0
/* 80B8DB44  38 21 00 10 */	addi r1, r1, 0x10
/* 80B8DB48  4E 80 00 20 */	blr 
