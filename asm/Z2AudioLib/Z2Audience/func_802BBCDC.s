lbl_802BBCDC:
/* 802BBCDC  E0 24 00 00 */	psq_l f1, 0(r4), 0, 0 /* qr0 */
/* 802BBCE0  E0 03 00 00 */	psq_l f0, 0(r3), 0, 0 /* qr0 */
/* 802BBCE4  10 01 00 28 */	ps_sub f0, f1, f0
/* 802BBCE8  F0 03 00 0C */	psq_st f0, 12(r3), 0, 0 /* qr0 */
/* 802BBCEC  E0 24 80 08 */	psq_l f1, 8(r4), 1, 0 /* qr0 */
/* 802BBCF0  E0 03 80 08 */	psq_l f0, 8(r3), 1, 0 /* qr0 */
/* 802BBCF4  10 01 00 28 */	ps_sub f0, f1, f0
/* 802BBCF8  F0 03 80 14 */	psq_st f0, 20(r3), 1, 0 /* qr0 */
/* 802BBCFC  C0 04 00 00 */	lfs f0, 0(r4)
/* 802BBD00  D0 03 00 00 */	stfs f0, 0(r3)
/* 802BBD04  C0 04 00 04 */	lfs f0, 4(r4)
/* 802BBD08  D0 03 00 04 */	stfs f0, 4(r3)
/* 802BBD0C  C0 04 00 08 */	lfs f0, 8(r4)
/* 802BBD10  D0 03 00 08 */	stfs f0, 8(r3)
/* 802BBD14  4E 80 00 20 */	blr 
