lbl_80661AD0:
/* 80661AD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80661AD4  7C 08 02 A6 */	mflr r0
/* 80661AD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80661ADC  4B FF FE 65 */	bl Execute__7daCow_cFv
/* 80661AE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80661AE4  7C 08 03 A6 */	mtlr r0
/* 80661AE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80661AEC  4E 80 00 20 */	blr 
