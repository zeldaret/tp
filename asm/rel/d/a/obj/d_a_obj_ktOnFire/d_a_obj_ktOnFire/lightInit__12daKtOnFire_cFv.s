lbl_8058C960:
/* 8058C960  3C 80 80 59 */	lis r4, mCcDObjInfo__12daKtOnFire_c@ha /* 0x8058CF88@ha */
/* 8058C964  38 84 CF 88 */	addi r4, r4, mCcDObjInfo__12daKtOnFire_c@l /* 0x8058CF88@l */
/* 8058C968  C0 03 06 E4 */	lfs f0, 0x6e4(r3)
/* 8058C96C  D0 03 06 FC */	stfs f0, 0x6fc(r3)
/* 8058C970  C0 03 06 E8 */	lfs f0, 0x6e8(r3)
/* 8058C974  D0 03 07 00 */	stfs f0, 0x700(r3)
/* 8058C978  C0 03 06 EC */	lfs f0, 0x6ec(r3)
/* 8058C97C  D0 03 07 04 */	stfs f0, 0x704(r3)
/* 8058C980  C0 23 07 00 */	lfs f1, 0x700(r3)
/* 8058C984  C0 04 00 30 */	lfs f0, 0x30(r4)
/* 8058C988  EC 01 00 2A */	fadds f0, f1, f0
/* 8058C98C  D0 03 07 00 */	stfs f0, 0x700(r3)
/* 8058C990  C0 03 06 FC */	lfs f0, 0x6fc(r3)
/* 8058C994  D0 03 07 08 */	stfs f0, 0x708(r3)
/* 8058C998  C0 03 07 00 */	lfs f0, 0x700(r3)
/* 8058C99C  D0 03 07 0C */	stfs f0, 0x70c(r3)
/* 8058C9A0  C0 03 07 04 */	lfs f0, 0x704(r3)
/* 8058C9A4  D0 03 07 10 */	stfs f0, 0x710(r3)
/* 8058C9A8  38 00 00 BC */	li r0, 0xbc
/* 8058C9AC  B0 03 07 14 */	sth r0, 0x714(r3)
/* 8058C9B0  38 00 00 66 */	li r0, 0x66
/* 8058C9B4  B0 03 07 16 */	sth r0, 0x716(r3)
/* 8058C9B8  38 00 00 42 */	li r0, 0x42
/* 8058C9BC  B0 03 07 18 */	sth r0, 0x718(r3)
/* 8058C9C0  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 8058C9C4  D0 03 07 1C */	stfs f0, 0x71c(r3)
/* 8058C9C8  C0 04 00 44 */	lfs f0, 0x44(r4)
/* 8058C9CC  D0 03 07 20 */	stfs f0, 0x720(r3)
/* 8058C9D0  4E 80 00 20 */	blr 
