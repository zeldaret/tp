lbl_80BDC5A0:
/* 80BDC5A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDC5A4  7C 08 02 A6 */	mflr r0
/* 80BDC5A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDC5AC  3C 60 80 BE */	lis r3, data_80BDCB34@ha
/* 80BDC5B0  38 63 CB 34 */	addi r3, r3, data_80BDCB34@l
/* 80BDC5B4  4B 68 6B 98 */	b ModuleConstructorsX
/* 80BDC5B8  4B 68 6A D0 */	b ModuleProlog
/* 80BDC5BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDC5C0  7C 08 03 A6 */	mtlr r0
/* 80BDC5C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDC5C8  4E 80 00 20 */	blr 
