lbl_801835A0:
/* 801835A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801835A4  7C 08 02 A6 */	mflr r0
/* 801835A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801835AC  4B FF FE D5 */	bl execute__8dEnvSe_cFv
/* 801835B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801835B4  7C 08 03 A6 */	mtlr r0
/* 801835B8  38 21 00 10 */	addi r1, r1, 0x10
/* 801835BC  4E 80 00 20 */	blr 
