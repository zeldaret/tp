lbl_80138188:
/* 80138188  C0 03 33 98 */	lfs f0, 0x3398(r3)
/* 8013818C  FC 00 02 10 */	fabs f0, f0
/* 80138190  FC 20 00 18 */	frsp f1, f0
/* 80138194  C0 03 05 94 */	lfs f0, 0x594(r3)
/* 80138198  EC 41 00 24 */	fdivs f2, f1, f0
/* 8013819C  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 801381A0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801381A4  40 81 00 08 */	ble lbl_801381AC
/* 801381A8  FC 40 00 90 */	fmr f2, f0
lbl_801381AC:
/* 801381AC  80 03 05 74 */	lwz r0, 0x574(r3)
/* 801381B0  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 801381B4  41 82 00 24 */	beq lbl_801381D8
/* 801381B8  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlSwim_c0@ha /* 0x8038F8B4@ha */
/* 801381BC  38 63 F8 B4 */	addi r3, r3, m__20daAlinkHIO_wlSwim_c0@l /* 0x8038F8B4@l */
/* 801381C0  C0 23 00 70 */	lfs f1, 0x70(r3)
/* 801381C4  C0 03 00 74 */	lfs f0, 0x74(r3)
/* 801381C8  EC 00 08 28 */	fsubs f0, f0, f1
/* 801381CC  EC 02 00 32 */	fmuls f0, f2, f0
/* 801381D0  EC 21 00 2A */	fadds f1, f1, f0
/* 801381D4  4E 80 00 20 */	blr 
lbl_801381D8:
/* 801381D8  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlSwim_c0@ha /* 0x8038F8B4@ha */
/* 801381DC  38 63 F8 B4 */	addi r3, r3, m__20daAlinkHIO_wlSwim_c0@l /* 0x8038F8B4@l */
/* 801381E0  C0 23 00 8C */	lfs f1, 0x8c(r3)
/* 801381E4  C0 03 00 90 */	lfs f0, 0x90(r3)
/* 801381E8  EC 00 08 28 */	fsubs f0, f0, f1
/* 801381EC  EC 02 00 32 */	fmuls f0, f2, f0
/* 801381F0  EC 21 00 2A */	fadds f1, f1, f0
/* 801381F4  4E 80 00 20 */	blr 
