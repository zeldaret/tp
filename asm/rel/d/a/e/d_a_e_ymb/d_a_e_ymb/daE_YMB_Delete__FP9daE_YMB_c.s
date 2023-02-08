lbl_80820AD0:
/* 80820AD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80820AD4  7C 08 02 A6 */	mflr r0
/* 80820AD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80820ADC  4B FF FF 65 */	bl _delete__9daE_YMB_cFv
/* 80820AE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80820AE4  7C 08 03 A6 */	mtlr r0
/* 80820AE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80820AEC  4E 80 00 20 */	blr 
