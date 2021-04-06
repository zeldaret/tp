lbl_802BDD48:
/* 802BDD48  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802BDD4C  7C 08 02 A6 */	mflr r0
/* 802BDD50  90 01 00 34 */	stw r0, 0x34(r1)
/* 802BDD54  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802BDD58  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802BDD5C  7C 7E 1B 78 */	mr r30, r3
/* 802BDD60  7C 9F 23 78 */	mr r31, r4
/* 802BDD64  7C A7 2B 78 */	mr r7, r5
/* 802BDD68  80 05 00 10 */	lwz r0, 0x10(r5)
/* 802BDD6C  90 01 00 0C */	stw r0, 0xc(r1)
/* 802BDD70  88 01 00 0C */	lbz r0, 0xc(r1)
/* 802BDD74  54 00 E7 3F */	rlwinm. r0, r0, 0x1c, 0x1c, 0x1f
/* 802BDD78  41 82 01 40 */	beq lbl_802BDEB8
/* 802BDD7C  E0 3F 00 14 */	psq_l f1, 20(r31), 0, 0 /* qr0 */
/* 802BDD80  10 21 00 72 */	ps_mul f1, f1, f1
/* 802BDD84  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 802BDD88  10 A0 08 3A */	ps_madd f5, f0, f0, f1
/* 802BDD8C  10 A5 08 54 */	ps_sum0 f5, f5, f1, f1
/* 802BDD90  C0 22 C1 18 */	lfs f1, lit_1271(r2)
/* 802BDD94  3C 60 80 45 */	lis r3, __float_epsilon@ha /* 0x80450AEC@ha */
/* 802BDD98  C0 03 0A EC */	lfs f0, __float_epsilon@l(r3)  /* 0x80450AEC@l */
/* 802BDD9C  EC 01 00 32 */	fmuls f0, f1, f0
/* 802BDDA0  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 802BDDA4  4C 40 13 82 */	cror 2, 0, 2
/* 802BDDA8  40 82 00 18 */	bne lbl_802BDDC0
/* 802BDDAC  C0 02 C0 A0 */	lfs f0, lit_848(r2)
/* 802BDDB0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 802BDDB4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802BDDB8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802BDDBC  48 00 00 5C */	b lbl_802BDE18
lbl_802BDDC0:
/* 802BDDC0  C0 02 C0 A0 */	lfs f0, lit_848(r2)
/* 802BDDC4  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 802BDDC8  4C 40 13 82 */	cror 2, 0, 2
/* 802BDDCC  40 82 00 0C */	bne lbl_802BDDD8
/* 802BDDD0  FC 60 28 90 */	fmr f3, f5
/* 802BDDD4  48 00 00 2C */	b lbl_802BDE00
lbl_802BDDD8:
/* 802BDDD8  FC 80 28 34 */	frsqrte f4, f5
/* 802BDDDC  FC 80 20 18 */	frsp f4, f4
/* 802BDDE0  C0 02 C0 A8 */	lfs f0, lit_895(r2)
/* 802BDDE4  EC 40 01 32 */	fmuls f2, f0, f4
/* 802BDDE8  C0 22 C0 B0 */	lfs f1, lit_998(r2)
/* 802BDDEC  EC 04 01 32 */	fmuls f0, f4, f4
/* 802BDDF0  EC 05 00 32 */	fmuls f0, f5, f0
/* 802BDDF4  EC 01 00 28 */	fsubs f0, f1, f0
/* 802BDDF8  EC 02 00 32 */	fmuls f0, f2, f0
/* 802BDDFC  FC 60 00 90 */	fmr f3, f0
lbl_802BDE00:
/* 802BDE00  E0 1F 00 14 */	psq_l f0, 20(r31), 0, 0 /* qr0 */
/* 802BDE04  E0 3F 80 1C */	psq_l f1, 28(r31), 1, 0 /* qr0 */
/* 802BDE08  10 00 00 D8 */	ps_muls0 f0, f0, f3
/* 802BDE0C  F0 01 00 10 */	psq_st f0, 16(r1), 0, 0 /* qr0 */
/* 802BDE10  10 01 00 D8 */	ps_muls0 f0, f1, f3
/* 802BDE14  F0 01 80 18 */	psq_st f0, 24(r1), 1, 0 /* qr0 */
lbl_802BDE18:
/* 802BDE18  80 07 00 10 */	lwz r0, 0x10(r7)
/* 802BDE1C  90 01 00 08 */	stw r0, 8(r1)
/* 802BDE20  C0 42 C1 34 */	lfs f2, lit_1988(r2)
/* 802BDE24  88 01 00 08 */	lbz r0, 8(r1)
/* 802BDE28  54 00 E7 3E */	rlwinm r0, r0, 0x1c, 0x1c, 0x1f
/* 802BDE2C  C8 22 C0 D0 */	lfd f1, lit_1008(r2)
/* 802BDE30  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BDE34  3C 00 43 30 */	lis r0, 0x4330
/* 802BDE38  90 01 00 20 */	stw r0, 0x20(r1)
/* 802BDE3C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 802BDE40  EC 00 08 28 */	fsubs f0, f0, f1
/* 802BDE44  EC 22 00 32 */	fmuls f1, f2, f0
/* 802BDE48  7F C3 F3 78 */	mr r3, r30
/* 802BDE4C  38 81 00 10 */	addi r4, r1, 0x10
/* 802BDE50  38 A6 00 30 */	addi r5, r6, 0x30
/* 802BDE54  38 C7 00 20 */	addi r6, r7, 0x20
/* 802BDE58  4B FF FE 59 */	bl func_802BDCB0
/* 802BDE5C  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 802BDE60  C0 02 C0 A0 */	lfs f0, lit_848(r2)
/* 802BDE64  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802BDE68  40 81 00 38 */	ble lbl_802BDEA0
/* 802BDE6C  C0 7E 00 6C */	lfs f3, 0x6c(r30)
/* 802BDE70  EC 01 00 F2 */	fmuls f0, f1, f3
/* 802BDE74  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802BDE78  40 81 00 0C */	ble lbl_802BDE84
/* 802BDE7C  FC 20 10 90 */	fmr f1, f2
/* 802BDE80  48 00 00 3C */	b lbl_802BDEBC
lbl_802BDE84:
/* 802BDE84  EC 02 00 F2 */	fmuls f0, f2, f3
/* 802BDE88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802BDE8C  40 81 00 0C */	ble lbl_802BDE98
/* 802BDE90  FC 20 10 90 */	fmr f1, f2
/* 802BDE94  48 00 00 28 */	b lbl_802BDEBC
lbl_802BDE98:
/* 802BDE98  D0 3F 00 34 */	stfs f1, 0x34(r31)
/* 802BDE9C  48 00 00 20 */	b lbl_802BDEBC
lbl_802BDEA0:
/* 802BDEA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802BDEA4  40 81 00 0C */	ble lbl_802BDEB0
/* 802BDEA8  D0 3F 00 34 */	stfs f1, 0x34(r31)
/* 802BDEAC  48 00 00 10 */	b lbl_802BDEBC
lbl_802BDEB0:
/* 802BDEB0  C0 22 C0 A4 */	lfs f1, lit_894(r2)
/* 802BDEB4  48 00 00 08 */	b lbl_802BDEBC
lbl_802BDEB8:
/* 802BDEB8  C0 22 C0 A4 */	lfs f1, lit_894(r2)
lbl_802BDEBC:
/* 802BDEBC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802BDEC0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802BDEC4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802BDEC8  7C 08 03 A6 */	mtlr r0
/* 802BDECC  38 21 00 30 */	addi r1, r1, 0x30
/* 802BDED0  4E 80 00 20 */	blr 
