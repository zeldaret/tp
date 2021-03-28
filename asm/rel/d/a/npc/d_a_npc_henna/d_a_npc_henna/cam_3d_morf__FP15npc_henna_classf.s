lbl_805450A8:
/* 805450A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805450AC  7C 08 02 A6 */	mflr r0
/* 805450B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805450B4  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 805450B8  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 805450BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805450C0  7C 7F 1B 78 */	mr r31, r3
/* 805450C4  FF E0 08 90 */	fmr f31, f1
/* 805450C8  38 7F 07 6C */	addi r3, r31, 0x76c
/* 805450CC  C0 3F 07 84 */	lfs f1, 0x784(r31)
/* 805450D0  FC 40 F8 90 */	fmr f2, f31
/* 805450D4  C0 7F 07 9C */	lfs f3, 0x79c(r31)
/* 805450D8  C0 1F 07 C0 */	lfs f0, 0x7c0(r31)
/* 805450DC  EC 63 00 32 */	fmuls f3, f3, f0
/* 805450E0  4B D2 A9 5C */	b cLib_addCalc2__FPffff
/* 805450E4  38 7F 07 70 */	addi r3, r31, 0x770
/* 805450E8  C0 3F 07 88 */	lfs f1, 0x788(r31)
/* 805450EC  FC 40 F8 90 */	fmr f2, f31
/* 805450F0  C0 7F 07 A0 */	lfs f3, 0x7a0(r31)
/* 805450F4  C0 1F 07 C0 */	lfs f0, 0x7c0(r31)
/* 805450F8  EC 63 00 32 */	fmuls f3, f3, f0
/* 805450FC  4B D2 A9 40 */	b cLib_addCalc2__FPffff
/* 80545100  38 7F 07 74 */	addi r3, r31, 0x774
/* 80545104  C0 3F 07 8C */	lfs f1, 0x78c(r31)
/* 80545108  FC 40 F8 90 */	fmr f2, f31
/* 8054510C  C0 7F 07 A4 */	lfs f3, 0x7a4(r31)
/* 80545110  C0 1F 07 C0 */	lfs f0, 0x7c0(r31)
/* 80545114  EC 63 00 32 */	fmuls f3, f3, f0
/* 80545118  4B D2 A9 24 */	b cLib_addCalc2__FPffff
/* 8054511C  38 7F 07 60 */	addi r3, r31, 0x760
/* 80545120  C0 3F 07 78 */	lfs f1, 0x778(r31)
/* 80545124  FC 40 F8 90 */	fmr f2, f31
/* 80545128  C0 7F 07 90 */	lfs f3, 0x790(r31)
/* 8054512C  C0 1F 07 C0 */	lfs f0, 0x7c0(r31)
/* 80545130  EC 63 00 32 */	fmuls f3, f3, f0
/* 80545134  4B D2 A9 08 */	b cLib_addCalc2__FPffff
/* 80545138  38 7F 07 64 */	addi r3, r31, 0x764
/* 8054513C  C0 3F 07 7C */	lfs f1, 0x77c(r31)
/* 80545140  FC 40 F8 90 */	fmr f2, f31
/* 80545144  C0 7F 07 94 */	lfs f3, 0x794(r31)
/* 80545148  C0 1F 07 C0 */	lfs f0, 0x7c0(r31)
/* 8054514C  EC 63 00 32 */	fmuls f3, f3, f0
/* 80545150  4B D2 A8 EC */	b cLib_addCalc2__FPffff
/* 80545154  38 7F 07 68 */	addi r3, r31, 0x768
/* 80545158  C0 3F 07 80 */	lfs f1, 0x780(r31)
/* 8054515C  FC 40 F8 90 */	fmr f2, f31
/* 80545160  C0 7F 07 98 */	lfs f3, 0x798(r31)
/* 80545164  C0 1F 07 C0 */	lfs f0, 0x7c0(r31)
/* 80545168  EC 63 00 32 */	fmuls f3, f3, f0
/* 8054516C  4B D2 A8 D0 */	b cLib_addCalc2__FPffff
/* 80545170  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80545174  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80545178  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054517C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80545180  7C 08 03 A6 */	mtlr r0
/* 80545184  38 21 00 20 */	addi r1, r1, 0x20
/* 80545188  4E 80 00 20 */	blr 
