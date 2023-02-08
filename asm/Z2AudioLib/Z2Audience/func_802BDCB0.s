lbl_802BDCB0:
/* 802BDCB0  E0 64 00 04 */	psq_l f3, 4(r4), 0, 0 /* qr0 */
/* 802BDCB4  E0 45 00 04 */	psq_l f2, 4(r5), 0, 0 /* qr0 */
/* 802BDCB8  10 63 00 B2 */	ps_mul f3, f3, f2
/* 802BDCBC  E0 04 00 00 */	psq_l f0, 0(r4), 0, 0 /* qr0 */
/* 802BDCC0  E0 45 00 00 */	psq_l f2, 0(r5), 0, 0 /* qr0 */
/* 802BDCC4  10 40 18 BA */	ps_madd f2, f0, f2, f3
/* 802BDCC8  10 42 18 D4 */	ps_sum0 f2, f2, f3, f3
/* 802BDCCC  E0 84 00 04 */	psq_l f4, 4(r4), 0, 0 /* qr0 */
/* 802BDCD0  E0 66 00 04 */	psq_l f3, 4(r6), 0, 0 /* qr0 */
/* 802BDCD4  10 84 00 F2 */	ps_mul f4, f4, f3
/* 802BDCD8  E0 66 00 00 */	psq_l f3, 0(r6), 0, 0 /* qr0 */
/* 802BDCDC  10 60 20 FA */	ps_madd f3, f0, f3, f4
/* 802BDCE0  10 63 21 14 */	ps_sum0 f3, f3, f4, f4
/* 802BDCE4  C0 83 00 68 */	lfs f4, 0x68(r3)
/* 802BDCE8  EC 01 00 B2 */	fmuls f0, f1, f2
/* 802BDCEC  EC 44 00 2A */	fadds f2, f4, f0
/* 802BDCF0  EC 01 00 F2 */	fmuls f0, f1, f3
/* 802BDCF4  EC 04 00 2A */	fadds f0, f4, f0
/* 802BDCF8  EC 22 00 24 */	fdivs f1, f2, f0
/* 802BDCFC  4E 80 00 20 */	blr 
