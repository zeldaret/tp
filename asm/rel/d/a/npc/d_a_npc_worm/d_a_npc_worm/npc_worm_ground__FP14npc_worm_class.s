lbl_80B2E044:
/* 80B2E044  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80B2E048  7C 08 02 A6 */	mflr r0
/* 80B2E04C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80B2E050  39 61 00 60 */	addi r11, r1, 0x60
/* 80B2E054  4B 83 41 84 */	b _savegpr_28
/* 80B2E058  7C 7D 1B 78 */	mr r29, r3
/* 80B2E05C  3C 60 80 B3 */	lis r3, lit_3717@ha
/* 80B2E060  3B E3 F0 80 */	addi r31, r3, lit_3717@l
/* 80B2E064  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B2E068  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B2E06C  83 83 5D AC */	lwz r28, 0x5dac(r3)
/* 80B2E070  3B C0 00 00 */	li r30, 0
/* 80B2E074  A8 1D 05 A8 */	lha r0, 0x5a8(r29)
/* 80B2E078  2C 00 00 01 */	cmpwi r0, 1
/* 80B2E07C  41 82 00 4C */	beq lbl_80B2E0C8
/* 80B2E080  40 80 00 10 */	bge lbl_80B2E090
/* 80B2E084  2C 00 00 00 */	cmpwi r0, 0
/* 80B2E088  40 80 00 14 */	bge lbl_80B2E09C
/* 80B2E08C  48 00 02 00 */	b lbl_80B2E28C
lbl_80B2E090:
/* 80B2E090  2C 00 00 03 */	cmpwi r0, 3
/* 80B2E094  40 80 01 F8 */	bge lbl_80B2E28C
/* 80B2E098  48 00 01 E4 */	b lbl_80B2E27C
lbl_80B2E09C:
/* 80B2E09C  38 00 00 00 */	li r0, 0
/* 80B2E0A0  98 1D 05 E6 */	stb r0, 0x5e6(r29)
/* 80B2E0A4  38 00 00 01 */	li r0, 1
/* 80B2E0A8  B0 1D 05 A8 */	sth r0, 0x5a8(r29)
/* 80B2E0AC  C0 1D 05 D8 */	lfs f0, 0x5d8(r29)
/* 80B2E0B0  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80B2E0B4  C0 1D 05 DC */	lfs f0, 0x5dc(r29)
/* 80B2E0B8  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80B2E0BC  C0 1D 05 E0 */	lfs f0, 0x5e0(r29)
/* 80B2E0C0  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80B2E0C4  48 00 01 C8 */	b lbl_80B2E28C
lbl_80B2E0C8:
/* 80B2E0C8  7F 83 E3 78 */	mr r3, r28
/* 80B2E0CC  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 80B2E0D0  81 8C 00 B4 */	lwz r12, 0xb4(r12)
/* 80B2E0D4  7D 89 03 A6 */	mtctr r12
/* 80B2E0D8  4E 80 04 21 */	bctrl 
/* 80B2E0DC  2C 03 00 00 */	cmpwi r3, 0
/* 80B2E0E0  41 82 01 AC */	beq lbl_80B2E28C
/* 80B2E0E4  38 61 00 30 */	addi r3, r1, 0x30
/* 80B2E0E8  7F 84 E3 78 */	mr r4, r28
/* 80B2E0EC  48 00 0F 65 */	bl getLeftHandPos__9daPy_py_cCFv
/* 80B2E0F0  38 61 00 24 */	addi r3, r1, 0x24
/* 80B2E0F4  38 81 00 30 */	addi r4, r1, 0x30
/* 80B2E0F8  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80B2E0FC  4B 73 8A 38 */	b __mi__4cXyzCFRC3Vec
/* 80B2E100  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80B2E104  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B2E108  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80B2E10C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B2E110  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80B2E114  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B2E118  38 61 00 3C */	addi r3, r1, 0x3c
/* 80B2E11C  4B 81 90 1C */	b PSVECSquareMag
/* 80B2E120  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80B2E124  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B2E128  40 81 00 58 */	ble lbl_80B2E180
/* 80B2E12C  FC 00 08 34 */	frsqrte f0, f1
/* 80B2E130  C8 9F 00 08 */	lfd f4, 8(r31)
/* 80B2E134  FC 44 00 32 */	fmul f2, f4, f0
/* 80B2E138  C8 7F 00 10 */	lfd f3, 0x10(r31)
/* 80B2E13C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B2E140  FC 01 00 32 */	fmul f0, f1, f0
/* 80B2E144  FC 03 00 28 */	fsub f0, f3, f0
/* 80B2E148  FC 02 00 32 */	fmul f0, f2, f0
/* 80B2E14C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B2E150  FC 00 00 32 */	fmul f0, f0, f0
/* 80B2E154  FC 01 00 32 */	fmul f0, f1, f0
/* 80B2E158  FC 03 00 28 */	fsub f0, f3, f0
/* 80B2E15C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B2E160  FC 44 00 32 */	fmul f2, f4, f0
/* 80B2E164  FC 00 00 32 */	fmul f0, f0, f0
/* 80B2E168  FC 01 00 32 */	fmul f0, f1, f0
/* 80B2E16C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B2E170  FC 02 00 32 */	fmul f0, f2, f0
/* 80B2E174  FC 21 00 32 */	fmul f1, f1, f0
/* 80B2E178  FC 20 08 18 */	frsp f1, f1
/* 80B2E17C  48 00 00 88 */	b lbl_80B2E204
lbl_80B2E180:
/* 80B2E180  C8 1F 00 18 */	lfd f0, 0x18(r31)
/* 80B2E184  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B2E188  40 80 00 10 */	bge lbl_80B2E198
/* 80B2E18C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B2E190  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80B2E194  48 00 00 70 */	b lbl_80B2E204
lbl_80B2E198:
/* 80B2E198  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B2E19C  80 81 00 08 */	lwz r4, 8(r1)
/* 80B2E1A0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B2E1A4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B2E1A8  7C 03 00 00 */	cmpw r3, r0
/* 80B2E1AC  41 82 00 14 */	beq lbl_80B2E1C0
/* 80B2E1B0  40 80 00 40 */	bge lbl_80B2E1F0
/* 80B2E1B4  2C 03 00 00 */	cmpwi r3, 0
/* 80B2E1B8  41 82 00 20 */	beq lbl_80B2E1D8
/* 80B2E1BC  48 00 00 34 */	b lbl_80B2E1F0
lbl_80B2E1C0:
/* 80B2E1C0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B2E1C4  41 82 00 0C */	beq lbl_80B2E1D0
/* 80B2E1C8  38 00 00 01 */	li r0, 1
/* 80B2E1CC  48 00 00 28 */	b lbl_80B2E1F4
lbl_80B2E1D0:
/* 80B2E1D0  38 00 00 02 */	li r0, 2
/* 80B2E1D4  48 00 00 20 */	b lbl_80B2E1F4
lbl_80B2E1D8:
/* 80B2E1D8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B2E1DC  41 82 00 0C */	beq lbl_80B2E1E8
/* 80B2E1E0  38 00 00 05 */	li r0, 5
/* 80B2E1E4  48 00 00 10 */	b lbl_80B2E1F4
lbl_80B2E1E8:
/* 80B2E1E8  38 00 00 03 */	li r0, 3
/* 80B2E1EC  48 00 00 08 */	b lbl_80B2E1F4
lbl_80B2E1F0:
/* 80B2E1F0  38 00 00 04 */	li r0, 4
lbl_80B2E1F4:
/* 80B2E1F4  2C 00 00 01 */	cmpwi r0, 1
/* 80B2E1F8  40 82 00 0C */	bne lbl_80B2E204
/* 80B2E1FC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B2E200  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80B2E204:
/* 80B2E204  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80B2E208  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B2E20C  40 80 00 80 */	bge lbl_80B2E28C
/* 80B2E210  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80B2E214  4B 73 97 40 */	b cM_rndF__Ff
/* 80B2E218  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80B2E21C  EC 00 08 2A */	fadds f0, f0, f1
/* 80B2E220  FC 00 00 1E */	fctiwz f0, f0
/* 80B2E224  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80B2E228  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80B2E22C  B0 1D 05 E8 */	sth r0, 0x5e8(r29)
/* 80B2E230  38 00 00 02 */	li r0, 2
/* 80B2E234  B0 1D 05 A8 */	sth r0, 0x5a8(r29)
/* 80B2E238  38 61 00 18 */	addi r3, r1, 0x18
/* 80B2E23C  7F 84 E3 78 */	mr r4, r28
/* 80B2E240  48 00 0E 11 */	bl getLeftHandPos__9daPy_py_cCFv
/* 80B2E244  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80B2E248  4B 73 97 44 */	b cM_rndFX__Ff
/* 80B2E24C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80B2E250  EC 00 08 2A */	fadds f0, f0, f1
/* 80B2E254  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80B2E258  38 61 00 0C */	addi r3, r1, 0xc
/* 80B2E25C  7F 84 E3 78 */	mr r4, r28
/* 80B2E260  48 00 0D F1 */	bl getLeftHandPos__9daPy_py_cCFv
/* 80B2E264  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80B2E268  4B 73 97 24 */	b cM_rndFX__Ff
/* 80B2E26C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80B2E270  EC 00 08 2A */	fadds f0, f0, f1
/* 80B2E274  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80B2E278  48 00 00 14 */	b lbl_80B2E28C
lbl_80B2E27C:
/* 80B2E27C  A8 1D 05 E8 */	lha r0, 0x5e8(r29)
/* 80B2E280  2C 00 00 00 */	cmpwi r0, 0
/* 80B2E284  40 82 00 08 */	bne lbl_80B2E28C
/* 80B2E288  3B C0 00 01 */	li r30, 1
lbl_80B2E28C:
/* 80B2E28C  2C 1E 00 00 */	cmpwi r30, 0
/* 80B2E290  41 82 00 1C */	beq lbl_80B2E2AC
/* 80B2E294  38 00 00 01 */	li r0, 1
/* 80B2E298  B0 1D 05 A6 */	sth r0, 0x5a6(r29)
/* 80B2E29C  38 00 00 00 */	li r0, 0
/* 80B2E2A0  B0 1D 05 A8 */	sth r0, 0x5a8(r29)
/* 80B2E2A4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80B2E2A8  D0 1D 05 D4 */	stfs f0, 0x5d4(r29)
lbl_80B2E2AC:
/* 80B2E2AC  39 61 00 60 */	addi r11, r1, 0x60
/* 80B2E2B0  4B 83 3F 74 */	b _restgpr_28
/* 80B2E2B4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80B2E2B8  7C 08 03 A6 */	mtlr r0
/* 80B2E2BC  38 21 00 60 */	addi r1, r1, 0x60
/* 80B2E2C0  4E 80 00 20 */	blr 
