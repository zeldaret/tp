lbl_80339AEC:
/* 80339AEC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80339AF0  7C 08 02 A6 */	mflr r0
/* 80339AF4  90 01 00 74 */	stw r0, 0x74(r1)
/* 80339AF8  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80339AFC  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80339B00  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80339B04  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 80339B08  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 80339B0C  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 80339B10  DB 81 00 30 */	stfd f28, 0x30(r1)
/* 80339B14  F3 81 00 38 */	psq_st f28, 56(r1), 0, 0 /* qr0 */
/* 80339B18  39 61 00 30 */	addi r11, r1, 0x30
/* 80339B1C  48 02 86 B9 */	bl _savegpr_27
/* 80339B20  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80339B24  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80339B28  3C 80 80 34 */	lis r4, func_80339CB0@ha
/* 80339B2C  38 84 9C B0 */	addi r4, r4, func_80339CB0@l
/* 80339B30  38 A0 00 00 */	li r5, 0
/* 80339B34  38 C0 00 08 */	li r6, 8
/* 80339B38  38 E0 20 00 */	li r7, 0x2000
/* 80339B3C  48 02 82 25 */	bl __construct_array
/* 80339B40  3B 80 00 00 */	li r28, 0
/* 80339B44  7F 9F E3 78 */	mr r31, r28
/* 80339B48  CB A2 CB 00 */	lfd f29, lit_441(r2)
/* 80339B4C  3F C0 43 30 */	lis r30, 0x4330
/* 80339B50  CB E2 CA E0 */	lfd f31, lit_436(r2)
/* 80339B54  CB C2 CA E8 */	lfd f30, lit_437(r2)
/* 80339B58  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80339B5C  3B A3 9A 20 */	addi r29, r3, sincosTable___5JMath@l
lbl_80339B60:
/* 80339B60  6F 80 80 00 */	xoris r0, r28, 0x8000
/* 80339B64  90 01 00 0C */	stw r0, 0xc(r1)
/* 80339B68  93 C1 00 08 */	stw r30, 8(r1)
/* 80339B6C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80339B70  FC 00 E8 28 */	fsub f0, f0, f29
/* 80339B74  FC 00 07 F2 */	fmul f0, f0, f31
/* 80339B78  FF 80 F0 24 */	fdiv f28, f0, f30
/* 80339B7C  FC 20 E0 90 */	fmr f1, f28
/* 80339B80  48 03 2A 11 */	bl sin
/* 80339B84  FC 00 08 18 */	frsp f0, f1
/* 80339B88  7F 7D FA 14 */	add r27, r29, r31
/* 80339B8C  D0 1B 00 00 */	stfs f0, 0(r27)
/* 80339B90  FC 20 E0 90 */	fmr f1, f28
/* 80339B94  48 03 24 95 */	bl cos
/* 80339B98  FC 00 08 18 */	frsp f0, f1
/* 80339B9C  D0 1B 00 04 */	stfs f0, 4(r27)
/* 80339BA0  3B 9C 00 01 */	addi r28, r28, 1
/* 80339BA4  2C 1C 20 00 */	cmpwi r28, 0x2000
/* 80339BA8  3B FF 00 08 */	addi r31, r31, 8
/* 80339BAC  41 80 FF B4 */	blt lbl_80339B60
/* 80339BB0  3B 80 00 00 */	li r28, 0
/* 80339BB4  3B E0 00 00 */	li r31, 0
/* 80339BB8  CB E2 CB 00 */	lfd f31, lit_441(r2)
/* 80339BBC  3F C0 43 30 */	lis r30, 0x4330
/* 80339BC0  CB C2 CA F0 */	lfd f30, lit_438(r2)
/* 80339BC4  3C 60 80 45 */	lis r3, atanTable___5JMath@ha
/* 80339BC8  3B A3 9A 20 */	addi r29, r3, atanTable___5JMath@l
lbl_80339BCC:
/* 80339BCC  6F 80 80 00 */	xoris r0, r28, 0x8000
/* 80339BD0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80339BD4  93 C1 00 08 */	stw r30, 8(r1)
/* 80339BD8  C8 01 00 08 */	lfd f0, 8(r1)
/* 80339BDC  FC 00 F8 28 */	fsub f0, f0, f31
/* 80339BE0  FC 20 07 B2 */	fmul f1, f0, f30
/* 80339BE4  48 03 20 C1 */	bl atan
/* 80339BE8  FC 00 08 18 */	frsp f0, f1
/* 80339BEC  7C 1D FD 2E */	stfsx f0, r29, r31
/* 80339BF0  3B 9C 00 01 */	addi r28, r28, 1
/* 80339BF4  28 1C 04 00 */	cmplwi r28, 0x400
/* 80339BF8  3B FF 00 04 */	addi r31, r31, 4
/* 80339BFC  41 80 FF D0 */	blt lbl_80339BCC
/* 80339C00  C0 02 CA D8 */	lfs f0, lit_326(r2)
/* 80339C04  3C 60 80 45 */	lis r3, atanTable___5JMath@ha
/* 80339C08  D4 03 9A 20 */	stfsu f0, atanTable___5JMath@l(r3)
/* 80339C0C  C0 02 CA F8 */	lfs f0, lit_439(r2)
/* 80339C10  D0 03 10 00 */	stfs f0, 0x1000(r3)
/* 80339C14  3B 80 00 00 */	li r28, 0
/* 80339C18  3B E0 00 00 */	li r31, 0
/* 80339C1C  CB C2 CB 00 */	lfd f30, lit_441(r2)
/* 80339C20  3F A0 43 30 */	lis r29, 0x4330
/* 80339C24  CB E2 CA F0 */	lfd f31, lit_438(r2)
/* 80339C28  3C 60 80 45 */	lis r3, asinAcosTable___5JMath@ha
/* 80339C2C  3B C3 AA 40 */	addi r30, r3, asinAcosTable___5JMath@l
lbl_80339C30:
/* 80339C30  6F 80 80 00 */	xoris r0, r28, 0x8000
/* 80339C34  90 01 00 0C */	stw r0, 0xc(r1)
/* 80339C38  93 A1 00 08 */	stw r29, 8(r1)
/* 80339C3C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80339C40  FC 00 F0 28 */	fsub f0, f0, f30
/* 80339C44  FC 20 07 F2 */	fmul f1, f0, f31
/* 80339C48  48 03 2A B9 */	bl asin
/* 80339C4C  FC 00 08 18 */	frsp f0, f1
/* 80339C50  7C 1E FD 2E */	stfsx f0, r30, r31
/* 80339C54  3B 9C 00 01 */	addi r28, r28, 1
/* 80339C58  2C 1C 04 00 */	cmpwi r28, 0x400
/* 80339C5C  3B FF 00 04 */	addi r31, r31, 4
/* 80339C60  41 80 FF D0 */	blt lbl_80339C30
/* 80339C64  C0 02 CA D8 */	lfs f0, lit_326(r2)
/* 80339C68  3C 60 80 45 */	lis r3, asinAcosTable___5JMath@ha
/* 80339C6C  D4 03 AA 40 */	stfsu f0, asinAcosTable___5JMath@l(r3)
/* 80339C70  C0 02 CA F8 */	lfs f0, lit_439(r2)
/* 80339C74  D0 03 10 00 */	stfs f0, 0x1000(r3)
/* 80339C78  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80339C7C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80339C80  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 80339C84  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80339C88  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 80339C8C  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 80339C90  E3 81 00 38 */	psq_l f28, 56(r1), 0, 0 /* qr0 */
/* 80339C94  CB 81 00 30 */	lfd f28, 0x30(r1)
/* 80339C98  39 61 00 30 */	addi r11, r1, 0x30
/* 80339C9C  48 02 85 85 */	bl _restgpr_27
/* 80339CA0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80339CA4  7C 08 03 A6 */	mtlr r0
/* 80339CA8  38 21 00 70 */	addi r1, r1, 0x70
/* 80339CAC  4E 80 00 20 */	blr 
