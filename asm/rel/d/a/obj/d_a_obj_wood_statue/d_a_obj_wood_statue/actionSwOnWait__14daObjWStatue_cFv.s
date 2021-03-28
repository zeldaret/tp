lbl_80D3AD88:
/* 80D3AD88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3AD8C  7C 08 02 A6 */	mflr r0
/* 80D3AD90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3AD94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3AD98  7C 7F 1B 78 */	mr r31, r3
/* 80D3AD9C  3C 60 80 D4 */	lis r3, s_sh_sub__FPvPv@ha
/* 80D3ADA0  38 63 A2 1C */	addi r3, r3, s_sh_sub__FPvPv@l
/* 80D3ADA4  7F E4 FB 78 */	mr r4, r31
/* 80D3ADA8  4B 2E 65 90 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80D3ADAC  88 1F 09 3A */	lbz r0, 0x93a(r31)
/* 80D3ADB0  2C 00 00 01 */	cmpwi r0, 1
/* 80D3ADB4  41 82 00 3C */	beq lbl_80D3ADF0
/* 80D3ADB8  40 80 00 10 */	bge lbl_80D3ADC8
/* 80D3ADBC  2C 00 00 00 */	cmpwi r0, 0
/* 80D3ADC0  40 80 00 14 */	bge lbl_80D3ADD4
/* 80D3ADC4  48 00 00 A0 */	b lbl_80D3AE64
lbl_80D3ADC8:
/* 80D3ADC8  2C 00 00 03 */	cmpwi r0, 3
/* 80D3ADCC  40 80 00 98 */	bge lbl_80D3AE64
/* 80D3ADD0  48 00 00 50 */	b lbl_80D3AE20
lbl_80D3ADD4:
/* 80D3ADD4  28 03 00 00 */	cmplwi r3, 0
/* 80D3ADD8  40 82 00 8C */	bne lbl_80D3AE64
/* 80D3ADDC  38 00 00 1E */	li r0, 0x1e
/* 80D3ADE0  98 1F 09 3B */	stb r0, 0x93b(r31)
/* 80D3ADE4  38 00 00 01 */	li r0, 1
/* 80D3ADE8  98 1F 09 3A */	stb r0, 0x93a(r31)
/* 80D3ADEC  48 00 00 78 */	b lbl_80D3AE64
lbl_80D3ADF0:
/* 80D3ADF0  28 03 00 00 */	cmplwi r3, 0
/* 80D3ADF4  41 82 00 10 */	beq lbl_80D3AE04
/* 80D3ADF8  38 00 00 00 */	li r0, 0
/* 80D3ADFC  98 1F 09 3A */	stb r0, 0x93a(r31)
/* 80D3AE00  48 00 00 64 */	b lbl_80D3AE64
lbl_80D3AE04:
/* 80D3AE04  38 7F 09 3B */	addi r3, r31, 0x93b
/* 80D3AE08  48 00 07 FD */	bl func_80D3B604
/* 80D3AE0C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D3AE10  40 82 00 54 */	bne lbl_80D3AE64
/* 80D3AE14  38 00 00 02 */	li r0, 2
/* 80D3AE18  98 1F 09 3A */	stb r0, 0x93a(r31)
/* 80D3AE1C  48 00 00 48 */	b lbl_80D3AE64
lbl_80D3AE20:
/* 80D3AE20  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80D3AE24  28 00 00 02 */	cmplwi r0, 2
/* 80D3AE28  40 82 00 10 */	bne lbl_80D3AE38
/* 80D3AE2C  7F E3 FB 78 */	mr r3, r31
/* 80D3AE30  4B FF FC 0D */	bl actionWaitInit__14daObjWStatue_cFv
/* 80D3AE34  48 00 00 30 */	b lbl_80D3AE64
lbl_80D3AE38:
/* 80D3AE38  7F E3 FB 78 */	mr r3, r31
/* 80D3AE3C  A8 9F 09 48 */	lha r4, 0x948(r31)
/* 80D3AE40  38 A0 00 FF */	li r5, 0xff
/* 80D3AE44  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80D3AE48  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80D3AE4C  38 E0 00 00 */	li r7, 0
/* 80D3AE50  39 00 00 01 */	li r8, 1
/* 80D3AE54  4B 2E 08 28 */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80D3AE58  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80D3AE5C  60 00 00 02 */	ori r0, r0, 2
/* 80D3AE60  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80D3AE64:
/* 80D3AE64  38 60 00 01 */	li r3, 1
/* 80D3AE68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3AE6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3AE70  7C 08 03 A6 */	mtlr r0
/* 80D3AE74  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3AE78  4E 80 00 20 */	blr 
