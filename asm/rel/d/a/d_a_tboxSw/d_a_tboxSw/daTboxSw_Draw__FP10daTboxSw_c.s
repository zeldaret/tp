lbl_80D66948:
/* 80D66948  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D6694C  7C 08 02 A6 */	mflr r0
/* 80D66950  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D66954  4B FF FF E5 */	bl draw__10daTboxSw_cFv
/* 80D66958  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D6695C  7C 08 03 A6 */	mtlr r0
/* 80D66960  38 21 00 10 */	addi r1, r1, 0x10
/* 80D66964  4E 80 00 20 */	blr 
