lbl_80243F94:
/* 80243F94  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80243F98  7C 08 02 A6 */	mflr r0
/* 80243F9C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80243FA0  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80243FA4  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80243FA8  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 80243FAC  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 80243FB0  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 80243FB4  F3 A1 00 28 */	psq_st f29, 40(r1), 0, 0 /* qr0 */
/* 80243FB8  DB 81 00 10 */	stfd f28, 0x10(r1)
/* 80243FBC  F3 81 00 18 */	psq_st f28, 24(r1), 0, 0 /* qr0 */
/* 80243FC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80243FC4  7C 7F 1B 78 */	mr r31, r3
/* 80243FC8  FF E0 08 90 */	fmr f31, f1
/* 80243FCC  C0 02 B2 50 */	lfs f0, lit_4427(r2)
/* 80243FD0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80243FD4  40 80 00 88 */	bge lbl_8024405C
/* 80243FD8  C0 02 B2 AC */	lfs f0, lit_5508(r2)
/* 80243FDC  EF FF 00 32 */	fmuls f31, f31, f0
/* 80243FE0  80 7F 00 C8 */	lwz r3, 0xc8(r31)
/* 80243FE4  80 83 00 04 */	lwz r4, 4(r3)
/* 80243FE8  C0 24 00 2C */	lfs f1, 0x2c(r4)
/* 80243FEC  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 80243FF0  EF C1 00 28 */	fsubs f30, f1, f0
/* 80243FF4  48 01 03 71 */	bl getGlobalPosY__8CPaneMgrFv
/* 80243FF8  C0 02 B2 70 */	lfs f0, lit_4561(r2)
/* 80243FFC  EC 1E 00 32 */	fmuls f0, f30, f0
/* 80244000  EF C1 00 2A */	fadds f30, f1, f0
/* 80244004  80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 80244008  80 83 00 04 */	lwz r4, 4(r3)
/* 8024400C  C0 24 00 2C */	lfs f1, 0x2c(r4)
/* 80244010  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 80244014  EF A1 00 28 */	fsubs f29, f1, f0
/* 80244018  48 01 03 4D */	bl getGlobalPosY__8CPaneMgrFv
/* 8024401C  C0 02 B2 70 */	lfs f0, lit_4561(r2)
/* 80244020  EC 1D 00 32 */	fmuls f0, f29, f0
/* 80244024  EF A1 00 2A */	fadds f29, f1, f0
/* 80244028  80 7F 00 C8 */	lwz r3, 0xc8(r31)
/* 8024402C  80 83 00 04 */	lwz r4, 4(r3)
/* 80244030  C0 24 00 2C */	lfs f1, 0x2c(r4)
/* 80244034  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 80244038  EF 81 00 28 */	fsubs f28, f1, f0
/* 8024403C  48 01 03 29 */	bl getGlobalPosY__8CPaneMgrFv
/* 80244040  C0 02 B2 70 */	lfs f0, lit_4561(r2)
/* 80244044  EC 1C 00 32 */	fmuls f0, f28, f0
/* 80244048  EC 21 00 2A */	fadds f1, f1, f0
/* 8024404C  EC 1D F0 28 */	fsubs f0, f29, f30
/* 80244050  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80244054  EC 21 00 2A */	fadds f1, f1, f0
/* 80244058  48 00 00 7C */	b lbl_802440D4
lbl_8024405C:
/* 8024405C  80 7F 00 C8 */	lwz r3, 0xc8(r31)
/* 80244060  80 83 00 04 */	lwz r4, 4(r3)
/* 80244064  C0 24 00 2C */	lfs f1, 0x2c(r4)
/* 80244068  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 8024406C  EF 81 00 28 */	fsubs f28, f1, f0
/* 80244070  48 01 02 F5 */	bl getGlobalPosY__8CPaneMgrFv
/* 80244074  C0 02 B2 70 */	lfs f0, lit_4561(r2)
/* 80244078  EC 1C 00 32 */	fmuls f0, f28, f0
/* 8024407C  EF 81 00 2A */	fadds f28, f1, f0
/* 80244080  80 7F 00 CC */	lwz r3, 0xcc(r31)
/* 80244084  80 83 00 04 */	lwz r4, 4(r3)
/* 80244088  C0 24 00 2C */	lfs f1, 0x2c(r4)
/* 8024408C  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 80244090  EF A1 00 28 */	fsubs f29, f1, f0
/* 80244094  48 01 02 D1 */	bl getGlobalPosY__8CPaneMgrFv
/* 80244098  C0 02 B2 70 */	lfs f0, lit_4561(r2)
/* 8024409C  EC 1D 00 32 */	fmuls f0, f29, f0
/* 802440A0  EF A1 00 2A */	fadds f29, f1, f0
/* 802440A4  80 7F 00 C8 */	lwz r3, 0xc8(r31)
/* 802440A8  80 83 00 04 */	lwz r4, 4(r3)
/* 802440AC  C0 24 00 2C */	lfs f1, 0x2c(r4)
/* 802440B0  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 802440B4  EF C1 00 28 */	fsubs f30, f1, f0
/* 802440B8  48 01 02 AD */	bl getGlobalPosY__8CPaneMgrFv
/* 802440BC  C0 02 B2 70 */	lfs f0, lit_4561(r2)
/* 802440C0  EC 1E 00 32 */	fmuls f0, f30, f0
/* 802440C4  EC 21 00 2A */	fadds f1, f1, f0
/* 802440C8  EC 1D E0 28 */	fsubs f0, f29, f28
/* 802440CC  EC 1F 00 32 */	fmuls f0, f31, f0
/* 802440D0  EC 21 00 2A */	fadds f1, f1, f0
lbl_802440D4:
/* 802440D4  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 802440D8  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 802440DC  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 802440E0  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 802440E4  E3 A1 00 28 */	psq_l f29, 40(r1), 0, 0 /* qr0 */
/* 802440E8  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 802440EC  E3 81 00 18 */	psq_l f28, 24(r1), 0, 0 /* qr0 */
/* 802440F0  CB 81 00 10 */	lfd f28, 0x10(r1)
/* 802440F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802440F8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802440FC  7C 08 03 A6 */	mtlr r0
/* 80244100  38 21 00 50 */	addi r1, r1, 0x50
/* 80244104  4E 80 00 20 */	blr 
