lbl_80280C20:
/* 80280C20  3C 60 80 45 */	lis r3, __float_max@ha /* 0x80450AE8@ha */
/* 80280C24  C0 23 0A E8 */	lfs f1, __float_max@l(r3)  /* 0x80450AE8@l */
/* 80280C28  4E 80 00 20 */	blr 
