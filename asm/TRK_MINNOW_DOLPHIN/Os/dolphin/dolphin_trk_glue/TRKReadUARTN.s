lbl_80371DA4:
/* 80371DA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80371DA8  7C 08 02 A6 */	mflr r0
/* 80371DAC  3C A0 80 3D */	lis r5, gDBCommTable@ha
/* 80371DB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80371DB4  38 A5 32 A8 */	addi r5, r5, gDBCommTable@l
/* 80371DB8  81 85 00 10 */	lwz r12, 0x10(r5)
/* 80371DBC  7D 89 03 A6 */	mtctr r12
/* 80371DC0  4E 80 04 21 */	bctrl 
/* 80371DC4  7C 03 00 D0 */	neg r0, r3
/* 80371DC8  7C 00 1B 78 */	or r0, r0, r3
/* 80371DCC  7C 03 FE 70 */	srawi r3, r0, 0x1f
/* 80371DD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80371DD4  7C 08 03 A6 */	mtlr r0
/* 80371DD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80371DDC  4E 80 00 20 */	blr 
