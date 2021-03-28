lbl_80878D94:
/* 80878D94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80878D98  7C 08 02 A6 */	mflr r0
/* 80878D9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80878DA0  4B FF FB 99 */	bl daMP_ActivePlayer_Main__Fv
/* 80878DA4  38 60 00 01 */	li r3, 1
/* 80878DA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80878DAC  7C 08 03 A6 */	mtlr r0
/* 80878DB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80878DB4  4E 80 00 20 */	blr 
