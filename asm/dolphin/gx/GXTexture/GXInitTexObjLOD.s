lbl_8035E0D4:
/* 8035E0D4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8035E0D8  C0 02 CB F8 */	lfs f0, lit_288(r2)
/* 8035E0DC  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8035E0E0  40 80 00 0C */	bge lbl_8035E0EC
/* 8035E0E4  FC 60 00 90 */	fmr f3, f0
/* 8035E0E8  48 00 00 18 */	b lbl_8035E100
lbl_8035E0EC:
/* 8035E0EC  C0 02 CB FC */	lfs f0, lit_289(r2)
/* 8035E0F0  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8035E0F4  4C 41 13 82 */	cror 2, 1, 2
/* 8035E0F8  40 82 00 08 */	bne lbl_8035E100
/* 8035E0FC  C0 62 CC 00 */	lfs f3, lit_290(r2)
lbl_8035E100:
/* 8035E100  C0 02 CC 04 */	lfs f0, lit_291(r2)
/* 8035E104  2C 05 00 01 */	cmpwi r5, 1
/* 8035E108  80 A3 00 00 */	lwz r5, 0(r3)
/* 8035E10C  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8035E110  FC 00 00 1E */	fctiwz f0, f0
/* 8035E114  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8035E118  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8035E11C  50 05 4B EC */	rlwimi r5, r0, 9, 0xf, 0x16
/* 8035E120  90 A3 00 00 */	stw r5, 0(r3)
/* 8035E124  40 82 00 0C */	bne lbl_8035E130
/* 8035E128  38 00 00 01 */	li r0, 1
/* 8035E12C  48 00 00 08 */	b lbl_8035E134
lbl_8035E130:
/* 8035E130  38 00 00 00 */	li r0, 0
lbl_8035E134:
/* 8035E134  80 A3 00 00 */	lwz r5, 0(r3)
/* 8035E138  50 05 26 F6 */	rlwimi r5, r0, 4, 0x1b, 0x1b
/* 8035E13C  54 E0 06 3F */	clrlwi. r0, r7, 0x18
/* 8035E140  90 A3 00 00 */	stw r5, 0(r3)
/* 8035E144  38 AD 85 48 */	la r5, GX2HWFiltConv(r13) /* 80450AC8-_SDA_BASE_ */
/* 8035E148  7C 05 20 AE */	lbzx r0, r5, r4
/* 8035E14C  80 83 00 00 */	lwz r4, 0(r3)
/* 8035E150  50 04 2E 34 */	rlwimi r4, r0, 5, 0x18, 0x1a
/* 8035E154  90 83 00 00 */	stw r4, 0(r3)
/* 8035E158  41 82 00 0C */	beq lbl_8035E164
/* 8035E15C  38 80 00 00 */	li r4, 0
/* 8035E160  48 00 00 08 */	b lbl_8035E168
lbl_8035E164:
/* 8035E164  38 80 00 01 */	li r4, 1
lbl_8035E168:
/* 8035E168  80 03 00 00 */	lwz r0, 0(r3)
/* 8035E16C  50 80 45 EE */	rlwimi r0, r4, 8, 0x17, 0x17
/* 8035E170  38 A0 00 00 */	li r5, 0
/* 8035E174  90 03 00 00 */	stw r0, 0(r3)
/* 8035E178  80 83 00 00 */	lwz r4, 0(r3)
/* 8035E17C  50 A4 8B 9C */	rlwimi r4, r5, 0x11, 0xe, 0xe
/* 8035E180  90 83 00 00 */	stw r4, 0(r3)
/* 8035E184  80 83 00 00 */	lwz r4, 0(r3)
/* 8035E188  50 A4 93 5A */	rlwimi r4, r5, 0x12, 0xd, 0xd
/* 8035E18C  90 83 00 00 */	stw r4, 0(r3)
/* 8035E190  80 83 00 00 */	lwz r4, 0(r3)
/* 8035E194  51 04 9A D8 */	rlwimi r4, r8, 0x13, 0xb, 0xc
/* 8035E198  90 83 00 00 */	stw r4, 0(r3)
/* 8035E19C  80 83 00 00 */	lwz r4, 0(r3)
/* 8035E1A0  50 C4 AA 94 */	rlwimi r4, r6, 0x15, 0xa, 0xa
/* 8035E1A4  90 83 00 00 */	stw r4, 0(r3)
/* 8035E1A8  C0 02 CC 08 */	lfs f0, lit_292(r2)
/* 8035E1AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8035E1B0  40 80 00 0C */	bge lbl_8035E1BC
/* 8035E1B4  FC 20 00 90 */	fmr f1, f0
/* 8035E1B8  48 00 00 14 */	b lbl_8035E1CC
lbl_8035E1BC:
/* 8035E1BC  C0 02 CC 0C */	lfs f0, lit_293(r2)
/* 8035E1C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8035E1C4  40 81 00 08 */	ble lbl_8035E1CC
/* 8035E1C8  FC 20 00 90 */	fmr f1, f0
lbl_8035E1CC:
/* 8035E1CC  C0 62 CB E8 */	lfs f3, lit_220(r2)
/* 8035E1D0  C0 02 CC 08 */	lfs f0, lit_292(r2)
/* 8035E1D4  EC 23 00 72 */	fmuls f1, f3, f1
/* 8035E1D8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8035E1DC  FC 20 08 1E */	fctiwz f1, f1
/* 8035E1E0  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 8035E1E4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8035E1E8  40 80 00 0C */	bge lbl_8035E1F4
/* 8035E1EC  FC 40 00 90 */	fmr f2, f0
/* 8035E1F0  48 00 00 14 */	b lbl_8035E204
lbl_8035E1F4:
/* 8035E1F4  C0 02 CC 0C */	lfs f0, lit_293(r2)
/* 8035E1F8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8035E1FC  40 81 00 08 */	ble lbl_8035E204
/* 8035E200  FC 40 00 90 */	fmr f2, f0
lbl_8035E204:
/* 8035E204  C0 02 CB E8 */	lfs f0, lit_220(r2)
/* 8035E208  80 83 00 04 */	lwz r4, 4(r3)
/* 8035E20C  50 04 06 3E */	rlwimi r4, r0, 0, 0x18, 0x1f
/* 8035E210  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8035E214  90 83 00 04 */	stw r4, 4(r3)
/* 8035E218  FC 00 00 1E */	fctiwz f0, f0
/* 8035E21C  80 83 00 04 */	lwz r4, 4(r3)
/* 8035E220  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8035E224  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8035E228  50 04 44 2E */	rlwimi r4, r0, 8, 0x10, 0x17
/* 8035E22C  90 83 00 04 */	stw r4, 4(r3)
/* 8035E230  38 21 00 30 */	addi r1, r1, 0x30
/* 8035E234  4E 80 00 20 */	blr 
