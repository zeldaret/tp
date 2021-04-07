lbl_8005AD98:
/* 8005AD98  38 E0 00 00 */	li r7, 0
/* 8005AD9C  38 80 00 00 */	li r4, 0
/* 8005ADA0  3C A0 80 43 */	lis r5, g_env_light@ha /* 0x8042CA54@ha */
/* 8005ADA4  38 C5 CA 54 */	addi r6, r5, g_env_light@l /* 0x8042CA54@l */
/* 8005ADA8  38 00 00 1E */	li r0, 0x1e
/* 8005ADAC  7C 09 03 A6 */	mtctr r0
lbl_8005ADB0:
/* 8005ADB0  7C A6 22 14 */	add r5, r6, r4
/* 8005ADB4  80 05 07 D0 */	lwz r0, 0x7d0(r5)
/* 8005ADB8  28 00 00 00 */	cmplwi r0, 0
/* 8005ADBC  40 82 00 20 */	bne lbl_8005ADDC
/* 8005ADC0  3C A0 80 43 */	lis r5, g_env_light@ha /* 0x8042CA54@ha */
/* 8005ADC4  38 05 CA 54 */	addi r0, r5, g_env_light@l /* 0x8042CA54@l */
/* 8005ADC8  7C 80 22 14 */	add r4, r0, r4
/* 8005ADCC  90 64 07 D0 */	stw r3, 0x7d0(r4)
/* 8005ADD0  80 84 07 D0 */	lwz r4, 0x7d0(r4)
/* 8005ADD4  90 E4 00 24 */	stw r7, 0x24(r4)
/* 8005ADD8  48 00 00 10 */	b lbl_8005ADE8
lbl_8005ADDC:
/* 8005ADDC  38 E7 00 01 */	addi r7, r7, 1
/* 8005ADE0  38 84 00 04 */	addi r4, r4, 4
/* 8005ADE4  42 00 FF CC */	bdnz lbl_8005ADB0
lbl_8005ADE8:
/* 8005ADE8  2C 07 00 1E */	cmpwi r7, 0x1e
/* 8005ADEC  4D 80 00 20 */	bltlr 
/* 8005ADF0  38 00 27 0F */	li r0, 0x270f
/* 8005ADF4  90 03 00 24 */	stw r0, 0x24(r3)
/* 8005ADF8  4E 80 00 20 */	blr 
