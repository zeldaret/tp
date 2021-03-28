lbl_80D17AD8:
/* 80D17AD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D17ADC  7C 08 02 A6 */	mflr r0
/* 80D17AE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D17AE4  4B 54 B5 AC */	b ModuleUnresolved
/* 80D17AE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D17AEC  7C 08 03 A6 */	mtlr r0
/* 80D17AF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D17AF4  4E 80 00 20 */	blr 
