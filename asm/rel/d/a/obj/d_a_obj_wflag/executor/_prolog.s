lbl_80D36B20:
/* 80D36B20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D36B24  7C 08 02 A6 */	mflr r0
/* 80D36B28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D36B2C  3C 60 80 D3 */	lis r3, data_80D37884@ha
/* 80D36B30  38 63 78 84 */	addi r3, r3, data_80D37884@l
/* 80D36B34  4B 52 C6 18 */	b ModuleConstructorsX
/* 80D36B38  4B 52 C5 50 */	b ModuleProlog
/* 80D36B3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D36B40  7C 08 03 A6 */	mtlr r0
/* 80D36B44  38 21 00 10 */	addi r1, r1, 0x10
/* 80D36B48  4E 80 00 20 */	blr 
