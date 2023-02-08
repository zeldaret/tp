lbl_802BBD18:
/* 802BBD18  C0 45 00 00 */	lfs f2, 0(r5)
/* 802BBD1C  D0 44 00 00 */	stfs f2, 0(r4)
/* 802BBD20  C0 25 00 04 */	lfs f1, 4(r5)
/* 802BBD24  D0 24 00 04 */	stfs f1, 4(r4)
/* 802BBD28  C0 05 00 08 */	lfs f0, 8(r5)
/* 802BBD2C  D0 04 00 08 */	stfs f0, 8(r4)
/* 802BBD30  28 06 00 00 */	cmplwi r6, 0
/* 802BBD34  41 82 00 40 */	beq lbl_802BBD74
/* 802BBD38  C0 06 00 00 */	lfs f0, 0(r6)
/* 802BBD3C  D0 03 00 00 */	stfs f0, 0(r3)
/* 802BBD40  C0 06 00 04 */	lfs f0, 4(r6)
/* 802BBD44  D0 03 00 04 */	stfs f0, 4(r3)
/* 802BBD48  C0 06 00 08 */	lfs f0, 8(r6)
/* 802BBD4C  D0 03 00 08 */	stfs f0, 8(r3)
/* 802BBD50  E0 25 00 00 */	psq_l f1, 0(r5), 0, 0 /* qr0 */
/* 802BBD54  E0 03 00 00 */	psq_l f0, 0(r3), 0, 0 /* qr0 */
/* 802BBD58  10 01 00 28 */	ps_sub f0, f1, f0
/* 802BBD5C  F0 03 00 0C */	psq_st f0, 12(r3), 0, 0 /* qr0 */
/* 802BBD60  E0 25 80 08 */	psq_l f1, 8(r5), 1, 0 /* qr0 */
/* 802BBD64  E0 03 80 08 */	psq_l f0, 8(r3), 1, 0 /* qr0 */
/* 802BBD68  10 01 00 28 */	ps_sub f0, f1, f0
/* 802BBD6C  F0 03 80 14 */	psq_st f0, 20(r3), 1, 0 /* qr0 */
/* 802BBD70  4E 80 00 20 */	blr 
lbl_802BBD74:
/* 802BBD74  D0 43 00 00 */	stfs f2, 0(r3)
/* 802BBD78  D0 23 00 04 */	stfs f1, 4(r3)
/* 802BBD7C  D0 03 00 08 */	stfs f0, 8(r3)
/* 802BBD80  C0 02 C0 A0 */	lfs f0, lit_848(r2)
/* 802BBD84  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 802BBD88  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 802BBD8C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 802BBD90  4E 80 00 20 */	blr 
