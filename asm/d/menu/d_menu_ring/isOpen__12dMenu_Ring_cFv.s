lbl_801EB0A4:
/* 801EB0A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801EB0A8  7C 08 02 A6 */	mflr r0
/* 801EB0AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801EB0B0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801EB0B4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801EB0B8  7C 7E 1B 78 */	mr r30, r3
/* 801EB0BC  3B E0 00 00 */	li r31, 0
/* 801EB0C0  A8 03 06 38 */	lha r0, 0x638(r3)
/* 801EB0C4  2C 00 00 00 */	cmpwi r0, 0
/* 801EB0C8  40 82 00 08 */	bne lbl_801EB0D0
/* 801EB0CC  48 03 39 09 */	bl dMeter2Info_set2DVibrationM__Fv
lbl_801EB0D0:
/* 801EB0D0  A8 7E 06 38 */	lha r3, 0x638(r30)
/* 801EB0D4  38 03 00 01 */	addi r0, r3, 1
/* 801EB0D8  B0 1E 06 38 */	sth r0, 0x638(r30)
/* 801EB0DC  A8 1E 06 38 */	lha r0, 0x638(r30)
/* 801EB0E0  C8 42 A9 C8 */	lfd f2, lit_4596(r2)
/* 801EB0E4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801EB0E8  90 01 00 0C */	stw r0, 0xc(r1)
/* 801EB0EC  3C A0 43 30 */	lis r5, 0x4330
/* 801EB0F0  90 A1 00 08 */	stw r5, 8(r1)
/* 801EB0F4  C8 01 00 08 */	lfd f0, 8(r1)
/* 801EB0F8  EC 20 10 28 */	fsubs f1, f0, f2
/* 801EB0FC  3C 60 80 43 */	lis r3, g_ringHIO@ha
/* 801EB100  38 83 FA FC */	addi r4, r3, g_ringHIO@l
/* 801EB104  A8 04 01 3A */	lha r0, 0x13a(r4)
/* 801EB108  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801EB10C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801EB110  90 A1 00 10 */	stw r5, 0x10(r1)
/* 801EB114  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801EB118  EC 00 10 28 */	fsubs f0, f0, f2
/* 801EB11C  EC 01 00 24 */	fdivs f0, f1, f0
/* 801EB120  D0 1E 05 14 */	stfs f0, 0x514(r30)
/* 801EB124  88 1E 06 BC */	lbz r0, 0x6bc(r30)
/* 801EB128  28 00 00 00 */	cmplwi r0, 0
/* 801EB12C  40 82 00 28 */	bne lbl_801EB154
/* 801EB130  C0 02 A9 88 */	lfs f0, lit_4300(r2)
/* 801EB134  D0 1E 05 68 */	stfs f0, 0x568(r30)
/* 801EB138  C0 42 A9 8C */	lfs f2, lit_4301(r2)
/* 801EB13C  C0 22 A9 9C */	lfs f1, lit_4305(r2)
/* 801EB140  C0 1E 05 14 */	lfs f0, 0x514(r30)
/* 801EB144  EC 01 00 28 */	fsubs f0, f1, f0
/* 801EB148  EC 02 00 32 */	fmuls f0, f2, f0
/* 801EB14C  D0 1E 05 6C */	stfs f0, 0x56c(r30)
/* 801EB150  48 00 00 84 */	b lbl_801EB1D4
lbl_801EB154:
/* 801EB154  28 00 00 02 */	cmplwi r0, 2
/* 801EB158  40 82 00 28 */	bne lbl_801EB180
/* 801EB15C  C0 02 A9 88 */	lfs f0, lit_4300(r2)
/* 801EB160  D0 1E 05 68 */	stfs f0, 0x568(r30)
/* 801EB164  C0 42 A9 90 */	lfs f2, lit_4302(r2)
/* 801EB168  C0 22 A9 9C */	lfs f1, lit_4305(r2)
/* 801EB16C  C0 1E 05 14 */	lfs f0, 0x514(r30)
/* 801EB170  EC 01 00 28 */	fsubs f0, f1, f0
/* 801EB174  EC 02 00 32 */	fmuls f0, f2, f0
/* 801EB178  D0 1E 05 6C */	stfs f0, 0x56c(r30)
/* 801EB17C  48 00 00 58 */	b lbl_801EB1D4
lbl_801EB180:
/* 801EB180  28 00 00 03 */	cmplwi r0, 3
/* 801EB184  40 82 00 28 */	bne lbl_801EB1AC
/* 801EB188  C0 42 A9 94 */	lfs f2, lit_4303(r2)
/* 801EB18C  C0 22 A9 9C */	lfs f1, lit_4305(r2)
/* 801EB190  C0 1E 05 14 */	lfs f0, 0x514(r30)
/* 801EB194  EC 01 00 28 */	fsubs f0, f1, f0
/* 801EB198  EC 02 00 32 */	fmuls f0, f2, f0
/* 801EB19C  D0 1E 05 68 */	stfs f0, 0x568(r30)
/* 801EB1A0  C0 02 A9 88 */	lfs f0, lit_4300(r2)
/* 801EB1A4  D0 1E 05 6C */	stfs f0, 0x56c(r30)
/* 801EB1A8  48 00 00 2C */	b lbl_801EB1D4
lbl_801EB1AC:
/* 801EB1AC  28 00 00 01 */	cmplwi r0, 1
/* 801EB1B0  40 82 00 24 */	bne lbl_801EB1D4
/* 801EB1B4  C0 42 A9 98 */	lfs f2, lit_4304(r2)
/* 801EB1B8  C0 22 A9 9C */	lfs f1, lit_4305(r2)
/* 801EB1BC  C0 1E 05 14 */	lfs f0, 0x514(r30)
/* 801EB1C0  EC 01 00 28 */	fsubs f0, f1, f0
/* 801EB1C4  EC 02 00 32 */	fmuls f0, f2, f0
/* 801EB1C8  D0 1E 05 68 */	stfs f0, 0x568(r30)
/* 801EB1CC  C0 02 A9 88 */	lfs f0, lit_4300(r2)
/* 801EB1D0  D0 1E 05 6C */	stfs f0, 0x56c(r30)
lbl_801EB1D4:
/* 801EB1D4  A8 7E 06 38 */	lha r3, 0x638(r30)
/* 801EB1D8  A8 04 01 3A */	lha r0, 0x13a(r4)
/* 801EB1DC  7C 03 00 00 */	cmpw r3, r0
/* 801EB1E0  41 80 00 2C */	blt lbl_801EB20C
/* 801EB1E4  3C 60 80 43 */	lis r3, g_ringHIO@ha
/* 801EB1E8  38 63 FA FC */	addi r3, r3, g_ringHIO@l
/* 801EB1EC  A8 03 01 3C */	lha r0, 0x13c(r3)
/* 801EB1F0  B0 1E 06 38 */	sth r0, 0x638(r30)
/* 801EB1F4  C0 02 A9 9C */	lfs f0, lit_4305(r2)
/* 801EB1F8  D0 1E 05 14 */	stfs f0, 0x514(r30)
/* 801EB1FC  C0 02 A9 88 */	lfs f0, lit_4300(r2)
/* 801EB200  D0 1E 05 68 */	stfs f0, 0x568(r30)
/* 801EB204  D0 1E 05 6C */	stfs f0, 0x56c(r30)
/* 801EB208  3B E0 00 01 */	li r31, 1
lbl_801EB20C:
/* 801EB20C  7F C3 F3 78 */	mr r3, r30
/* 801EB210  48 00 0F FD */	bl setScale__12dMenu_Ring_cFv
/* 801EB214  C0 3E 03 EC */	lfs f1, 0x3ec(r30)
/* 801EB218  C0 1E 05 6C */	lfs f0, 0x56c(r30)
/* 801EB21C  EC 41 00 2A */	fadds f2, f1, f0
/* 801EB220  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 801EB224  C0 3E 03 8C */	lfs f1, 0x38c(r30)
/* 801EB228  C0 1E 05 68 */	lfs f0, 0x568(r30)
/* 801EB22C  EC 01 00 2A */	fadds f0, f1, f0
/* 801EB230  D0 03 00 58 */	stfs f0, 0x58(r3)
/* 801EB234  D0 43 00 5C */	stfs f2, 0x5c(r3)
/* 801EB238  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801EB23C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801EB240  38 63 00 9C */	addi r3, r3, 0x9c
/* 801EB244  88 9E 06 90 */	lbz r4, 0x690(r30)
/* 801EB248  38 A0 00 00 */	li r5, 0
/* 801EB24C  4B E4 7D E5 */	bl getItem__17dSv_player_item_cCFib
/* 801EB250  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801EB254  28 00 00 FF */	cmplwi r0, 0xff
/* 801EB258  41 82 00 24 */	beq lbl_801EB27C
/* 801EB25C  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 801EB260  C0 3E 04 4C */	lfs f1, 0x44c(r30)
/* 801EB264  C0 5E 04 AC */	lfs f2, 0x4ac(r30)
/* 801EB268  C0 62 A9 A8 */	lfs f3, lit_4308(r2)
/* 801EB26C  C0 82 A9 AC */	lfs f4, lit_4309(r2)
/* 801EB270  C0 A2 A9 B0 */	lfs f5, lit_4310(r2)
/* 801EB274  4B FA 9F 3D */	bl setParam__16dSelect_cursor_cFfffff
/* 801EB278  48 00 00 20 */	b lbl_801EB298
lbl_801EB27C:
/* 801EB27C  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 801EB280  C0 22 A9 9C */	lfs f1, lit_4305(r2)
/* 801EB284  FC 40 08 90 */	fmr f2, f1
/* 801EB288  C0 62 A9 A8 */	lfs f3, lit_4308(r2)
/* 801EB28C  C0 82 A9 AC */	lfs f4, lit_4309(r2)
/* 801EB290  C0 A2 A9 B0 */	lfs f5, lit_4310(r2)
/* 801EB294  4B FA 9F 1D */	bl setParam__16dSelect_cursor_cFfffff
lbl_801EB298:
/* 801EB298  7F E3 FB 78 */	mr r3, r31
/* 801EB29C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801EB2A0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801EB2A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801EB2A8  7C 08 03 A6 */	mtlr r0
/* 801EB2AC  38 21 00 20 */	addi r1, r1, 0x20
/* 801EB2B0  4E 80 00 20 */	blr 
