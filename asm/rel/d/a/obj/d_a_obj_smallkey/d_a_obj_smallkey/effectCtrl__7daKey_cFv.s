lbl_80CDB128:
/* 80CDB128  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CDB12C  7C 08 02 A6 */	mflr r0
/* 80CDB130  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CDB134  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80CDB138  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80CDB13C  7C 7F 1B 78 */	mr r31, r3
/* 80CDB140  3C 60 80 CE */	lis r3, l_cyl_src@ha /* 0x80CDB7F4@ha */
/* 80CDB144  3B C3 B7 F4 */	addi r30, r3, l_cyl_src@l /* 0x80CDB7F4@l */
/* 80CDB148  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80CDB14C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CDB150  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CDB154  80 84 5D 74 */	lwz r4, 0x5d74(r4)
/* 80CDB158  38 84 00 D8 */	addi r4, r4, 0xd8
/* 80CDB15C  4B 66 C2 41 */	bl PSVECSquareDistance
/* 80CDB160  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80CDB164  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CDB168  40 81 00 58 */	ble lbl_80CDB1C0
/* 80CDB16C  FC 00 08 34 */	frsqrte f0, f1
/* 80CDB170  C8 9E 00 48 */	lfd f4, 0x48(r30)
/* 80CDB174  FC 44 00 32 */	fmul f2, f4, f0
/* 80CDB178  C8 7E 00 50 */	lfd f3, 0x50(r30)
/* 80CDB17C  FC 00 00 32 */	fmul f0, f0, f0
/* 80CDB180  FC 01 00 32 */	fmul f0, f1, f0
/* 80CDB184  FC 03 00 28 */	fsub f0, f3, f0
/* 80CDB188  FC 02 00 32 */	fmul f0, f2, f0
/* 80CDB18C  FC 44 00 32 */	fmul f2, f4, f0
/* 80CDB190  FC 00 00 32 */	fmul f0, f0, f0
/* 80CDB194  FC 01 00 32 */	fmul f0, f1, f0
/* 80CDB198  FC 03 00 28 */	fsub f0, f3, f0
/* 80CDB19C  FC 02 00 32 */	fmul f0, f2, f0
/* 80CDB1A0  FC 44 00 32 */	fmul f2, f4, f0
/* 80CDB1A4  FC 00 00 32 */	fmul f0, f0, f0
/* 80CDB1A8  FC 01 00 32 */	fmul f0, f1, f0
/* 80CDB1AC  FC 03 00 28 */	fsub f0, f3, f0
/* 80CDB1B0  FC 02 00 32 */	fmul f0, f2, f0
/* 80CDB1B4  FC 21 00 32 */	fmul f1, f1, f0
/* 80CDB1B8  FC 20 08 18 */	frsp f1, f1
/* 80CDB1BC  48 00 00 88 */	b lbl_80CDB244
lbl_80CDB1C0:
/* 80CDB1C0  C8 1E 00 58 */	lfd f0, 0x58(r30)
/* 80CDB1C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CDB1C8  40 80 00 10 */	bge lbl_80CDB1D8
/* 80CDB1CC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CDB1D0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80CDB1D4  48 00 00 70 */	b lbl_80CDB244
lbl_80CDB1D8:
/* 80CDB1D8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80CDB1DC  80 81 00 08 */	lwz r4, 8(r1)
/* 80CDB1E0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CDB1E4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CDB1E8  7C 03 00 00 */	cmpw r3, r0
/* 80CDB1EC  41 82 00 14 */	beq lbl_80CDB200
/* 80CDB1F0  40 80 00 40 */	bge lbl_80CDB230
/* 80CDB1F4  2C 03 00 00 */	cmpwi r3, 0
/* 80CDB1F8  41 82 00 20 */	beq lbl_80CDB218
/* 80CDB1FC  48 00 00 34 */	b lbl_80CDB230
lbl_80CDB200:
/* 80CDB200  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CDB204  41 82 00 0C */	beq lbl_80CDB210
/* 80CDB208  38 00 00 01 */	li r0, 1
/* 80CDB20C  48 00 00 28 */	b lbl_80CDB234
lbl_80CDB210:
/* 80CDB210  38 00 00 02 */	li r0, 2
/* 80CDB214  48 00 00 20 */	b lbl_80CDB234
lbl_80CDB218:
/* 80CDB218  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CDB21C  41 82 00 0C */	beq lbl_80CDB228
/* 80CDB220  38 00 00 05 */	li r0, 5
/* 80CDB224  48 00 00 10 */	b lbl_80CDB234
lbl_80CDB228:
/* 80CDB228  38 00 00 03 */	li r0, 3
/* 80CDB22C  48 00 00 08 */	b lbl_80CDB234
lbl_80CDB230:
/* 80CDB230  38 00 00 04 */	li r0, 4
lbl_80CDB234:
/* 80CDB234  2C 00 00 01 */	cmpwi r0, 1
/* 80CDB238  40 82 00 0C */	bne lbl_80CDB244
/* 80CDB23C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CDB240  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80CDB244:
/* 80CDB244  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 80CDB248  EC 21 00 24 */	fdivs f1, f1, f0
/* 80CDB24C  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80CDB250  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CDB254  40 80 00 08 */	bge lbl_80CDB25C
/* 80CDB258  FC 20 00 90 */	fmr f1, f0
lbl_80CDB25C:
/* 80CDB25C  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 80CDB260  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CDB264  40 81 00 08 */	ble lbl_80CDB26C
/* 80CDB268  FC 20 00 90 */	fmr f1, f0
lbl_80CDB26C:
/* 80CDB26C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80CDB270  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80CDB274  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80CDB278  38 60 00 00 */	li r3, 0
/* 80CDB27C  E0 61 00 18 */	psq_l f3, 24(r1), 0, 0 /* qr0 */
/* 80CDB280  FC 40 08 18 */	frsp f2, f1
/* 80CDB284  38 00 00 02 */	li r0, 2
/* 80CDB288  7C 09 03 A6 */	mtctr r0
lbl_80CDB28C:
/* 80CDB28C  38 03 09 40 */	addi r0, r3, 0x940
/* 80CDB290  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80CDB294  28 04 00 00 */	cmplwi r4, 0
/* 80CDB298  41 82 00 28 */	beq lbl_80CDB2C0
/* 80CDB29C  F0 61 00 0C */	psq_st f3, 12(r1), 0, 0 /* qr0 */
/* 80CDB2A0  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80CDB2A4  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80CDB2A8  D0 24 00 98 */	stfs f1, 0x98(r4)
/* 80CDB2AC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80CDB2B0  D0 04 00 9C */	stfs f0, 0x9c(r4)
/* 80CDB2B4  D0 44 00 A0 */	stfs f2, 0xa0(r4)
/* 80CDB2B8  D0 24 00 B0 */	stfs f1, 0xb0(r4)
/* 80CDB2BC  D0 04 00 B4 */	stfs f0, 0xb4(r4)
lbl_80CDB2C0:
/* 80CDB2C0  38 63 00 14 */	addi r3, r3, 0x14
/* 80CDB2C4  42 00 FF C8 */	bdnz lbl_80CDB28C
/* 80CDB2C8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80CDB2CC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80CDB2D0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CDB2D4  7C 08 03 A6 */	mtlr r0
/* 80CDB2D8  38 21 00 30 */	addi r1, r1, 0x30
/* 80CDB2DC  4E 80 00 20 */	blr 
