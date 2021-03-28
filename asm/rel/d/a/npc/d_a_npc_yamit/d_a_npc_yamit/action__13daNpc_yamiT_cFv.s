lbl_80B4AD4C:
/* 80B4AD4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B4AD50  7C 08 02 A6 */	mflr r0
/* 80B4AD54  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B4AD58  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B4AD5C  7C 7F 1B 78 */	mr r31, r3
/* 80B4AD60  88 03 0D 20 */	lbz r0, 0xd20(r3)
/* 80B4AD64  2C 00 00 00 */	cmpwi r0, 0
/* 80B4AD68  41 82 00 5C */	beq lbl_80B4ADC4
/* 80B4AD6C  38 C0 00 00 */	li r6, 0
/* 80B4AD70  38 60 00 00 */	li r3, 0
/* 80B4AD74  7C C4 33 78 */	mr r4, r6
/* 80B4AD78  3C A0 80 B5 */	lis r5, lit_4193@ha
/* 80B4AD7C  C0 05 CE 48 */	lfs f0, lit_4193@l(r5)
/* 80B4AD80  38 00 00 02 */	li r0, 2
/* 80B4AD84  7C 09 03 A6 */	mtctr r0
lbl_80B4AD88:
/* 80B4AD88  7C BF 22 14 */	add r5, r31, r4
/* 80B4AD8C  B0 C5 0D 08 */	sth r6, 0xd08(r5)
/* 80B4AD90  B0 C5 0D 0A */	sth r6, 0xd0a(r5)
/* 80B4AD94  B0 C5 0D 0C */	sth r6, 0xd0c(r5)
/* 80B4AD98  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80B4AD9C  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80B4ADA0  38 63 00 04 */	addi r3, r3, 4
/* 80B4ADA4  38 84 00 06 */	addi r4, r4, 6
/* 80B4ADA8  42 00 FF E0 */	bdnz lbl_80B4AD88
/* 80B4ADAC  38 00 00 00 */	li r0, 0
/* 80B4ADB0  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80B4ADB4  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80B4ADB8  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80B4ADBC  38 00 00 01 */	li r0, 1
/* 80B4ADC0  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80B4ADC4:
/* 80B4ADC4  38 7F 0F 88 */	addi r3, r31, 0xf88
/* 80B4ADC8  4B 81 72 50 */	b __ptmf_test
/* 80B4ADCC  2C 03 00 00 */	cmpwi r3, 0
/* 80B4ADD0  41 82 00 54 */	beq lbl_80B4AE24
/* 80B4ADD4  38 7F 0F 94 */	addi r3, r31, 0xf94
/* 80B4ADD8  38 9F 0F 88 */	addi r4, r31, 0xf88
/* 80B4ADDC  4B 81 72 6C */	b __ptmf_cmpr
/* 80B4ADE0  2C 03 00 00 */	cmpwi r3, 0
/* 80B4ADE4  40 82 00 1C */	bne lbl_80B4AE00
/* 80B4ADE8  7F E3 FB 78 */	mr r3, r31
/* 80B4ADEC  38 80 00 00 */	li r4, 0
/* 80B4ADF0  39 9F 0F 94 */	addi r12, r31, 0xf94
/* 80B4ADF4  4B 81 72 90 */	b __ptmf_scall
/* 80B4ADF8  60 00 00 00 */	nop 
/* 80B4ADFC  48 00 00 28 */	b lbl_80B4AE24
lbl_80B4AE00:
/* 80B4AE00  80 7F 0F 88 */	lwz r3, 0xf88(r31)
/* 80B4AE04  80 1F 0F 8C */	lwz r0, 0xf8c(r31)
/* 80B4AE08  90 61 00 08 */	stw r3, 8(r1)
/* 80B4AE0C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B4AE10  80 1F 0F 90 */	lwz r0, 0xf90(r31)
/* 80B4AE14  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B4AE18  7F E3 FB 78 */	mr r3, r31
/* 80B4AE1C  38 81 00 08 */	addi r4, r1, 8
/* 80B4AE20  48 00 05 55 */	bl setAction__13daNpc_yamiT_cFM13daNpc_yamiT_cFPCvPvPv_i
lbl_80B4AE24:
/* 80B4AE24  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B4AE28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B4AE2C  7C 08 03 A6 */	mtlr r0
/* 80B4AE30  38 21 00 20 */	addi r1, r1, 0x20
/* 80B4AE34  4E 80 00 20 */	blr 
