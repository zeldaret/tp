lbl_80485D2C:
/* 80485D2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80485D30  7C 08 02 A6 */	mflr r0
/* 80485D34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80485D38  4B DD D3 54 */	b ModuleEpilog
/* 80485D3C  3C 60 80 48 */	lis r3, data_80485EFC@ha
/* 80485D40  38 63 5E FC */	addi r3, r3, data_80485EFC@l
/* 80485D44  4B DD D4 4C */	b ModuleDestructorsX
/* 80485D48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80485D4C  7C 08 03 A6 */	mtlr r0
/* 80485D50  38 21 00 10 */	addi r1, r1, 0x10
/* 80485D54  4E 80 00 20 */	blr 
