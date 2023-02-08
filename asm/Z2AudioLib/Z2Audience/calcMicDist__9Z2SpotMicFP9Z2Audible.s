lbl_802BCF5C:
/* 802BCF5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802BCF60  7C 08 02 A6 */	mflr r0
/* 802BCF64  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BCF68  88 03 00 25 */	lbz r0, 0x25(r3)
/* 802BCF6C  28 00 00 00 */	cmplwi r0, 0
/* 802BCF70  40 82 00 0C */	bne lbl_802BCF7C
/* 802BCF74  C0 22 C0 A0 */	lfs f1, lit_848(r2)
/* 802BCF78  48 00 00 5C */	b lbl_802BCFD4
lbl_802BCF7C:
/* 802BCF7C  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802BCF80  28 03 00 00 */	cmplwi r3, 0
/* 802BCF84  40 82 00 0C */	bne lbl_802BCF90
/* 802BCF88  C0 22 C0 A0 */	lfs f1, lit_848(r2)
/* 802BCF8C  48 00 00 48 */	b lbl_802BCFD4
lbl_802BCF90:
/* 802BCF90  28 04 00 00 */	cmplwi r4, 0
/* 802BCF94  40 82 00 0C */	bne lbl_802BCFA0
/* 802BCF98  C0 22 C0 A0 */	lfs f1, lit_848(r2)
/* 802BCF9C  48 00 00 38 */	b lbl_802BCFD4
lbl_802BCFA0:
/* 802BCFA0  E0 23 00 00 */	psq_l f1, 0(r3), 0, 0 /* qr0 */
/* 802BCFA4  C0 03 00 08 */	lfs f0, 8(r3)
/* 802BCFA8  F0 21 00 08 */	psq_st f1, 8(r1), 0, 0 /* qr0 */
/* 802BCFAC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802BCFB0  38 61 00 14 */	addi r3, r1, 0x14
/* 802BCFB4  E0 04 00 04 */	psq_l f0, 4(r4), 0, 0 /* qr0 */
/* 802BCFB8  10 00 08 28 */	ps_sub f0, f0, f1
/* 802BCFBC  F0 03 00 00 */	psq_st f0, 0(r3), 0, 0 /* qr0 */
/* 802BCFC0  E0 24 80 0C */	psq_l f1, 12(r4), 1, 0 /* qr0 */
/* 802BCFC4  E0 01 80 10 */	psq_l f0, 16(r1), 1, 0 /* qr0 */
/* 802BCFC8  10 01 00 28 */	ps_sub f0, f1, f0
/* 802BCFCC  F0 03 80 08 */	psq_st f0, 8(r3), 1, 0 /* qr0 */
/* 802BCFD0  48 08 A1 81 */	bl PSVECMag
lbl_802BCFD4:
/* 802BCFD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802BCFD8  7C 08 03 A6 */	mtlr r0
/* 802BCFDC  38 21 00 20 */	addi r1, r1, 0x20
/* 802BCFE0  4E 80 00 20 */	blr 
