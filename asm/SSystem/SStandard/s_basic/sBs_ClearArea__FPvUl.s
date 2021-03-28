lbl_80271CAC:
/* 80271CAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80271CB0  7C 08 02 A6 */	mflr r0
/* 80271CB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80271CB8  38 A0 00 00 */	li r5, 0
/* 80271CBC  4B FF FF D1 */	bl sBs_FillArea_s__FPvUls
/* 80271CC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80271CC4  7C 08 03 A6 */	mtlr r0
/* 80271CC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80271CCC  4E 80 00 20 */	blr 
