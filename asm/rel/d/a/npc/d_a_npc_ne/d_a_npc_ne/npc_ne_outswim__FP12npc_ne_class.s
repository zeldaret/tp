lbl_80A8E0E4:
/* 80A8E0E4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A8E0E8  7C 08 02 A6 */	mflr r0
/* 80A8E0EC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A8E0F0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80A8E0F4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80A8E0F8  7C 7E 1B 78 */	mr r30, r3
/* 80A8E0FC  3C 80 80 A9 */	lis r4, lit_3990@ha
/* 80A8E100  3B E4 24 1C */	addi r31, r4, lit_3990@l
/* 80A8E104  A8 03 06 46 */	lha r0, 0x646(r3)
/* 80A8E108  2C 00 00 02 */	cmpwi r0, 2
/* 80A8E10C  41 82 00 D8 */	beq lbl_80A8E1E4
/* 80A8E110  40 80 00 14 */	bge lbl_80A8E124
/* 80A8E114  2C 00 00 00 */	cmpwi r0, 0
/* 80A8E118  41 82 00 18 */	beq lbl_80A8E130
/* 80A8E11C  40 80 00 3C */	bge lbl_80A8E158
/* 80A8E120  48 00 02 D0 */	b lbl_80A8E3F0
lbl_80A8E124:
/* 80A8E124  2C 00 00 04 */	cmpwi r0, 4
/* 80A8E128  40 80 02 C8 */	bge lbl_80A8E3F0
/* 80A8E12C  48 00 02 74 */	b lbl_80A8E3A0
lbl_80A8E130:
/* 80A8E130  38 80 00 11 */	li r4, 0x11
/* 80A8E134  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80A8E138  38 A0 00 02 */	li r5, 2
/* 80A8E13C  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80A8E140  4B FF AB D5 */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8E144  A8 7E 06 46 */	lha r3, 0x646(r30)
/* 80A8E148  38 03 00 01 */	addi r0, r3, 1
/* 80A8E14C  B0 1E 06 46 */	sth r0, 0x646(r30)
/* 80A8E150  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80A8E154  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_80A8E158:
/* 80A8E158  38 00 C0 00 */	li r0, -16384
/* 80A8E15C  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 80A8E160  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 80A8E164  C0 3E 05 C8 */	lfs f1, 0x5c8(r30)
/* 80A8E168  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A8E16C  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A8E170  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8E174  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 80A8E178  4B 7E 18 C4 */	b cLib_addCalc2__FPffff
/* 80A8E17C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80A8E180  C0 3E 06 E4 */	lfs f1, 0x6e4(r30)
/* 80A8E184  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8E188  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 80A8E18C  4B 7E 18 B0 */	b cLib_addCalc2__FPffff
/* 80A8E190  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 80A8E194  C0 3E 06 EC */	lfs f1, 0x6ec(r30)
/* 80A8E198  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8E19C  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 80A8E1A0  4B 7E 18 9C */	b cLib_addCalc2__FPffff
/* 80A8E1A4  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80A8E1A8  C0 3E 05 C8 */	lfs f1, 0x5c8(r30)
/* 80A8E1AC  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A8E1B0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A8E1B4  EC 02 00 28 */	fsubs f0, f2, f0
/* 80A8E1B8  FC 00 02 10 */	fabs f0, f0
/* 80A8E1BC  FC 20 00 18 */	frsp f1, f0
/* 80A8E1C0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80A8E1C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8E1C8  40 80 02 28 */	bge lbl_80A8E3F0
/* 80A8E1CC  A8 7E 06 46 */	lha r3, 0x646(r30)
/* 80A8E1D0  38 03 00 01 */	addi r0, r3, 1
/* 80A8E1D4  B0 1E 06 46 */	sth r0, 0x646(r30)
/* 80A8E1D8  38 00 00 05 */	li r0, 5
/* 80A8E1DC  B0 1E 06 4C */	sth r0, 0x64c(r30)
/* 80A8E1E0  48 00 02 10 */	b lbl_80A8E3F0
lbl_80A8E1E4:
/* 80A8E1E4  38 00 00 00 */	li r0, 0
/* 80A8E1E8  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 80A8E1EC  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80A8E1F0  C0 3E 05 C4 */	lfs f1, 0x5c4(r30)
/* 80A8E1F4  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8E1F8  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 80A8E1FC  4B 7E 18 40 */	b cLib_addCalc2__FPffff
/* 80A8E200  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 80A8E204  C0 3E 05 C8 */	lfs f1, 0x5c8(r30)
/* 80A8E208  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8E20C  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 80A8E210  4B 7E 18 2C */	b cLib_addCalc2__FPffff
/* 80A8E214  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 80A8E218  C0 3E 05 CC */	lfs f1, 0x5cc(r30)
/* 80A8E21C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8E220  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 80A8E224  4B 7E 18 18 */	b cLib_addCalc2__FPffff
/* 80A8E228  38 61 00 0C */	addi r3, r1, 0xc
/* 80A8E22C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80A8E230  38 BE 05 C4 */	addi r5, r30, 0x5c4
/* 80A8E234  4B 7D 89 00 */	b __mi__4cXyzCFRC3Vec
/* 80A8E238  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80A8E23C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A8E240  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80A8E244  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A8E248  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80A8E24C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A8E250  A8 1E 06 4C */	lha r0, 0x64c(r30)
/* 80A8E254  2C 00 00 01 */	cmpwi r0, 1
/* 80A8E258  40 82 00 1C */	bne lbl_80A8E274
/* 80A8E25C  7F C3 F3 78 */	mr r3, r30
/* 80A8E260  38 80 00 0C */	li r4, 0xc
/* 80A8E264  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80A8E268  38 A0 00 00 */	li r5, 0
/* 80A8E26C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8E270  4B FF AA A5 */	bl anm_init__FP12npc_ne_classifUcf
lbl_80A8E274:
/* 80A8E274  38 61 00 18 */	addi r3, r1, 0x18
/* 80A8E278  4B 8B 8E C0 */	b PSVECSquareMag
/* 80A8E27C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80A8E280  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8E284  40 81 00 58 */	ble lbl_80A8E2DC
/* 80A8E288  FC 00 08 34 */	frsqrte f0, f1
/* 80A8E28C  C8 9F 00 C8 */	lfd f4, 0xc8(r31)
/* 80A8E290  FC 44 00 32 */	fmul f2, f4, f0
/* 80A8E294  C8 7F 00 D0 */	lfd f3, 0xd0(r31)
/* 80A8E298  FC 00 00 32 */	fmul f0, f0, f0
/* 80A8E29C  FC 01 00 32 */	fmul f0, f1, f0
/* 80A8E2A0  FC 03 00 28 */	fsub f0, f3, f0
/* 80A8E2A4  FC 02 00 32 */	fmul f0, f2, f0
/* 80A8E2A8  FC 44 00 32 */	fmul f2, f4, f0
/* 80A8E2AC  FC 00 00 32 */	fmul f0, f0, f0
/* 80A8E2B0  FC 01 00 32 */	fmul f0, f1, f0
/* 80A8E2B4  FC 03 00 28 */	fsub f0, f3, f0
/* 80A8E2B8  FC 02 00 32 */	fmul f0, f2, f0
/* 80A8E2BC  FC 44 00 32 */	fmul f2, f4, f0
/* 80A8E2C0  FC 00 00 32 */	fmul f0, f0, f0
/* 80A8E2C4  FC 01 00 32 */	fmul f0, f1, f0
/* 80A8E2C8  FC 03 00 28 */	fsub f0, f3, f0
/* 80A8E2CC  FC 02 00 32 */	fmul f0, f2, f0
/* 80A8E2D0  FC 21 00 32 */	fmul f1, f1, f0
/* 80A8E2D4  FC 20 08 18 */	frsp f1, f1
/* 80A8E2D8  48 00 00 88 */	b lbl_80A8E360
lbl_80A8E2DC:
/* 80A8E2DC  C8 1F 00 D8 */	lfd f0, 0xd8(r31)
/* 80A8E2E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8E2E4  40 80 00 10 */	bge lbl_80A8E2F4
/* 80A8E2E8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A8E2EC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80A8E2F0  48 00 00 70 */	b lbl_80A8E360
lbl_80A8E2F4:
/* 80A8E2F4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A8E2F8  80 81 00 08 */	lwz r4, 8(r1)
/* 80A8E2FC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A8E300  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A8E304  7C 03 00 00 */	cmpw r3, r0
/* 80A8E308  41 82 00 14 */	beq lbl_80A8E31C
/* 80A8E30C  40 80 00 40 */	bge lbl_80A8E34C
/* 80A8E310  2C 03 00 00 */	cmpwi r3, 0
/* 80A8E314  41 82 00 20 */	beq lbl_80A8E334
/* 80A8E318  48 00 00 34 */	b lbl_80A8E34C
lbl_80A8E31C:
/* 80A8E31C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A8E320  41 82 00 0C */	beq lbl_80A8E32C
/* 80A8E324  38 00 00 01 */	li r0, 1
/* 80A8E328  48 00 00 28 */	b lbl_80A8E350
lbl_80A8E32C:
/* 80A8E32C  38 00 00 02 */	li r0, 2
/* 80A8E330  48 00 00 20 */	b lbl_80A8E350
lbl_80A8E334:
/* 80A8E334  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A8E338  41 82 00 0C */	beq lbl_80A8E344
/* 80A8E33C  38 00 00 05 */	li r0, 5
/* 80A8E340  48 00 00 10 */	b lbl_80A8E350
lbl_80A8E344:
/* 80A8E344  38 00 00 03 */	li r0, 3
/* 80A8E348  48 00 00 08 */	b lbl_80A8E350
lbl_80A8E34C:
/* 80A8E34C  38 00 00 04 */	li r0, 4
lbl_80A8E350:
/* 80A8E350  2C 00 00 01 */	cmpwi r0, 1
/* 80A8E354  40 82 00 0C */	bne lbl_80A8E360
/* 80A8E358  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A8E35C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80A8E360:
/* 80A8E360  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80A8E364  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8E368  40 80 00 88 */	bge lbl_80A8E3F0
/* 80A8E36C  A8 7E 06 46 */	lha r3, 0x646(r30)
/* 80A8E370  38 03 00 01 */	addi r0, r3, 1
/* 80A8E374  B0 1E 06 46 */	sth r0, 0x646(r30)
/* 80A8E378  80 1E 06 30 */	lwz r0, 0x630(r30)
/* 80A8E37C  2C 00 00 0C */	cmpwi r0, 0xc
/* 80A8E380  41 82 00 70 */	beq lbl_80A8E3F0
/* 80A8E384  7F C3 F3 78 */	mr r3, r30
/* 80A8E388  38 80 00 0C */	li r4, 0xc
/* 80A8E38C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80A8E390  38 A0 00 00 */	li r5, 0
/* 80A8E394  FC 40 08 90 */	fmr f2, f1
/* 80A8E398  4B FF A9 7D */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8E39C  48 00 00 54 */	b lbl_80A8E3F0
lbl_80A8E3A0:
/* 80A8E3A0  80 7E 05 E8 */	lwz r3, 0x5e8(r30)
/* 80A8E3A4  38 80 00 01 */	li r4, 1
/* 80A8E3A8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80A8E3AC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A8E3B0  40 82 00 18 */	bne lbl_80A8E3C8
/* 80A8E3B4  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80A8E3B8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A8E3BC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A8E3C0  41 82 00 08 */	beq lbl_80A8E3C8
/* 80A8E3C4  38 80 00 00 */	li r4, 0
lbl_80A8E3C8:
/* 80A8E3C8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80A8E3CC  41 82 00 24 */	beq lbl_80A8E3F0
/* 80A8E3D0  38 00 00 01 */	li r0, 1
/* 80A8E3D4  B0 1E 06 42 */	sth r0, 0x642(r30)
/* 80A8E3D8  38 00 00 00 */	li r0, 0
/* 80A8E3DC  B0 1E 06 46 */	sth r0, 0x646(r30)
/* 80A8E3E0  B0 1E 06 52 */	sth r0, 0x652(r30)
/* 80A8E3E4  B0 1E 06 50 */	sth r0, 0x650(r30)
/* 80A8E3E8  B0 1E 06 4E */	sth r0, 0x64e(r30)
/* 80A8E3EC  B0 1E 06 4C */	sth r0, 0x64c(r30)
lbl_80A8E3F0:
/* 80A8E3F0  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80A8E3F4  A8 9E 05 D0 */	lha r4, 0x5d0(r30)
/* 80A8E3F8  38 A0 00 04 */	li r5, 4
/* 80A8E3FC  38 C0 08 00 */	li r6, 0x800
/* 80A8E400  4B 7E 22 08 */	b cLib_addCalcAngleS2__FPssss
/* 80A8E404  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80A8E408  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80A8E40C  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80A8E410  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80A8E414  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80A8E418  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A8E41C  7C 08 03 A6 */	mtlr r0
/* 80A8E420  38 21 00 30 */	addi r1, r1, 0x30
/* 80A8E424  4E 80 00 20 */	blr 
