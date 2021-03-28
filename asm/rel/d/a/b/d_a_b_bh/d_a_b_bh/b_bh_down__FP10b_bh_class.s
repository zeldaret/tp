lbl_805AF1F8:
/* 805AF1F8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805AF1FC  7C 08 02 A6 */	mflr r0
/* 805AF200  90 01 00 64 */	stw r0, 0x64(r1)
/* 805AF204  39 61 00 60 */	addi r11, r1, 0x60
/* 805AF208  4B DB 2F D0 */	b _savegpr_28
/* 805AF20C  7C 7D 1B 78 */	mr r29, r3
/* 805AF210  3C 60 80 5B */	lis r3, lit_3764@ha
/* 805AF214  3B E3 31 40 */	addi r31, r3, lit_3764@l
/* 805AF218  80 1D 04 A4 */	lwz r0, 0x4a4(r29)
/* 805AF21C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805AF220  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 805AF224  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 805AF228  38 81 00 0C */	addi r4, r1, 0xc
/* 805AF22C  4B A6 A5 CC */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 805AF230  7C 7C 1B 78 */	mr r28, r3
/* 805AF234  3B C0 00 00 */	li r30, 0
/* 805AF238  38 61 00 14 */	addi r3, r1, 0x14
/* 805AF23C  38 9D 06 B0 */	addi r4, r29, 0x6b0
/* 805AF240  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 805AF244  4B CB 78 F0 */	b __mi__4cXyzCFRC3Vec
/* 805AF248  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 805AF24C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805AF250  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 805AF254  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805AF258  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 805AF25C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805AF260  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805AF264  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805AF268  A8 1D 06 6C */	lha r0, 0x66c(r29)
/* 805AF26C  2C 00 00 02 */	cmpwi r0, 2
/* 805AF270  41 82 02 F0 */	beq lbl_805AF560
/* 805AF274  40 80 00 14 */	bge lbl_805AF288
/* 805AF278  2C 00 00 00 */	cmpwi r0, 0
/* 805AF27C  41 82 00 18 */	beq lbl_805AF294
/* 805AF280  40 80 00 48 */	bge lbl_805AF2C8
/* 805AF284  48 00 03 CC */	b lbl_805AF650
lbl_805AF288:
/* 805AF288  2C 00 00 0A */	cmpwi r0, 0xa
/* 805AF28C  41 82 03 40 */	beq lbl_805AF5CC
/* 805AF290  48 00 03 C0 */	b lbl_805AF650
lbl_805AF294:
/* 805AF294  7F A3 EB 78 */	mr r3, r29
/* 805AF298  38 80 00 0B */	li r4, 0xb
/* 805AF29C  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 805AF2A0  38 A0 00 02 */	li r5, 2
/* 805AF2A4  FC 40 08 90 */	fmr f2, f1
/* 805AF2A8  4B FF EF FD */	bl anm_init__FP10b_bh_classifUcf
/* 805AF2AC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805AF2B0  D0 1D 06 90 */	stfs f0, 0x690(r29)
/* 805AF2B4  38 00 00 01 */	li r0, 1
/* 805AF2B8  B0 1D 06 6C */	sth r0, 0x66c(r29)
/* 805AF2BC  38 00 00 C8 */	li r0, 0xc8
/* 805AF2C0  B0 1D 06 94 */	sth r0, 0x694(r29)
/* 805AF2C4  48 00 03 8C */	b lbl_805AF650
lbl_805AF2C8:
/* 805AF2C8  38 61 00 2C */	addi r3, r1, 0x2c
/* 805AF2CC  4B D9 7E 6C */	b PSVECSquareMag
/* 805AF2D0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805AF2D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805AF2D8  40 81 00 58 */	ble lbl_805AF330
/* 805AF2DC  FC 00 08 34 */	frsqrte f0, f1
/* 805AF2E0  C8 9F 00 38 */	lfd f4, 0x38(r31)
/* 805AF2E4  FC 44 00 32 */	fmul f2, f4, f0
/* 805AF2E8  C8 7F 00 40 */	lfd f3, 0x40(r31)
/* 805AF2EC  FC 00 00 32 */	fmul f0, f0, f0
/* 805AF2F0  FC 01 00 32 */	fmul f0, f1, f0
/* 805AF2F4  FC 03 00 28 */	fsub f0, f3, f0
/* 805AF2F8  FC 02 00 32 */	fmul f0, f2, f0
/* 805AF2FC  FC 44 00 32 */	fmul f2, f4, f0
/* 805AF300  FC 00 00 32 */	fmul f0, f0, f0
/* 805AF304  FC 01 00 32 */	fmul f0, f1, f0
/* 805AF308  FC 03 00 28 */	fsub f0, f3, f0
/* 805AF30C  FC 02 00 32 */	fmul f0, f2, f0
/* 805AF310  FC 44 00 32 */	fmul f2, f4, f0
/* 805AF314  FC 00 00 32 */	fmul f0, f0, f0
/* 805AF318  FC 01 00 32 */	fmul f0, f1, f0
/* 805AF31C  FC 03 00 28 */	fsub f0, f3, f0
/* 805AF320  FC 02 00 32 */	fmul f0, f2, f0
/* 805AF324  FC 21 00 32 */	fmul f1, f1, f0
/* 805AF328  FC 20 08 18 */	frsp f1, f1
/* 805AF32C  48 00 00 88 */	b lbl_805AF3B4
lbl_805AF330:
/* 805AF330  C8 1F 00 48 */	lfd f0, 0x48(r31)
/* 805AF334  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805AF338  40 80 00 10 */	bge lbl_805AF348
/* 805AF33C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805AF340  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 805AF344  48 00 00 70 */	b lbl_805AF3B4
lbl_805AF348:
/* 805AF348  D0 21 00 08 */	stfs f1, 8(r1)
/* 805AF34C  80 81 00 08 */	lwz r4, 8(r1)
/* 805AF350  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805AF354  3C 00 7F 80 */	lis r0, 0x7f80
/* 805AF358  7C 03 00 00 */	cmpw r3, r0
/* 805AF35C  41 82 00 14 */	beq lbl_805AF370
/* 805AF360  40 80 00 40 */	bge lbl_805AF3A0
/* 805AF364  2C 03 00 00 */	cmpwi r3, 0
/* 805AF368  41 82 00 20 */	beq lbl_805AF388
/* 805AF36C  48 00 00 34 */	b lbl_805AF3A0
lbl_805AF370:
/* 805AF370  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805AF374  41 82 00 0C */	beq lbl_805AF380
/* 805AF378  38 00 00 01 */	li r0, 1
/* 805AF37C  48 00 00 28 */	b lbl_805AF3A4
lbl_805AF380:
/* 805AF380  38 00 00 02 */	li r0, 2
/* 805AF384  48 00 00 20 */	b lbl_805AF3A4
lbl_805AF388:
/* 805AF388  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805AF38C  41 82 00 0C */	beq lbl_805AF398
/* 805AF390  38 00 00 05 */	li r0, 5
/* 805AF394  48 00 00 10 */	b lbl_805AF3A4
lbl_805AF398:
/* 805AF398  38 00 00 03 */	li r0, 3
/* 805AF39C  48 00 00 08 */	b lbl_805AF3A4
lbl_805AF3A0:
/* 805AF3A0  38 00 00 04 */	li r0, 4
lbl_805AF3A4:
/* 805AF3A4  2C 00 00 01 */	cmpwi r0, 1
/* 805AF3A8  40 82 00 0C */	bne lbl_805AF3B4
/* 805AF3AC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805AF3B0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_805AF3B4:
/* 805AF3B4  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 805AF3B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805AF3BC  40 81 00 08 */	ble lbl_805AF3C4
/* 805AF3C0  3B C0 00 01 */	li r30, 1
lbl_805AF3C4:
/* 805AF3C4  A8 1D 06 94 */	lha r0, 0x694(r29)
/* 805AF3C8  2C 00 00 64 */	cmpwi r0, 0x64
/* 805AF3CC  40 81 00 2C */	ble lbl_805AF3F8
/* 805AF3D0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070105@ha */
/* 805AF3D4  38 03 01 05 */	addi r0, r3, 0x0105 /* 0x00070105@l */
/* 805AF3D8  90 01 00 10 */	stw r0, 0x10(r1)
/* 805AF3DC  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 805AF3E0  38 81 00 10 */	addi r4, r1, 0x10
/* 805AF3E4  38 A0 FF FF */	li r5, -1
/* 805AF3E8  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 805AF3EC  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 805AF3F0  7D 89 03 A6 */	mtctr r12
/* 805AF3F4  4E 80 04 21 */	bctrl 
lbl_805AF3F8:
/* 805AF3F8  A8 9D 06 68 */	lha r4, 0x668(r29)
/* 805AF3FC  1C 04 03 84 */	mulli r0, r4, 0x384
/* 805AF400  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805AF404  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 805AF408  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 805AF40C  7C 23 04 2E */	lfsx f1, r3, r0
/* 805AF410  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 805AF414  EC 20 00 72 */	fmuls f1, f0, f1
/* 805AF418  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 805AF41C  1C 04 03 E8 */	mulli r0, r4, 0x3e8
/* 805AF420  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805AF424  7C 63 02 14 */	add r3, r3, r0
/* 805AF428  C0 43 00 04 */	lfs f2, 4(r3)
/* 805AF42C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 805AF430  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 805AF434  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 805AF438  C0 1D 06 A4 */	lfs f0, 0x6a4(r29)
/* 805AF43C  EC 20 08 2A */	fadds f1, f0, f1
/* 805AF440  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 805AF444  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 805AF448  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 805AF44C  EC 63 00 32 */	fmuls f3, f3, f0
/* 805AF450  4B CC 05 EC */	b cLib_addCalc2__FPffff
/* 805AF454  38 7D 04 D8 */	addi r3, r29, 0x4d8
/* 805AF458  C0 3D 06 AC */	lfs f1, 0x6ac(r29)
/* 805AF45C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 805AF460  EC 21 00 2A */	fadds f1, f1, f0
/* 805AF464  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 805AF468  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 805AF46C  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 805AF470  EC 63 00 32 */	fmuls f3, f3, f0
/* 805AF474  4B CC 05 C8 */	b cLib_addCalc2__FPffff
/* 805AF478  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 805AF47C  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 805AF480  C0 1D 06 A8 */	lfs f0, 0x6a8(r29)
/* 805AF484  EC 21 00 2A */	fadds f1, f1, f0
/* 805AF488  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 805AF48C  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 805AF490  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 805AF494  EC 63 00 32 */	fmuls f3, f3, f0
/* 805AF498  4B CC 05 A4 */	b cLib_addCalc2__FPffff
/* 805AF49C  38 7D 06 A8 */	addi r3, r29, 0x6a8
/* 805AF4A0  C0 3D 04 AC */	lfs f1, 0x4ac(r29)
/* 805AF4A4  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 805AF4A8  EC 21 00 28 */	fsubs f1, f1, f0
/* 805AF4AC  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 805AF4B0  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 805AF4B4  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 805AF4B8  EC 63 00 32 */	fmuls f3, f3, f0
/* 805AF4BC  4B CC 05 80 */	b cLib_addCalc2__FPffff
/* 805AF4C0  38 7D 06 90 */	addi r3, r29, 0x690
/* 805AF4C4  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 805AF4C8  FC 40 08 90 */	fmr f2, f1
/* 805AF4CC  C0 7F 00 AC */	lfs f3, 0xac(r31)
/* 805AF4D0  4B CC 05 6C */	b cLib_addCalc2__FPffff
/* 805AF4D4  C0 7D 06 A8 */	lfs f3, 0x6a8(r29)
/* 805AF4D8  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 805AF4DC  C0 3D 04 AC */	lfs f1, 0x4ac(r29)
/* 805AF4E0  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 805AF4E4  EC 01 00 28 */	fsubs f0, f1, f0
/* 805AF4E8  EC 02 00 2A */	fadds f0, f2, f0
/* 805AF4EC  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 805AF4F0  4C 40 13 82 */	cror 2, 0, 2
/* 805AF4F4  40 82 00 1C */	bne lbl_805AF510
/* 805AF4F8  38 00 00 02 */	li r0, 2
/* 805AF4FC  B0 1D 06 6C */	sth r0, 0x66c(r29)
/* 805AF500  3C 60 80 5B */	lis r3, l_HIO@ha
/* 805AF504  38 63 33 FC */	addi r3, r3, l_HIO@l
/* 805AF508  A8 03 00 14 */	lha r0, 0x14(r3)
/* 805AF50C  B0 1D 06 94 */	sth r0, 0x694(r29)
lbl_805AF510:
/* 805AF510  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 805AF514  C0 3D 04 AC */	lfs f1, 0x4ac(r29)
/* 805AF518  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 805AF51C  40 80 01 34 */	bge lbl_805AF650
/* 805AF520  C0 1D 04 C0 */	lfs f0, 0x4c0(r29)
/* 805AF524  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 805AF528  4C 41 13 82 */	cror 2, 1, 2
/* 805AF52C  40 82 01 24 */	bne lbl_805AF650
/* 805AF530  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070107@ha */
/* 805AF534  38 03 01 07 */	addi r0, r3, 0x0107 /* 0x00070107@l */
/* 805AF538  90 1D 0A 30 */	stw r0, 0xa30(r29)
/* 805AF53C  88 1D 05 B4 */	lbz r0, 0x5b4(r29)
/* 805AF540  28 00 00 00 */	cmplwi r0, 0
/* 805AF544  40 82 00 10 */	bne lbl_805AF554
/* 805AF548  38 00 00 01 */	li r0, 1
/* 805AF54C  98 1D 0A 2C */	stb r0, 0xa2c(r29)
/* 805AF550  48 00 01 00 */	b lbl_805AF650
lbl_805AF554:
/* 805AF554  38 00 00 03 */	li r0, 3
/* 805AF558  98 1D 0A 2C */	stb r0, 0xa2c(r29)
/* 805AF55C  48 00 00 F4 */	b lbl_805AF650
lbl_805AF560:
/* 805AF560  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 805AF564  2C 00 00 00 */	cmpwi r0, 0
/* 805AF568  41 81 00 10 */	bgt lbl_805AF578
/* 805AF56C  38 00 00 0A */	li r0, 0xa
/* 805AF570  B0 1D 06 6C */	sth r0, 0x66c(r29)
/* 805AF574  48 00 00 DC */	b lbl_805AF650
lbl_805AF578:
/* 805AF578  A8 1D 06 94 */	lha r0, 0x694(r29)
/* 805AF57C  2C 00 00 00 */	cmpwi r0, 0
/* 805AF580  40 82 00 D0 */	bne lbl_805AF650
/* 805AF584  38 00 00 00 */	li r0, 0
/* 805AF588  B0 1D 06 6A */	sth r0, 0x66a(r29)
/* 805AF58C  B0 1D 06 6C */	sth r0, 0x66c(r29)
/* 805AF590  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 805AF594  D0 1D 06 A4 */	stfs f0, 0x6a4(r29)
/* 805AF598  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 805AF59C  D0 1D 06 A8 */	stfs f0, 0x6a8(r29)
/* 805AF5A0  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 805AF5A4  D0 1D 06 AC */	stfs f0, 0x6ac(r29)
/* 805AF5A8  C0 1D 06 A4 */	lfs f0, 0x6a4(r29)
/* 805AF5AC  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 805AF5B0  C0 1D 06 AC */	lfs f0, 0x6ac(r29)
/* 805AF5B4  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 805AF5B8  38 00 00 01 */	li r0, 1
/* 805AF5BC  98 1D 0F 20 */	stb r0, 0xf20(r29)
/* 805AF5C0  38 00 00 3C */	li r0, 0x3c
/* 805AF5C4  B0 1D 06 9A */	sth r0, 0x69a(r29)
/* 805AF5C8  48 00 00 88 */	b lbl_805AF650
lbl_805AF5CC:
/* 805AF5CC  88 1C 06 F9 */	lbz r0, 0x6f9(r28)
/* 805AF5D0  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 805AF5D4  41 82 00 7C */	beq lbl_805AF650
/* 805AF5D8  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 805AF5DC  D0 1D 06 A4 */	stfs f0, 0x6a4(r29)
/* 805AF5E0  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 805AF5E4  D0 1D 06 A8 */	stfs f0, 0x6a8(r29)
/* 805AF5E8  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 805AF5EC  D0 1D 06 AC */	stfs f0, 0x6ac(r29)
/* 805AF5F0  C0 1D 06 A4 */	lfs f0, 0x6a4(r29)
/* 805AF5F4  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 805AF5F8  C0 1D 06 AC */	lfs f0, 0x6ac(r29)
/* 805AF5FC  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 805AF600  38 00 00 03 */	li r0, 3
/* 805AF604  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 805AF608  7F A3 EB 78 */	mr r3, r29
/* 805AF60C  38 80 00 0C */	li r4, 0xc
/* 805AF610  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 805AF614  38 A0 00 02 */	li r5, 2
/* 805AF618  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 805AF61C  4B FF EC 89 */	bl anm_init__FP10b_bh_classifUcf
/* 805AF620  38 00 00 14 */	li r0, 0x14
/* 805AF624  B0 1D 06 6A */	sth r0, 0x66a(r29)
/* 805AF628  38 00 00 01 */	li r0, 1
/* 805AF62C  B0 1D 06 6C */	sth r0, 0x66c(r29)
/* 805AF630  88 1D 05 B4 */	lbz r0, 0x5b4(r29)
/* 805AF634  28 00 00 00 */	cmplwi r0, 0
/* 805AF638  40 82 00 10 */	bne lbl_805AF648
/* 805AF63C  38 00 01 2C */	li r0, 0x12c
/* 805AF640  B0 1D 06 96 */	sth r0, 0x696(r29)
/* 805AF644  48 00 00 0C */	b lbl_805AF650
lbl_805AF648:
/* 805AF648  38 00 01 90 */	li r0, 0x190
/* 805AF64C  B0 1D 06 96 */	sth r0, 0x696(r29)
lbl_805AF650:
/* 805AF650  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 805AF654  38 80 C0 00 */	li r4, -16384
/* 805AF658  38 A0 00 04 */	li r5, 4
/* 805AF65C  38 C0 02 00 */	li r6, 0x200
/* 805AF660  4B CC 0F A8 */	b cLib_addCalcAngleS2__FPssss
/* 805AF664  38 7D 09 14 */	addi r3, r29, 0x914
/* 805AF668  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 805AF66C  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 805AF670  C0 7F 00 64 */	lfs f3, 0x64(r31)
/* 805AF674  4B CC 03 C8 */	b cLib_addCalc2__FPffff
/* 805AF678  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 805AF67C  C0 3D 04 AC */	lfs f1, 0x4ac(r29)
/* 805AF680  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 805AF684  EC 01 00 28 */	fsubs f0, f1, f0
/* 805AF688  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805AF68C  40 81 00 38 */	ble lbl_805AF6C4
/* 805AF690  C0 1D 06 A4 */	lfs f0, 0x6a4(r29)
/* 805AF694  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805AF698  C0 1D 06 A8 */	lfs f0, 0x6a8(r29)
/* 805AF69C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805AF6A0  C0 1D 06 AC */	lfs f0, 0x6ac(r29)
/* 805AF6A4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805AF6A8  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 805AF6AC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805AF6B0  38 7D 0F 24 */	addi r3, r29, 0xf24
/* 805AF6B4  38 81 00 20 */	addi r4, r1, 0x20
/* 805AF6B8  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 805AF6BC  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 805AF6C0  4B A6 DA 4C */	b fopAcM_effHamonSet__FPUlPC4cXyzff
lbl_805AF6C4:
/* 805AF6C4  7F C3 F3 78 */	mr r3, r30
/* 805AF6C8  39 61 00 60 */	addi r11, r1, 0x60
/* 805AF6CC  4B DB 2B 58 */	b _restgpr_28
/* 805AF6D0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805AF6D4  7C 08 03 A6 */	mtlr r0
/* 805AF6D8  38 21 00 60 */	addi r1, r1, 0x60
/* 805AF6DC  4E 80 00 20 */	blr 
