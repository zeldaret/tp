lbl_8022D0A0:
/* 8022D0A0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8022D0A4  7C 08 02 A6 */	mflr r0
/* 8022D0A8  90 01 00 74 */	stw r0, 0x74(r1)
/* 8022D0AC  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8022D0B0  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8022D0B4  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 8022D0B8  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 8022D0BC  39 61 00 50 */	addi r11, r1, 0x50
/* 8022D0C0  48 13 51 15 */	bl _savegpr_27
/* 8022D0C4  7C 7C 1B 78 */	mr r28, r3
/* 8022D0C8  7C 9D 23 78 */	mr r29, r4
/* 8022D0CC  83 C3 00 04 */	lwz r30, 4(r3)
/* 8022D0D0  83 FE 05 C8 */	lwz r31, 0x5c8(r30)
/* 8022D0D4  38 00 00 00 */	li r0, 0
/* 8022D0D8  98 01 00 1A */	stb r0, 0x1a(r1)
/* 8022D0DC  54 83 04 2F */	rlwinm. r3, r4, 0, 0x10, 0x17
/* 8022D0E0  41 82 00 14 */	beq lbl_8022D0F4
/* 8022D0E4  7C 60 46 70 */	srawi r0, r3, 8
/* 8022D0E8  98 01 00 18 */	stb r0, 0x18(r1)
/* 8022D0EC  9B A1 00 19 */	stb r29, 0x19(r1)
/* 8022D0F0  48 00 00 0C */	b lbl_8022D0FC
lbl_8022D0F4:
/* 8022D0F4  9B A1 00 18 */	stb r29, 0x18(r1)
/* 8022D0F8  98 01 00 19 */	stb r0, 0x19(r1)
lbl_8022D0FC:
/* 8022D0FC  2C 1D 00 0A */	cmpwi r29, 0xa
/* 8022D100  40 82 01 10 */	bne lbl_8022D210
/* 8022D104  A8 7C 01 42 */	lha r3, 0x142(r28)
/* 8022D108  38 03 00 01 */	addi r0, r3, 1
/* 8022D10C  B0 1C 01 42 */	sth r0, 0x142(r28)
/* 8022D110  88 1C 01 4E */	lbz r0, 0x14e(r28)
/* 8022D114  28 00 00 00 */	cmplwi r0, 0
/* 8022D118  41 82 00 18 */	beq lbl_8022D130
/* 8022D11C  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 8022D120  7C 7C 02 14 */	add r3, r28, r0
/* 8022D124  C0 03 00 5C */	lfs f0, 0x5c(r3)
/* 8022D128  D0 1C 00 48 */	stfs f0, 0x48(r28)
/* 8022D12C  48 00 00 0C */	b lbl_8022D138
lbl_8022D130:
/* 8022D130  C0 1C 00 50 */	lfs f0, 0x50(r28)
/* 8022D134  D0 1C 00 48 */	stfs f0, 0x48(r28)
lbl_8022D138:
/* 8022D138  C0 3C 00 4C */	lfs f1, 0x4c(r28)
/* 8022D13C  C0 1E 04 34 */	lfs f0, 0x434(r30)
/* 8022D140  EC 01 00 2A */	fadds f0, f1, f0
/* 8022D144  D0 1C 00 4C */	stfs f0, 0x4c(r28)
/* 8022D148  A8 1C 01 40 */	lha r0, 0x140(r28)
/* 8022D14C  2C 00 00 00 */	cmpwi r0, 0
/* 8022D150  41 82 00 3C */	beq lbl_8022D18C
/* 8022D154  A8 1E 05 D2 */	lha r0, 0x5d2(r30)
/* 8022D158  7C 7E 02 14 */	add r3, r30, r0
/* 8022D15C  88 03 11 F2 */	lbz r0, 0x11f2(r3)
/* 8022D160  28 00 00 04 */	cmplwi r0, 4
/* 8022D164  41 82 00 28 */	beq lbl_8022D18C
/* 8022D168  28 00 00 05 */	cmplwi r0, 5
/* 8022D16C  41 82 00 20 */	beq lbl_8022D18C
/* 8022D170  C0 3C 00 44 */	lfs f1, 0x44(r28)
/* 8022D174  C0 02 B0 64 */	lfs f0, lit_4028(r2)
/* 8022D178  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8022D17C  40 81 00 08 */	ble lbl_8022D184
/* 8022D180  D0 1C 00 44 */	stfs f0, 0x44(r28)
lbl_8022D184:
/* 8022D184  38 00 00 00 */	li r0, 0
/* 8022D188  B0 1C 01 40 */	sth r0, 0x140(r28)
lbl_8022D18C:
/* 8022D18C  7F 83 E3 78 */	mr r3, r28
/* 8022D190  38 81 00 18 */	addi r4, r1, 0x18
/* 8022D194  38 A0 00 01 */	li r5, 1
/* 8022D198  38 C0 00 01 */	li r6, 1
/* 8022D19C  38 E0 00 00 */	li r7, 0
/* 8022D1A0  48 00 1D 61 */	bl do_strcat__28jmessage_tRenderingProcessorFPcbbb
/* 8022D1A4  C0 42 B0 60 */	lfs f2, lit_4027(r2)
/* 8022D1A8  D0 5C 01 2C */	stfs f2, 0x12c(r28)
/* 8022D1AC  88 7C 01 4E */	lbz r3, 0x14e(r28)
/* 8022D1B0  28 03 00 00 */	cmplwi r3, 0
/* 8022D1B4  41 82 00 28 */	beq lbl_8022D1DC
/* 8022D1B8  38 03 FF FF */	addi r0, r3, -1
/* 8022D1BC  1C 60 00 50 */	mulli r3, r0, 0x50
/* 8022D1C0  38 A3 10 B2 */	addi r5, r3, 0x10b2
/* 8022D1C4  7C BE 2A 14 */	add r5, r30, r5
/* 8022D1C8  7F 83 E3 78 */	mr r3, r28
/* 8022D1CC  38 81 00 18 */	addi r4, r1, 0x18
/* 8022D1D0  C0 3E 04 50 */	lfs f1, 0x450(r30)
/* 8022D1D4  48 00 21 B1 */	bl do_rubystrcat__28jmessage_tRenderingProcessorFPcPcff
/* 8022D1D8  48 00 00 24 */	b lbl_8022D1FC
lbl_8022D1DC:
/* 8022D1DC  7F 83 E3 78 */	mr r3, r28
/* 8022D1E0  38 81 00 18 */	addi r4, r1, 0x18
/* 8022D1E4  38 BE 0E 1C */	addi r5, r30, 0xe1c
/* 8022D1E8  C0 3E 04 3C */	lfs f1, 0x43c(r30)
/* 8022D1EC  48 00 21 99 */	bl do_rubystrcat__28jmessage_tRenderingProcessorFPcPcff
/* 8022D1F0  88 7E 05 DD */	lbz r3, 0x5dd(r30)
/* 8022D1F4  38 03 00 01 */	addi r0, r3, 1
/* 8022D1F8  98 1E 05 DD */	stb r0, 0x5dd(r30)
lbl_8022D1FC:
/* 8022D1FC  7F 83 E3 78 */	mr r3, r28
/* 8022D200  48 00 0F 7D */	bl do_widthcenter__28jmessage_tRenderingProcessorFv
/* 8022D204  7F 83 E3 78 */	mr r3, r28
/* 8022D208  48 00 11 11 */	bl do_heightcenter__28jmessage_tRenderingProcessorFv
/* 8022D20C  48 00 05 18 */	b lbl_8022D724
lbl_8022D210:
/* 8022D210  88 1C 01 87 */	lbz r0, 0x187(r28)
/* 8022D214  28 00 00 00 */	cmplwi r0, 0
/* 8022D218  40 82 01 28 */	bne lbl_8022D340
/* 8022D21C  C3 FE 04 20 */	lfs f31, 0x420(r30)
/* 8022D220  7F E3 FB 78 */	mr r3, r31
/* 8022D224  81 9F 00 00 */	lwz r12, 0(r31)
/* 8022D228  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8022D22C  7D 89 03 A6 */	mtctr r12
/* 8022D230  4E 80 04 21 */	bctrl 
/* 8022D234  C8 22 B0 70 */	lfd f1, lit_4198(r2)
/* 8022D238  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8022D23C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8022D240  3C 00 43 30 */	lis r0, 0x4330
/* 8022D244  90 01 00 20 */	stw r0, 0x20(r1)
/* 8022D248  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8022D24C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8022D250  EF DF 00 24 */	fdivs f30, f31, f0
/* 8022D254  C0 02 B0 64 */	lfs f0, lit_4028(r2)
/* 8022D258  C0 5C 00 44 */	lfs f2, 0x44(r28)
/* 8022D25C  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 8022D260  41 82 00 6C */	beq lbl_8022D2CC
/* 8022D264  C0 22 B0 5C */	lfs f1, lit_4026(r2)
/* 8022D268  C0 1E 04 20 */	lfs f0, 0x420(r30)
/* 8022D26C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8022D270  EC 01 00 2A */	fadds f0, f1, f0
/* 8022D274  FC 00 00 1E */	fctiwz f0, f0
/* 8022D278  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8022D27C  83 61 00 24 */	lwz r27, 0x24(r1)
/* 8022D280  7F E3 FB 78 */	mr r3, r31
/* 8022D284  81 9F 00 00 */	lwz r12, 0(r31)
/* 8022D288  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8022D28C  7D 89 03 A6 */	mtctr r12
/* 8022D290  4E 80 04 21 */	bctrl 
/* 8022D294  C8 42 B0 70 */	lfd f2, lit_4198(r2)
/* 8022D298  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8022D29C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8022D2A0  3C 60 43 30 */	lis r3, 0x4330
/* 8022D2A4  90 61 00 28 */	stw r3, 0x28(r1)
/* 8022D2A8  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8022D2AC  EC 20 10 28 */	fsubs f1, f0, f2
/* 8022D2B0  7F 60 07 34 */	extsh r0, r27
/* 8022D2B4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8022D2B8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8022D2BC  90 61 00 30 */	stw r3, 0x30(r1)
/* 8022D2C0  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8022D2C4  EC 00 10 28 */	fsubs f0, f0, f2
/* 8022D2C8  EF C0 08 24 */	fdivs f30, f0, f1
lbl_8022D2CC:
/* 8022D2CC  7F E3 FB 78 */	mr r3, r31
/* 8022D2D0  7F A4 EB 78 */	mr r4, r29
/* 8022D2D4  38 A1 00 14 */	addi r5, r1, 0x14
/* 8022D2D8  81 9F 00 00 */	lwz r12, 0(r31)
/* 8022D2DC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8022D2E0  7D 89 03 A6 */	mtctr r12
/* 8022D2E4  4E 80 04 21 */	bctrl 
/* 8022D2E8  88 01 00 14 */	lbz r0, 0x14(r1)
/* 8022D2EC  C8 22 B0 70 */	lfd f1, lit_4198(r2)
/* 8022D2F0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8022D2F4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8022D2F8  3C 00 43 30 */	lis r0, 0x4330
/* 8022D2FC  90 01 00 30 */	stw r0, 0x30(r1)
/* 8022D300  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8022D304  EC 00 08 28 */	fsubs f0, f0, f1
/* 8022D308  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8022D30C  A8 1C 01 42 */	lha r0, 0x142(r28)
/* 8022D310  54 00 10 3A */	slwi r0, r0, 2
/* 8022D314  7C 7C 02 14 */	add r3, r28, r0
/* 8022D318  D0 03 00 7C */	stfs f0, 0x7c(r3)
/* 8022D31C  C0 3C 00 48 */	lfs f1, 0x48(r28)
/* 8022D320  A8 1C 01 42 */	lha r0, 0x142(r28)
/* 8022D324  54 00 10 3A */	slwi r0, r0, 2
/* 8022D328  7C 7C 02 14 */	add r3, r28, r0
/* 8022D32C  C0 03 00 7C */	lfs f0, 0x7c(r3)
/* 8022D330  EC 01 00 2A */	fadds f0, f1, f0
/* 8022D334  D0 1C 00 48 */	stfs f0, 0x48(r28)
/* 8022D338  38 00 00 01 */	li r0, 1
/* 8022D33C  98 1C 01 87 */	stb r0, 0x187(r28)
lbl_8022D340:
/* 8022D340  88 1C 01 4E */	lbz r0, 0x14e(r28)
/* 8022D344  28 00 00 00 */	cmplwi r0, 0
/* 8022D348  41 82 00 9C */	beq lbl_8022D3E4
/* 8022D34C  C3 FE 04 40 */	lfs f31, 0x440(r30)
/* 8022D350  7F E3 FB 78 */	mr r3, r31
/* 8022D354  81 9F 00 00 */	lwz r12, 0(r31)
/* 8022D358  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8022D35C  7D 89 03 A6 */	mtctr r12
/* 8022D360  4E 80 04 21 */	bctrl 
/* 8022D364  C8 22 B0 70 */	lfd f1, lit_4198(r2)
/* 8022D368  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8022D36C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8022D370  3C 00 43 30 */	lis r0, 0x4330
/* 8022D374  90 01 00 30 */	stw r0, 0x30(r1)
/* 8022D378  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8022D37C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8022D380  EF DF 00 24 */	fdivs f30, f31, f0
/* 8022D384  7F E3 FB 78 */	mr r3, r31
/* 8022D388  7F A4 EB 78 */	mr r4, r29
/* 8022D38C  38 A1 00 10 */	addi r5, r1, 0x10
/* 8022D390  81 9F 00 00 */	lwz r12, 0(r31)
/* 8022D394  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8022D398  7D 89 03 A6 */	mtctr r12
/* 8022D39C  4E 80 04 21 */	bctrl 
/* 8022D3A0  88 01 00 11 */	lbz r0, 0x11(r1)
/* 8022D3A4  C0 7C 00 48 */	lfs f3, 0x48(r28)
/* 8022D3A8  C0 5C 00 44 */	lfs f2, 0x44(r28)
/* 8022D3AC  C8 22 B0 70 */	lfd f1, lit_4198(r2)
/* 8022D3B0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8022D3B4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8022D3B8  3C 00 43 30 */	lis r0, 0x4330
/* 8022D3BC  90 01 00 28 */	stw r0, 0x28(r1)
/* 8022D3C0  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8022D3C4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8022D3C8  EC 02 00 32 */	fmuls f0, f2, f0
/* 8022D3CC  EC 3E 00 32 */	fmuls f1, f30, f0
/* 8022D3D0  C0 1E 04 4C */	lfs f0, 0x44c(r30)
/* 8022D3D4  EC 01 00 2A */	fadds f0, f1, f0
/* 8022D3D8  EC 03 00 2A */	fadds f0, f3, f0
/* 8022D3DC  D0 1C 00 48 */	stfs f0, 0x48(r28)
/* 8022D3E0  48 00 02 98 */	b lbl_8022D678
lbl_8022D3E4:
/* 8022D3E4  88 7E 05 DD */	lbz r3, 0x5dd(r30)
/* 8022D3E8  38 03 00 01 */	addi r0, r3, 1
/* 8022D3EC  98 1E 05 DD */	stb r0, 0x5dd(r30)
/* 8022D3F0  C3 FE 04 20 */	lfs f31, 0x420(r30)
/* 8022D3F4  7F E3 FB 78 */	mr r3, r31
/* 8022D3F8  81 9F 00 00 */	lwz r12, 0(r31)
/* 8022D3FC  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8022D400  7D 89 03 A6 */	mtctr r12
/* 8022D404  4E 80 04 21 */	bctrl 
/* 8022D408  C8 22 B0 70 */	lfd f1, lit_4198(r2)
/* 8022D40C  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8022D410  90 01 00 34 */	stw r0, 0x34(r1)
/* 8022D414  3C 00 43 30 */	lis r0, 0x4330
/* 8022D418  90 01 00 30 */	stw r0, 0x30(r1)
/* 8022D41C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8022D420  EC 00 08 28 */	fsubs f0, f0, f1
/* 8022D424  EF DF 00 24 */	fdivs f30, f31, f0
/* 8022D428  7F A3 EB 78 */	mr r3, r29
/* 8022D42C  4B FF B1 4D */	bl checkCharInfoCharactor__Fi
/* 8022D430  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022D434  41 82 01 40 */	beq lbl_8022D574
/* 8022D438  80 1C 00 3C */	lwz r0, 0x3c(r28)
/* 8022D43C  28 00 00 00 */	cmplwi r0, 0
/* 8022D440  41 82 01 34 */	beq lbl_8022D574
/* 8022D444  7F E3 FB 78 */	mr r3, r31
/* 8022D448  81 9F 00 00 */	lwz r12, 0(r31)
/* 8022D44C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8022D450  7D 89 03 A6 */	mtctr r12
/* 8022D454  4E 80 04 21 */	bctrl 
/* 8022D458  C8 22 B0 70 */	lfd f1, lit_4198(r2)
/* 8022D45C  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8022D460  90 01 00 34 */	stw r0, 0x34(r1)
/* 8022D464  3C 00 43 30 */	lis r0, 0x4330
/* 8022D468  90 01 00 30 */	stw r0, 0x30(r1)
/* 8022D46C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8022D470  EF E0 08 28 */	fsubs f31, f0, f1
/* 8022D474  7F E3 FB 78 */	mr r3, r31
/* 8022D478  81 9F 00 00 */	lwz r12, 0(r31)
/* 8022D47C  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8022D480  7D 89 03 A6 */	mtctr r12
/* 8022D484  4E 80 04 21 */	bctrl 
/* 8022D488  C8 22 B0 70 */	lfd f1, lit_4198(r2)
/* 8022D48C  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8022D490  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8022D494  3C 00 43 30 */	lis r0, 0x4330
/* 8022D498  90 01 00 28 */	stw r0, 0x28(r1)
/* 8022D49C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8022D4A0  EC 00 08 28 */	fsubs f0, f0, f1
/* 8022D4A4  EF E0 F8 24 */	fdivs f31, f0, f31
/* 8022D4A8  7F E3 FB 78 */	mr r3, r31
/* 8022D4AC  7F A4 EB 78 */	mr r4, r29
/* 8022D4B0  38 A1 00 0C */	addi r5, r1, 0xc
/* 8022D4B4  81 9F 00 00 */	lwz r12, 0(r31)
/* 8022D4B8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8022D4BC  7D 89 03 A6 */	mtctr r12
/* 8022D4C0  4E 80 04 21 */	bctrl 
/* 8022D4C4  88 01 00 0D */	lbz r0, 0xd(r1)
/* 8022D4C8  C0 5C 00 44 */	lfs f2, 0x44(r28)
/* 8022D4CC  C8 22 B0 70 */	lfd f1, lit_4198(r2)
/* 8022D4D0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8022D4D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8022D4D8  3C 00 43 30 */	lis r0, 0x4330
/* 8022D4DC  90 01 00 20 */	stw r0, 0x20(r1)
/* 8022D4E0  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8022D4E4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8022D4E8  EC 02 00 32 */	fmuls f0, f2, f0
/* 8022D4EC  EC 9E 00 32 */	fmuls f4, f30, f0
/* 8022D4F0  C0 1E 04 24 */	lfs f0, 0x424(r30)
/* 8022D4F4  EC 02 00 32 */	fmuls f0, f2, f0
/* 8022D4F8  EC FF 00 32 */	fmuls f7, f31, f0
/* 8022D4FC  C0 02 B0 64 */	lfs f0, lit_4028(r2)
/* 8022D500  3C 1D 00 00 */	addis r0, r29, 0
/* 8022D504  28 00 81 45 */	cmplwi r0, 0x8145
/* 8022D508  40 82 00 08 */	bne lbl_8022D510
/* 8022D50C  C0 02 B0 90 */	lfs f0, lit_6374(r2)
lbl_8022D510:
/* 8022D510  EC 62 00 32 */	fmuls f3, f2, f0
/* 8022D514  7F 83 E3 78 */	mr r3, r28
/* 8022D518  C0 A2 B0 5C */	lfs f5, lit_4026(r2)
/* 8022D51C  C0 5C 00 50 */	lfs f2, 0x50(r28)
/* 8022D520  C0 3C 00 58 */	lfs f1, 0x58(r28)
/* 8022D524  C0 1C 00 48 */	lfs f0, 0x48(r28)
/* 8022D528  EC 00 10 28 */	fsubs f0, f0, f2
/* 8022D52C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8022D530  EC 22 00 2A */	fadds f1, f2, f0
/* 8022D534  EC 05 01 32 */	fmuls f0, f5, f4
/* 8022D538  EC 01 00 2A */	fadds f0, f1, f0
/* 8022D53C  EC 25 00 2A */	fadds f1, f5, f0
/* 8022D540  C0 9C 01 38 */	lfs f4, 0x138(r28)
/* 8022D544  C0 DC 00 54 */	lfs f6, 0x54(r28)
/* 8022D548  C0 5C 00 5C */	lfs f2, 0x5c(r28)
/* 8022D54C  C0 1C 00 4C */	lfs f0, 0x4c(r28)
/* 8022D550  EC 00 30 28 */	fsubs f0, f0, f6
/* 8022D554  EC 02 00 32 */	fmuls f0, f2, f0
/* 8022D558  EC 46 00 2A */	fadds f2, f6, f0
/* 8022D55C  EC 05 01 F2 */	fmuls f0, f5, f7
/* 8022D560  EC 02 00 2A */	fadds f0, f2, f0
/* 8022D564  EC 44 00 2A */	fadds f2, f4, f0
/* 8022D568  FC 80 18 90 */	fmr f4, f3
/* 8022D56C  C0 A2 B0 64 */	lfs f5, lit_4028(r2)
/* 8022D570  48 00 22 15 */	bl getCharInfo__28jmessage_tRenderingProcessorFfffff
lbl_8022D574:
/* 8022D574  C3 FE 04 38 */	lfs f31, 0x438(r30)
/* 8022D578  C3 DE 04 20 */	lfs f30, 0x420(r30)
/* 8022D57C  7F E3 FB 78 */	mr r3, r31
/* 8022D580  81 9F 00 00 */	lwz r12, 0(r31)
/* 8022D584  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8022D588  7D 89 03 A6 */	mtctr r12
/* 8022D58C  4E 80 04 21 */	bctrl 
/* 8022D590  C8 22 B0 70 */	lfd f1, lit_4198(r2)
/* 8022D594  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8022D598  90 01 00 34 */	stw r0, 0x34(r1)
/* 8022D59C  3C 00 43 30 */	lis r0, 0x4330
/* 8022D5A0  90 01 00 30 */	stw r0, 0x30(r1)
/* 8022D5A4  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8022D5A8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8022D5AC  EF DE 00 24 */	fdivs f30, f30, f0
/* 8022D5B0  C0 02 B0 64 */	lfs f0, lit_4028(r2)
/* 8022D5B4  C0 5C 00 44 */	lfs f2, 0x44(r28)
/* 8022D5B8  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 8022D5BC  41 82 00 6C */	beq lbl_8022D628
/* 8022D5C0  C0 22 B0 5C */	lfs f1, lit_4026(r2)
/* 8022D5C4  C0 1E 04 20 */	lfs f0, 0x420(r30)
/* 8022D5C8  EC 02 00 32 */	fmuls f0, f2, f0
/* 8022D5CC  EC 01 00 2A */	fadds f0, f1, f0
/* 8022D5D0  FC 00 00 1E */	fctiwz f0, f0
/* 8022D5D4  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8022D5D8  83 61 00 34 */	lwz r27, 0x34(r1)
/* 8022D5DC  7F E3 FB 78 */	mr r3, r31
/* 8022D5E0  81 9F 00 00 */	lwz r12, 0(r31)
/* 8022D5E4  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8022D5E8  7D 89 03 A6 */	mtctr r12
/* 8022D5EC  4E 80 04 21 */	bctrl 
/* 8022D5F0  C8 42 B0 70 */	lfd f2, lit_4198(r2)
/* 8022D5F4  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8022D5F8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8022D5FC  3C 60 43 30 */	lis r3, 0x4330
/* 8022D600  90 61 00 28 */	stw r3, 0x28(r1)
/* 8022D604  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8022D608  EC 20 10 28 */	fsubs f1, f0, f2
/* 8022D60C  7F 60 07 34 */	extsh r0, r27
/* 8022D610  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8022D614  90 01 00 24 */	stw r0, 0x24(r1)
/* 8022D618  90 61 00 20 */	stw r3, 0x20(r1)
/* 8022D61C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8022D620  EC 00 10 28 */	fsubs f0, f0, f2
/* 8022D624  EF C0 08 24 */	fdivs f30, f0, f1
lbl_8022D628:
/* 8022D628  7F E3 FB 78 */	mr r3, r31
/* 8022D62C  7F A4 EB 78 */	mr r4, r29
/* 8022D630  38 A1 00 08 */	addi r5, r1, 8
/* 8022D634  81 9F 00 00 */	lwz r12, 0(r31)
/* 8022D638  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8022D63C  7D 89 03 A6 */	mtctr r12
/* 8022D640  4E 80 04 21 */	bctrl 
/* 8022D644  88 01 00 09 */	lbz r0, 9(r1)
/* 8022D648  C0 5C 00 48 */	lfs f2, 0x48(r28)
/* 8022D64C  C8 22 B0 70 */	lfd f1, lit_4198(r2)
/* 8022D650  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8022D654  90 01 00 34 */	stw r0, 0x34(r1)
/* 8022D658  3C 00 43 30 */	lis r0, 0x4330
/* 8022D65C  90 01 00 30 */	stw r0, 0x30(r1)
/* 8022D660  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8022D664  EC 00 08 28 */	fsubs f0, f0, f1
/* 8022D668  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8022D66C  EC 1F 00 2A */	fadds f0, f31, f0
/* 8022D670  EC 02 00 2A */	fadds f0, f2, f0
/* 8022D674  D0 1C 00 48 */	stfs f0, 0x48(r28)
lbl_8022D678:
/* 8022D678  88 7C 01 4C */	lbz r3, 0x14c(r28)
/* 8022D67C  28 03 00 00 */	cmplwi r3, 0
/* 8022D680  41 82 00 8C */	beq lbl_8022D70C
/* 8022D684  38 03 FF FF */	addi r0, r3, -1
/* 8022D688  98 1C 01 4C */	stb r0, 0x14c(r28)
/* 8022D68C  88 1C 01 4C */	lbz r0, 0x14c(r28)
/* 8022D690  28 00 00 00 */	cmplwi r0, 0
/* 8022D694  40 82 00 78 */	bne lbl_8022D70C
/* 8022D698  88 DC 01 4E */	lbz r6, 0x14e(r28)
/* 8022D69C  28 06 00 00 */	cmplwi r6, 0
/* 8022D6A0  41 82 00 44 */	beq lbl_8022D6E4
/* 8022D6A4  38 06 FF FF */	addi r0, r6, -1
/* 8022D6A8  1C 60 00 50 */	mulli r3, r0, 0x50
/* 8022D6AC  38 A3 10 B2 */	addi r5, r3, 0x10b2
/* 8022D6B0  7C BE 2A 14 */	add r5, r30, r5
/* 8022D6B4  7F 83 E3 78 */	mr r3, r28
/* 8022D6B8  38 9C 01 52 */	addi r4, r28, 0x152
/* 8022D6BC  C0 3E 04 50 */	lfs f1, 0x450(r30)
/* 8022D6C0  C0 5C 00 48 */	lfs f2, 0x48(r28)
/* 8022D6C4  54 C0 15 BA */	rlwinm r0, r6, 2, 0x16, 0x1d
/* 8022D6C8  7C DC 02 14 */	add r6, r28, r0
/* 8022D6CC  C0 06 00 5C */	lfs f0, 0x5c(r6)
/* 8022D6D0  EC 42 00 28 */	fsubs f2, f2, f0
/* 8022D6D4  C0 1E 04 4C */	lfs f0, 0x44c(r30)
/* 8022D6D8  EC 42 00 28 */	fsubs f2, f2, f0
/* 8022D6DC  48 00 1C A9 */	bl do_rubystrcat__28jmessage_tRenderingProcessorFPcPcff
/* 8022D6E0  48 00 00 2C */	b lbl_8022D70C
lbl_8022D6E4:
/* 8022D6E4  7F 83 E3 78 */	mr r3, r28
/* 8022D6E8  38 9C 01 52 */	addi r4, r28, 0x152
/* 8022D6EC  38 BE 0E 1C */	addi r5, r30, 0xe1c
/* 8022D6F0  C0 3E 04 3C */	lfs f1, 0x43c(r30)
/* 8022D6F4  C0 5C 00 48 */	lfs f2, 0x48(r28)
/* 8022D6F8  C0 1C 00 50 */	lfs f0, 0x50(r28)
/* 8022D6FC  EC 42 00 28 */	fsubs f2, f2, f0
/* 8022D700  C0 1E 04 38 */	lfs f0, 0x438(r30)
/* 8022D704  EC 42 00 28 */	fsubs f2, f2, f0
/* 8022D708  48 00 1C 7D */	bl do_rubystrcat__28jmessage_tRenderingProcessorFPcPcff
lbl_8022D70C:
/* 8022D70C  7F 83 E3 78 */	mr r3, r28
/* 8022D710  38 81 00 18 */	addi r4, r1, 0x18
/* 8022D714  38 A0 00 01 */	li r5, 1
/* 8022D718  38 C0 00 01 */	li r6, 1
/* 8022D71C  38 E0 00 00 */	li r7, 0
/* 8022D720  48 00 17 E1 */	bl do_strcat__28jmessage_tRenderingProcessorFPcbbb
lbl_8022D724:
/* 8022D724  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8022D728  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8022D72C  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 8022D730  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 8022D734  39 61 00 50 */	addi r11, r1, 0x50
/* 8022D738  48 13 4A E9 */	bl _restgpr_27
/* 8022D73C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8022D740  7C 08 03 A6 */	mtlr r0
/* 8022D744  38 21 00 70 */	addi r1, r1, 0x70
/* 8022D748  4E 80 00 20 */	blr 
