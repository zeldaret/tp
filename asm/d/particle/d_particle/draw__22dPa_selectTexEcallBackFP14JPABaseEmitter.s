lbl_8004ADC4:
/* 8004ADC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004ADC8  7C 08 02 A6 */	mflr r0
/* 8004ADCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004ADD0  7C 65 1B 78 */	mr r5, r3
/* 8004ADD4  7C 83 23 78 */	mr r3, r4
/* 8004ADD8  88 85 00 04 */	lbz r4, 4(r5)
/* 8004ADDC  38 A0 00 00 */	li r5, 0
/* 8004ADE0  48 23 41 71 */	bl loadTexture__14JPABaseEmitterFUc11_GXTexMapID
/* 8004ADE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004ADE8  7C 08 03 A6 */	mtlr r0
/* 8004ADEC  38 21 00 10 */	addi r1, r1, 0x10
/* 8004ADF0  4E 80 00 20 */	blr 
