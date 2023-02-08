lbl_8014ADA0:
/* 8014ADA0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8014ADA4  7C 08 02 A6 */	mflr r0
/* 8014ADA8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8014ADAC  C0 04 00 00 */	lfs f0, 0(r4)
/* 8014ADB0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8014ADB4  C0 04 00 04 */	lfs f0, 4(r4)
/* 8014ADB8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8014ADBC  C0 04 00 08 */	lfs f0, 8(r4)
/* 8014ADC0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8014ADC4  C0 05 00 00 */	lfs f0, 0(r5)
/* 8014ADC8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8014ADCC  C0 05 00 04 */	lfs f0, 4(r5)
/* 8014ADD0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8014ADD4  C0 05 00 08 */	lfs f0, 8(r5)
/* 8014ADD8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8014ADDC  C0 06 00 00 */	lfs f0, 0(r6)
/* 8014ADE0  D0 01 00 08 */	stfs f0, 8(r1)
/* 8014ADE4  C0 06 00 04 */	lfs f0, 4(r6)
/* 8014ADE8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8014ADEC  C0 06 00 08 */	lfs f0, 8(r6)
/* 8014ADF0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8014ADF4  38 61 00 20 */	addi r3, r1, 0x20
/* 8014ADF8  38 81 00 14 */	addi r4, r1, 0x14
/* 8014ADFC  38 A1 00 08 */	addi r5, r1, 8
/* 8014AE00  7C E6 3B 78 */	mr r6, r7
/* 8014AE04  38 E0 00 01 */	li r7, 1
/* 8014AE08  48 00 15 7D */	bl daNpcT_chkPointInArea__F4cXyz4cXyz4cXyzsi
/* 8014AE0C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8014AE10  7C 08 03 A6 */	mtlr r0
/* 8014AE14  38 21 00 30 */	addi r1, r1, 0x30
/* 8014AE18  4E 80 00 20 */	blr 
