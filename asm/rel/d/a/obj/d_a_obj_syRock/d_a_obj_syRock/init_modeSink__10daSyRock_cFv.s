lbl_80D033D0:
/* 80D033D0  3C 80 80 D0 */	lis r4, lit_3662@ha /* 0x80D03F90@ha */
/* 80D033D4  38 A4 3F 90 */	addi r5, r4, lit_3662@l /* 0x80D03F90@l */
/* 80D033D8  3C 80 80 D0 */	lis r4, l_HIO@ha /* 0x80D0426C@ha */
/* 80D033DC  38 84 42 6C */	addi r4, r4, l_HIO@l /* 0x80D0426C@l */
/* 80D033E0  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 80D033E4  FC 20 00 50 */	fneg f1, f0
/* 80D033E8  C0 04 00 2C */	lfs f0, 0x2c(r4)
/* 80D033EC  EC 01 00 2A */	fadds f0, f1, f0
/* 80D033F0  D0 03 05 30 */	stfs f0, 0x530(r3)
/* 80D033F4  C0 03 04 FC */	lfs f0, 0x4fc(r3)
/* 80D033F8  C0 25 00 90 */	lfs f1, 0x90(r5)
/* 80D033FC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80D03400  40 80 00 08 */	bge lbl_80D03408
/* 80D03404  48 00 00 18 */	b lbl_80D0341C
lbl_80D03408:
/* 80D03408  C0 25 00 94 */	lfs f1, 0x94(r5)
/* 80D0340C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80D03410  40 81 00 08 */	ble lbl_80D03418
/* 80D03414  48 00 00 08 */	b lbl_80D0341C
lbl_80D03418:
/* 80D03418  FC 20 00 90 */	fmr f1, f0
lbl_80D0341C:
/* 80D0341C  D0 23 04 FC */	stfs f1, 0x4fc(r3)
/* 80D03420  80 03 09 94 */	lwz r0, 0x994(r3)
/* 80D03424  28 00 00 00 */	cmplwi r0, 0
/* 80D03428  40 82 00 0C */	bne lbl_80D03434
/* 80D0342C  C0 05 00 58 */	lfs f0, 0x58(r5)
/* 80D03430  D0 03 07 6C */	stfs f0, 0x76c(r3)
lbl_80D03434:
/* 80D03434  38 00 00 03 */	li r0, 3
/* 80D03438  98 03 05 C8 */	stb r0, 0x5c8(r3)
/* 80D0343C  4E 80 00 20 */	blr 
