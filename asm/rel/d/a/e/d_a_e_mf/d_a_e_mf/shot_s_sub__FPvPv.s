lbl_8070D0D0:
/* 8070D0D0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8070D0D4  7C 08 02 A6 */	mflr r0
/* 8070D0D8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8070D0DC  39 61 00 40 */	addi r11, r1, 0x40
/* 8070D0E0  4B C5 50 FD */	bl _savegpr_29
/* 8070D0E4  7C 7D 1B 78 */	mr r29, r3
/* 8070D0E8  7C 9E 23 78 */	mr r30, r4
/* 8070D0EC  3C 80 80 71 */	lis r4, lit_3828@ha /* 0x80713974@ha */
/* 8070D0F0  3B E4 39 74 */	addi r31, r4, lit_3828@l /* 0x80713974@l */
/* 8070D0F4  4B 90 BB ED */	bl fopAc_IsActor__FPv
/* 8070D0F8  2C 03 00 00 */	cmpwi r3, 0
/* 8070D0FC  41 82 00 24 */	beq lbl_8070D120
/* 8070D100  A8 1D 00 08 */	lha r0, 8(r29)
/* 8070D104  2C 00 03 08 */	cmpwi r0, 0x308
/* 8070D108  40 82 00 18 */	bne lbl_8070D120
/* 8070D10C  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 8070D110  28 00 00 01 */	cmplwi r0, 1
/* 8070D114  41 82 00 44 */	beq lbl_8070D158
/* 8070D118  28 00 00 02 */	cmplwi r0, 2
/* 8070D11C  41 82 00 3C */	beq lbl_8070D158
lbl_8070D120:
/* 8070D120  A8 1D 00 08 */	lha r0, 8(r29)
/* 8070D124  2C 00 00 FE */	cmpwi r0, 0xfe
/* 8070D128  40 82 01 58 */	bne lbl_8070D280
/* 8070D12C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8070D130  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8070D134  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 8070D138  54 00 03 19 */	rlwinm. r0, r0, 0, 0xc, 0xc
/* 8070D13C  40 82 01 44 */	bne lbl_8070D280
/* 8070D140  4B A5 27 5D */	bl checkBoomerangCharge__9daPy_py_cFv
/* 8070D144  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8070D148  41 82 01 38 */	beq lbl_8070D280
/* 8070D14C  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 8070D150  28 00 00 01 */	cmplwi r0, 1
/* 8070D154  40 82 01 2C */	bne lbl_8070D280
lbl_8070D158:
/* 8070D158  38 61 00 0C */	addi r3, r1, 0xc
/* 8070D15C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8070D160  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8070D164  4B B5 99 D1 */	bl __mi__4cXyzCFRC3Vec
/* 8070D168  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8070D16C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8070D170  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8070D174  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8070D178  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8070D17C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8070D180  38 61 00 18 */	addi r3, r1, 0x18
/* 8070D184  4B C3 9F B5 */	bl PSVECSquareMag
/* 8070D188  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8070D18C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8070D190  40 81 00 58 */	ble lbl_8070D1E8
/* 8070D194  FC 00 08 34 */	frsqrte f0, f1
/* 8070D198  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8070D19C  FC 44 00 32 */	fmul f2, f4, f0
/* 8070D1A0  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8070D1A4  FC 00 00 32 */	fmul f0, f0, f0
/* 8070D1A8  FC 01 00 32 */	fmul f0, f1, f0
/* 8070D1AC  FC 03 00 28 */	fsub f0, f3, f0
/* 8070D1B0  FC 02 00 32 */	fmul f0, f2, f0
/* 8070D1B4  FC 44 00 32 */	fmul f2, f4, f0
/* 8070D1B8  FC 00 00 32 */	fmul f0, f0, f0
/* 8070D1BC  FC 01 00 32 */	fmul f0, f1, f0
/* 8070D1C0  FC 03 00 28 */	fsub f0, f3, f0
/* 8070D1C4  FC 02 00 32 */	fmul f0, f2, f0
/* 8070D1C8  FC 44 00 32 */	fmul f2, f4, f0
/* 8070D1CC  FC 00 00 32 */	fmul f0, f0, f0
/* 8070D1D0  FC 01 00 32 */	fmul f0, f1, f0
/* 8070D1D4  FC 03 00 28 */	fsub f0, f3, f0
/* 8070D1D8  FC 02 00 32 */	fmul f0, f2, f0
/* 8070D1DC  FC 21 00 32 */	fmul f1, f1, f0
/* 8070D1E0  FC 20 08 18 */	frsp f1, f1
/* 8070D1E4  48 00 00 88 */	b lbl_8070D26C
lbl_8070D1E8:
/* 8070D1E8  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8070D1EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8070D1F0  40 80 00 10 */	bge lbl_8070D200
/* 8070D1F4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8070D1F8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8070D1FC  48 00 00 70 */	b lbl_8070D26C
lbl_8070D200:
/* 8070D200  D0 21 00 08 */	stfs f1, 8(r1)
/* 8070D204  80 81 00 08 */	lwz r4, 8(r1)
/* 8070D208  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8070D20C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8070D210  7C 03 00 00 */	cmpw r3, r0
/* 8070D214  41 82 00 14 */	beq lbl_8070D228
/* 8070D218  40 80 00 40 */	bge lbl_8070D258
/* 8070D21C  2C 03 00 00 */	cmpwi r3, 0
/* 8070D220  41 82 00 20 */	beq lbl_8070D240
/* 8070D224  48 00 00 34 */	b lbl_8070D258
lbl_8070D228:
/* 8070D228  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8070D22C  41 82 00 0C */	beq lbl_8070D238
/* 8070D230  38 00 00 01 */	li r0, 1
/* 8070D234  48 00 00 28 */	b lbl_8070D25C
lbl_8070D238:
/* 8070D238  38 00 00 02 */	li r0, 2
/* 8070D23C  48 00 00 20 */	b lbl_8070D25C
lbl_8070D240:
/* 8070D240  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8070D244  41 82 00 0C */	beq lbl_8070D250
/* 8070D248  38 00 00 05 */	li r0, 5
/* 8070D24C  48 00 00 10 */	b lbl_8070D25C
lbl_8070D250:
/* 8070D250  38 00 00 03 */	li r0, 3
/* 8070D254  48 00 00 08 */	b lbl_8070D25C
lbl_8070D258:
/* 8070D258  38 00 00 04 */	li r0, 4
lbl_8070D25C:
/* 8070D25C  2C 00 00 01 */	cmpwi r0, 1
/* 8070D260  40 82 00 0C */	bne lbl_8070D26C
/* 8070D264  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8070D268  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8070D26C:
/* 8070D26C  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 8070D270  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8070D274  40 80 00 0C */	bge lbl_8070D280
/* 8070D278  7F A3 EB 78 */	mr r3, r29
/* 8070D27C  48 00 00 34 */	b lbl_8070D2B0
lbl_8070D280:
/* 8070D280  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8070D284  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8070D288  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 8070D28C  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 8070D290  41 82 00 1C */	beq lbl_8070D2AC
/* 8070D294  C0 3E 06 B0 */	lfs f1, 0x6b0(r30)
/* 8070D298  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 8070D29C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8070D2A0  40 80 00 0C */	bge lbl_8070D2AC
/* 8070D2A4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8070D2A8  48 00 00 08 */	b lbl_8070D2B0
lbl_8070D2AC:
/* 8070D2AC  38 60 00 00 */	li r3, 0
lbl_8070D2B0:
/* 8070D2B0  39 61 00 40 */	addi r11, r1, 0x40
/* 8070D2B4  4B C5 4F 75 */	bl _restgpr_29
/* 8070D2B8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8070D2BC  7C 08 03 A6 */	mtlr r0
/* 8070D2C0  38 21 00 40 */	addi r1, r1, 0x40
/* 8070D2C4  4E 80 00 20 */	blr 
