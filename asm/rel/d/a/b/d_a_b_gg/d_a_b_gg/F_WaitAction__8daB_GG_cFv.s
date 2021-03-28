lbl_805E3024:
/* 805E3024  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805E3028  7C 08 02 A6 */	mflr r0
/* 805E302C  90 01 00 34 */	stw r0, 0x34(r1)
/* 805E3030  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 805E3034  93 C1 00 28 */	stw r30, 0x28(r1)
/* 805E3038  7C 7E 1B 78 */	mr r30, r3
/* 805E303C  3C 80 80 5F */	lis r4, lit_3911@ha
/* 805E3040  3B E4 D0 60 */	addi r31, r4, lit_3911@l
/* 805E3044  88 03 05 C7 */	lbz r0, 0x5c7(r3)
/* 805E3048  2C 00 00 01 */	cmpwi r0, 1
/* 805E304C  41 82 00 88 */	beq lbl_805E30D4
/* 805E3050  40 80 00 B4 */	bge lbl_805E3104
/* 805E3054  2C 00 00 00 */	cmpwi r0, 0
/* 805E3058  40 80 00 08 */	bge lbl_805E3060
/* 805E305C  48 00 00 A8 */	b lbl_805E3104
lbl_805E3060:
/* 805E3060  38 80 00 0E */	li r4, 0xe
/* 805E3064  38 A0 00 02 */	li r5, 2
/* 805E3068  C0 3F 02 0C */	lfs f1, 0x20c(r31)
/* 805E306C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805E3070  4B FF BE F5 */	bl SetAnm__8daB_GG_cFiiff
/* 805E3074  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805E3078  D0 1E 05 BC */	stfs f0, 0x5bc(r30)
/* 805E307C  D0 1E 05 C0 */	stfs f0, 0x5c0(r30)
/* 805E3080  C0 3F 01 40 */	lfs f1, 0x140(r31)
/* 805E3084  4B C8 48 D0 */	b cM_rndF__Ff
/* 805E3088  C0 1F 01 40 */	lfs f0, 0x140(r31)
/* 805E308C  EC 00 08 2A */	fadds f0, f0, f1
/* 805E3090  FC 00 00 1E */	fctiwz f0, f0
/* 805E3094  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 805E3098  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805E309C  B0 1E 05 D8 */	sth r0, 0x5d8(r30)
/* 805E30A0  88 7E 05 C7 */	lbz r3, 0x5c7(r30)
/* 805E30A4  38 03 00 01 */	addi r0, r3, 1
/* 805E30A8  98 1E 05 C7 */	stb r0, 0x5c7(r30)
/* 805E30AC  80 1E 0D 94 */	lwz r0, 0xd94(r30)
/* 805E30B0  60 00 00 01 */	ori r0, r0, 1
/* 805E30B4  90 1E 0D 94 */	stw r0, 0xd94(r30)
/* 805E30B8  80 1E 07 74 */	lwz r0, 0x774(r30)
/* 805E30BC  60 00 00 01 */	ori r0, r0, 1
/* 805E30C0  90 1E 07 74 */	stw r0, 0x774(r30)
/* 805E30C4  80 1E 0B D4 */	lwz r0, 0xbd4(r30)
/* 805E30C8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805E30CC  90 1E 0B D4 */	stw r0, 0xbd4(r30)
/* 805E30D0  48 00 00 34 */	b lbl_805E3104
lbl_805E30D4:
/* 805E30D4  A8 1E 05 D8 */	lha r0, 0x5d8(r30)
/* 805E30D8  2C 00 00 00 */	cmpwi r0, 0
/* 805E30DC  40 82 00 28 */	bne lbl_805E3104
/* 805E30E0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 805E30E4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 805E30E8  88 04 4F AD */	lbz r0, 0x4fad(r4)
/* 805E30EC  28 00 00 00 */	cmplwi r0, 0
/* 805E30F0  40 82 00 14 */	bne lbl_805E3104
/* 805E30F4  38 80 00 00 */	li r4, 0
/* 805E30F8  38 A0 00 01 */	li r5, 1
/* 805E30FC  38 C0 00 00 */	li r6, 0
/* 805E3100  4B FF C9 65 */	bl SetAction__8daB_GG_cFUcUcUc
lbl_805E3104:
/* 805E3104  38 61 00 08 */	addi r3, r1, 8
/* 805E3108  3C 80 80 5F */	lis r4, data_805ED72C@ha
/* 805E310C  38 84 D7 2C */	addi r4, r4, data_805ED72C@l
/* 805E3110  80 84 00 00 */	lwz r4, 0(r4)
/* 805E3114  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 805E3118  4B C8 3A 1C */	b __mi__4cXyzCFRC3Vec
/* 805E311C  C0 21 00 08 */	lfs f1, 8(r1)
/* 805E3120  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 805E3124  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805E3128  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805E312C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805E3130  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805E3134  EC 21 00 72 */	fmuls f1, f1, f1
/* 805E3138  EC 00 00 32 */	fmuls f0, f0, f0
/* 805E313C  EC 41 00 2A */	fadds f2, f1, f0
/* 805E3140  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805E3144  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805E3148  40 81 00 0C */	ble lbl_805E3154
/* 805E314C  FC 00 10 34 */	frsqrte f0, f2
/* 805E3150  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_805E3154:
/* 805E3154  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 805E3158  4B C8 45 1C */	b cM_atan2s__Fff
/* 805E315C  7C 03 00 D0 */	neg r0, r3
/* 805E3160  7C 04 07 34 */	extsh r4, r0
/* 805E3164  38 7E 06 C4 */	addi r3, r30, 0x6c4
/* 805E3168  38 A0 00 10 */	li r5, 0x10
/* 805E316C  38 C0 06 00 */	li r6, 0x600
/* 805E3170  4B C8 D4 98 */	b cLib_addCalcAngleS2__FPssss
/* 805E3174  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 805E3178  3C 80 80 5F */	lis r4, data_805ED72C@ha
/* 805E317C  38 84 D7 2C */	addi r4, r4, data_805ED72C@l
/* 805E3180  80 84 00 00 */	lwz r4, 0(r4)
/* 805E3184  4B C8 DA 80 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 805E3188  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 805E318C  7C 00 18 50 */	subf r0, r0, r3
/* 805E3190  7C 04 07 34 */	extsh r4, r0
/* 805E3194  38 7E 06 BE */	addi r3, r30, 0x6be
/* 805E3198  38 A0 00 10 */	li r5, 0x10
/* 805E319C  38 C0 01 00 */	li r6, 0x100
/* 805E31A0  4B C8 D4 68 */	b cLib_addCalcAngleS2__FPssss
/* 805E31A4  A8 1E 06 BE */	lha r0, 0x6be(r30)
/* 805E31A8  2C 00 20 00 */	cmpwi r0, 0x2000
/* 805E31AC  40 81 00 10 */	ble lbl_805E31BC
/* 805E31B0  38 00 20 00 */	li r0, 0x2000
/* 805E31B4  B0 1E 06 BE */	sth r0, 0x6be(r30)
/* 805E31B8  48 00 00 14 */	b lbl_805E31CC
lbl_805E31BC:
/* 805E31BC  2C 00 E0 00 */	cmpwi r0, -8192
/* 805E31C0  40 80 00 0C */	bge lbl_805E31CC
/* 805E31C4  38 00 E0 00 */	li r0, -8192
/* 805E31C8  B0 1E 06 BE */	sth r0, 0x6be(r30)
lbl_805E31CC:
/* 805E31CC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 805E31D0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 805E31D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805E31D8  7C 08 03 A6 */	mtlr r0
/* 805E31DC  38 21 00 30 */	addi r1, r1, 0x30
/* 805E31E0  4E 80 00 20 */	blr 
