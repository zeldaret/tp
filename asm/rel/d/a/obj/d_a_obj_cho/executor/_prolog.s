lbl_80BCA220:
/* 80BCA220  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCA224  7C 08 02 A6 */	mflr r0
/* 80BCA228  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCA22C  3C 60 80 BD */	lis r3, data_80BCC564@ha
/* 80BCA230  38 63 C5 64 */	addi r3, r3, data_80BCC564@l
/* 80BCA234  4B 69 8F 18 */	b ModuleConstructorsX
/* 80BCA238  4B 69 8E 50 */	b ModuleProlog
/* 80BCA23C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCA240  7C 08 03 A6 */	mtlr r0
/* 80BCA244  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCA248  4E 80 00 20 */	blr 
