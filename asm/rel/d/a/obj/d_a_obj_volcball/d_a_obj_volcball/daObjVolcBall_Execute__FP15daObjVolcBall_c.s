lbl_80D23AC4:
/* 80D23AC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D23AC8  7C 08 02 A6 */	mflr r0
/* 80D23ACC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D23AD0  4B FF E9 55 */	bl execute__15daObjVolcBall_cFv
/* 80D23AD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D23AD8  7C 08 03 A6 */	mtlr r0
/* 80D23ADC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D23AE0  4E 80 00 20 */	blr 
