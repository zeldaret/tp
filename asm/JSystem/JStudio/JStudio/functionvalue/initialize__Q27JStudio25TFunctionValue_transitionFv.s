lbl_80282484:
/* 80282484  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80282488  7C 08 02 A6 */	mflr r0
/* 8028248C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80282490  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80282494  7C 7F 1B 78 */	mr r31, r3
/* 80282498  38 7F 00 08 */	addi r3, r31, 8
/* 8028249C  4B FF F4 7D */	bl range_initialize__Q27JStudio29TFunctionValueAttribute_rangeFv
/* 802824A0  38 00 00 00 */	li r0, 0
/* 802824A4  90 1F 00 40 */	stw r0, 0x40(r31)
/* 802824A8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 802824AC  C0 03 0A E0 */	lfs f0, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 802824B0  D8 1F 00 48 */	stfd f0, 0x48(r31)
/* 802824B4  C8 1F 00 48 */	lfd f0, 0x48(r31)
/* 802824B8  D8 1F 00 50 */	stfd f0, 0x50(r31)
/* 802824BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802824C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802824C4  7C 08 03 A6 */	mtlr r0
/* 802824C8  38 21 00 10 */	addi r1, r1, 0x10
/* 802824CC  4E 80 00 20 */	blr 
