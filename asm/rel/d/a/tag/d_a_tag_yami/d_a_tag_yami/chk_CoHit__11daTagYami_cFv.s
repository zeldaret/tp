lbl_80D65D0C:
/* 80D65D0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D65D10  7C 08 02 A6 */	mflr r0
/* 80D65D14  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D65D18  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80D65D1C  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80D65D20  88 03 06 E0 */	lbz r0, 0x6e0(r3)
/* 80D65D24  28 00 00 00 */	cmplwi r0, 0
/* 80D65D28  40 82 00 0C */	bne lbl_80D65D34
/* 80D65D2C  38 60 00 00 */	li r3, 0
/* 80D65D30  48 00 00 18 */	b lbl_80D65D48
lbl_80D65D34:
/* 80D65D34  C3 E3 06 FC */	lfs f31, 0x6fc(r3)
/* 80D65D38  48 00 00 29 */	bl getPlDist__11daTagYami_cFv
/* 80D65D3C  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80D65D40  7C 00 00 26 */	mfcr r0
/* 80D65D44  54 03 0F FE */	srwi r3, r0, 0x1f
lbl_80D65D48:
/* 80D65D48  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80D65D4C  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80D65D50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D65D54  7C 08 03 A6 */	mtlr r0
/* 80D65D58  38 21 00 20 */	addi r1, r1, 0x20
/* 80D65D5C  4E 80 00 20 */	blr 
