lbl_807DAA00:
/* 807DAA00  94 21 FE 50 */	stwu r1, -0x1b0(r1)
/* 807DAA04  7C 08 02 A6 */	mflr r0
/* 807DAA08  90 01 01 B4 */	stw r0, 0x1b4(r1)
/* 807DAA0C  DB E1 01 A0 */	stfd f31, 0x1a0(r1)
/* 807DAA10  F3 E1 01 A8 */	psq_st f31, 424(r1), 0, 0 /* qr0 */
/* 807DAA14  39 61 01 A0 */	addi r11, r1, 0x1a0
/* 807DAA18  4B B8 77 A4 */	b _savegpr_21
/* 807DAA1C  7C 7D 1B 78 */	mr r29, r3
/* 807DAA20  3C 60 80 7E */	lis r3, lit_1109@ha
/* 807DAA24  3B C3 35 78 */	addi r30, r3, lit_1109@l
/* 807DAA28  3C 60 80 7E */	lis r3, lit_3882@ha
/* 807DAA2C  3B E3 29 8C */	addi r31, r3, lit_3882@l
/* 807DAA30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807DAA34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807DAA38  82 C3 5D AC */	lwz r22, 0x5dac(r3)
/* 807DAA3C  38 00 00 56 */	li r0, 0x56
/* 807DAA40  B0 01 00 08 */	sth r0, 8(r1)
/* 807DAA44  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha
/* 807DAA48  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l
/* 807DAA4C  38 81 00 08 */	addi r4, r1, 8
/* 807DAA50  4B 83 ED A8 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 807DAA54  7C 7C 1B 78 */	mr r28, r3
/* 807DAA58  80 1D 14 34 */	lwz r0, 0x1434(r29)
/* 807DAA5C  90 01 00 18 */	stw r0, 0x18(r1)
/* 807DAA60  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 807DAA64  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 807DAA68  38 81 00 18 */	addi r4, r1, 0x18
/* 807DAA6C  4B 83 ED 8C */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 807DAA70  7C 78 1B 78 */	mr r24, r3
/* 807DAA74  C3 FF 00 48 */	lfs f31, 0x48(r31)
/* 807DAA78  3B 60 00 00 */	li r27, 0
/* 807DAA7C  3B 20 00 00 */	li r25, 0
/* 807DAA80  C0 1F 02 0C */	lfs f0, 0x20c(r31)
/* 807DAA84  C0 5D 04 D0 */	lfs f2, 0x4d0(r29)
/* 807DAA88  EC 20 10 28 */	fsubs f1, f0, f2
/* 807DAA8C  C0 1F 02 10 */	lfs f0, 0x210(r31)
/* 807DAA90  C0 7D 04 D8 */	lfs f3, 0x4d8(r29)
/* 807DAA94  EC 00 18 28 */	fsubs f0, f0, f3
/* 807DAA98  EC 21 00 72 */	fmuls f1, f1, f1
/* 807DAA9C  EC 00 00 32 */	fmuls f0, f0, f0
/* 807DAAA0  EC 21 00 2A */	fadds f1, f1, f0
/* 807DAAA4  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 807DAAA8  40 81 00 0C */	ble lbl_807DAAB4
/* 807DAAAC  FC 00 08 34 */	frsqrte f0, f1
/* 807DAAB0  EC 20 00 72 */	fmuls f1, f0, f1
lbl_807DAAB4:
/* 807DAAB4  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 807DAAB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807DAABC  40 80 00 0C */	bge lbl_807DAAC8
/* 807DAAC0  3B 60 00 01 */	li r27, 1
/* 807DAAC4  48 00 00 44 */	b lbl_807DAB08
lbl_807DAAC8:
/* 807DAAC8  C0 1F 02 14 */	lfs f0, 0x214(r31)
/* 807DAACC  EC 20 10 28 */	fsubs f1, f0, f2
/* 807DAAD0  C0 1F 02 18 */	lfs f0, 0x218(r31)
/* 807DAAD4  EC 00 18 28 */	fsubs f0, f0, f3
/* 807DAAD8  EC 21 00 72 */	fmuls f1, f1, f1
/* 807DAADC  EC 00 00 32 */	fmuls f0, f0, f0
/* 807DAAE0  EC 21 00 2A */	fadds f1, f1, f0
/* 807DAAE4  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 807DAAE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807DAAEC  40 81 00 0C */	ble lbl_807DAAF8
/* 807DAAF0  FC 00 08 34 */	frsqrte f0, f1
/* 807DAAF4  EC 20 00 72 */	fmuls f1, f0, f1
lbl_807DAAF8:
/* 807DAAF8  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 807DAAFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807DAB00  40 80 00 08 */	bge lbl_807DAB08
/* 807DAB04  3B 60 00 01 */	li r27, 1
lbl_807DAB08:
/* 807DAB08  7F A3 EB 78 */	mr r3, r29
/* 807DAB0C  4B FF 82 85 */	bl e_wb_lr_wall_check__FP10e_wb_class
/* 807DAB10  7C 7A 1B 78 */	mr r26, r3
/* 807DAB14  A0 1D 06 BE */	lhz r0, 0x6be(r29)
/* 807DAB18  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807DAB1C  40 82 00 1C */	bne lbl_807DAB38
/* 807DAB20  38 00 00 07 */	li r0, 7
/* 807DAB24  B0 1D 06 90 */	sth r0, 0x690(r29)
/* 807DAB28  38 00 00 00 */	li r0, 0
/* 807DAB2C  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 807DAB30  38 60 00 00 */	li r3, 0
/* 807DAB34  48 00 0C 90 */	b lbl_807DB7C4
lbl_807DAB38:
/* 807DAB38  AA FD 04 DE */	lha r23, 0x4de(r29)
/* 807DAB3C  38 61 00 E8 */	addi r3, r1, 0xe8
/* 807DAB40  4B 89 D1 28 */	b __ct__11dBgS_LinChkFv
/* 807DAB44  A8 1D 05 B4 */	lha r0, 0x5b4(r29)
/* 807DAB48  28 00 00 15 */	cmplwi r0, 0x15
/* 807DAB4C  41 81 0A A0 */	bgt lbl_807DB5EC
/* 807DAB50  3C 60 80 7E */	lis r3, lit_8136@ha
/* 807DAB54  38 63 30 28 */	addi r3, r3, lit_8136@l
/* 807DAB58  54 00 10 3A */	slwi r0, r0, 2
/* 807DAB5C  7C 03 00 2E */	lwzx r0, r3, r0
/* 807DAB60  7C 09 03 A6 */	mtctr r0
/* 807DAB64  4E 80 04 20 */	bctr 
lbl_807DAB68:
/* 807DAB68  7F A3 EB 78 */	mr r3, r29
/* 807DAB6C  38 80 00 2A */	li r4, 0x2a
/* 807DAB70  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 807DAB74  38 A0 00 02 */	li r5, 2
/* 807DAB78  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807DAB7C  4B FF 79 CD */	bl anm_init__FP10e_wb_classifUcf
/* 807DAB80  38 00 00 01 */	li r0, 1
/* 807DAB84  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 807DAB88  A0 1D 06 BE */	lhz r0, 0x6be(r29)
/* 807DAB8C  60 00 00 20 */	ori r0, r0, 0x20
/* 807DAB90  B0 1D 06 BE */	sth r0, 0x6be(r29)
lbl_807DAB94:
/* 807DAB94  C0 1F 02 1C */	lfs f0, 0x21c(r31)
/* 807DAB98  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 807DAB9C  C0 1F 02 20 */	lfs f0, 0x220(r31)
/* 807DABA0  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 807DABA4  C0 1F 02 24 */	lfs f0, 0x224(r31)
/* 807DABA8  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 807DABAC  38 61 00 AC */	addi r3, r1, 0xac
/* 807DABB0  38 81 00 C4 */	addi r4, r1, 0xc4
/* 807DABB4  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 807DABB8  4B A8 BF 7C */	b __mi__4cXyzCFRC3Vec
/* 807DABBC  C0 21 00 AC */	lfs f1, 0xac(r1)
/* 807DABC0  D0 21 00 DC */	stfs f1, 0xdc(r1)
/* 807DABC4  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 807DABC8  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 807DABCC  C0 41 00 B4 */	lfs f2, 0xb4(r1)
/* 807DABD0  D0 41 00 E4 */	stfs f2, 0xe4(r1)
/* 807DABD4  4B A8 CA A0 */	b cM_atan2s__Fff
/* 807DABD8  B0 7D 04 DE */	sth r3, 0x4de(r29)
/* 807DABDC  38 61 00 A0 */	addi r3, r1, 0xa0
/* 807DABE0  38 81 00 C4 */	addi r4, r1, 0xc4
/* 807DABE4  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 807DABE8  4B A8 BF 4C */	b __mi__4cXyzCFRC3Vec
/* 807DABEC  C0 21 00 A0 */	lfs f1, 0xa0(r1)
/* 807DABF0  D0 21 00 DC */	stfs f1, 0xdc(r1)
/* 807DABF4  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 807DABF8  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 807DABFC  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 807DAC00  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 807DAC04  88 1D 07 A7 */	lbz r0, 0x7a7(r29)
/* 807DAC08  7C 00 07 75 */	extsb. r0, r0
/* 807DAC0C  41 82 00 30 */	beq lbl_807DAC3C
/* 807DAC10  EC 21 00 72 */	fmuls f1, f1, f1
/* 807DAC14  EC 00 00 32 */	fmuls f0, f0, f0
/* 807DAC18  EC 21 00 2A */	fadds f1, f1, f0
/* 807DAC1C  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 807DAC20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807DAC24  40 81 00 0C */	ble lbl_807DAC30
/* 807DAC28  FC 00 08 34 */	frsqrte f0, f1
/* 807DAC2C  EC 20 00 72 */	fmuls f1, f0, f1
lbl_807DAC30:
/* 807DAC30  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 807DAC34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807DAC38  40 80 09 B4 */	bge lbl_807DB5EC
lbl_807DAC3C:
/* 807DAC3C  38 00 00 02 */	li r0, 2
/* 807DAC40  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 807DAC44  38 00 00 00 */	li r0, 0
/* 807DAC48  98 1D 07 A7 */	stb r0, 0x7a7(r29)
/* 807DAC4C  7F A3 EB 78 */	mr r3, r29
/* 807DAC50  4B 83 EC 74 */	b fopAcM_setStageLayer__FPv
/* 807DAC54  38 00 00 01 */	li r0, 1
/* 807DAC58  98 1D 17 E1 */	stb r0, 0x17e1(r29)
/* 807DAC5C  48 00 09 90 */	b lbl_807DB5EC
lbl_807DAC60:
/* 807DAC60  88 1D 07 A6 */	lbz r0, 0x7a6(r29)
/* 807DAC64  7C 00 07 75 */	extsb. r0, r0
/* 807DAC68  40 82 00 3C */	bne lbl_807DACA4
/* 807DAC6C  7F A3 EB 78 */	mr r3, r29
/* 807DAC70  38 80 00 1B */	li r4, 0x1b
/* 807DAC74  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 807DAC78  38 A0 00 00 */	li r5, 0
/* 807DAC7C  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807DAC80  4B FF 78 C9 */	bl anm_init__FP10e_wb_classifUcf
/* 807DAC84  38 00 00 0B */	li r0, 0xb
/* 807DAC88  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 807DAC8C  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 807DAC90  D0 1D 16 84 */	stfs f0, 0x1684(r29)
/* 807DAC94  A0 1D 06 BE */	lhz r0, 0x6be(r29)
/* 807DAC98  60 00 00 08 */	ori r0, r0, 8
/* 807DAC9C  B0 1D 06 BE */	sth r0, 0x6be(r29)
/* 807DACA0  48 00 09 4C */	b lbl_807DB5EC
lbl_807DACA4:
/* 807DACA4  38 00 00 00 */	li r0, 0
/* 807DACA8  98 1D 07 A6 */	stb r0, 0x7a6(r29)
/* 807DACAC  7F A3 EB 78 */	mr r3, r29
/* 807DACB0  38 80 00 20 */	li r4, 0x20
/* 807DACB4  C0 3F 00 F8 */	lfs f1, 0xf8(r31)
/* 807DACB8  38 A0 00 02 */	li r5, 2
/* 807DACBC  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807DACC0  4B FF 78 89 */	bl anm_init__FP10e_wb_classifUcf
/* 807DACC4  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 807DACC8  4B A8 CC 8C */	b cM_rndF__Ff
/* 807DACCC  FC 00 08 1E */	fctiwz f0, f1
/* 807DACD0  D8 01 01 58 */	stfd f0, 0x158(r1)
/* 807DACD4  80 01 01 5C */	lwz r0, 0x15c(r1)
/* 807DACD8  7C 00 07 34 */	extsh r0, r0
/* 807DACDC  C8 3F 00 D0 */	lfd f1, 0xd0(r31)
/* 807DACE0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807DACE4  90 01 01 64 */	stw r0, 0x164(r1)
/* 807DACE8  3C 00 43 30 */	lis r0, 0x4330
/* 807DACEC  90 01 01 60 */	stw r0, 0x160(r1)
/* 807DACF0  C8 01 01 60 */	lfd f0, 0x160(r1)
/* 807DACF4  EC 00 08 28 */	fsubs f0, f0, f1
/* 807DACF8  80 7D 05 E0 */	lwz r3, 0x5e0(r29)
/* 807DACFC  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 807DAD00  38 00 00 0C */	li r0, 0xc
/* 807DAD04  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 807DAD08  A0 1D 06 BE */	lhz r0, 0x6be(r29)
/* 807DAD0C  60 00 00 10 */	ori r0, r0, 0x10
/* 807DAD10  B0 1D 06 BE */	sth r0, 0x6be(r29)
/* 807DAD14  3C 60 00 03 */	lis r3, 0x0003 /* 0x0003002A@ha */
/* 807DAD18  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0003002A@l */
/* 807DAD1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 807DAD20  38 7D 05 EC */	addi r3, r29, 0x5ec
/* 807DAD24  38 81 00 24 */	addi r4, r1, 0x24
/* 807DAD28  38 A0 00 00 */	li r5, 0
/* 807DAD2C  38 C0 FF FF */	li r6, -1
/* 807DAD30  81 9D 05 EC */	lwz r12, 0x5ec(r29)
/* 807DAD34  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807DAD38  7D 89 03 A6 */	mtctr r12
/* 807DAD3C  4E 80 04 21 */	bctrl 
/* 807DAD40  48 00 08 AC */	b lbl_807DB5EC
lbl_807DAD44:
/* 807DAD44  80 7D 05 E0 */	lwz r3, 0x5e0(r29)
/* 807DAD48  38 63 00 0C */	addi r3, r3, 0xc
/* 807DAD4C  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 807DAD50  4B B4 D6 DC */	b checkPass__12J3DFrameCtrlFf
/* 807DAD54  2C 03 00 00 */	cmpwi r3, 0
/* 807DAD58  41 82 00 1C */	beq lbl_807DAD74
/* 807DAD5C  88 1D 14 2D */	lbz r0, 0x142d(r29)
/* 807DAD60  60 00 00 02 */	ori r0, r0, 2
/* 807DAD64  98 1D 14 2D */	stb r0, 0x142d(r29)
/* 807DAD68  38 00 00 0A */	li r0, 0xa
/* 807DAD6C  98 1D 14 2C */	stb r0, 0x142c(r29)
/* 807DAD70  48 00 00 28 */	b lbl_807DAD98
lbl_807DAD74:
/* 807DAD74  80 7D 05 E0 */	lwz r3, 0x5e0(r29)
/* 807DAD78  38 63 00 0C */	addi r3, r3, 0xc
/* 807DAD7C  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 807DAD80  4B B4 D6 AC */	b checkPass__12J3DFrameCtrlFf
/* 807DAD84  2C 03 00 00 */	cmpwi r3, 0
/* 807DAD88  41 82 00 10 */	beq lbl_807DAD98
/* 807DAD8C  88 1D 14 2D */	lbz r0, 0x142d(r29)
/* 807DAD90  60 00 00 03 */	ori r0, r0, 3
/* 807DAD94  98 1D 14 2D */	stb r0, 0x142d(r29)
lbl_807DAD98:
/* 807DAD98  80 7D 05 E0 */	lwz r3, 0x5e0(r29)
/* 807DAD9C  38 80 00 01 */	li r4, 1
/* 807DADA0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807DADA4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807DADA8  40 82 00 18 */	bne lbl_807DADC0
/* 807DADAC  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 807DADB0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807DADB4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807DADB8  41 82 00 08 */	beq lbl_807DADC0
/* 807DADBC  38 80 00 00 */	li r4, 0
lbl_807DADC0:
/* 807DADC0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807DADC4  41 82 08 28 */	beq lbl_807DB5EC
/* 807DADC8  7F A3 EB 78 */	mr r3, r29
/* 807DADCC  38 80 00 20 */	li r4, 0x20
/* 807DADD0  C0 3F 00 F8 */	lfs f1, 0xf8(r31)
/* 807DADD4  38 A0 00 02 */	li r5, 2
/* 807DADD8  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807DADDC  4B FF 77 6D */	bl anm_init__FP10e_wb_classifUcf
/* 807DADE0  38 00 00 0C */	li r0, 0xc
/* 807DADE4  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 807DADE8  A0 1D 06 BE */	lhz r0, 0x6be(r29)
/* 807DADEC  60 00 00 10 */	ori r0, r0, 0x10
/* 807DADF0  B0 1D 06 BE */	sth r0, 0x6be(r29)
/* 807DADF4  3C 60 00 03 */	lis r3, 0x0003 /* 0x0003002A@ha */
/* 807DADF8  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0003002A@l */
/* 807DADFC  90 01 00 20 */	stw r0, 0x20(r1)
/* 807DAE00  38 7D 05 EC */	addi r3, r29, 0x5ec
/* 807DAE04  38 81 00 20 */	addi r4, r1, 0x20
/* 807DAE08  38 A0 00 00 */	li r5, 0
/* 807DAE0C  38 C0 FF FF */	li r6, -1
/* 807DAE10  81 9D 05 EC */	lwz r12, 0x5ec(r29)
/* 807DAE14  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807DAE18  7D 89 03 A6 */	mtctr r12
/* 807DAE1C  4E 80 04 21 */	bctrl 
/* 807DAE20  48 00 07 CC */	b lbl_807DB5EC
lbl_807DAE24:
/* 807DAE24  38 00 00 0D */	li r0, 0xd
/* 807DAE28  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
lbl_807DAE2C:
/* 807DAE2C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807DAE30  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 807DAE34  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 807DAE38  D0 21 00 E0 */	stfs f1, 0xe0(r1)
/* 807DAE3C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 807DAE40  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 807DAE44  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 807DAE48  EC 01 10 2A */	fadds f0, f1, f2
/* 807DAE4C  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 807DAE50  C0 1C 05 38 */	lfs f0, 0x538(r28)
/* 807DAE54  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 807DAE58  C0 3C 05 3C */	lfs f1, 0x53c(r28)
/* 807DAE5C  D0 21 00 D4 */	stfs f1, 0xd4(r1)
/* 807DAE60  C0 1C 05 40 */	lfs f0, 0x540(r28)
/* 807DAE64  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 807DAE68  EC 01 10 2A */	fadds f0, f1, f2
/* 807DAE6C  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 807DAE70  38 61 00 E8 */	addi r3, r1, 0xe8
/* 807DAE74  38 81 00 DC */	addi r4, r1, 0xdc
/* 807DAE78  38 A1 00 D0 */	addi r5, r1, 0xd0
/* 807DAE7C  7F A6 EB 78 */	mr r6, r29
/* 807DAE80  4B 89 CE E4 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 807DAE84  3A A0 00 00 */	li r21, 0
/* 807DAE88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807DAE8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807DAE90  38 63 0F 38 */	addi r3, r3, 0xf38
/* 807DAE94  38 81 00 E8 */	addi r4, r1, 0xe8
/* 807DAE98  4B 89 95 1C */	b LineCross__4cBgSFP11cBgS_LinChk
/* 807DAE9C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807DAEA0  41 82 02 8C */	beq lbl_807DB12C
/* 807DAEA4  38 61 00 94 */	addi r3, r1, 0x94
/* 807DAEA8  38 9D 05 D0 */	addi r4, r29, 0x5d0
/* 807DAEAC  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 807DAEB0  4B A8 BC 84 */	b __mi__4cXyzCFRC3Vec
/* 807DAEB4  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 807DAEB8  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 807DAEBC  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 807DAEC0  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 807DAEC4  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 807DAEC8  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 807DAECC  38 61 00 88 */	addi r3, r1, 0x88
/* 807DAED0  38 96 05 38 */	addi r4, r22, 0x538
/* 807DAED4  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 807DAED8  4B A8 BC 5C */	b __mi__4cXyzCFRC3Vec
/* 807DAEDC  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 807DAEE0  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 807DAEE4  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 807DAEE8  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 807DAEEC  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 807DAEF0  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 807DAEF4  38 61 00 B8 */	addi r3, r1, 0xb8
/* 807DAEF8  4B B6 C2 40 */	b PSVECSquareMag
/* 807DAEFC  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 807DAF00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807DAF04  40 81 00 58 */	ble lbl_807DAF5C
/* 807DAF08  FC 00 08 34 */	frsqrte f0, f1
/* 807DAF0C  C8 9F 00 90 */	lfd f4, 0x90(r31)
/* 807DAF10  FC 44 00 32 */	fmul f2, f4, f0
/* 807DAF14  C8 7F 00 98 */	lfd f3, 0x98(r31)
/* 807DAF18  FC 00 00 32 */	fmul f0, f0, f0
/* 807DAF1C  FC 01 00 32 */	fmul f0, f1, f0
/* 807DAF20  FC 03 00 28 */	fsub f0, f3, f0
/* 807DAF24  FC 02 00 32 */	fmul f0, f2, f0
/* 807DAF28  FC 44 00 32 */	fmul f2, f4, f0
/* 807DAF2C  FC 00 00 32 */	fmul f0, f0, f0
/* 807DAF30  FC 01 00 32 */	fmul f0, f1, f0
/* 807DAF34  FC 03 00 28 */	fsub f0, f3, f0
/* 807DAF38  FC 02 00 32 */	fmul f0, f2, f0
/* 807DAF3C  FC 44 00 32 */	fmul f2, f4, f0
/* 807DAF40  FC 00 00 32 */	fmul f0, f0, f0
/* 807DAF44  FC 01 00 32 */	fmul f0, f1, f0
/* 807DAF48  FC 03 00 28 */	fsub f0, f3, f0
/* 807DAF4C  FC 02 00 32 */	fmul f0, f2, f0
/* 807DAF50  FF E1 00 32 */	fmul f31, f1, f0
/* 807DAF54  FF E0 F8 18 */	frsp f31, f31
/* 807DAF58  48 00 00 90 */	b lbl_807DAFE8
lbl_807DAF5C:
/* 807DAF5C  C8 1F 00 A0 */	lfd f0, 0xa0(r31)
/* 807DAF60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807DAF64  40 80 00 10 */	bge lbl_807DAF74
/* 807DAF68  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807DAF6C  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 807DAF70  48 00 00 78 */	b lbl_807DAFE8
lbl_807DAF74:
/* 807DAF74  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 807DAF78  80 81 00 14 */	lwz r4, 0x14(r1)
/* 807DAF7C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807DAF80  3C 00 7F 80 */	lis r0, 0x7f80
/* 807DAF84  7C 03 00 00 */	cmpw r3, r0
/* 807DAF88  41 82 00 14 */	beq lbl_807DAF9C
/* 807DAF8C  40 80 00 40 */	bge lbl_807DAFCC
/* 807DAF90  2C 03 00 00 */	cmpwi r3, 0
/* 807DAF94  41 82 00 20 */	beq lbl_807DAFB4
/* 807DAF98  48 00 00 34 */	b lbl_807DAFCC
lbl_807DAF9C:
/* 807DAF9C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807DAFA0  41 82 00 0C */	beq lbl_807DAFAC
/* 807DAFA4  38 00 00 01 */	li r0, 1
/* 807DAFA8  48 00 00 28 */	b lbl_807DAFD0
lbl_807DAFAC:
/* 807DAFAC  38 00 00 02 */	li r0, 2
/* 807DAFB0  48 00 00 20 */	b lbl_807DAFD0
lbl_807DAFB4:
/* 807DAFB4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807DAFB8  41 82 00 0C */	beq lbl_807DAFC4
/* 807DAFBC  38 00 00 05 */	li r0, 5
/* 807DAFC0  48 00 00 10 */	b lbl_807DAFD0
lbl_807DAFC4:
/* 807DAFC4  38 00 00 03 */	li r0, 3
/* 807DAFC8  48 00 00 08 */	b lbl_807DAFD0
lbl_807DAFCC:
/* 807DAFCC  38 00 00 04 */	li r0, 4
lbl_807DAFD0:
/* 807DAFD0  2C 00 00 01 */	cmpwi r0, 1
/* 807DAFD4  40 82 00 10 */	bne lbl_807DAFE4
/* 807DAFD8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807DAFDC  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 807DAFE0  48 00 00 08 */	b lbl_807DAFE8
lbl_807DAFE4:
/* 807DAFE4  FF E0 08 90 */	fmr f31, f1
lbl_807DAFE8:
/* 807DAFE8  38 61 00 DC */	addi r3, r1, 0xdc
/* 807DAFEC  4B B6 C1 4C */	b PSVECSquareMag
/* 807DAFF0  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 807DAFF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807DAFF8  40 81 00 58 */	ble lbl_807DB050
/* 807DAFFC  FC 00 08 34 */	frsqrte f0, f1
/* 807DB000  C8 9F 00 90 */	lfd f4, 0x90(r31)
/* 807DB004  FC 44 00 32 */	fmul f2, f4, f0
/* 807DB008  C8 7F 00 98 */	lfd f3, 0x98(r31)
/* 807DB00C  FC 00 00 32 */	fmul f0, f0, f0
/* 807DB010  FC 01 00 32 */	fmul f0, f1, f0
/* 807DB014  FC 03 00 28 */	fsub f0, f3, f0
/* 807DB018  FC 02 00 32 */	fmul f0, f2, f0
/* 807DB01C  FC 44 00 32 */	fmul f2, f4, f0
/* 807DB020  FC 00 00 32 */	fmul f0, f0, f0
/* 807DB024  FC 01 00 32 */	fmul f0, f1, f0
/* 807DB028  FC 03 00 28 */	fsub f0, f3, f0
/* 807DB02C  FC 02 00 32 */	fmul f0, f2, f0
/* 807DB030  FC 44 00 32 */	fmul f2, f4, f0
/* 807DB034  FC 00 00 32 */	fmul f0, f0, f0
/* 807DB038  FC 01 00 32 */	fmul f0, f1, f0
/* 807DB03C  FC 03 00 28 */	fsub f0, f3, f0
/* 807DB040  FC 02 00 32 */	fmul f0, f2, f0
/* 807DB044  FC 21 00 32 */	fmul f1, f1, f0
/* 807DB048  FC 20 08 18 */	frsp f1, f1
/* 807DB04C  48 00 00 88 */	b lbl_807DB0D4
lbl_807DB050:
/* 807DB050  C8 1F 00 A0 */	lfd f0, 0xa0(r31)
/* 807DB054  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807DB058  40 80 00 10 */	bge lbl_807DB068
/* 807DB05C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807DB060  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 807DB064  48 00 00 70 */	b lbl_807DB0D4
lbl_807DB068:
/* 807DB068  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 807DB06C  80 81 00 10 */	lwz r4, 0x10(r1)
/* 807DB070  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807DB074  3C 00 7F 80 */	lis r0, 0x7f80
/* 807DB078  7C 03 00 00 */	cmpw r3, r0
/* 807DB07C  41 82 00 14 */	beq lbl_807DB090
/* 807DB080  40 80 00 40 */	bge lbl_807DB0C0
/* 807DB084  2C 03 00 00 */	cmpwi r3, 0
/* 807DB088  41 82 00 20 */	beq lbl_807DB0A8
/* 807DB08C  48 00 00 34 */	b lbl_807DB0C0
lbl_807DB090:
/* 807DB090  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807DB094  41 82 00 0C */	beq lbl_807DB0A0
/* 807DB098  38 00 00 01 */	li r0, 1
/* 807DB09C  48 00 00 28 */	b lbl_807DB0C4
lbl_807DB0A0:
/* 807DB0A0  38 00 00 02 */	li r0, 2
/* 807DB0A4  48 00 00 20 */	b lbl_807DB0C4
lbl_807DB0A8:
/* 807DB0A8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807DB0AC  41 82 00 0C */	beq lbl_807DB0B8
/* 807DB0B0  38 00 00 05 */	li r0, 5
/* 807DB0B4  48 00 00 10 */	b lbl_807DB0C4
lbl_807DB0B8:
/* 807DB0B8  38 00 00 03 */	li r0, 3
/* 807DB0BC  48 00 00 08 */	b lbl_807DB0C4
lbl_807DB0C0:
/* 807DB0C0  38 00 00 04 */	li r0, 4
lbl_807DB0C4:
/* 807DB0C4  2C 00 00 01 */	cmpwi r0, 1
/* 807DB0C8  40 82 00 0C */	bne lbl_807DB0D4
/* 807DB0CC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807DB0D0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_807DB0D4:
/* 807DB0D4  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 807DB0D8  40 80 00 24 */	bge lbl_807DB0FC
/* 807DB0DC  C0 1D 05 D0 */	lfs f0, 0x5d0(r29)
/* 807DB0E0  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 807DB0E4  C0 1D 05 D4 */	lfs f0, 0x5d4(r29)
/* 807DB0E8  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 807DB0EC  C0 1D 05 D8 */	lfs f0, 0x5d8(r29)
/* 807DB0F0  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 807DB0F4  3A A0 00 01 */	li r21, 1
/* 807DB0F8  48 00 00 74 */	b lbl_807DB16C
lbl_807DB0FC:
/* 807DB0FC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807DB100  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807DB104  80 63 00 00 */	lwz r3, 0(r3)
/* 807DB108  A8 96 04 E6 */	lha r4, 0x4e6(r22)
/* 807DB10C  4B 83 12 D0 */	b mDoMtx_YrotS__FPA4_fs
/* 807DB110  C0 16 05 38 */	lfs f0, 0x538(r22)
/* 807DB114  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 807DB118  C0 16 05 3C */	lfs f0, 0x53c(r22)
/* 807DB11C  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 807DB120  C0 16 05 40 */	lfs f0, 0x540(r22)
/* 807DB124  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 807DB128  48 00 00 44 */	b lbl_807DB16C
lbl_807DB12C:
/* 807DB12C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807DB130  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807DB134  80 63 00 00 */	lwz r3, 0(r3)
/* 807DB138  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 807DB13C  4B 83 12 A0 */	b mDoMtx_YrotS__FPA4_fs
/* 807DB140  C0 3C 04 D0 */	lfs f1, 0x4d0(r28)
/* 807DB144  D0 21 00 D0 */	stfs f1, 0xd0(r1)
/* 807DB148  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 807DB14C  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 807DB150  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 807DB154  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 807DB158  D0 3D 05 D0 */	stfs f1, 0x5d0(r29)
/* 807DB15C  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 807DB160  D0 1D 05 D4 */	stfs f0, 0x5d4(r29)
/* 807DB164  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 807DB168  D0 1D 05 D8 */	stfs f0, 0x5d8(r29)
lbl_807DB16C:
/* 807DB16C  7E A0 07 75 */	extsb. r0, r21
/* 807DB170  40 82 02 48 */	bne lbl_807DB3B8
/* 807DB174  88 1E 02 98 */	lbz r0, 0x298(r30)
/* 807DB178  7C 00 07 75 */	extsb. r0, r0
/* 807DB17C  40 82 00 B8 */	bne lbl_807DB234
/* 807DB180  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 807DB184  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 807DB188  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 807DB18C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 807DB190  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 807DB194  D0 3E 02 B4 */	stfs f1, 0x2b4(r30)
/* 807DB198  38 7E 02 B4 */	addi r3, r30, 0x2b4
/* 807DB19C  D0 03 00 04 */	stfs f0, 4(r3)
/* 807DB1A0  D0 03 00 08 */	stfs f0, 8(r3)
/* 807DB1A4  3C 80 80 7D */	lis r4, __dt__4cXyzFv@ha
/* 807DB1A8  38 84 2B 48 */	addi r4, r4, __dt__4cXyzFv@l
/* 807DB1AC  38 BE 02 8C */	addi r5, r30, 0x28c
/* 807DB1B0  4B FF 72 69 */	bl __register_global_object
/* 807DB1B4  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 807DB1B8  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 807DB1BC  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 807DB1C0  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 807DB1C4  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 807DB1C8  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 807DB1CC  38 7E 02 B4 */	addi r3, r30, 0x2b4
/* 807DB1D0  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 807DB1D4  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 807DB1D8  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 807DB1DC  38 63 00 0C */	addi r3, r3, 0xc
/* 807DB1E0  3C 80 80 7D */	lis r4, __dt__4cXyzFv@ha
/* 807DB1E4  38 84 2B 48 */	addi r4, r4, __dt__4cXyzFv@l
/* 807DB1E8  38 BE 02 9C */	addi r5, r30, 0x29c
/* 807DB1EC  4B FF 72 2D */	bl __register_global_object
/* 807DB1F0  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 807DB1F4  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 807DB1F8  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 807DB1FC  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 807DB200  C0 1F 02 28 */	lfs f0, 0x228(r31)
/* 807DB204  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 807DB208  38 7E 02 B4 */	addi r3, r30, 0x2b4
/* 807DB20C  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 807DB210  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 807DB214  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 807DB218  38 63 00 18 */	addi r3, r3, 0x18
/* 807DB21C  3C 80 80 7D */	lis r4, __dt__4cXyzFv@ha
/* 807DB220  38 84 2B 48 */	addi r4, r4, __dt__4cXyzFv@l
/* 807DB224  38 BE 02 A8 */	addi r5, r30, 0x2a8
/* 807DB228  4B FF 71 F1 */	bl __register_global_object
/* 807DB22C  38 00 00 01 */	li r0, 1
/* 807DB230  98 1E 02 98 */	stb r0, 0x298(r30)
lbl_807DB234:
/* 807DB234  88 1E 02 E4 */	lbz r0, 0x2e4(r30)
/* 807DB238  7C 00 07 75 */	extsb. r0, r0
/* 807DB23C  40 82 00 B8 */	bne lbl_807DB2F4
/* 807DB240  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 807DB244  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 807DB248  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 807DB24C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 807DB250  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 807DB254  D0 3E 03 00 */	stfs f1, 0x300(r30)
/* 807DB258  38 7E 03 00 */	addi r3, r30, 0x300
/* 807DB25C  D0 03 00 04 */	stfs f0, 4(r3)
/* 807DB260  D0 03 00 08 */	stfs f0, 8(r3)
/* 807DB264  3C 80 80 7D */	lis r4, __dt__4cXyzFv@ha
/* 807DB268  38 84 2B 48 */	addi r4, r4, __dt__4cXyzFv@l
/* 807DB26C  38 BE 02 D8 */	addi r5, r30, 0x2d8
/* 807DB270  4B FF 71 A9 */	bl __register_global_object
/* 807DB274  C0 5F 02 2C */	lfs f2, 0x22c(r31)
/* 807DB278  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 807DB27C  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 807DB280  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 807DB284  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 807DB288  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 807DB28C  38 7E 03 00 */	addi r3, r30, 0x300
/* 807DB290  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 807DB294  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 807DB298  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 807DB29C  38 63 00 0C */	addi r3, r3, 0xc
/* 807DB2A0  3C 80 80 7D */	lis r4, __dt__4cXyzFv@ha
/* 807DB2A4  38 84 2B 48 */	addi r4, r4, __dt__4cXyzFv@l
/* 807DB2A8  38 BE 02 E8 */	addi r5, r30, 0x2e8
/* 807DB2AC  4B FF 71 6D */	bl __register_global_object
/* 807DB2B0  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 807DB2B4  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 807DB2B8  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 807DB2BC  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 807DB2C0  C0 1F 02 28 */	lfs f0, 0x228(r31)
/* 807DB2C4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807DB2C8  38 7E 03 00 */	addi r3, r30, 0x300
/* 807DB2CC  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 807DB2D0  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 807DB2D4  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 807DB2D8  38 63 00 18 */	addi r3, r3, 0x18
/* 807DB2DC  3C 80 80 7D */	lis r4, __dt__4cXyzFv@ha
/* 807DB2E0  38 84 2B 48 */	addi r4, r4, __dt__4cXyzFv@l
/* 807DB2E4  38 BE 02 F4 */	addi r5, r30, 0x2f4
/* 807DB2E8  4B FF 71 31 */	bl __register_global_object
/* 807DB2EC  38 00 00 01 */	li r0, 1
/* 807DB2F0  98 1E 02 E4 */	stb r0, 0x2e4(r30)
lbl_807DB2F4:
/* 807DB2F4  7F 60 07 75 */	extsb. r0, r27
/* 807DB2F8  40 82 00 0C */	bne lbl_807DB304
/* 807DB2FC  2C 1A 00 00 */	cmpwi r26, 0
/* 807DB300  41 82 00 34 */	beq lbl_807DB334
lbl_807DB304:
/* 807DB304  88 7D 05 BD */	lbz r3, 0x5bd(r29)
/* 807DB308  38 03 FF FF */	addi r0, r3, -1
/* 807DB30C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 807DB310  38 7E 03 00 */	addi r3, r30, 0x300
/* 807DB314  7C 63 02 14 */	add r3, r3, r0
/* 807DB318  C0 03 00 00 */	lfs f0, 0(r3)
/* 807DB31C  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 807DB320  C0 03 00 04 */	lfs f0, 4(r3)
/* 807DB324  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 807DB328  C0 03 00 08 */	lfs f0, 8(r3)
/* 807DB32C  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 807DB330  48 00 00 98 */	b lbl_807DB3C8
lbl_807DB334:
/* 807DB334  88 7D 05 BD */	lbz r3, 0x5bd(r29)
/* 807DB338  38 03 FF FF */	addi r0, r3, -1
/* 807DB33C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 807DB340  38 7E 02 B4 */	addi r3, r30, 0x2b4
/* 807DB344  7C 63 02 14 */	add r3, r3, r0
/* 807DB348  C0 43 00 00 */	lfs f2, 0(r3)
/* 807DB34C  D0 41 00 DC */	stfs f2, 0xdc(r1)
/* 807DB350  C0 03 00 04 */	lfs f0, 4(r3)
/* 807DB354  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 807DB358  C0 23 00 08 */	lfs f1, 8(r3)
/* 807DB35C  D0 21 00 E4 */	stfs f1, 0xe4(r1)
/* 807DB360  C0 1D 06 C4 */	lfs f0, 0x6c4(r29)
/* 807DB364  EC 02 00 2A */	fadds f0, f2, f0
/* 807DB368  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 807DB36C  C0 1D 07 A8 */	lfs f0, 0x7a8(r29)
/* 807DB370  EC 01 00 2A */	fadds f0, f1, f0
/* 807DB374  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 807DB378  A8 1D 06 8E */	lha r0, 0x68e(r29)
/* 807DB37C  54 00 06 BF */	clrlwi. r0, r0, 0x1a
/* 807DB380  40 82 00 48 */	bne lbl_807DB3C8
/* 807DB384  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 807DB388  4B A8 C5 CC */	b cM_rndF__Ff
/* 807DB38C  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 807DB390  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807DB394  40 80 00 34 */	bge lbl_807DB3C8
/* 807DB398  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 807DB39C  4B A8 C5 B8 */	b cM_rndF__Ff
/* 807DB3A0  FC 00 08 50 */	fneg f0, f1
/* 807DB3A4  D0 1D 07 A8 */	stfs f0, 0x7a8(r29)
/* 807DB3A8  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 807DB3AC  4B A8 C5 E0 */	b cM_rndFX__Ff
/* 807DB3B0  D0 3D 06 C4 */	stfs f1, 0x6c4(r29)
/* 807DB3B4  48 00 00 14 */	b lbl_807DB3C8
lbl_807DB3B8:
/* 807DB3B8  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 807DB3BC  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 807DB3C0  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 807DB3C4  D0 01 00 E4 */	stfs f0, 0xe4(r1)
lbl_807DB3C8:
/* 807DB3C8  38 61 00 DC */	addi r3, r1, 0xdc
/* 807DB3CC  38 9D 05 C4 */	addi r4, r29, 0x5c4
/* 807DB3D0  4B A9 5B 1C */	b MtxPosition__FP4cXyzP4cXyz
/* 807DB3D4  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 807DB3D8  38 81 00 D0 */	addi r4, r1, 0xd0
/* 807DB3DC  7C 65 1B 78 */	mr r5, r3
/* 807DB3E0  4B B6 BC B0 */	b PSVECAdd
/* 807DB3E4  38 61 00 34 */	addi r3, r1, 0x34
/* 807DB3E8  38 9D 05 C4 */	addi r4, r29, 0x5c4
/* 807DB3EC  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 807DB3F0  4B A8 B7 44 */	b __mi__4cXyzCFRC3Vec
/* 807DB3F4  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 807DB3F8  D0 21 00 DC */	stfs f1, 0xdc(r1)
/* 807DB3FC  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 807DB400  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 807DB404  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 807DB408  D0 41 00 E4 */	stfs f2, 0xe4(r1)
/* 807DB40C  EC 61 00 72 */	fmuls f3, f1, f1
/* 807DB410  EC 02 00 B2 */	fmuls f0, f2, f2
/* 807DB414  EC 63 00 2A */	fadds f3, f3, f0
/* 807DB418  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 807DB41C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 807DB420  40 81 00 0C */	ble lbl_807DB42C
/* 807DB424  FC 00 18 34 */	frsqrte f0, f3
/* 807DB428  EC 60 00 F2 */	fmuls f3, f0, f3
lbl_807DB42C:
/* 807DB42C  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 807DB430  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 807DB434  40 80 00 10 */	bge lbl_807DB444
/* 807DB438  38 7E 00 50 */	addi r3, r30, 0x50
/* 807DB43C  C3 E3 00 1C */	lfs f31, 0x1c(r3)
/* 807DB440  48 00 00 30 */	b lbl_807DB470
lbl_807DB444:
/* 807DB444  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 807DB448  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 807DB44C  40 81 00 1C */	ble lbl_807DB468
/* 807DB450  88 1D 05 BF */	lbz r0, 0x5bf(r29)
/* 807DB454  28 00 00 00 */	cmplwi r0, 0
/* 807DB458  41 82 00 10 */	beq lbl_807DB468
/* 807DB45C  38 7E 00 50 */	addi r3, r30, 0x50
/* 807DB460  C3 E3 00 24 */	lfs f31, 0x24(r3)
/* 807DB464  48 00 00 0C */	b lbl_807DB470
lbl_807DB468:
/* 807DB468  38 7E 00 50 */	addi r3, r30, 0x50
/* 807DB46C  C3 E3 00 20 */	lfs f31, 0x20(r3)
lbl_807DB470:
/* 807DB470  A0 1D 06 BE */	lhz r0, 0x6be(r29)
/* 807DB474  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 807DB478  40 82 00 0C */	bne lbl_807DB484
/* 807DB47C  C3 FF 00 50 */	lfs f31, 0x50(r31)
/* 807DB480  3B 20 00 01 */	li r25, 1
lbl_807DB484:
/* 807DB484  3A A0 02 00 */	li r21, 0x200
/* 807DB488  4B A8 C1 EC */	b cM_atan2s__Fff
/* 807DB48C  B0 7D 05 DC */	sth r3, 0x5dc(r29)
/* 807DB490  28 18 00 00 */	cmplwi r24, 0
/* 807DB494  41 82 00 50 */	beq lbl_807DB4E4
/* 807DB498  80 18 06 7C */	lwz r0, 0x67c(r24)
/* 807DB49C  2C 00 00 27 */	cmpwi r0, 0x27
/* 807DB4A0  40 82 00 44 */	bne lbl_807DB4E4
/* 807DB4A4  A8 1D 06 8E */	lha r0, 0x68e(r29)
/* 807DB4A8  1C 00 03 E8 */	mulli r0, r0, 0x3e8
/* 807DB4AC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807DB4B0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 807DB4B4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 807DB4B8  7C 23 04 2E */	lfsx f1, r3, r0
/* 807DB4BC  A8 7D 05 DC */	lha r3, 0x5dc(r29)
/* 807DB4C0  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 807DB4C4  EC 00 00 72 */	fmuls f0, f0, f1
/* 807DB4C8  FC 00 00 1E */	fctiwz f0, f0
/* 807DB4CC  D8 01 01 60 */	stfd f0, 0x160(r1)
/* 807DB4D0  80 01 01 64 */	lwz r0, 0x164(r1)
/* 807DB4D4  7C 03 02 14 */	add r0, r3, r0
/* 807DB4D8  B0 1D 05 DC */	sth r0, 0x5dc(r29)
/* 807DB4DC  3A A0 04 00 */	li r21, 0x400
/* 807DB4E0  48 00 00 20 */	b lbl_807DB500
lbl_807DB4E4:
/* 807DB4E4  2C 1A 00 00 */	cmpwi r26, 0
/* 807DB4E8  41 82 00 18 */	beq lbl_807DB500
/* 807DB4EC  A8 7D 05 DC */	lha r3, 0x5dc(r29)
/* 807DB4F0  1C 1A E0 C0 */	mulli r0, r26, -8000
/* 807DB4F4  7C 00 07 34 */	extsh r0, r0
/* 807DB4F8  7C 03 02 14 */	add r0, r3, r0
/* 807DB4FC  B0 1D 05 DC */	sth r0, 0x5dc(r29)
lbl_807DB500:
/* 807DB500  38 7D 04 DE */	addi r3, r29, 0x4de
/* 807DB504  A8 9D 05 DC */	lha r4, 0x5dc(r29)
/* 807DB508  38 A0 00 08 */	li r5, 8
/* 807DB50C  7E A6 AB 78 */	mr r6, r21
/* 807DB510  4B A9 50 F8 */	b cLib_addCalcAngleS2__FPssss
/* 807DB514  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 807DB518  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 807DB51C  EC 21 00 24 */	fdivs f1, f1, f0
/* 807DB520  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 807DB524  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807DB528  40 80 00 08 */	bge lbl_807DB530
/* 807DB52C  FC 20 00 90 */	fmr f1, f0
lbl_807DB530:
/* 807DB530  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 807DB534  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807DB538  40 81 00 08 */	ble lbl_807DB540
/* 807DB53C  FC 20 00 90 */	fmr f1, f0
lbl_807DB540:
/* 807DB540  80 7D 05 E0 */	lwz r3, 0x5e0(r29)
/* 807DB544  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 807DB548  38 00 00 01 */	li r0, 1
/* 807DB54C  98 1D 14 2C */	stb r0, 0x142c(r29)
/* 807DB550  98 1D 06 BD */	stb r0, 0x6bd(r29)
/* 807DB554  48 00 00 98 */	b lbl_807DB5EC
lbl_807DB558:
/* 807DB558  7F A3 EB 78 */	mr r3, r29
/* 807DB55C  38 80 00 25 */	li r4, 0x25
/* 807DB560  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 807DB564  38 A0 00 02 */	li r5, 2
/* 807DB568  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807DB56C  4B FF 6F DD */	bl anm_init__FP10e_wb_classifUcf
/* 807DB570  38 00 00 15 */	li r0, 0x15
/* 807DB574  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
lbl_807DB578:
/* 807DB578  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 807DB57C  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 807DB580  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807DB584  40 81 00 3C */	ble lbl_807DB5C0
/* 807DB588  38 00 00 02 */	li r0, 2
/* 807DB58C  98 1D 14 2C */	stb r0, 0x142c(r29)
/* 807DB590  3C 60 00 03 */	lis r3, 0x0003 /* 0x00030029@ha */
/* 807DB594  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00030029@l */
/* 807DB598  90 01 00 1C */	stw r0, 0x1c(r1)
/* 807DB59C  38 7D 05 EC */	addi r3, r29, 0x5ec
/* 807DB5A0  38 81 00 1C */	addi r4, r1, 0x1c
/* 807DB5A4  38 A0 00 00 */	li r5, 0
/* 807DB5A8  38 C0 FF FF */	li r6, -1
/* 807DB5AC  81 9D 05 EC */	lwz r12, 0x5ec(r29)
/* 807DB5B0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 807DB5B4  7D 89 03 A6 */	mtctr r12
/* 807DB5B8  4E 80 04 21 */	bctrl 
/* 807DB5BC  48 00 00 30 */	b lbl_807DB5EC
lbl_807DB5C0:
/* 807DB5C0  7F A3 EB 78 */	mr r3, r29
/* 807DB5C4  38 80 00 2A */	li r4, 0x2a
/* 807DB5C8  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 807DB5CC  38 A0 00 02 */	li r5, 2
/* 807DB5D0  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807DB5D4  4B FF 6F 75 */	bl anm_init__FP10e_wb_classifUcf
/* 807DB5D8  38 00 00 16 */	li r0, 0x16
/* 807DB5DC  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 807DB5E0  A0 1D 06 BE */	lhz r0, 0x6be(r29)
/* 807DB5E4  60 00 00 20 */	ori r0, r0, 0x20
/* 807DB5E8  B0 1D 06 BE */	sth r0, 0x6be(r29)
lbl_807DB5EC:
/* 807DB5EC  A8 1D 05 B4 */	lha r0, 0x5b4(r29)
/* 807DB5F0  2C 00 00 14 */	cmpwi r0, 0x14
/* 807DB5F4  40 80 01 88 */	bge lbl_807DB77C
/* 807DB5F8  C0 3F 02 30 */	lfs f1, 0x230(r31)
/* 807DB5FC  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 807DB600  EC 61 00 28 */	fsubs f3, f1, f0
/* 807DB604  D0 61 00 DC */	stfs f3, 0xdc(r1)
/* 807DB608  C0 3F 02 34 */	lfs f1, 0x234(r31)
/* 807DB60C  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 807DB610  EC 41 00 28 */	fsubs f2, f1, f0
/* 807DB614  D0 41 00 E4 */	stfs f2, 0xe4(r1)
/* 807DB618  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 807DB61C  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 807DB620  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807DB624  41 80 00 30 */	blt lbl_807DB654
/* 807DB628  EC 23 00 F2 */	fmuls f1, f3, f3
/* 807DB62C  EC 02 00 B2 */	fmuls f0, f2, f2
/* 807DB630  EC 21 00 2A */	fadds f1, f1, f0
/* 807DB634  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 807DB638  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807DB63C  40 81 00 0C */	ble lbl_807DB648
/* 807DB640  FC 00 08 34 */	frsqrte f0, f1
/* 807DB644  EC 20 00 72 */	fmuls f1, f0, f1
lbl_807DB648:
/* 807DB648  C0 1F 01 0C */	lfs f0, 0x10c(r31)
/* 807DB64C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807DB650  40 80 01 2C */	bge lbl_807DB77C
lbl_807DB654:
/* 807DB654  38 61 00 28 */	addi r3, r1, 0x28
/* 807DB658  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 807DB65C  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 807DB660  4B A8 B4 D4 */	b __mi__4cXyzCFRC3Vec
/* 807DB664  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 807DB668  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 807DB66C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 807DB670  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 807DB674  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 807DB678  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 807DB67C  38 61 00 DC */	addi r3, r1, 0xdc
/* 807DB680  4B B6 BA B8 */	b PSVECSquareMag
/* 807DB684  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 807DB688  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807DB68C  40 81 00 58 */	ble lbl_807DB6E4
/* 807DB690  FC 00 08 34 */	frsqrte f0, f1
/* 807DB694  C8 9F 00 90 */	lfd f4, 0x90(r31)
/* 807DB698  FC 44 00 32 */	fmul f2, f4, f0
/* 807DB69C  C8 7F 00 98 */	lfd f3, 0x98(r31)
/* 807DB6A0  FC 00 00 32 */	fmul f0, f0, f0
/* 807DB6A4  FC 01 00 32 */	fmul f0, f1, f0
/* 807DB6A8  FC 03 00 28 */	fsub f0, f3, f0
/* 807DB6AC  FC 02 00 32 */	fmul f0, f2, f0
/* 807DB6B0  FC 44 00 32 */	fmul f2, f4, f0
/* 807DB6B4  FC 00 00 32 */	fmul f0, f0, f0
/* 807DB6B8  FC 01 00 32 */	fmul f0, f1, f0
/* 807DB6BC  FC 03 00 28 */	fsub f0, f3, f0
/* 807DB6C0  FC 02 00 32 */	fmul f0, f2, f0
/* 807DB6C4  FC 44 00 32 */	fmul f2, f4, f0
/* 807DB6C8  FC 00 00 32 */	fmul f0, f0, f0
/* 807DB6CC  FC 01 00 32 */	fmul f0, f1, f0
/* 807DB6D0  FC 03 00 28 */	fsub f0, f3, f0
/* 807DB6D4  FC 02 00 32 */	fmul f0, f2, f0
/* 807DB6D8  FC 21 00 32 */	fmul f1, f1, f0
/* 807DB6DC  FC 20 08 18 */	frsp f1, f1
/* 807DB6E0  48 00 00 88 */	b lbl_807DB768
lbl_807DB6E4:
/* 807DB6E4  C8 1F 00 A0 */	lfd f0, 0xa0(r31)
/* 807DB6E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807DB6EC  40 80 00 10 */	bge lbl_807DB6FC
/* 807DB6F0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807DB6F4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 807DB6F8  48 00 00 70 */	b lbl_807DB768
lbl_807DB6FC:
/* 807DB6FC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807DB700  80 81 00 0C */	lwz r4, 0xc(r1)
/* 807DB704  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807DB708  3C 00 7F 80 */	lis r0, 0x7f80
/* 807DB70C  7C 03 00 00 */	cmpw r3, r0
/* 807DB710  41 82 00 14 */	beq lbl_807DB724
/* 807DB714  40 80 00 40 */	bge lbl_807DB754
/* 807DB718  2C 03 00 00 */	cmpwi r3, 0
/* 807DB71C  41 82 00 20 */	beq lbl_807DB73C
/* 807DB720  48 00 00 34 */	b lbl_807DB754
lbl_807DB724:
/* 807DB724  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807DB728  41 82 00 0C */	beq lbl_807DB734
/* 807DB72C  38 00 00 01 */	li r0, 1
/* 807DB730  48 00 00 28 */	b lbl_807DB758
lbl_807DB734:
/* 807DB734  38 00 00 02 */	li r0, 2
/* 807DB738  48 00 00 20 */	b lbl_807DB758
lbl_807DB73C:
/* 807DB73C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807DB740  41 82 00 0C */	beq lbl_807DB74C
/* 807DB744  38 00 00 05 */	li r0, 5
/* 807DB748  48 00 00 10 */	b lbl_807DB758
lbl_807DB74C:
/* 807DB74C  38 00 00 03 */	li r0, 3
/* 807DB750  48 00 00 08 */	b lbl_807DB758
lbl_807DB754:
/* 807DB754  38 00 00 04 */	li r0, 4
lbl_807DB758:
/* 807DB758  2C 00 00 01 */	cmpwi r0, 1
/* 807DB75C  40 82 00 0C */	bne lbl_807DB768
/* 807DB760  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807DB764  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_807DB768:
/* 807DB768  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 807DB76C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807DB770  40 80 00 0C */	bge lbl_807DB77C
/* 807DB774  38 00 00 14 */	li r0, 0x14
/* 807DB778  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
lbl_807DB77C:
/* 807DB77C  38 7D 05 2C */	addi r3, r29, 0x52c
/* 807DB780  FC 20 F8 90 */	fmr f1, f31
/* 807DB784  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807DB788  FC 60 10 90 */	fmr f3, f2
/* 807DB78C  4B A9 42 B0 */	b cLib_addCalc2__FPffff
/* 807DB790  38 7D 07 9A */	addi r3, r29, 0x79a
/* 807DB794  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 807DB798  7C 17 00 50 */	subf r0, r23, r0
/* 807DB79C  54 00 18 38 */	slwi r0, r0, 3
/* 807DB7A0  7C 00 00 D0 */	neg r0, r0
/* 807DB7A4  7C 04 07 34 */	extsh r4, r0
/* 807DB7A8  38 A0 00 08 */	li r5, 8
/* 807DB7AC  38 C0 02 00 */	li r6, 0x200
/* 807DB7B0  4B A9 4E 58 */	b cLib_addCalcAngleS2__FPssss
/* 807DB7B4  38 61 00 E8 */	addi r3, r1, 0xe8
/* 807DB7B8  38 80 FF FF */	li r4, -1
/* 807DB7BC  4B 89 C5 20 */	b __dt__11dBgS_LinChkFv
/* 807DB7C0  7F 23 CB 78 */	mr r3, r25
lbl_807DB7C4:
/* 807DB7C4  E3 E1 01 A8 */	psq_l f31, 424(r1), 0, 0 /* qr0 */
/* 807DB7C8  CB E1 01 A0 */	lfd f31, 0x1a0(r1)
/* 807DB7CC  39 61 01 A0 */	addi r11, r1, 0x1a0
/* 807DB7D0  4B B8 6A 38 */	b _restgpr_21
/* 807DB7D4  80 01 01 B4 */	lwz r0, 0x1b4(r1)
/* 807DB7D8  7C 08 03 A6 */	mtlr r0
/* 807DB7DC  38 21 01 B0 */	addi r1, r1, 0x1b0
/* 807DB7E0  4E 80 00 20 */	blr 
