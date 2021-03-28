lbl_8027BDEC:
/* 8027BDEC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8027BDF0  7C 08 02 A6 */	mflr r0
/* 8027BDF4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8027BDF8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8027BDFC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8027BE00  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8027BE04  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8027BE08  7C 9E 23 78 */	mr r30, r4
/* 8027BE0C  7C BF 2B 78 */	mr r31, r5
/* 8027BE10  E0 23 00 04 */	psq_l f1, 4(r3), 0, 0 /* qr0 */
/* 8027BE14  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8027BE18  F0 21 00 08 */	psq_st f1, 8(r1), 0, 0 /* qr0 */
/* 8027BE1C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8027BE20  80 05 00 7C */	lwz r0, 0x7c(r5)
/* 8027BE24  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8027BE28  40 82 00 38 */	bne lbl_8027BE60
/* 8027BE2C  80 BE 00 00 */	lwz r5, 0(r30)
/* 8027BE30  80 05 00 08 */	lwz r0, 8(r5)
/* 8027BE34  54 00 86 79 */	rlwinm. r0, r0, 0x10, 0x19, 0x1c
/* 8027BE38  41 82 00 28 */	beq lbl_8027BE60
/* 8027BE3C  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 8027BE40  48 00 00 D9 */	bl calcFadeAffect__12JPAFieldBaseCFP13JPAFieldBlockf
/* 8027BE44  FF E0 08 90 */	fmr f31, f1
/* 8027BE48  E0 01 00 08 */	psq_l f0, 8(r1), 0, 0 /* qr0 */
/* 8027BE4C  E0 21 80 10 */	psq_l f1, 16(r1), 1, 0 /* qr0 */
/* 8027BE50  10 00 07 D8 */	ps_muls0 f0, f0, f31
/* 8027BE54  F0 01 00 08 */	psq_st f0, 8(r1), 0, 0 /* qr0 */
/* 8027BE58  10 01 07 D8 */	ps_muls0 f0, f1, f31
/* 8027BE5C  F0 01 80 10 */	psq_st f0, 16(r1), 1, 0 /* qr0 */
lbl_8027BE60:
/* 8027BE60  80 7E 00 00 */	lwz r3, 0(r30)
/* 8027BE64  80 03 00 08 */	lwz r0, 8(r3)
/* 8027BE68  54 00 C7 BE */	rlwinm r0, r0, 0x18, 0x1e, 0x1f
/* 8027BE6C  2C 00 00 01 */	cmpwi r0, 1
/* 8027BE70  41 82 00 44 */	beq lbl_8027BEB4
/* 8027BE74  40 80 00 10 */	bge lbl_8027BE84
/* 8027BE78  2C 00 00 00 */	cmpwi r0, 0
/* 8027BE7C  40 80 00 14 */	bge lbl_8027BE90
/* 8027BE80  48 00 00 78 */	b lbl_8027BEF8
lbl_8027BE84:
/* 8027BE84  2C 00 00 03 */	cmpwi r0, 3
/* 8027BE88  40 80 00 70 */	bge lbl_8027BEF8
/* 8027BE8C  48 00 00 4C */	b lbl_8027BED8
lbl_8027BE90:
/* 8027BE90  E0 3F 00 3C */	psq_l f1, 60(r31), 0, 0 /* qr0 */
/* 8027BE94  E0 01 00 08 */	psq_l f0, 8(r1), 0, 0 /* qr0 */
/* 8027BE98  10 01 00 2A */	ps_add f0, f1, f0
/* 8027BE9C  F0 1F 00 3C */	psq_st f0, 60(r31), 0, 0 /* qr0 */
/* 8027BEA0  E0 3F 80 44 */	psq_l f1, 68(r31), 1, 0 /* qr0 */
/* 8027BEA4  E0 01 80 10 */	psq_l f0, 16(r1), 1, 0 /* qr0 */
/* 8027BEA8  10 01 00 2A */	ps_add f0, f1, f0
/* 8027BEAC  F0 1F 80 44 */	psq_st f0, 68(r31), 1, 0 /* qr0 */
/* 8027BEB0  48 00 00 48 */	b lbl_8027BEF8
lbl_8027BEB4:
/* 8027BEB4  E0 3F 00 30 */	psq_l f1, 48(r31), 0, 0 /* qr0 */
/* 8027BEB8  E0 01 00 08 */	psq_l f0, 8(r1), 0, 0 /* qr0 */
/* 8027BEBC  10 01 00 2A */	ps_add f0, f1, f0
/* 8027BEC0  F0 1F 00 30 */	psq_st f0, 48(r31), 0, 0 /* qr0 */
/* 8027BEC4  E0 3F 80 38 */	psq_l f1, 56(r31), 1, 0 /* qr0 */
/* 8027BEC8  E0 01 80 10 */	psq_l f0, 16(r1), 1, 0 /* qr0 */
/* 8027BECC  10 01 00 2A */	ps_add f0, f1, f0
/* 8027BED0  F0 1F 80 38 */	psq_st f0, 56(r31), 1, 0 /* qr0 */
/* 8027BED4  48 00 00 24 */	b lbl_8027BEF8
lbl_8027BED8:
/* 8027BED8  E0 3F 00 48 */	psq_l f1, 72(r31), 0, 0 /* qr0 */
/* 8027BEDC  E0 01 00 08 */	psq_l f0, 8(r1), 0, 0 /* qr0 */
/* 8027BEE0  10 01 00 2A */	ps_add f0, f1, f0
/* 8027BEE4  F0 1F 00 48 */	psq_st f0, 72(r31), 0, 0 /* qr0 */
/* 8027BEE8  E0 3F 80 50 */	psq_l f1, 80(r31), 1, 0 /* qr0 */
/* 8027BEEC  E0 01 80 10 */	psq_l f0, 16(r1), 1, 0 /* qr0 */
/* 8027BEF0  10 01 00 2A */	ps_add f0, f1, f0
/* 8027BEF4  F0 1F 80 50 */	psq_st f0, 80(r31), 1, 0 /* qr0 */
lbl_8027BEF8:
/* 8027BEF8  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8027BEFC  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8027BF00  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8027BF04  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8027BF08  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8027BF0C  7C 08 03 A6 */	mtlr r0
/* 8027BF10  38 21 00 30 */	addi r1, r1, 0x30
/* 8027BF14  4E 80 00 20 */	blr 
