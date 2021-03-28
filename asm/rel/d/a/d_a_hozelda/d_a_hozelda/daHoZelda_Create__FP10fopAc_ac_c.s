lbl_80846D90:
/* 80846D90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80846D94  7C 08 02 A6 */	mflr r0
/* 80846D98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80846D9C  4B FF FC 15 */	bl create__11daHoZelda_cFv
/* 80846DA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80846DA4  7C 08 03 A6 */	mtlr r0
/* 80846DA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80846DAC  4E 80 00 20 */	blr 
