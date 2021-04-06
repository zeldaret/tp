lbl_802823D0:
/* 802823D0  3C 80 80 45 */	lis r4, __float_nan@ha /* 0x80450AE0@ha */
/* 802823D4  C0 04 0A E0 */	lfs f0, __float_nan@l(r4)  /* 0x80450AE0@l */
/* 802823D8  D8 03 00 08 */	stfd f0, 8(r3)
/* 802823DC  4E 80 00 20 */	blr 
