lbl_80A0ADC8:
/* 80A0ADC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A0ADCC  7C 08 02 A6 */	mflr r0
/* 80A0ADD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0ADD4  7C 66 1B 78 */	mr r6, r3
/* 80A0ADD8  7C 85 23 78 */	mr r5, r4
/* 80A0ADDC  80 63 00 08 */	lwz r3, 8(r3)
/* 80A0ADE0  A0 86 00 04 */	lhz r4, 4(r6)
/* 80A0ADE4  4B 92 01 6D */	bl getTexNo__16J3DAnmTexPatternCFUsPUs
/* 80A0ADE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A0ADEC  7C 08 03 A6 */	mtlr r0
/* 80A0ADF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A0ADF4  4E 80 00 20 */	blr 
