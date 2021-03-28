lbl_801ED53C:
/* 801ED53C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801ED540  7C 08 02 A6 */	mflr r0
/* 801ED544  90 01 00 44 */	stw r0, 0x44(r1)
/* 801ED548  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 801ED54C  7C 7F 1B 78 */	mr r31, r3
/* 801ED550  38 80 00 24 */	li r4, 0x24
/* 801ED554  48 00 15 91 */	bl setDoStatus__12dMenu_Ring_cFUc
/* 801ED558  88 1F 06 CE */	lbz r0, 0x6ce(r31)
/* 801ED55C  28 00 00 00 */	cmplwi r0, 0
/* 801ED560  41 82 02 50 */	beq lbl_801ED7B0
/* 801ED564  88 1F 06 A8 */	lbz r0, 0x6a8(r31)
/* 801ED568  54 00 10 3A */	slwi r0, r0, 2
/* 801ED56C  7C 7F 02 14 */	add r3, r31, r0
/* 801ED570  C0 23 03 EC */	lfs f1, 0x3ec(r3)
/* 801ED574  C0 03 03 8C */	lfs f0, 0x38c(r3)
/* 801ED578  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 801ED57C  C0 02 A9 88 */	lfs f0, lit_4300(r2)
/* 801ED580  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 801ED584  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 801ED588  38 7F 03 80 */	addi r3, r31, 0x380
/* 801ED58C  38 81 00 24 */	addi r4, r1, 0x24
/* 801ED590  C0 22 A9 9C */	lfs f1, lit_4305(r2)
/* 801ED594  C0 42 A9 F4 */	lfs f2, lit_5648(r2)
/* 801ED598  FC 60 08 90 */	fmr f3, f1
/* 801ED59C  48 08 28 59 */	bl cLib_addCalcPosXZ__FP4cXyzRC4cXyzfff
/* 801ED5A0  38 61 00 0C */	addi r3, r1, 0xc
/* 801ED5A4  38 9F 03 80 */	addi r4, r31, 0x380
/* 801ED5A8  38 A1 00 24 */	addi r5, r1, 0x24
/* 801ED5AC  48 07 95 89 */	bl __mi__4cXyzCFRC3Vec
/* 801ED5B0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 801ED5B4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 801ED5B8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 801ED5BC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801ED5C0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 801ED5C4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 801ED5C8  38 61 00 18 */	addi r3, r1, 0x18
/* 801ED5CC  48 15 9B 6D */	bl PSVECSquareMag
/* 801ED5D0  C0 02 A9 88 */	lfs f0, lit_4300(r2)
/* 801ED5D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801ED5D8  40 81 00 58 */	ble lbl_801ED630
/* 801ED5DC  FC 00 08 34 */	frsqrte f0, f1
/* 801ED5E0  C8 82 A9 F8 */	lfd f4, lit_5649(r2)
/* 801ED5E4  FC 44 00 32 */	fmul f2, f4, f0
/* 801ED5E8  C8 62 AA 00 */	lfd f3, lit_5650(r2)
/* 801ED5EC  FC 00 00 32 */	fmul f0, f0, f0
/* 801ED5F0  FC 01 00 32 */	fmul f0, f1, f0
/* 801ED5F4  FC 03 00 28 */	fsub f0, f3, f0
/* 801ED5F8  FC 02 00 32 */	fmul f0, f2, f0
/* 801ED5FC  FC 44 00 32 */	fmul f2, f4, f0
/* 801ED600  FC 00 00 32 */	fmul f0, f0, f0
/* 801ED604  FC 01 00 32 */	fmul f0, f1, f0
/* 801ED608  FC 03 00 28 */	fsub f0, f3, f0
/* 801ED60C  FC 02 00 32 */	fmul f0, f2, f0
/* 801ED610  FC 44 00 32 */	fmul f2, f4, f0
/* 801ED614  FC 00 00 32 */	fmul f0, f0, f0
/* 801ED618  FC 01 00 32 */	fmul f0, f1, f0
/* 801ED61C  FC 03 00 28 */	fsub f0, f3, f0
/* 801ED620  FC 02 00 32 */	fmul f0, f2, f0
/* 801ED624  FC 21 00 32 */	fmul f1, f1, f0
/* 801ED628  FC 20 08 18 */	frsp f1, f1
/* 801ED62C  48 00 00 88 */	b lbl_801ED6B4
lbl_801ED630:
/* 801ED630  C8 02 AA 08 */	lfd f0, lit_5651(r2)
/* 801ED634  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801ED638  40 80 00 10 */	bge lbl_801ED648
/* 801ED63C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 801ED640  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 801ED644  48 00 00 70 */	b lbl_801ED6B4
lbl_801ED648:
/* 801ED648  D0 21 00 08 */	stfs f1, 8(r1)
/* 801ED64C  80 81 00 08 */	lwz r4, 8(r1)
/* 801ED650  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 801ED654  3C 00 7F 80 */	lis r0, 0x7f80
/* 801ED658  7C 03 00 00 */	cmpw r3, r0
/* 801ED65C  41 82 00 14 */	beq lbl_801ED670
/* 801ED660  40 80 00 40 */	bge lbl_801ED6A0
/* 801ED664  2C 03 00 00 */	cmpwi r3, 0
/* 801ED668  41 82 00 20 */	beq lbl_801ED688
/* 801ED66C  48 00 00 34 */	b lbl_801ED6A0
lbl_801ED670:
/* 801ED670  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801ED674  41 82 00 0C */	beq lbl_801ED680
/* 801ED678  38 00 00 01 */	li r0, 1
/* 801ED67C  48 00 00 28 */	b lbl_801ED6A4
lbl_801ED680:
/* 801ED680  38 00 00 02 */	li r0, 2
/* 801ED684  48 00 00 20 */	b lbl_801ED6A4
lbl_801ED688:
/* 801ED688  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801ED68C  41 82 00 0C */	beq lbl_801ED698
/* 801ED690  38 00 00 05 */	li r0, 5
/* 801ED694  48 00 00 10 */	b lbl_801ED6A4
lbl_801ED698:
/* 801ED698  38 00 00 03 */	li r0, 3
/* 801ED69C  48 00 00 08 */	b lbl_801ED6A4
lbl_801ED6A0:
/* 801ED6A0  38 00 00 04 */	li r0, 4
lbl_801ED6A4:
/* 801ED6A4  2C 00 00 01 */	cmpwi r0, 1
/* 801ED6A8  40 82 00 0C */	bne lbl_801ED6B4
/* 801ED6AC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 801ED6B0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_801ED6B4:
/* 801ED6B4  C0 A2 A9 B0 */	lfs f5, lit_4310(r2)
/* 801ED6B8  FC 01 28 40 */	fcmpo cr0, f1, f5
/* 801ED6BC  40 80 00 C4 */	bge lbl_801ED780
/* 801ED6C0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 801ED6C4  D0 1F 03 80 */	stfs f0, 0x380(r31)
/* 801ED6C8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 801ED6CC  D0 1F 03 84 */	stfs f0, 0x384(r31)
/* 801ED6D0  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 801ED6D4  D0 1F 03 88 */	stfs f0, 0x388(r31)
/* 801ED6D8  A8 1F 06 70 */	lha r0, 0x670(r31)
/* 801ED6DC  B0 1F 06 6E */	sth r0, 0x66e(r31)
/* 801ED6E0  88 1F 06 A8 */	lbz r0, 0x6a8(r31)
/* 801ED6E4  54 00 10 3A */	slwi r0, r0, 2
/* 801ED6E8  7C 7F 02 14 */	add r3, r31, r0
/* 801ED6EC  C0 23 03 EC */	lfs f1, 0x3ec(r3)
/* 801ED6F0  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 801ED6F4  C0 03 03 8C */	lfs f0, 0x38c(r3)
/* 801ED6F8  D0 04 00 58 */	stfs f0, 0x58(r4)
/* 801ED6FC  D0 24 00 5C */	stfs f1, 0x5c(r4)
/* 801ED700  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801ED704  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801ED708  38 63 00 9C */	addi r3, r3, 0x9c
/* 801ED70C  88 1F 06 A8 */	lbz r0, 0x6a8(r31)
/* 801ED710  7C 9F 02 14 */	add r4, r31, r0
/* 801ED714  88 84 06 90 */	lbz r4, 0x690(r4)
/* 801ED718  38 A0 00 00 */	li r5, 0
/* 801ED71C  4B E4 59 15 */	bl getItem__17dSv_player_item_cCFib
/* 801ED720  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801ED724  28 00 00 FF */	cmplwi r0, 0xff
/* 801ED728  41 82 00 30 */	beq lbl_801ED758
/* 801ED72C  88 1F 06 A8 */	lbz r0, 0x6a8(r31)
/* 801ED730  54 00 10 3A */	slwi r0, r0, 2
/* 801ED734  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 801ED738  7C 9F 02 14 */	add r4, r31, r0
/* 801ED73C  C0 24 04 4C */	lfs f1, 0x44c(r4)
/* 801ED740  C0 44 04 AC */	lfs f2, 0x4ac(r4)
/* 801ED744  C0 62 A9 A8 */	lfs f3, lit_4308(r2)
/* 801ED748  C0 82 A9 AC */	lfs f4, lit_4309(r2)
/* 801ED74C  C0 A2 A9 B0 */	lfs f5, lit_4310(r2)
/* 801ED750  4B FA 7A 61 */	bl setParam__16dSelect_cursor_cFfffff
/* 801ED754  48 00 00 20 */	b lbl_801ED774
lbl_801ED758:
/* 801ED758  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 801ED75C  C0 22 A9 9C */	lfs f1, lit_4305(r2)
/* 801ED760  FC 40 08 90 */	fmr f2, f1
/* 801ED764  C0 62 A9 A8 */	lfs f3, lit_4308(r2)
/* 801ED768  C0 82 A9 AC */	lfs f4, lit_4309(r2)
/* 801ED76C  C0 A2 A9 B0 */	lfs f5, lit_4310(r2)
/* 801ED770  4B FA 7A 41 */	bl setParam__16dSelect_cursor_cFfffff
lbl_801ED774:
/* 801ED774  88 1F 06 B2 */	lbz r0, 0x6b2(r31)
/* 801ED778  98 1F 06 B0 */	stb r0, 0x6b0(r31)
/* 801ED77C  48 00 01 A4 */	b lbl_801ED920
lbl_801ED780:
/* 801ED780  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 801ED784  C0 22 A9 9C */	lfs f1, lit_4305(r2)
/* 801ED788  FC 40 08 90 */	fmr f2, f1
/* 801ED78C  C0 62 A9 A8 */	lfs f3, lit_4308(r2)
/* 801ED790  C0 82 A9 AC */	lfs f4, lit_4309(r2)
/* 801ED794  4B FA 7A 1D */	bl setParam__16dSelect_cursor_cFfffff
/* 801ED798  C0 3F 03 88 */	lfs f1, 0x388(r31)
/* 801ED79C  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 801ED7A0  C0 1F 03 80 */	lfs f0, 0x380(r31)
/* 801ED7A4  D0 03 00 58 */	stfs f0, 0x58(r3)
/* 801ED7A8  D0 23 00 5C */	stfs f1, 0x5c(r3)
/* 801ED7AC  48 00 01 74 */	b lbl_801ED920
lbl_801ED7B0:
/* 801ED7B0  88 1F 06 D3 */	lbz r0, 0x6d3(r31)
/* 801ED7B4  28 00 00 FF */	cmplwi r0, 0xff
/* 801ED7B8  40 82 00 20 */	bne lbl_801ED7D8
/* 801ED7BC  38 7F 06 6E */	addi r3, r31, 0x66e
/* 801ED7C0  A8 9F 06 70 */	lha r4, 0x670(r31)
/* 801ED7C4  38 A0 00 04 */	li r5, 4
/* 801ED7C8  38 C0 7F FF */	li r6, 0x7fff
/* 801ED7CC  A8 FF 06 80 */	lha r7, 0x680(r31)
/* 801ED7D0  48 08 2D 71 */	bl cLib_addCalcAngleS__FPsssss
/* 801ED7D4  48 00 00 28 */	b lbl_801ED7FC
lbl_801ED7D8:
/* 801ED7D8  28 00 00 00 */	cmplwi r0, 0
/* 801ED7DC  40 82 00 10 */	bne lbl_801ED7EC
/* 801ED7E0  38 00 DF F9 */	li r0, -8199
/* 801ED7E4  B0 1F 06 6E */	sth r0, 0x66e(r31)
/* 801ED7E8  48 00 00 0C */	b lbl_801ED7F4
lbl_801ED7EC:
/* 801ED7EC  38 00 9F FD */	li r0, -24579
/* 801ED7F0  B0 1F 06 6E */	sth r0, 0x66e(r31)
lbl_801ED7F4:
/* 801ED7F4  38 00 00 FF */	li r0, 0xff
/* 801ED7F8  98 1F 06 D3 */	stb r0, 0x6d3(r31)
lbl_801ED7FC:
/* 801ED7FC  A8 7F 06 6E */	lha r3, 0x66e(r31)
/* 801ED800  A8 1F 06 70 */	lha r0, 0x670(r31)
/* 801ED804  7C 03 00 50 */	subf r0, r3, r0
/* 801ED808  7C 03 07 34 */	extsh r3, r0
/* 801ED80C  48 17 78 C5 */	bl abs
/* 801ED810  2C 03 00 80 */	cmpwi r3, 0x80
/* 801ED814  40 80 00 AC */	bge lbl_801ED8C0
/* 801ED818  A8 1F 06 70 */	lha r0, 0x670(r31)
/* 801ED81C  B0 1F 06 6E */	sth r0, 0x66e(r31)
/* 801ED820  88 1F 06 A8 */	lbz r0, 0x6a8(r31)
/* 801ED824  54 00 10 3A */	slwi r0, r0, 2
/* 801ED828  7C 7F 02 14 */	add r3, r31, r0
/* 801ED82C  C0 23 03 EC */	lfs f1, 0x3ec(r3)
/* 801ED830  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 801ED834  C0 03 03 8C */	lfs f0, 0x38c(r3)
/* 801ED838  D0 04 00 58 */	stfs f0, 0x58(r4)
/* 801ED83C  D0 24 00 5C */	stfs f1, 0x5c(r4)
/* 801ED840  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801ED844  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801ED848  38 63 00 9C */	addi r3, r3, 0x9c
/* 801ED84C  88 1F 06 A8 */	lbz r0, 0x6a8(r31)
/* 801ED850  7C 9F 02 14 */	add r4, r31, r0
/* 801ED854  88 84 06 90 */	lbz r4, 0x690(r4)
/* 801ED858  38 A0 00 00 */	li r5, 0
/* 801ED85C  4B E4 57 D5 */	bl getItem__17dSv_player_item_cCFib
/* 801ED860  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801ED864  28 00 00 FF */	cmplwi r0, 0xff
/* 801ED868  41 82 00 30 */	beq lbl_801ED898
/* 801ED86C  88 1F 06 A8 */	lbz r0, 0x6a8(r31)
/* 801ED870  54 00 10 3A */	slwi r0, r0, 2
/* 801ED874  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 801ED878  7C 9F 02 14 */	add r4, r31, r0
/* 801ED87C  C0 24 04 4C */	lfs f1, 0x44c(r4)
/* 801ED880  C0 44 04 AC */	lfs f2, 0x4ac(r4)
/* 801ED884  C0 62 A9 A8 */	lfs f3, lit_4308(r2)
/* 801ED888  C0 82 A9 AC */	lfs f4, lit_4309(r2)
/* 801ED88C  C0 A2 A9 B0 */	lfs f5, lit_4310(r2)
/* 801ED890  4B FA 79 21 */	bl setParam__16dSelect_cursor_cFfffff
/* 801ED894  48 00 00 20 */	b lbl_801ED8B4
lbl_801ED898:
/* 801ED898  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 801ED89C  C0 22 A9 9C */	lfs f1, lit_4305(r2)
/* 801ED8A0  FC 40 08 90 */	fmr f2, f1
/* 801ED8A4  C0 62 A9 A8 */	lfs f3, lit_4308(r2)
/* 801ED8A8  C0 82 A9 AC */	lfs f4, lit_4309(r2)
/* 801ED8AC  C0 A2 A9 B0 */	lfs f5, lit_4310(r2)
/* 801ED8B0  4B FA 79 01 */	bl setParam__16dSelect_cursor_cFfffff
lbl_801ED8B4:
/* 801ED8B4  88 1F 06 B2 */	lbz r0, 0x6b2(r31)
/* 801ED8B8  98 1F 06 B0 */	stb r0, 0x6b0(r31)
/* 801ED8BC  48 00 00 64 */	b lbl_801ED920
lbl_801ED8C0:
/* 801ED8C0  A8 1F 06 6E */	lha r0, 0x66e(r31)
/* 801ED8C4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 801ED8C8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 801ED8CC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 801ED8D0  7C 43 04 2E */	lfsx f2, r3, r0
/* 801ED8D4  7C 63 02 14 */	add r3, r3, r0
/* 801ED8D8  C0 63 00 04 */	lfs f3, 4(r3)
/* 801ED8DC  C0 22 A9 D8 */	lfs f1, lit_4811(r2)
/* 801ED8E0  3C 60 80 43 */	lis r3, g_ringHIO@ha
/* 801ED8E4  38 63 FA FC */	addi r3, r3, g_ringHIO@l
/* 801ED8E8  C0 03 01 14 */	lfs f0, 0x114(r3)
/* 801ED8EC  EC 21 00 2A */	fadds f1, f1, f0
/* 801ED8F0  C0 1F 05 10 */	lfs f0, 0x510(r31)
/* 801ED8F4  EC 00 00 F2 */	fmuls f0, f0, f3
/* 801ED8F8  EC 61 00 2A */	fadds f3, f1, f0
/* 801ED8FC  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 801ED900  C0 22 A9 D4 */	lfs f1, lit_4810(r2)
/* 801ED904  C0 03 01 10 */	lfs f0, 0x110(r3)
/* 801ED908  EC 21 00 2A */	fadds f1, f1, f0
/* 801ED90C  C0 1F 05 0C */	lfs f0, 0x50c(r31)
/* 801ED910  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801ED914  EC 01 00 2A */	fadds f0, f1, f0
/* 801ED918  D0 04 00 58 */	stfs f0, 0x58(r4)
/* 801ED91C  D0 64 00 5C */	stfs f3, 0x5c(r4)
lbl_801ED920:
/* 801ED920  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801ED924  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801ED928  7C 08 03 A6 */	mtlr r0
/* 801ED92C  38 21 00 40 */	addi r1, r1, 0x40
/* 801ED930  4E 80 00 20 */	blr 
