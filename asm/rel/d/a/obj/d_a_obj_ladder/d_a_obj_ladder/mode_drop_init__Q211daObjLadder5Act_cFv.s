lbl_8058D7A8:
/* 8058D7A8  3C 80 80 59 */	lis r4, lit_3792@ha /* 0x8058DD9C@ha */
/* 8058D7AC  C0 04 DD 9C */	lfs f0, lit_3792@l(r4)  /* 0x8058DD9C@l */
/* 8058D7B0  D0 03 05 30 */	stfs f0, 0x530(r3)
/* 8058D7B4  3C 80 80 43 */	lis r4, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 8058D7B8  C4 04 0C F4 */	lfsu f0, Zero__4cXyz@l(r4)  /* 0x80430CF4@l */
/* 8058D7BC  D0 03 04 F8 */	stfs f0, 0x4f8(r3)
/* 8058D7C0  C0 04 00 04 */	lfs f0, 4(r4)
/* 8058D7C4  D0 03 04 FC */	stfs f0, 0x4fc(r3)
/* 8058D7C8  C0 04 00 08 */	lfs f0, 8(r4)
/* 8058D7CC  D0 03 05 00 */	stfs f0, 0x500(r3)
/* 8058D7D0  3C 80 80 59 */	lis r4, data_8058DD50@ha /* 0x8058DD50@ha */
/* 8058D7D4  38 84 DD 50 */	addi r4, r4, data_8058DD50@l /* 0x8058DD50@l */
/* 8058D7D8  88 04 00 10 */	lbz r0, 0x10(r4)
/* 8058D7DC  B0 03 05 B6 */	sth r0, 0x5b6(r3)
/* 8058D7E0  38 00 00 03 */	li r0, 3
/* 8058D7E4  90 03 05 B0 */	stw r0, 0x5b0(r3)
/* 8058D7E8  4E 80 00 20 */	blr 
