lbl_8027D0C0:
/* 8027D0C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027D0C4  7C 08 02 A6 */	mflr r0
/* 8027D0C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027D0CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8027D0D0  7C 7F 1B 78 */	mr r31, r3
/* 8027D0D4  80 63 00 00 */	lwz r3, 0(r3)
/* 8027D0D8  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 8027D0DC  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 8027D0E0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8027D0E4  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8027D0E8  C0 02 B9 3C */	lfs f0, lit_2354(r2)
/* 8027D0EC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8027D0F0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8027D0F4  40 82 00 10 */	bne lbl_8027D104
/* 8027D0F8  C0 02 B9 38 */	lfs f0, lit_2353(r2)
/* 8027D0FC  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8027D100  48 00 00 10 */	b lbl_8027D110
lbl_8027D104:
/* 8027D104  C0 02 B9 38 */	lfs f0, lit_2353(r2)
/* 8027D108  EC 00 08 24 */	fdivs f0, f0, f1
/* 8027D10C  D0 1F 00 08 */	stfs f0, 8(r31)
lbl_8027D110:
/* 8027D110  80 7F 00 00 */	lwz r3, 0(r31)
/* 8027D114  C0 23 00 3C */	lfs f1, 0x3c(r3)
/* 8027D118  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 8027D11C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8027D120  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8027D124  C0 02 B9 3C */	lfs f0, lit_2354(r2)
/* 8027D128  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8027D12C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8027D130  40 82 00 10 */	bne lbl_8027D140
/* 8027D134  C0 02 B9 38 */	lfs f0, lit_2353(r2)
/* 8027D138  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8027D13C  48 00 00 10 */	b lbl_8027D14C
lbl_8027D140:
/* 8027D140  C0 02 B9 38 */	lfs f0, lit_2353(r2)
/* 8027D144  EC 00 08 24 */	fdivs f0, f0, f1
/* 8027D148  D0 1F 00 0C */	stfs f0, 0xc(r31)
lbl_8027D14C:
/* 8027D14C  80 7F 00 00 */	lwz r3, 0(r31)
/* 8027D150  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8027D154  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 8027D158  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8027D15C  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 8027D160  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8027D164  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 8027D168  80 7F 00 00 */	lwz r3, 0(r31)
/* 8027D16C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8027D170  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 8027D174  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8027D178  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 8027D17C  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8027D180  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 8027D184  80 7F 00 00 */	lwz r3, 0(r31)
/* 8027D188  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8027D18C  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 8027D190  80 7F 00 00 */	lwz r3, 0(r31)
/* 8027D194  80 03 00 08 */	lwz r0, 8(r3)
/* 8027D198  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 8027D19C  28 00 00 08 */	cmplwi r0, 8
/* 8027D1A0  41 81 01 F0 */	bgt lbl_8027D390
/* 8027D1A4  3C 60 80 3C */	lis r3, lit_3259@ha /* 0x803C44A8@ha */
/* 8027D1A8  38 63 44 A8 */	addi r3, r3, lit_3259@l /* 0x803C44A8@l */
/* 8027D1AC  54 00 10 3A */	slwi r0, r0, 2
/* 8027D1B0  7C 03 00 2E */	lwzx r0, r3, r0
/* 8027D1B4  7C 09 03 A6 */	mtctr r0
/* 8027D1B8  4E 80 04 20 */	bctr 
/* 8027D1BC  38 60 00 10 */	li r3, 0x10
/* 8027D1C0  38 A0 00 00 */	li r5, 0
/* 8027D1C4  48 05 1A D5 */	bl __nw__FUlP7JKRHeapi
/* 8027D1C8  28 03 00 00 */	cmplwi r3, 0
/* 8027D1CC  41 82 00 1C */	beq lbl_8027D1E8
/* 8027D1D0  3C 80 80 3C */	lis r4, __vt__12JPAFieldBase@ha /* 0x803C44CC@ha */
/* 8027D1D4  38 04 44 CC */	addi r0, r4, __vt__12JPAFieldBase@l /* 0x803C44CC@l */
/* 8027D1D8  90 03 00 00 */	stw r0, 0(r3)
/* 8027D1DC  3C 80 80 3C */	lis r4, __vt__15JPAFieldGravity@ha /* 0x803C4580@ha */
/* 8027D1E0  38 04 45 80 */	addi r0, r4, __vt__15JPAFieldGravity@l /* 0x803C4580@l */
/* 8027D1E4  90 03 00 00 */	stw r0, 0(r3)
lbl_8027D1E8:
/* 8027D1E8  90 7F 00 04 */	stw r3, 4(r31)
/* 8027D1EC  48 00 01 AC */	b lbl_8027D398
/* 8027D1F0  38 60 00 10 */	li r3, 0x10
/* 8027D1F4  38 A0 00 00 */	li r5, 0
/* 8027D1F8  48 05 1A A1 */	bl __nw__FUlP7JKRHeapi
/* 8027D1FC  28 03 00 00 */	cmplwi r3, 0
/* 8027D200  41 82 00 1C */	beq lbl_8027D21C
/* 8027D204  3C 80 80 3C */	lis r4, __vt__12JPAFieldBase@ha /* 0x803C44CC@ha */
/* 8027D208  38 04 44 CC */	addi r0, r4, __vt__12JPAFieldBase@l /* 0x803C44CC@l */
/* 8027D20C  90 03 00 00 */	stw r0, 0(r3)
/* 8027D210  3C 80 80 3C */	lis r4, __vt__11JPAFieldAir@ha /* 0x803C456C@ha */
/* 8027D214  38 04 45 6C */	addi r0, r4, __vt__11JPAFieldAir@l /* 0x803C456C@l */
/* 8027D218  90 03 00 00 */	stw r0, 0(r3)
lbl_8027D21C:
/* 8027D21C  90 7F 00 04 */	stw r3, 4(r31)
/* 8027D220  48 00 01 78 */	b lbl_8027D398
/* 8027D224  38 60 00 1C */	li r3, 0x1c
/* 8027D228  38 A0 00 00 */	li r5, 0
/* 8027D22C  48 05 1A 6D */	bl __nw__FUlP7JKRHeapi
/* 8027D230  28 03 00 00 */	cmplwi r3, 0
/* 8027D234  41 82 00 1C */	beq lbl_8027D250
/* 8027D238  3C 80 80 3C */	lis r4, __vt__12JPAFieldBase@ha /* 0x803C44CC@ha */
/* 8027D23C  38 04 44 CC */	addi r0, r4, __vt__12JPAFieldBase@l /* 0x803C44CC@l */
/* 8027D240  90 03 00 00 */	stw r0, 0(r3)
/* 8027D244  3C 80 80 3C */	lis r4, __vt__14JPAFieldMagnet@ha /* 0x803C4558@ha */
/* 8027D248  38 04 45 58 */	addi r0, r4, __vt__14JPAFieldMagnet@l /* 0x803C4558@l */
/* 8027D24C  90 03 00 00 */	stw r0, 0(r3)
lbl_8027D250:
/* 8027D250  90 7F 00 04 */	stw r3, 4(r31)
/* 8027D254  48 00 01 44 */	b lbl_8027D398
/* 8027D258  38 60 00 20 */	li r3, 0x20
/* 8027D25C  38 A0 00 00 */	li r5, 0
/* 8027D260  48 05 1A 39 */	bl __nw__FUlP7JKRHeapi
/* 8027D264  28 03 00 00 */	cmplwi r3, 0
/* 8027D268  41 82 00 1C */	beq lbl_8027D284
/* 8027D26C  3C 80 80 3C */	lis r4, __vt__12JPAFieldBase@ha /* 0x803C44CC@ha */
/* 8027D270  38 04 44 CC */	addi r0, r4, __vt__12JPAFieldBase@l /* 0x803C44CC@l */
/* 8027D274  90 03 00 00 */	stw r0, 0(r3)
/* 8027D278  3C 80 80 3C */	lis r4, __vt__14JPAFieldNewton@ha /* 0x803C4544@ha */
/* 8027D27C  38 04 45 44 */	addi r0, r4, __vt__14JPAFieldNewton@l /* 0x803C4544@l */
/* 8027D280  90 03 00 00 */	stw r0, 0(r3)
lbl_8027D284:
/* 8027D284  90 7F 00 04 */	stw r3, 4(r31)
/* 8027D288  48 00 01 10 */	b lbl_8027D398
/* 8027D28C  38 60 00 24 */	li r3, 0x24
/* 8027D290  38 A0 00 00 */	li r5, 0
/* 8027D294  48 05 1A 05 */	bl __nw__FUlP7JKRHeapi
/* 8027D298  28 03 00 00 */	cmplwi r3, 0
/* 8027D29C  41 82 00 1C */	beq lbl_8027D2B8
/* 8027D2A0  3C 80 80 3C */	lis r4, __vt__12JPAFieldBase@ha /* 0x803C44CC@ha */
/* 8027D2A4  38 04 44 CC */	addi r0, r4, __vt__12JPAFieldBase@l /* 0x803C44CC@l */
/* 8027D2A8  90 03 00 00 */	stw r0, 0(r3)
/* 8027D2AC  3C 80 80 3C */	lis r4, __vt__14JPAFieldVortex@ha /* 0x803C4530@ha */
/* 8027D2B0  38 04 45 30 */	addi r0, r4, __vt__14JPAFieldVortex@l /* 0x803C4530@l */
/* 8027D2B4  90 03 00 00 */	stw r0, 0(r3)
lbl_8027D2B8:
/* 8027D2B8  90 7F 00 04 */	stw r3, 4(r31)
/* 8027D2BC  48 00 00 DC */	b lbl_8027D398
/* 8027D2C0  38 60 00 10 */	li r3, 0x10
/* 8027D2C4  38 A0 00 00 */	li r5, 0
/* 8027D2C8  48 05 19 D1 */	bl __nw__FUlP7JKRHeapi
/* 8027D2CC  28 03 00 00 */	cmplwi r3, 0
/* 8027D2D0  41 82 00 1C */	beq lbl_8027D2EC
/* 8027D2D4  3C 80 80 3C */	lis r4, __vt__12JPAFieldBase@ha /* 0x803C44CC@ha */
/* 8027D2D8  38 04 44 CC */	addi r0, r4, __vt__12JPAFieldBase@l /* 0x803C44CC@l */
/* 8027D2DC  90 03 00 00 */	stw r0, 0(r3)
/* 8027D2E0  3C 80 80 3C */	lis r4, __vt__14JPAFieldRandom@ha /* 0x803C4508@ha */
/* 8027D2E4  38 04 45 08 */	addi r0, r4, __vt__14JPAFieldRandom@l /* 0x803C4508@l */
/* 8027D2E8  90 03 00 00 */	stw r0, 0(r3)
lbl_8027D2EC:
/* 8027D2EC  90 7F 00 04 */	stw r3, 4(r31)
/* 8027D2F0  48 00 00 A8 */	b lbl_8027D398
/* 8027D2F4  38 60 00 10 */	li r3, 0x10
/* 8027D2F8  38 A0 00 00 */	li r5, 0
/* 8027D2FC  48 05 19 9D */	bl __nw__FUlP7JKRHeapi
/* 8027D300  28 03 00 00 */	cmplwi r3, 0
/* 8027D304  41 82 00 1C */	beq lbl_8027D320
/* 8027D308  3C 80 80 3C */	lis r4, __vt__12JPAFieldBase@ha /* 0x803C44CC@ha */
/* 8027D30C  38 04 44 CC */	addi r0, r4, __vt__12JPAFieldBase@l /* 0x803C44CC@l */
/* 8027D310  90 03 00 00 */	stw r0, 0(r3)
/* 8027D314  3C 80 80 3C */	lis r4, __vt__12JPAFieldDrag@ha /* 0x803C44F4@ha */
/* 8027D318  38 04 44 F4 */	addi r0, r4, __vt__12JPAFieldDrag@l /* 0x803C44F4@l */
/* 8027D31C  90 03 00 00 */	stw r0, 0(r3)
lbl_8027D320:
/* 8027D320  90 7F 00 04 */	stw r3, 4(r31)
/* 8027D324  48 00 00 74 */	b lbl_8027D398
/* 8027D328  38 60 00 34 */	li r3, 0x34
/* 8027D32C  38 A0 00 00 */	li r5, 0
/* 8027D330  48 05 19 69 */	bl __nw__FUlP7JKRHeapi
/* 8027D334  28 03 00 00 */	cmplwi r3, 0
/* 8027D338  41 82 00 1C */	beq lbl_8027D354
/* 8027D33C  3C 80 80 3C */	lis r4, __vt__12JPAFieldBase@ha /* 0x803C44CC@ha */
/* 8027D340  38 04 44 CC */	addi r0, r4, __vt__12JPAFieldBase@l /* 0x803C44CC@l */
/* 8027D344  90 03 00 00 */	stw r0, 0(r3)
/* 8027D348  3C 80 80 3C */	lis r4, __vt__18JPAFieldConvection@ha /* 0x803C451C@ha */
/* 8027D34C  38 04 45 1C */	addi r0, r4, __vt__18JPAFieldConvection@l /* 0x803C451C@l */
/* 8027D350  90 03 00 00 */	stw r0, 0(r3)
lbl_8027D354:
/* 8027D354  90 7F 00 04 */	stw r3, 4(r31)
/* 8027D358  48 00 00 40 */	b lbl_8027D398
/* 8027D35C  38 60 00 34 */	li r3, 0x34
/* 8027D360  38 A0 00 00 */	li r5, 0
/* 8027D364  48 05 19 35 */	bl __nw__FUlP7JKRHeapi
/* 8027D368  28 03 00 00 */	cmplwi r3, 0
/* 8027D36C  41 82 00 1C */	beq lbl_8027D388
/* 8027D370  3C 80 80 3C */	lis r4, __vt__12JPAFieldBase@ha /* 0x803C44CC@ha */
/* 8027D374  38 04 44 CC */	addi r0, r4, __vt__12JPAFieldBase@l /* 0x803C44CC@l */
/* 8027D378  90 03 00 00 */	stw r0, 0(r3)
/* 8027D37C  3C 80 80 3C */	lis r4, __vt__12JPAFieldSpin@ha /* 0x803C44E0@ha */
/* 8027D380  38 04 44 E0 */	addi r0, r4, __vt__12JPAFieldSpin@l /* 0x803C44E0@l */
/* 8027D384  90 03 00 00 */	stw r0, 0(r3)
lbl_8027D388:
/* 8027D388  90 7F 00 04 */	stw r3, 4(r31)
/* 8027D38C  48 00 00 0C */	b lbl_8027D398
lbl_8027D390:
/* 8027D390  38 00 00 00 */	li r0, 0
/* 8027D394  90 1F 00 04 */	stw r0, 4(r31)
lbl_8027D398:
/* 8027D398  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8027D39C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027D3A0  7C 08 03 A6 */	mtlr r0
/* 8027D3A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8027D3A8  4E 80 00 20 */	blr 
