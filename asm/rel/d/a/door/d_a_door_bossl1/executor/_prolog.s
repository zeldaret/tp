lbl_804E1D20:
/* 804E1D20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E1D24  7C 08 02 A6 */	mflr r0
/* 804E1D28  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E1D2C  3C 60 80 4E */	lis r3, data_804E4A0C@ha
/* 804E1D30  38 63 4A 0C */	addi r3, r3, data_804E4A0C@l
/* 804E1D34  4B D8 14 18 */	b ModuleConstructorsX
/* 804E1D38  4B D8 13 50 */	b ModuleProlog
/* 804E1D3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E1D40  7C 08 03 A6 */	mtlr r0
/* 804E1D44  38 21 00 10 */	addi r1, r1, 0x10
/* 804E1D48  4E 80 00 20 */	blr 
