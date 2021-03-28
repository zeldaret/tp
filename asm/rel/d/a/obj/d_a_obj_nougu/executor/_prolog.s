lbl_80CA3B20:
/* 80CA3B20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA3B24  7C 08 02 A6 */	mflr r0
/* 80CA3B28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA3B2C  3C 60 80 CA */	lis r3, data_80CA49A4@ha
/* 80CA3B30  38 63 49 A4 */	addi r3, r3, data_80CA49A4@l
/* 80CA3B34  4B 5B F6 18 */	b ModuleConstructorsX
/* 80CA3B38  4B 5B F5 50 */	b ModuleProlog
/* 80CA3B3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA3B40  7C 08 03 A6 */	mtlr r0
/* 80CA3B44  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA3B48  4E 80 00 20 */	blr 
