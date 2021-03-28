lbl_80CAB374:
/* 80CAB374  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80CAB378  7C 08 02 A6 */	mflr r0
/* 80CAB37C  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80CAB380  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80CAB384  4B 6B 6E 48 */	b _savegpr_25
/* 80CAB388  7C 7D 1B 78 */	mr r29, r3
/* 80CAB38C  7C 9E 23 78 */	mr r30, r4
/* 80CAB390  3C 60 80 CB */	lis r3, lit_3680@ha
/* 80CAB394  3B E3 C5 0C */	addi r31, r3, lit_3680@l
/* 80CAB398  38 7D 06 70 */	addi r3, r29, 0x670
/* 80CAB39C  4B 3D 90 C4 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80CAB3A0  28 03 00 00 */	cmplwi r3, 0
/* 80CAB3A4  41 82 00 58 */	beq lbl_80CAB3FC
/* 80CAB3A8  38 00 00 01 */	li r0, 1
/* 80CAB3AC  98 1D 06 14 */	stb r0, 0x614(r29)
/* 80CAB3B0  80 1D 06 0C */	lwz r0, 0x60c(r29)
/* 80CAB3B4  2C 00 00 00 */	cmpwi r0, 0
/* 80CAB3B8  40 82 00 10 */	bne lbl_80CAB3C8
/* 80CAB3BC  38 00 00 C8 */	li r0, 0xc8
/* 80CAB3C0  B0 1D 07 B0 */	sth r0, 0x7b0(r29)
/* 80CAB3C4  48 00 00 0C */	b lbl_80CAB3D0
lbl_80CAB3C8:
/* 80CAB3C8  38 00 00 64 */	li r0, 0x64
/* 80CAB3CC  B0 1D 07 B0 */	sth r0, 0x7b0(r29)
lbl_80CAB3D0:
/* 80CAB3D0  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80CAB3D4  D0 1D 06 1C */	stfs f0, 0x61c(r29)
/* 80CAB3D8  80 1D 06 0C */	lwz r0, 0x60c(r29)
/* 80CAB3DC  2C 00 00 02 */	cmpwi r0, 2
/* 80CAB3E0  41 82 00 0C */	beq lbl_80CAB3EC
/* 80CAB3E4  2C 00 00 04 */	cmpwi r0, 4
/* 80CAB3E8  40 82 00 14 */	bne lbl_80CAB3FC
lbl_80CAB3EC:
/* 80CAB3EC  38 00 00 02 */	li r0, 2
/* 80CAB3F0  90 1D 06 10 */	stw r0, 0x610(r29)
/* 80CAB3F4  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80CAB3F8  D0 1D 06 2C */	stfs f0, 0x62c(r29)
lbl_80CAB3FC:
/* 80CAB3FC  80 1D 06 10 */	lwz r0, 0x610(r29)
/* 80CAB400  2C 00 00 01 */	cmpwi r0, 1
/* 80CAB404  41 82 00 1C */	beq lbl_80CAB420
/* 80CAB408  88 1D 06 14 */	lbz r0, 0x614(r29)
/* 80CAB40C  28 00 00 00 */	cmplwi r0, 0
/* 80CAB410  40 82 00 10 */	bne lbl_80CAB420
/* 80CAB414  A8 1D 07 B0 */	lha r0, 0x7b0(r29)
/* 80CAB418  2C 00 00 00 */	cmpwi r0, 0
/* 80CAB41C  41 82 01 E4 */	beq lbl_80CAB600
lbl_80CAB420:
/* 80CAB420  C0 3D 06 1C */	lfs f1, 0x61c(r29)
/* 80CAB424  4B 5B C5 68 */	b cM_rndFX__Ff
/* 80CAB428  D0 3D 06 20 */	stfs f1, 0x620(r29)
/* 80CAB42C  C0 3D 06 1C */	lfs f1, 0x61c(r29)
/* 80CAB430  4B 5B C5 5C */	b cM_rndFX__Ff
/* 80CAB434  D0 3D 06 28 */	stfs f1, 0x628(r29)
/* 80CAB438  80 7D 07 AC */	lwz r3, 0x7ac(r29)
/* 80CAB43C  38 03 00 01 */	addi r0, r3, 1
/* 80CAB440  90 1D 07 AC */	stw r0, 0x7ac(r29)
/* 80CAB444  80 1D 07 AC */	lwz r0, 0x7ac(r29)
/* 80CAB448  1C 00 27 10 */	mulli r0, r0, 0x2710
/* 80CAB44C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CAB450  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80CAB454  38 A3 9A 20 */	addi r5, r3, sincosTable___5JMath@l
/* 80CAB458  7C 45 04 2E */	lfsx f2, r5, r0
/* 80CAB45C  A8 1D 07 B0 */	lha r0, 0x7b0(r29)
/* 80CAB460  C8 3F 00 68 */	lfd f1, 0x68(r31)
/* 80CAB464  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CAB468  90 01 00 84 */	stw r0, 0x84(r1)
/* 80CAB46C  3C 80 43 30 */	lis r4, 0x4330
/* 80CAB470  90 81 00 80 */	stw r4, 0x80(r1)
/* 80CAB474  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 80CAB478  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CAB47C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80CAB480  FC 00 00 1E */	fctiwz f0, f0
/* 80CAB484  D8 01 00 88 */	stfd f0, 0x88(r1)
/* 80CAB488  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 80CAB48C  B0 1D 04 DC */	sth r0, 0x4dc(r29)
/* 80CAB490  A8 7D 07 B2 */	lha r3, 0x7b2(r29)
/* 80CAB494  80 1D 07 AC */	lwz r0, 0x7ac(r29)
/* 80CAB498  1C 00 27 10 */	mulli r0, r0, 0x2710
/* 80CAB49C  7C 03 02 14 */	add r0, r3, r0
/* 80CAB4A0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CAB4A4  7C 45 04 2E */	lfsx f2, r5, r0
/* 80CAB4A8  A8 1D 07 B0 */	lha r0, 0x7b0(r29)
/* 80CAB4AC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CAB4B0  90 01 00 94 */	stw r0, 0x94(r1)
/* 80CAB4B4  90 81 00 90 */	stw r4, 0x90(r1)
/* 80CAB4B8  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 80CAB4BC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CAB4C0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80CAB4C4  FC 00 00 1E */	fctiwz f0, f0
/* 80CAB4C8  D8 01 00 98 */	stfd f0, 0x98(r1)
/* 80CAB4CC  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 80CAB4D0  B0 1D 04 E0 */	sth r0, 0x4e0(r29)
/* 80CAB4D4  A8 1D 07 B0 */	lha r0, 0x7b0(r29)
/* 80CAB4D8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CAB4DC  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80CAB4E0  90 81 00 A0 */	stw r4, 0xa0(r1)
/* 80CAB4E4  C8 01 00 A0 */	lfd f0, 0xa0(r1)
/* 80CAB4E8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CAB4EC  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80CAB4F0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80CAB4F4  FC 00 00 1E */	fctiwz f0, f0
/* 80CAB4F8  D8 01 00 A8 */	stfd f0, 0xa8(r1)
/* 80CAB4FC  80 01 00 AC */	lwz r0, 0xac(r1)
/* 80CAB500  B0 1D 07 B0 */	sth r0, 0x7b0(r29)
/* 80CAB504  C0 1D 06 1C */	lfs f0, 0x61c(r29)
/* 80CAB508  EC 00 00 72 */	fmuls f0, f0, f1
/* 80CAB50C  D0 1D 06 1C */	stfs f0, 0x61c(r29)
/* 80CAB510  A8 1D 07 B0 */	lha r0, 0x7b0(r29)
/* 80CAB514  2C 00 00 20 */	cmpwi r0, 0x20
/* 80CAB518  40 80 00 10 */	bge lbl_80CAB528
/* 80CAB51C  38 00 00 00 */	li r0, 0
/* 80CAB520  B0 1D 07 B0 */	sth r0, 0x7b0(r29)
/* 80CAB524  90 1D 07 AC */	stw r0, 0x7ac(r29)
lbl_80CAB528:
/* 80CAB528  80 1D 06 10 */	lwz r0, 0x610(r29)
/* 80CAB52C  2C 00 00 01 */	cmpwi r0, 1
/* 80CAB530  40 82 00 50 */	bne lbl_80CAB580
/* 80CAB534  80 7D 06 18 */	lwz r3, 0x618(r29)
/* 80CAB538  38 03 00 01 */	addi r0, r3, 1
/* 80CAB53C  90 1D 06 18 */	stw r0, 0x618(r29)
/* 80CAB540  80 1D 06 18 */	lwz r0, 0x618(r29)
/* 80CAB544  C8 3F 00 68 */	lfd f1, 0x68(r31)
/* 80CAB548  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CAB54C  90 01 00 AC */	stw r0, 0xac(r1)
/* 80CAB550  3C 00 43 30 */	lis r0, 0x4330
/* 80CAB554  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 80CAB558  C8 01 00 A8 */	lfd f0, 0xa8(r1)
/* 80CAB55C  EC 20 08 28 */	fsubs f1, f0, f1
/* 80CAB560  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80CAB564  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CAB568  4C 41 13 82 */	cror 2, 1, 2
/* 80CAB56C  40 82 00 14 */	bne lbl_80CAB580
/* 80CAB570  38 00 00 02 */	li r0, 2
/* 80CAB574  90 1D 06 10 */	stw r0, 0x610(r29)
/* 80CAB578  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80CAB57C  D0 1D 06 2C */	stfs f0, 0x62c(r29)
lbl_80CAB580:
/* 80CAB580  80 1D 06 0C */	lwz r0, 0x60c(r29)
/* 80CAB584  2C 00 00 02 */	cmpwi r0, 2
/* 80CAB588  41 82 00 0C */	beq lbl_80CAB594
/* 80CAB58C  2C 00 00 04 */	cmpwi r0, 4
/* 80CAB590  40 82 00 88 */	bne lbl_80CAB618
lbl_80CAB594:
/* 80CAB594  88 1D 07 B5 */	lbz r0, 0x7b5(r29)
/* 80CAB598  28 00 00 00 */	cmplwi r0, 0
/* 80CAB59C  40 82 00 7C */	bne lbl_80CAB618
/* 80CAB5A0  80 1D 06 10 */	lwz r0, 0x610(r29)
/* 80CAB5A4  2C 00 00 05 */	cmpwi r0, 5
/* 80CAB5A8  41 82 00 70 */	beq lbl_80CAB618
/* 80CAB5AC  2C 00 00 06 */	cmpwi r0, 6
/* 80CAB5B0  41 82 00 68 */	beq lbl_80CAB618
/* 80CAB5B4  2C 00 00 02 */	cmpwi r0, 2
/* 80CAB5B8  41 82 00 60 */	beq lbl_80CAB618
/* 80CAB5BC  2C 00 00 04 */	cmpwi r0, 4
/* 80CAB5C0  41 82 00 58 */	beq lbl_80CAB618
/* 80CAB5C4  A8 1D 07 B0 */	lha r0, 0x7b0(r29)
/* 80CAB5C8  2C 00 00 00 */	cmpwi r0, 0
/* 80CAB5CC  41 82 00 4C */	beq lbl_80CAB618
/* 80CAB5D0  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008025B@ha */
/* 80CAB5D4  38 03 02 5B */	addi r0, r3, 0x025B /* 0x0008025B@l */
/* 80CAB5D8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80CAB5DC  38 7D 07 DC */	addi r3, r29, 0x7dc
/* 80CAB5E0  38 81 00 18 */	addi r4, r1, 0x18
/* 80CAB5E4  38 A0 00 00 */	li r5, 0
/* 80CAB5E8  38 C0 FF FF */	li r6, -1
/* 80CAB5EC  81 9D 07 EC */	lwz r12, 0x7ec(r29)
/* 80CAB5F0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80CAB5F4  7D 89 03 A6 */	mtctr r12
/* 80CAB5F8  4E 80 04 21 */	bctrl 
/* 80CAB5FC  48 00 00 1C */	b lbl_80CAB618
lbl_80CAB600:
/* 80CAB600  38 7D 06 20 */	addi r3, r29, 0x620
/* 80CAB604  7C 64 1B 78 */	mr r4, r3
/* 80CAB608  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80CAB60C  4B 69 BA CC */	b PSVECScale
/* 80CAB610  38 00 00 00 */	li r0, 0
/* 80CAB614  90 1D 07 AC */	stw r0, 0x7ac(r29)
lbl_80CAB618:
/* 80CAB618  38 80 00 00 */	li r4, 0
/* 80CAB61C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CAB620  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CAB624  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80CAB628  C0 63 04 D0 */	lfs f3, 0x4d0(r3)
/* 80CAB62C  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 80CAB630  C0 43 04 D4 */	lfs f2, 0x4d4(r3)
/* 80CAB634  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80CAB638  C0 23 04 D8 */	lfs f1, 0x4d8(r3)
/* 80CAB63C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80CAB640  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80CAB644  EC 63 00 28 */	fsubs f3, f3, f0
/* 80CAB648  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80CAB64C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80CAB650  EC 23 00 F2 */	fmuls f1, f3, f3
/* 80CAB654  EC 00 00 32 */	fmuls f0, f0, f0
/* 80CAB658  EC 21 00 2A */	fadds f1, f1, f0
/* 80CAB65C  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80CAB660  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CAB664  40 80 00 24 */	bge lbl_80CAB688
/* 80CAB668  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80CAB66C  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80CAB670  40 81 00 18 */	ble lbl_80CAB688
/* 80CAB674  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80CAB678  EC 00 08 2A */	fadds f0, f0, f1
/* 80CAB67C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80CAB680  40 80 00 08 */	bge lbl_80CAB688
/* 80CAB684  38 80 00 01 */	li r4, 1
lbl_80CAB688:
/* 80CAB688  80 1D 06 10 */	lwz r0, 0x610(r29)
/* 80CAB68C  2C 00 00 02 */	cmpwi r0, 2
/* 80CAB690  41 82 00 0C */	beq lbl_80CAB69C
/* 80CAB694  2C 00 00 05 */	cmpwi r0, 5
/* 80CAB698  40 82 02 B0 */	bne lbl_80CAB948
lbl_80CAB69C:
/* 80CAB69C  80 1D 06 0C */	lwz r0, 0x60c(r29)
/* 80CAB6A0  2C 00 00 03 */	cmpwi r0, 3
/* 80CAB6A4  40 82 00 3C */	bne lbl_80CAB6E0
/* 80CAB6A8  88 1D 07 B5 */	lbz r0, 0x7b5(r29)
/* 80CAB6AC  28 00 00 00 */	cmplwi r0, 0
/* 80CAB6B0  40 82 00 30 */	bne lbl_80CAB6E0
/* 80CAB6B4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80CAB6B8  40 82 00 28 */	bne lbl_80CAB6E0
/* 80CAB6BC  80 7D 07 B8 */	lwz r3, 0x7b8(r29)
/* 80CAB6C0  38 03 00 01 */	addi r0, r3, 1
/* 80CAB6C4  90 1D 07 B8 */	stw r0, 0x7b8(r29)
/* 80CAB6C8  80 1D 07 B8 */	lwz r0, 0x7b8(r29)
/* 80CAB6CC  2C 00 00 4B */	cmpwi r0, 0x4b
/* 80CAB6D0  41 80 02 78 */	blt lbl_80CAB948
/* 80CAB6D4  38 00 00 03 */	li r0, 3
/* 80CAB6D8  90 1D 06 10 */	stw r0, 0x610(r29)
/* 80CAB6DC  48 00 02 6C */	b lbl_80CAB948
lbl_80CAB6E0:
/* 80CAB6E0  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80CAB6E4  C0 1D 06 2C */	lfs f0, 0x62c(r29)
/* 80CAB6E8  EC 01 00 28 */	fsubs f0, f1, f0
/* 80CAB6EC  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80CAB6F0  80 1D 06 10 */	lwz r0, 0x610(r29)
/* 80CAB6F4  2C 00 00 05 */	cmpwi r0, 5
/* 80CAB6F8  40 82 00 44 */	bne lbl_80CAB73C
/* 80CAB6FC  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 80CAB700  C0 3D 04 AC */	lfs f1, 0x4ac(r29)
/* 80CAB704  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80CAB708  EC 01 00 28 */	fsubs f0, f1, f0
/* 80CAB70C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80CAB710  4C 40 13 82 */	cror 2, 0, 2
/* 80CAB714  40 82 00 28 */	bne lbl_80CAB73C
/* 80CAB718  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80CAB71C  38 00 00 06 */	li r0, 6
/* 80CAB720  90 1D 06 10 */	stw r0, 0x610(r29)
/* 80CAB724  38 00 00 00 */	li r0, 0
/* 80CAB728  90 1D 07 D4 */	stw r0, 0x7d4(r29)
/* 80CAB72C  C0 3D 06 2C */	lfs f1, 0x62c(r29)
/* 80CAB730  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80CAB734  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CAB738  D0 1D 06 2C */	stfs f0, 0x62c(r29)
lbl_80CAB73C:
/* 80CAB73C  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 80CAB740  C0 3D 04 AC */	lfs f1, 0x4ac(r29)
/* 80CAB744  C0 1D 07 CC */	lfs f0, 0x7cc(r29)
/* 80CAB748  EC 01 00 28 */	fsubs f0, f1, f0
/* 80CAB74C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80CAB750  4C 40 13 82 */	cror 2, 0, 2
/* 80CAB754  40 82 00 88 */	bne lbl_80CAB7DC
/* 80CAB758  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80CAB75C  80 1D 06 0C */	lwz r0, 0x60c(r29)
/* 80CAB760  2C 00 00 03 */	cmpwi r0, 3
/* 80CAB764  40 82 00 44 */	bne lbl_80CAB7A8
/* 80CAB768  88 1D 07 B5 */	lbz r0, 0x7b5(r29)
/* 80CAB76C  28 00 00 00 */	cmplwi r0, 0
/* 80CAB770  40 82 00 38 */	bne lbl_80CAB7A8
/* 80CAB774  80 7D 07 B8 */	lwz r3, 0x7b8(r29)
/* 80CAB778  38 03 00 01 */	addi r0, r3, 1
/* 80CAB77C  90 1D 07 B8 */	stw r0, 0x7b8(r29)
/* 80CAB780  80 1D 07 B8 */	lwz r0, 0x7b8(r29)
/* 80CAB784  2C 00 00 4B */	cmpwi r0, 0x4b
/* 80CAB788  41 80 00 28 */	blt lbl_80CAB7B0
/* 80CAB78C  38 00 00 4B */	li r0, 0x4b
/* 80CAB790  90 1D 07 B8 */	stw r0, 0x7b8(r29)
/* 80CAB794  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80CAB798  40 82 00 18 */	bne lbl_80CAB7B0
/* 80CAB79C  38 00 00 03 */	li r0, 3
/* 80CAB7A0  90 1D 06 10 */	stw r0, 0x610(r29)
/* 80CAB7A4  48 00 00 0C */	b lbl_80CAB7B0
lbl_80CAB7A8:
/* 80CAB7A8  38 00 00 00 */	li r0, 0
/* 80CAB7AC  90 1D 07 B8 */	stw r0, 0x7b8(r29)
lbl_80CAB7B0:
/* 80CAB7B0  80 1D 06 0C */	lwz r0, 0x60c(r29)
/* 80CAB7B4  2C 00 00 02 */	cmpwi r0, 2
/* 80CAB7B8  41 82 00 0C */	beq lbl_80CAB7C4
/* 80CAB7BC  2C 00 00 04 */	cmpwi r0, 4
/* 80CAB7C0  40 82 01 88 */	bne lbl_80CAB948
lbl_80CAB7C4:
/* 80CAB7C4  38 00 00 04 */	li r0, 4
/* 80CAB7C8  90 1D 06 10 */	stw r0, 0x610(r29)
/* 80CAB7CC  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 80CAB7D0  60 00 40 00 */	ori r0, r0, 0x4000
/* 80CAB7D4  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 80CAB7D8  48 00 01 70 */	b lbl_80CAB948
lbl_80CAB7DC:
/* 80CAB7DC  38 00 00 00 */	li r0, 0
/* 80CAB7E0  90 1D 07 B8 */	stw r0, 0x7b8(r29)
/* 80CAB7E4  80 1D 06 0C */	lwz r0, 0x60c(r29)
/* 80CAB7E8  2C 00 00 02 */	cmpwi r0, 2
/* 80CAB7EC  41 82 00 4C */	beq lbl_80CAB838
/* 80CAB7F0  2C 00 00 04 */	cmpwi r0, 4
/* 80CAB7F4  41 82 00 44 */	beq lbl_80CAB838
/* 80CAB7F8  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801BD@ha */
/* 80CAB7FC  38 03 01 BD */	addi r0, r3, 0x01BD /* 0x000801BD@l */
/* 80CAB800  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAB804  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CAB808  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CAB80C  80 63 00 00 */	lwz r3, 0(r3)
/* 80CAB810  38 81 00 14 */	addi r4, r1, 0x14
/* 80CAB814  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80CAB818  38 C0 00 00 */	li r6, 0
/* 80CAB81C  38 E0 00 00 */	li r7, 0
/* 80CAB820  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80CAB824  FC 40 08 90 */	fmr f2, f1
/* 80CAB828  C0 7F 00 1C */	lfs f3, 0x1c(r31)
/* 80CAB82C  FC 80 18 90 */	fmr f4, f3
/* 80CAB830  39 00 00 00 */	li r8, 0
/* 80CAB834  4B 60 0C D8 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80CAB838:
/* 80CAB838  80 1D 06 10 */	lwz r0, 0x610(r29)
/* 80CAB83C  2C 00 00 05 */	cmpwi r0, 5
/* 80CAB840  40 82 00 38 */	bne lbl_80CAB878
/* 80CAB844  88 1D 06 30 */	lbz r0, 0x630(r29)
/* 80CAB848  28 00 00 00 */	cmplwi r0, 0
/* 80CAB84C  41 82 00 18 */	beq lbl_80CAB864
/* 80CAB850  C0 3D 06 2C */	lfs f1, 0x62c(r29)
/* 80CAB854  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80CAB858  EC 01 00 2A */	fadds f0, f1, f0
/* 80CAB85C  D0 1D 06 2C */	stfs f0, 0x62c(r29)
/* 80CAB860  48 00 00 E8 */	b lbl_80CAB948
lbl_80CAB864:
/* 80CAB864  C0 3D 06 2C */	lfs f1, 0x62c(r29)
/* 80CAB868  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80CAB86C  EC 01 00 2A */	fadds f0, f1, f0
/* 80CAB870  D0 1D 06 2C */	stfs f0, 0x62c(r29)
/* 80CAB874  48 00 00 D4 */	b lbl_80CAB948
lbl_80CAB878:
/* 80CAB878  80 7D 06 0C */	lwz r3, 0x60c(r29)
/* 80CAB87C  2C 03 00 02 */	cmpwi r3, 2
/* 80CAB880  40 82 00 3C */	bne lbl_80CAB8BC
/* 80CAB884  88 1D 06 30 */	lbz r0, 0x630(r29)
/* 80CAB888  28 00 00 00 */	cmplwi r0, 0
/* 80CAB88C  41 82 00 30 */	beq lbl_80CAB8BC
/* 80CAB890  C0 3D 06 2C */	lfs f1, 0x62c(r29)
/* 80CAB894  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80CAB898  EC 01 00 2A */	fadds f0, f1, f0
/* 80CAB89C  D0 1D 06 2C */	stfs f0, 0x62c(r29)
/* 80CAB8A0  C0 3D 06 2C */	lfs f1, 0x62c(r29)
/* 80CAB8A4  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80CAB8A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CAB8AC  4C 41 13 82 */	cror 2, 1, 2
/* 80CAB8B0  40 82 00 98 */	bne lbl_80CAB948
/* 80CAB8B4  D0 1D 06 2C */	stfs f0, 0x62c(r29)
/* 80CAB8B8  48 00 00 90 */	b lbl_80CAB948
lbl_80CAB8BC:
/* 80CAB8BC  2C 03 00 04 */	cmpwi r3, 4
/* 80CAB8C0  40 82 00 48 */	bne lbl_80CAB908
/* 80CAB8C4  C0 1D 06 2C */	lfs f0, 0x62c(r29)
/* 80CAB8C8  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80CAB8CC  EC 00 08 2A */	fadds f0, f0, f1
/* 80CAB8D0  D0 1D 06 2C */	stfs f0, 0x62c(r29)
/* 80CAB8D4  88 1D 06 30 */	lbz r0, 0x630(r29)
/* 80CAB8D8  28 00 00 00 */	cmplwi r0, 0
/* 80CAB8DC  41 82 00 10 */	beq lbl_80CAB8EC
/* 80CAB8E0  C0 1D 06 2C */	lfs f0, 0x62c(r29)
/* 80CAB8E4  EC 00 08 2A */	fadds f0, f0, f1
/* 80CAB8E8  D0 1D 06 2C */	stfs f0, 0x62c(r29)
lbl_80CAB8EC:
/* 80CAB8EC  C0 3D 06 2C */	lfs f1, 0x62c(r29)
/* 80CAB8F0  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80CAB8F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CAB8F8  4C 41 13 82 */	cror 2, 1, 2
/* 80CAB8FC  40 82 00 4C */	bne lbl_80CAB948
/* 80CAB900  D0 1D 06 2C */	stfs f0, 0x62c(r29)
/* 80CAB904  48 00 00 44 */	b lbl_80CAB948
lbl_80CAB908:
/* 80CAB908  C0 1D 06 2C */	lfs f0, 0x62c(r29)
/* 80CAB90C  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80CAB910  EC 00 08 2A */	fadds f0, f0, f1
/* 80CAB914  D0 1D 06 2C */	stfs f0, 0x62c(r29)
/* 80CAB918  88 1D 06 30 */	lbz r0, 0x630(r29)
/* 80CAB91C  28 00 00 00 */	cmplwi r0, 0
/* 80CAB920  41 82 00 10 */	beq lbl_80CAB930
/* 80CAB924  C0 1D 06 2C */	lfs f0, 0x62c(r29)
/* 80CAB928  EC 00 08 2A */	fadds f0, f0, f1
/* 80CAB92C  D0 1D 06 2C */	stfs f0, 0x62c(r29)
lbl_80CAB930:
/* 80CAB930  C0 3D 06 2C */	lfs f1, 0x62c(r29)
/* 80CAB934  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80CAB938  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CAB93C  4C 41 13 82 */	cror 2, 1, 2
/* 80CAB940  40 82 00 08 */	bne lbl_80CAB948
/* 80CAB944  D0 1D 06 2C */	stfs f0, 0x62c(r29)
lbl_80CAB948:
/* 80CAB948  80 1D 06 10 */	lwz r0, 0x610(r29)
/* 80CAB94C  2C 00 00 06 */	cmpwi r0, 6
/* 80CAB950  40 82 00 E0 */	bne lbl_80CABA30
/* 80CAB954  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80CAB958  C0 1D 06 2C */	lfs f0, 0x62c(r29)
/* 80CAB95C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80CAB960  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80CAB964  80 7D 07 D4 */	lwz r3, 0x7d4(r29)
/* 80CAB968  38 03 00 01 */	addi r0, r3, 1
/* 80CAB96C  90 1D 07 D4 */	stw r0, 0x7d4(r29)
/* 80CAB970  C0 1D 06 2C */	lfs f0, 0x62c(r29)
/* 80CAB974  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 80CAB978  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 80CAB97C  40 81 00 84 */	ble lbl_80CABA00
/* 80CAB980  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 80CAB984  C0 3D 04 AC */	lfs f1, 0x4ac(r29)
/* 80CAB988  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80CAB98C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80CAB990  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80CAB994  4C 40 13 82 */	cror 2, 0, 2
/* 80CAB998  40 82 00 68 */	bne lbl_80CABA00
/* 80CAB99C  88 7D 06 30 */	lbz r3, 0x630(r29)
/* 80CAB9A0  28 03 00 00 */	cmplwi r3, 0
/* 80CAB9A4  40 82 00 20 */	bne lbl_80CAB9C4
/* 80CAB9A8  80 1D 07 D4 */	lwz r0, 0x7d4(r29)
/* 80CAB9AC  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80CAB9B0  40 81 00 14 */	ble lbl_80CAB9C4
/* 80CAB9B4  38 00 00 02 */	li r0, 2
/* 80CAB9B8  90 1D 06 10 */	stw r0, 0x610(r29)
/* 80CAB9BC  D0 7D 06 2C */	stfs f3, 0x62c(r29)
/* 80CAB9C0  48 00 00 70 */	b lbl_80CABA30
lbl_80CAB9C4:
/* 80CAB9C4  28 03 00 00 */	cmplwi r3, 0
/* 80CAB9C8  41 82 00 24 */	beq lbl_80CAB9EC
/* 80CAB9CC  80 1D 07 D4 */	lwz r0, 0x7d4(r29)
/* 80CAB9D0  2C 00 00 05 */	cmpwi r0, 5
/* 80CAB9D4  40 81 00 18 */	ble lbl_80CAB9EC
/* 80CAB9D8  38 00 00 02 */	li r0, 2
/* 80CAB9DC  90 1D 06 10 */	stw r0, 0x610(r29)
/* 80CAB9E0  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80CAB9E4  D0 1D 06 2C */	stfs f0, 0x62c(r29)
/* 80CAB9E8  48 00 00 48 */	b lbl_80CABA30
lbl_80CAB9EC:
/* 80CAB9EC  C0 3D 06 2C */	lfs f1, 0x62c(r29)
/* 80CAB9F0  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80CAB9F4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CAB9F8  D0 1D 06 2C */	stfs f0, 0x62c(r29)
/* 80CAB9FC  48 00 00 34 */	b lbl_80CABA30
lbl_80CABA00:
/* 80CABA00  88 1D 06 30 */	lbz r0, 0x630(r29)
/* 80CABA04  28 00 00 00 */	cmplwi r0, 0
/* 80CABA08  41 82 00 18 */	beq lbl_80CABA20
/* 80CABA0C  C0 3D 06 2C */	lfs f1, 0x62c(r29)
/* 80CABA10  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80CABA14  EC 01 00 2A */	fadds f0, f1, f0
/* 80CABA18  D0 1D 06 2C */	stfs f0, 0x62c(r29)
/* 80CABA1C  48 00 00 14 */	b lbl_80CABA30
lbl_80CABA20:
/* 80CABA20  C0 3D 06 2C */	lfs f1, 0x62c(r29)
/* 80CABA24  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80CABA28  EC 01 00 2A */	fadds f0, f1, f0
/* 80CABA2C  D0 1D 06 2C */	stfs f0, 0x62c(r29)
lbl_80CABA30:
/* 80CABA30  80 1D 06 10 */	lwz r0, 0x610(r29)
/* 80CABA34  2C 00 00 03 */	cmpwi r0, 3
/* 80CABA38  40 82 00 D4 */	bne lbl_80CABB0C
/* 80CABA3C  80 1D 06 0C */	lwz r0, 0x60c(r29)
/* 80CABA40  2C 00 00 03 */	cmpwi r0, 3
/* 80CABA44  40 82 00 C8 */	bne lbl_80CABB0C
/* 80CABA48  88 1D 07 B5 */	lbz r0, 0x7b5(r29)
/* 80CABA4C  28 00 00 01 */	cmplwi r0, 1
/* 80CABA50  40 82 00 4C */	bne lbl_80CABA9C
/* 80CABA54  38 00 00 02 */	li r0, 2
/* 80CABA58  90 1D 06 10 */	stw r0, 0x610(r29)
/* 80CABA5C  80 7D 06 0C */	lwz r3, 0x60c(r29)
/* 80CABA60  2C 03 00 02 */	cmpwi r3, 2
/* 80CABA64  40 82 00 1C */	bne lbl_80CABA80
/* 80CABA68  88 1D 06 30 */	lbz r0, 0x630(r29)
/* 80CABA6C  28 00 00 00 */	cmplwi r0, 0
/* 80CABA70  41 82 00 10 */	beq lbl_80CABA80
/* 80CABA74  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80CABA78  D0 1D 06 2C */	stfs f0, 0x62c(r29)
/* 80CABA7C  48 00 00 20 */	b lbl_80CABA9C
lbl_80CABA80:
/* 80CABA80  2C 03 00 04 */	cmpwi r3, 4
/* 80CABA84  40 82 00 10 */	bne lbl_80CABA94
/* 80CABA88  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80CABA8C  D0 1D 06 2C */	stfs f0, 0x62c(r29)
/* 80CABA90  48 00 00 0C */	b lbl_80CABA9C
lbl_80CABA94:
/* 80CABA94  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80CABA98  D0 1D 06 2C */	stfs f0, 0x62c(r29)
lbl_80CABA9C:
/* 80CABA9C  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80CABAA0  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80CABAA4  EC 01 00 2A */	fadds f0, f1, f0
/* 80CABAA8  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80CABAAC  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801BE@ha */
/* 80CABAB0  38 03 01 BE */	addi r0, r3, 0x01BE /* 0x000801BE@l */
/* 80CABAB4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CABAB8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CABABC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CABAC0  80 63 00 00 */	lwz r3, 0(r3)
/* 80CABAC4  38 81 00 10 */	addi r4, r1, 0x10
/* 80CABAC8  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80CABACC  38 C0 00 00 */	li r6, 0
/* 80CABAD0  38 E0 00 00 */	li r7, 0
/* 80CABAD4  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80CABAD8  FC 40 08 90 */	fmr f2, f1
/* 80CABADC  C0 7F 00 1C */	lfs f3, 0x1c(r31)
/* 80CABAE0  FC 80 18 90 */	fmr f4, f3
/* 80CABAE4  39 00 00 00 */	li r8, 0
/* 80CABAE8  4B 60 0A 24 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CABAEC  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80CABAF0  C0 3D 04 AC */	lfs f1, 0x4ac(r29)
/* 80CABAF4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80CABAF8  4C 41 13 82 */	cror 2, 1, 2
/* 80CABAFC  40 82 00 10 */	bne lbl_80CABB0C
/* 80CABB00  D0 3D 04 D4 */	stfs f1, 0x4d4(r29)
/* 80CABB04  38 00 00 00 */	li r0, 0
/* 80CABB08  90 1D 06 10 */	stw r0, 0x610(r29)
lbl_80CABB0C:
/* 80CABB0C  80 1D 06 10 */	lwz r0, 0x610(r29)
/* 80CABB10  2C 00 00 04 */	cmpwi r0, 4
/* 80CABB14  40 82 01 E4 */	bne lbl_80CABCF8
/* 80CABB18  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80CABB1C  4B 5B C6 B8 */	b ChkUsed__9cBgW_BgIdCFv
/* 80CABB20  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CABB24  41 82 00 18 */	beq lbl_80CABB3C
/* 80CABB28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CABB2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CABB30  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CABB34  80 9D 05 68 */	lwz r4, 0x568(r29)
/* 80CABB38  4B 3C 87 18 */	b Release__4cBgSFP9dBgW_Base
lbl_80CABB3C:
/* 80CABB3C  88 1D 07 D0 */	lbz r0, 0x7d0(r29)
/* 80CABB40  28 00 00 00 */	cmplwi r0, 0
/* 80CABB44  41 82 00 14 */	beq lbl_80CABB58
/* 80CABB48  C0 3D 06 2C */	lfs f1, 0x62c(r29)
/* 80CABB4C  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80CABB50  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CABB54  D0 1D 06 2C */	stfs f0, 0x62c(r29)
lbl_80CABB58:
/* 80CABB58  38 00 00 00 */	li r0, 0
/* 80CABB5C  98 1D 07 D0 */	stb r0, 0x7d0(r29)
/* 80CABB60  80 7D 06 0C */	lwz r3, 0x60c(r29)
/* 80CABB64  2C 03 00 02 */	cmpwi r3, 2
/* 80CABB68  40 82 00 24 */	bne lbl_80CABB8C
/* 80CABB6C  88 1D 06 30 */	lbz r0, 0x630(r29)
/* 80CABB70  28 00 00 00 */	cmplwi r0, 0
/* 80CABB74  41 82 00 18 */	beq lbl_80CABB8C
/* 80CABB78  C0 3D 06 2C */	lfs f1, 0x62c(r29)
/* 80CABB7C  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80CABB80  EC 01 00 2A */	fadds f0, f1, f0
/* 80CABB84  D0 1D 06 2C */	stfs f0, 0x62c(r29)
/* 80CABB88  48 00 00 30 */	b lbl_80CABBB8
lbl_80CABB8C:
/* 80CABB8C  2C 03 00 04 */	cmpwi r3, 4
/* 80CABB90  40 82 00 18 */	bne lbl_80CABBA8
/* 80CABB94  C0 3D 06 2C */	lfs f1, 0x62c(r29)
/* 80CABB98  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80CABB9C  EC 01 00 2A */	fadds f0, f1, f0
/* 80CABBA0  D0 1D 06 2C */	stfs f0, 0x62c(r29)
/* 80CABBA4  48 00 00 14 */	b lbl_80CABBB8
lbl_80CABBA8:
/* 80CABBA8  C0 3D 06 2C */	lfs f1, 0x62c(r29)
/* 80CABBAC  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80CABBB0  EC 01 00 2A */	fadds f0, f1, f0
/* 80CABBB4  D0 1D 06 2C */	stfs f0, 0x62c(r29)
lbl_80CABBB8:
/* 80CABBB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CABBBC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CABBC0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80CABBC4  C0 5D 06 2C */	lfs f2, 0x62c(r29)
/* 80CABBC8  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80CABBCC  C0 03 05 34 */	lfs f0, 0x534(r3)
/* 80CABBD0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80CABBD4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80CABBD8  4C 41 13 82 */	cror 2, 1, 2
/* 80CABBDC  40 82 00 08 */	bne lbl_80CABBE4
/* 80CABBE0  D0 1D 06 2C */	stfs f0, 0x62c(r29)
lbl_80CABBE4:
/* 80CABBE4  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80CABBE8  C0 1D 06 2C */	lfs f0, 0x62c(r29)
/* 80CABBEC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80CABBF0  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80CABBF4  80 1D 06 0C */	lwz r0, 0x60c(r29)
/* 80CABBF8  2C 00 00 02 */	cmpwi r0, 2
/* 80CABBFC  41 82 00 4C */	beq lbl_80CABC48
/* 80CABC00  2C 00 00 04 */	cmpwi r0, 4
/* 80CABC04  41 82 00 44 */	beq lbl_80CABC48
/* 80CABC08  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801BD@ha */
/* 80CABC0C  38 03 01 BD */	addi r0, r3, 0x01BD /* 0x000801BD@l */
/* 80CABC10  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CABC14  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CABC18  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CABC1C  80 63 00 00 */	lwz r3, 0(r3)
/* 80CABC20  38 81 00 0C */	addi r4, r1, 0xc
/* 80CABC24  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80CABC28  38 C0 00 00 */	li r6, 0
/* 80CABC2C  38 E0 00 00 */	li r7, 0
/* 80CABC30  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80CABC34  FC 40 08 90 */	fmr f2, f1
/* 80CABC38  C0 7F 00 1C */	lfs f3, 0x1c(r31)
/* 80CABC3C  FC 80 18 90 */	fmr f4, f3
/* 80CABC40  39 00 00 00 */	li r8, 0
/* 80CABC44  4B 60 08 C8 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80CABC48:
/* 80CABC48  3B 21 00 28 */	addi r25, r1, 0x28
/* 80CABC4C  7F 23 CB 78 */	mr r3, r25
/* 80CABC50  4B 3C B9 2C */	b __ct__11dBgS_GndChkFv
/* 80CABC54  3C 60 80 CB */	lis r3, __vt__14dBgS_ObjGndChk@ha
/* 80CABC58  38 63 C7 0C */	addi r3, r3, __vt__14dBgS_ObjGndChk@l
/* 80CABC5C  90 61 00 38 */	stw r3, 0x38(r1)
/* 80CABC60  3B 83 00 0C */	addi r28, r3, 0xc
/* 80CABC64  93 81 00 48 */	stw r28, 0x48(r1)
/* 80CABC68  3B 63 00 18 */	addi r27, r3, 0x18
/* 80CABC6C  93 61 00 64 */	stw r27, 0x64(r1)
/* 80CABC70  3B 43 00 24 */	addi r26, r3, 0x24
/* 80CABC74  93 41 00 74 */	stw r26, 0x74(r1)
/* 80CABC78  38 79 00 3C */	addi r3, r25, 0x3c
/* 80CABC7C  4B 3C D1 EC */	b SetObj__16dBgS_PolyPassChkFv
/* 80CABC80  80 1D 00 04 */	lwz r0, 4(r29)
/* 80CABC84  90 01 00 30 */	stw r0, 0x30(r1)
/* 80CABC88  7F 23 CB 78 */	mr r3, r25
/* 80CABC8C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80CABC90  4B 5B C0 98 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 80CABC94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CABC98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CABC9C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CABCA0  7F 24 CB 78 */	mr r4, r25
/* 80CABCA4  4B 3C 87 FC */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80CABCA8  C0 3D 04 AC */	lfs f1, 0x4ac(r29)
/* 80CABCAC  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80CABCB0  EC 21 00 28 */	fsubs f1, f1, f0
/* 80CABCB4  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80CABCB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CABCBC  40 80 00 0C */	bge lbl_80CABCC8
/* 80CABCC0  7F A3 EB 78 */	mr r3, r29
/* 80CABCC4  4B 36 DF B8 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80CABCC8:
/* 80CABCC8  38 00 00 00 */	li r0, 0
/* 80CABCCC  B0 1D 07 B0 */	sth r0, 0x7b0(r29)
/* 80CABCD0  98 1D 06 14 */	stb r0, 0x614(r29)
/* 80CABCD4  3C 60 80 CB */	lis r3, __vt__14dBgS_ObjGndChk@ha
/* 80CABCD8  38 03 C7 0C */	addi r0, r3, __vt__14dBgS_ObjGndChk@l
/* 80CABCDC  90 01 00 38 */	stw r0, 0x38(r1)
/* 80CABCE0  93 81 00 48 */	stw r28, 0x48(r1)
/* 80CABCE4  93 61 00 64 */	stw r27, 0x64(r1)
/* 80CABCE8  93 41 00 74 */	stw r26, 0x74(r1)
/* 80CABCEC  38 61 00 28 */	addi r3, r1, 0x28
/* 80CABCF0  38 80 00 00 */	li r4, 0
/* 80CABCF4  4B 3C B8 FC */	b __dt__11dBgS_GndChkFv
lbl_80CABCF8:
/* 80CABCF8  80 1D 06 10 */	lwz r0, 0x610(r29)
/* 80CABCFC  2C 00 00 07 */	cmpwi r0, 7
/* 80CABD00  40 82 00 BC */	bne lbl_80CABDBC
/* 80CABD04  80 1D 07 D8 */	lwz r0, 0x7d8(r29)
/* 80CABD08  C8 BF 00 68 */	lfd f5, 0x68(r31)
/* 80CABD0C  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 80CABD10  90 61 00 AC */	stw r3, 0xac(r1)
/* 80CABD14  3C 00 43 30 */	lis r0, 0x4330
/* 80CABD18  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 80CABD1C  C8 01 00 A8 */	lfd f0, 0xa8(r1)
/* 80CABD20  EC 00 28 28 */	fsubs f0, f0, f5
/* 80CABD24  C0 9F 00 3C */	lfs f4, 0x3c(r31)
/* 80CABD28  FC 00 20 40 */	fcmpo cr0, f0, f4
/* 80CABD2C  40 80 00 30 */	bge lbl_80CABD5C
/* 80CABD30  C0 5D 04 AC */	lfs f2, 0x4ac(r29)
/* 80CABD34  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80CABD38  90 61 00 AC */	stw r3, 0xac(r1)
/* 80CABD3C  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 80CABD40  C8 01 00 A8 */	lfd f0, 0xa8(r1)
/* 80CABD44  EC 00 28 28 */	fsubs f0, f0, f5
/* 80CABD48  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CABD4C  EC 00 20 24 */	fdivs f0, f0, f4
/* 80CABD50  EC 02 00 28 */	fsubs f0, f2, f0
/* 80CABD54  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80CABD58  48 00 00 34 */	b lbl_80CABD8C
lbl_80CABD5C:
/* 80CABD5C  C0 7D 04 AC */	lfs f3, 0x4ac(r29)
/* 80CABD60  C0 5F 00 38 */	lfs f2, 0x38(r31)
/* 80CABD64  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80CABD68  90 61 00 AC */	stw r3, 0xac(r1)
/* 80CABD6C  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 80CABD70  C8 01 00 A8 */	lfd f0, 0xa8(r1)
/* 80CABD74  EC 00 28 28 */	fsubs f0, f0, f5
/* 80CABD78  EC 01 00 28 */	fsubs f0, f1, f0
/* 80CABD7C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80CABD80  EC 00 20 24 */	fdivs f0, f0, f4
/* 80CABD84  EC 03 00 28 */	fsubs f0, f3, f0
/* 80CABD88  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
lbl_80CABD8C:
/* 80CABD8C  80 7D 07 D8 */	lwz r3, 0x7d8(r29)
/* 80CABD90  38 03 00 01 */	addi r0, r3, 1
/* 80CABD94  90 1D 07 D8 */	stw r0, 0x7d8(r29)
/* 80CABD98  80 1D 07 D8 */	lwz r0, 0x7d8(r29)
/* 80CABD9C  2C 00 00 0A */	cmpwi r0, 0xa
/* 80CABDA0  41 80 00 1C */	blt lbl_80CABDBC
/* 80CABDA4  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 80CABDA8  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80CABDAC  38 00 00 02 */	li r0, 2
/* 80CABDB0  90 1D 06 10 */	stw r0, 0x610(r29)
/* 80CABDB4  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80CABDB8  D0 1D 06 2C */	stfs f0, 0x62c(r29)
lbl_80CABDBC:
/* 80CABDBC  80 1D 06 0C */	lwz r0, 0x60c(r29)
/* 80CABDC0  2C 00 00 02 */	cmpwi r0, 2
/* 80CABDC4  41 82 00 0C */	beq lbl_80CABDD0
/* 80CABDC8  2C 00 00 04 */	cmpwi r0, 4
/* 80CABDCC  40 82 00 64 */	bne lbl_80CABE30
lbl_80CABDD0:
/* 80CABDD0  80 1D 06 10 */	lwz r0, 0x610(r29)
/* 80CABDD4  2C 00 00 06 */	cmpwi r0, 6
/* 80CABDD8  41 82 00 14 */	beq lbl_80CABDEC
/* 80CABDDC  2C 00 00 05 */	cmpwi r0, 5
/* 80CABDE0  41 82 00 0C */	beq lbl_80CABDEC
/* 80CABDE4  2C 00 00 02 */	cmpwi r0, 2
/* 80CABDE8  40 82 00 48 */	bne lbl_80CABE30
lbl_80CABDEC:
/* 80CABDEC  C0 3D 06 2C */	lfs f1, 0x62c(r29)
/* 80CABDF0  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80CABDF4  EC 20 00 72 */	fmuls f1, f0, f1
/* 80CABDF8  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80CABDFC  EC 21 00 24 */	fdivs f1, f1, f0
/* 80CABE00  4B 6B 62 AC */	b __cvt_fp2unsigned
/* 80CABE04  7C 65 1B 78 */	mr r5, r3
/* 80CABE08  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008025C@ha */
/* 80CABE0C  38 03 02 5C */	addi r0, r3, 0x025C /* 0x0008025C@l */
/* 80CABE10  90 01 00 08 */	stw r0, 8(r1)
/* 80CABE14  38 7D 07 DC */	addi r3, r29, 0x7dc
/* 80CABE18  38 81 00 08 */	addi r4, r1, 8
/* 80CABE1C  38 C0 FF FF */	li r6, -1
/* 80CABE20  81 9D 07 EC */	lwz r12, 0x7ec(r29)
/* 80CABE24  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80CABE28  7D 89 03 A6 */	mtctr r12
/* 80CABE2C  4E 80 04 21 */	bctrl 
lbl_80CABE30:
/* 80CABE30  7F A3 EB 78 */	mr r3, r29
/* 80CABE34  4B FF F0 4D */	bl setMtx__13daObjPDtile_cFv
/* 80CABE38  38 7D 05 D8 */	addi r3, r29, 0x5d8
/* 80CABE3C  80 9D 06 08 */	lwz r4, 0x608(r29)
/* 80CABE40  38 84 00 24 */	addi r4, r4, 0x24
/* 80CABE44  4B 69 A6 6C */	b PSMTXCopy
/* 80CABE48  38 1D 05 A8 */	addi r0, r29, 0x5a8
/* 80CABE4C  90 1E 00 00 */	stw r0, 0(r30)
/* 80CABE50  38 7D 07 94 */	addi r3, r29, 0x794
/* 80CABE54  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80CABE58  4B 5C 33 84 */	b SetC__8cM3dGCylFRC4cXyz
/* 80CABE5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CABE60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CABE64  38 63 23 3C */	addi r3, r3, 0x233c
/* 80CABE68  38 9D 06 70 */	addi r4, r29, 0x670
/* 80CABE6C  4B 5B 8D 3C */	b Set__4cCcSFP8cCcD_Obj
/* 80CABE70  88 1D 07 B4 */	lbz r0, 0x7b4(r29)
/* 80CABE74  28 00 00 00 */	cmplwi r0, 0
/* 80CABE78  40 82 00 0C */	bne lbl_80CABE84
/* 80CABE7C  38 00 00 00 */	li r0, 0
/* 80CABE80  98 1D 06 14 */	stb r0, 0x614(r29)
lbl_80CABE84:
/* 80CABE84  38 00 00 00 */	li r0, 0
/* 80CABE88  98 1D 07 B4 */	stb r0, 0x7b4(r29)
/* 80CABE8C  98 1D 06 30 */	stb r0, 0x630(r29)
/* 80CABE90  98 1D 07 B5 */	stb r0, 0x7b5(r29)
/* 80CABE94  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80CABE98  7C 03 07 74 */	extsb r3, r0
/* 80CABE9C  4B 38 11 D0 */	b dComIfGp_getReverb__Fi
/* 80CABEA0  7C 65 1B 78 */	mr r5, r3
/* 80CABEA4  38 7D 07 DC */	addi r3, r29, 0x7dc
/* 80CABEA8  38 80 00 00 */	li r4, 0
/* 80CABEAC  81 9D 07 EC */	lwz r12, 0x7ec(r29)
/* 80CABEB0  81 8C 00 08 */	lwz r12, 8(r12)
/* 80CABEB4  7D 89 03 A6 */	mtctr r12
/* 80CABEB8  4E 80 04 21 */	bctrl 
/* 80CABEBC  38 60 00 01 */	li r3, 1
/* 80CABEC0  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80CABEC4  4B 6B 63 54 */	b _restgpr_25
/* 80CABEC8  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80CABECC  7C 08 03 A6 */	mtlr r0
/* 80CABED0  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80CABED4  4E 80 00 20 */	blr 
