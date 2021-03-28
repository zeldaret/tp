lbl_802C60E0:
/* 802C60E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C60E4  7C 08 02 A6 */	mflr r0
/* 802C60E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C60EC  FC A0 18 90 */	fmr f5, f3
/* 802C60F0  80 04 00 00 */	lwz r0, 0(r4)
/* 802C60F4  90 01 00 08 */	stw r0, 8(r1)
/* 802C60F8  38 81 00 08 */	addi r4, r1, 8
/* 802C60FC  C0 63 00 08 */	lfs f3, 8(r3)
/* 802C6100  C0 83 00 0C */	lfs f4, 0xc(r3)
/* 802C6104  38 A0 00 00 */	li r5, 0
/* 802C6108  4B FF F9 AD */	bl startEnvSeLevel__11Z2EnvSeBaseF10JAISoundIDfffffUl
/* 802C610C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C6110  7C 08 03 A6 */	mtlr r0
/* 802C6114  38 21 00 10 */	addi r1, r1, 0x10
/* 802C6118  4E 80 00 20 */	blr 
