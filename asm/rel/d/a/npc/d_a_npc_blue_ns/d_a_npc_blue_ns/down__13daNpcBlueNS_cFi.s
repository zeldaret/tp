lbl_8096AD70:
/* 8096AD70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8096AD74  7C 08 02 A6 */	mflr r0
/* 8096AD78  90 01 00 24 */	stw r0, 0x24(r1)
/* 8096AD7C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8096AD80  7C 7F 1B 78 */	mr r31, r3
/* 8096AD84  A0 03 0D C0 */	lhz r0, 0xdc0(r3)
/* 8096AD88  2C 00 00 02 */	cmpwi r0, 2
/* 8096AD8C  41 82 00 58 */	beq lbl_8096ADE4
/* 8096AD90  40 80 00 B4 */	bge lbl_8096AE44
/* 8096AD94  2C 00 00 00 */	cmpwi r0, 0
/* 8096AD98  41 82 00 0C */	beq lbl_8096ADA4
/* 8096AD9C  48 00 00 A8 */	b lbl_8096AE44
/* 8096ADA0  48 00 00 A4 */	b lbl_8096AE44
lbl_8096ADA4:
/* 8096ADA4  80 9F 0E 08 */	lwz r4, 0xe08(r31)
/* 8096ADA8  3C A0 80 97 */	lis r5, lit_4307@ha /* 0x8096C9EC@ha */
/* 8096ADAC  C0 25 C9 EC */	lfs f1, lit_4307@l(r5)  /* 0x8096C9EC@l */
/* 8096ADB0  38 A0 00 00 */	li r5, 0
/* 8096ADB4  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 8096ADB8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8096ADBC  7D 89 03 A6 */	mtctr r12
/* 8096ADC0  4E 80 04 21 */	bctrl 
/* 8096ADC4  3C 60 80 97 */	lis r3, lit_4393@ha /* 0x8096C9F4@ha */
/* 8096ADC8  C0 03 C9 F4 */	lfs f0, lit_4393@l(r3)  /* 0x8096C9F4@l */
/* 8096ADCC  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8096ADD0  7F E3 FB 78 */	mr r3, r31
/* 8096ADD4  48 00 05 4D */	bl downSE__13daNpcBlueNS_cFv
/* 8096ADD8  38 00 00 02 */	li r0, 2
/* 8096ADDC  B0 1F 0D C0 */	sth r0, 0xdc0(r31)
/* 8096ADE0  48 00 00 64 */	b lbl_8096AE44
lbl_8096ADE4:
/* 8096ADE4  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 8096ADE8  38 A0 00 01 */	li r5, 1
/* 8096ADEC  88 04 00 11 */	lbz r0, 0x11(r4)
/* 8096ADF0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8096ADF4  40 82 00 1C */	bne lbl_8096AE10
/* 8096ADF8  3C 60 80 97 */	lis r3, lit_4393@ha /* 0x8096C9F4@ha */
/* 8096ADFC  C0 23 C9 F4 */	lfs f1, lit_4393@l(r3)  /* 0x8096C9F4@l */
/* 8096AE00  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 8096AE04  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8096AE08  41 82 00 08 */	beq lbl_8096AE10
/* 8096AE0C  38 A0 00 00 */	li r5, 0
lbl_8096AE10:
/* 8096AE10  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 8096AE14  41 82 00 30 */	beq lbl_8096AE44
/* 8096AE18  3C 60 80 97 */	lis r3, lit_5100@ha /* 0x8096CD28@ha */
/* 8096AE1C  38 83 CD 28 */	addi r4, r3, lit_5100@l /* 0x8096CD28@l */
/* 8096AE20  80 64 00 00 */	lwz r3, 0(r4)
/* 8096AE24  80 04 00 04 */	lwz r0, 4(r4)
/* 8096AE28  90 61 00 08 */	stw r3, 8(r1)
/* 8096AE2C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8096AE30  80 04 00 08 */	lwz r0, 8(r4)
/* 8096AE34  90 01 00 10 */	stw r0, 0x10(r1)
/* 8096AE38  7F E3 FB 78 */	mr r3, r31
/* 8096AE3C  38 81 00 08 */	addi r4, r1, 8
/* 8096AE40  4B FF F9 11 */	bl setAction__13daNpcBlueNS_cFM13daNpcBlueNS_cFPCvPvi_i
lbl_8096AE44:
/* 8096AE44  38 60 00 01 */	li r3, 1
/* 8096AE48  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8096AE4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8096AE50  7C 08 03 A6 */	mtlr r0
/* 8096AE54  38 21 00 20 */	addi r1, r1, 0x20
/* 8096AE58  4E 80 00 20 */	blr 
