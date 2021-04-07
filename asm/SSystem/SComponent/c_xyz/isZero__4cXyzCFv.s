lbl_802670AC:
/* 802670AC  38 A0 00 00 */	li r5, 0
/* 802670B0  7C A0 2B 78 */	mr r0, r5
/* 802670B4  C0 03 00 00 */	lfs f0, 0(r3)
/* 802670B8  FC 00 02 10 */	fabs f0, f0
/* 802670BC  FC 40 00 18 */	frsp f2, f0
/* 802670C0  C0 22 B6 84 */	lfs f1, lit_2405(r2)
/* 802670C4  3C 80 80 45 */	lis r4, __float_epsilon@ha /* 0x80450AEC@ha */
/* 802670C8  C0 04 0A EC */	lfs f0, __float_epsilon@l(r4)  /* 0x80450AEC@l */
/* 802670CC  EC 21 00 32 */	fmuls f1, f1, f0
/* 802670D0  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 802670D4  40 80 00 1C */	bge lbl_802670F0
/* 802670D8  C0 03 00 04 */	lfs f0, 4(r3)
/* 802670DC  FC 00 02 10 */	fabs f0, f0
/* 802670E0  FC 00 00 18 */	frsp f0, f0
/* 802670E4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802670E8  40 80 00 08 */	bge lbl_802670F0
/* 802670EC  38 00 00 01 */	li r0, 1
lbl_802670F0:
/* 802670F0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 802670F4  41 82 00 2C */	beq lbl_80267120
/* 802670F8  C0 03 00 08 */	lfs f0, 8(r3)
/* 802670FC  FC 00 02 10 */	fabs f0, f0
/* 80267100  FC 40 00 18 */	frsp f2, f0
/* 80267104  C0 22 B6 84 */	lfs f1, lit_2405(r2)
/* 80267108  3C 60 80 45 */	lis r3, __float_epsilon@ha /* 0x80450AEC@ha */
/* 8026710C  C0 03 0A EC */	lfs f0, __float_epsilon@l(r3)  /* 0x80450AEC@l */
/* 80267110  EC 01 00 32 */	fmuls f0, f1, f0
/* 80267114  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80267118  40 80 00 08 */	bge lbl_80267120
/* 8026711C  38 A0 00 01 */	li r5, 1
lbl_80267120:
/* 80267120  7C A3 2B 78 */	mr r3, r5
/* 80267124  4E 80 00 20 */	blr 
