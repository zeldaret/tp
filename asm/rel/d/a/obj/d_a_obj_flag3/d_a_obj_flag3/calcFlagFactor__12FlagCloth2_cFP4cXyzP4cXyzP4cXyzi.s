lbl_80BEF278:
/* 80BEF278  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80BEF27C  7C 08 02 A6 */	mflr r0
/* 80BEF280  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80BEF284  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 80BEF288  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 80BEF28C  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 80BEF290  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 80BEF294  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80BEF298  4B 77 2F 31 */	bl _savegpr_24
/* 80BEF29C  7C 78 1B 78 */	mr r24, r3
/* 80BEF2A0  7C 99 23 78 */	mr r25, r4
/* 80BEF2A4  7C BA 2B 78 */	mr r26, r5
/* 80BEF2A8  7D 1B 43 79 */	or. r27, r8, r8
/* 80BEF2AC  3C 60 80 BF */	lis r3, M_attr__12daObjFlag3_c@ha /* 0x80BF0458@ha */
/* 80BEF2B0  3B E3 04 58 */	addi r31, r3, M_attr__12daObjFlag3_c@l /* 0x80BF0458@l */
/* 80BEF2B4  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80BEF2B8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80BEF2BC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80BEF2C0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80BEF2C4  41 82 00 0C */	beq lbl_80BEF2D0
/* 80BEF2C8  2C 1B 00 1E */	cmpwi r27, 0x1e
/* 80BEF2CC  40 82 00 24 */	bne lbl_80BEF2F0
lbl_80BEF2D0:
/* 80BEF2D0  3C 60 80 43 */	lis r3, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 80BEF2D4  C4 03 0C F4 */	lfsu f0, Zero__4cXyz@l(r3)  /* 0x80430CF4@l */
/* 80BEF2D8  D0 18 00 00 */	stfs f0, 0(r24)
/* 80BEF2DC  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BEF2E0  D0 18 00 04 */	stfs f0, 4(r24)
/* 80BEF2E4  C0 03 00 08 */	lfs f0, 8(r3)
/* 80BEF2E8  D0 18 00 08 */	stfs f0, 8(r24)
/* 80BEF2EC  48 00 03 BC */	b lbl_80BEF6A8
lbl_80BEF2F0:
/* 80BEF2F0  38 A1 00 50 */	addi r5, r1, 0x50
/* 80BEF2F4  38 9F 00 10 */	addi r4, r31, 0x10
/* 80BEF2F8  38 00 00 04 */	li r0, 4
/* 80BEF2FC  7C 09 03 A6 */	mtctr r0
lbl_80BEF300:
/* 80BEF300  80 64 00 04 */	lwz r3, 4(r4)
/* 80BEF304  84 04 00 08 */	lwzu r0, 8(r4)
/* 80BEF308  90 65 00 04 */	stw r3, 4(r5)
/* 80BEF30C  94 05 00 08 */	stwu r0, 8(r5)
/* 80BEF310  42 00 FF F0 */	bdnz lbl_80BEF300
/* 80BEF314  2C 1B 00 05 */	cmpwi r27, 5
/* 80BEF318  40 82 00 20 */	bne lbl_80BEF338
/* 80BEF31C  38 1B 00 06 */	addi r0, r27, 6
/* 80BEF320  90 01 00 54 */	stw r0, 0x54(r1)
/* 80BEF324  38 1B 00 05 */	addi r0, r27, 5
/* 80BEF328  90 01 00 58 */	stw r0, 0x58(r1)
/* 80BEF32C  38 1B FF FF */	addi r0, r27, -1
/* 80BEF330  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80BEF334  48 00 01 54 */	b lbl_80BEF488
lbl_80BEF338:
/* 80BEF338  2C 1B 00 23 */	cmpwi r27, 0x23
/* 80BEF33C  40 82 00 20 */	bne lbl_80BEF35C
/* 80BEF340  38 1B FF FF */	addi r0, r27, -1
/* 80BEF344  90 01 00 54 */	stw r0, 0x54(r1)
/* 80BEF348  38 1B FF F9 */	addi r0, r27, -7
/* 80BEF34C  90 01 00 58 */	stw r0, 0x58(r1)
/* 80BEF350  38 1B FF FA */	addi r0, r27, -6
/* 80BEF354  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80BEF358  48 00 01 30 */	b lbl_80BEF488
lbl_80BEF35C:
/* 80BEF35C  2C 1B 00 00 */	cmpwi r27, 0
/* 80BEF360  40 81 00 38 */	ble lbl_80BEF398
/* 80BEF364  2C 1B 00 05 */	cmpwi r27, 5
/* 80BEF368  40 80 00 30 */	bge lbl_80BEF398
/* 80BEF36C  38 1B 00 01 */	addi r0, r27, 1
/* 80BEF370  90 01 00 54 */	stw r0, 0x54(r1)
/* 80BEF374  38 1B 00 07 */	addi r0, r27, 7
/* 80BEF378  90 01 00 58 */	stw r0, 0x58(r1)
/* 80BEF37C  38 1B 00 06 */	addi r0, r27, 6
/* 80BEF380  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80BEF384  38 1B 00 05 */	addi r0, r27, 5
/* 80BEF388  90 01 00 60 */	stw r0, 0x60(r1)
/* 80BEF38C  38 1B FF FF */	addi r0, r27, -1
/* 80BEF390  90 01 00 64 */	stw r0, 0x64(r1)
/* 80BEF394  48 00 00 F4 */	b lbl_80BEF488
lbl_80BEF398:
/* 80BEF398  2C 1B 00 1E */	cmpwi r27, 0x1e
/* 80BEF39C  40 81 00 38 */	ble lbl_80BEF3D4
/* 80BEF3A0  2C 1B 00 23 */	cmpwi r27, 0x23
/* 80BEF3A4  40 80 00 30 */	bge lbl_80BEF3D4
/* 80BEF3A8  38 1B FF FF */	addi r0, r27, -1
/* 80BEF3AC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80BEF3B0  38 1B FF F9 */	addi r0, r27, -7
/* 80BEF3B4  90 01 00 58 */	stw r0, 0x58(r1)
/* 80BEF3B8  38 1B FF FA */	addi r0, r27, -6
/* 80BEF3BC  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80BEF3C0  38 1B FF FB */	addi r0, r27, -5
/* 80BEF3C4  90 01 00 60 */	stw r0, 0x60(r1)
/* 80BEF3C8  38 1B 00 01 */	addi r0, r27, 1
/* 80BEF3CC  90 01 00 64 */	stw r0, 0x64(r1)
/* 80BEF3D0  48 00 00 B8 */	b lbl_80BEF488
lbl_80BEF3D4:
/* 80BEF3D4  38 60 00 06 */	li r3, 6
/* 80BEF3D8  7C 1B 1B D6 */	divw r0, r27, r3
/* 80BEF3DC  7C 00 19 D6 */	mullw r0, r0, r3
/* 80BEF3E0  7C 00 D8 51 */	subf. r0, r0, r27
/* 80BEF3E4  40 82 00 30 */	bne lbl_80BEF414
/* 80BEF3E8  38 1B FF FA */	addi r0, r27, -6
/* 80BEF3EC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80BEF3F0  38 1B FF FB */	addi r0, r27, -5
/* 80BEF3F4  90 01 00 58 */	stw r0, 0x58(r1)
/* 80BEF3F8  38 1B 00 01 */	addi r0, r27, 1
/* 80BEF3FC  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80BEF400  38 1B 00 07 */	addi r0, r27, 7
/* 80BEF404  90 01 00 60 */	stw r0, 0x60(r1)
/* 80BEF408  38 1B 00 06 */	addi r0, r27, 6
/* 80BEF40C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80BEF410  48 00 00 78 */	b lbl_80BEF488
lbl_80BEF414:
/* 80BEF414  2C 00 00 05 */	cmpwi r0, 5
/* 80BEF418  40 82 00 30 */	bne lbl_80BEF448
/* 80BEF41C  38 1B 00 06 */	addi r0, r27, 6
/* 80BEF420  90 01 00 54 */	stw r0, 0x54(r1)
/* 80BEF424  38 1B 00 05 */	addi r0, r27, 5
/* 80BEF428  90 01 00 58 */	stw r0, 0x58(r1)
/* 80BEF42C  38 1B FF FF */	addi r0, r27, -1
/* 80BEF430  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80BEF434  38 1B FF F9 */	addi r0, r27, -7
/* 80BEF438  90 01 00 60 */	stw r0, 0x60(r1)
/* 80BEF43C  38 1B FF FA */	addi r0, r27, -6
/* 80BEF440  90 01 00 64 */	stw r0, 0x64(r1)
/* 80BEF444  48 00 00 44 */	b lbl_80BEF488
lbl_80BEF448:
/* 80BEF448  38 1B FF F9 */	addi r0, r27, -7
/* 80BEF44C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80BEF450  38 1B FF FA */	addi r0, r27, -6
/* 80BEF454  90 01 00 58 */	stw r0, 0x58(r1)
/* 80BEF458  38 1B FF FB */	addi r0, r27, -5
/* 80BEF45C  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80BEF460  38 1B 00 01 */	addi r0, r27, 1
/* 80BEF464  90 01 00 60 */	stw r0, 0x60(r1)
/* 80BEF468  38 1B 00 07 */	addi r0, r27, 7
/* 80BEF46C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80BEF470  38 1B 00 06 */	addi r0, r27, 6
/* 80BEF474  90 01 00 68 */	stw r0, 0x68(r1)
/* 80BEF478  38 1B 00 05 */	addi r0, r27, 5
/* 80BEF47C  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80BEF480  38 1B FF FF */	addi r0, r27, -1
/* 80BEF484  90 01 00 70 */	stw r0, 0x70(r1)
lbl_80BEF488:
/* 80BEF488  3B A1 00 54 */	addi r29, r1, 0x54
/* 80BEF48C  7C E3 3B 78 */	mr r3, r7
/* 80BEF490  1F DB 00 0C */	mulli r30, r27, 0xc
/* 80BEF494  7F 86 F2 14 */	add r28, r6, r30
/* 80BEF498  7F 84 E3 78 */	mr r4, r28
/* 80BEF49C  4B 75 7C F9 */	bl PSVECDotProduct
/* 80BEF4A0  38 61 00 3C */	addi r3, r1, 0x3c
/* 80BEF4A4  7F 84 E3 78 */	mr r4, r28
/* 80BEF4A8  4B 67 76 DD */	bl __ml__4cXyzCFf
/* 80BEF4AC  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80BEF4B0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80BEF4B4  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 80BEF4B8  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80BEF4BC  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80BEF4C0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80BEF4C4  C0 19 0D 90 */	lfs f0, 0xd90(r25)
/* 80BEF4C8  EC 01 00 2A */	fadds f0, f1, f0
/* 80BEF4CC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80BEF4D0  3B 80 00 00 */	li r28, 0
/* 80BEF4D4  7F DA F2 14 */	add r30, r26, r30
/* 80BEF4D8  C3 FF 00 B0 */	lfs f31, 0xb0(r31)
lbl_80BEF4DC:
/* 80BEF4DC  80 1D 00 00 */	lwz r0, 0(r29)
/* 80BEF4E0  2C 00 FF FF */	cmpwi r0, -1
/* 80BEF4E4  41 82 01 AC */	beq lbl_80BEF690
/* 80BEF4E8  7C 7B 00 50 */	subf r3, r27, r0
/* 80BEF4EC  4B 77 5B E5 */	bl abs
/* 80BEF4F0  2C 03 00 01 */	cmpwi r3, 1
/* 80BEF4F4  41 82 00 18 */	beq lbl_80BEF50C
/* 80BEF4F8  80 1D 00 00 */	lwz r0, 0(r29)
/* 80BEF4FC  7C 7B 00 50 */	subf r3, r27, r0
/* 80BEF500  4B 77 5B D1 */	bl abs
/* 80BEF504  2C 03 00 06 */	cmpwi r3, 6
/* 80BEF508  40 82 00 0C */	bne lbl_80BEF514
lbl_80BEF50C:
/* 80BEF50C  C3 DF 00 B4 */	lfs f30, 0xb4(r31)
/* 80BEF510  48 00 00 08 */	b lbl_80BEF518
lbl_80BEF514:
/* 80BEF514  C3 DF 00 B8 */	lfs f30, 0xb8(r31)
lbl_80BEF518:
/* 80BEF518  38 61 00 24 */	addi r3, r1, 0x24
/* 80BEF51C  80 1D 00 00 */	lwz r0, 0(r29)
/* 80BEF520  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80BEF524  7C 9A 02 14 */	add r4, r26, r0
/* 80BEF528  7F C5 F3 78 */	mr r5, r30
/* 80BEF52C  4B 67 76 09 */	bl __mi__4cXyzCFRC3Vec
/* 80BEF530  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80BEF534  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BEF538  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80BEF53C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BEF540  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80BEF544  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BEF548  38 61 00 0C */	addi r3, r1, 0xc
/* 80BEF54C  4B 75 7B ED */	bl PSVECSquareMag
/* 80BEF550  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80BEF554  40 81 00 58 */	ble lbl_80BEF5AC
/* 80BEF558  FC 00 08 34 */	frsqrte f0, f1
/* 80BEF55C  C8 9F 00 C0 */	lfd f4, 0xc0(r31)
/* 80BEF560  FC 44 00 32 */	fmul f2, f4, f0
/* 80BEF564  C8 7F 00 C8 */	lfd f3, 0xc8(r31)
/* 80BEF568  FC 00 00 32 */	fmul f0, f0, f0
/* 80BEF56C  FC 01 00 32 */	fmul f0, f1, f0
/* 80BEF570  FC 03 00 28 */	fsub f0, f3, f0
/* 80BEF574  FC 02 00 32 */	fmul f0, f2, f0
/* 80BEF578  FC 44 00 32 */	fmul f2, f4, f0
/* 80BEF57C  FC 00 00 32 */	fmul f0, f0, f0
/* 80BEF580  FC 01 00 32 */	fmul f0, f1, f0
/* 80BEF584  FC 03 00 28 */	fsub f0, f3, f0
/* 80BEF588  FC 02 00 32 */	fmul f0, f2, f0
/* 80BEF58C  FC 44 00 32 */	fmul f2, f4, f0
/* 80BEF590  FC 00 00 32 */	fmul f0, f0, f0
/* 80BEF594  FC 01 00 32 */	fmul f0, f1, f0
/* 80BEF598  FC 03 00 28 */	fsub f0, f3, f0
/* 80BEF59C  FC 02 00 32 */	fmul f0, f2, f0
/* 80BEF5A0  FC 21 00 32 */	fmul f1, f1, f0
/* 80BEF5A4  FC 20 08 18 */	frsp f1, f1
/* 80BEF5A8  48 00 00 88 */	b lbl_80BEF630
lbl_80BEF5AC:
/* 80BEF5AC  C8 1F 00 D0 */	lfd f0, 0xd0(r31)
/* 80BEF5B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BEF5B4  40 80 00 10 */	bge lbl_80BEF5C4
/* 80BEF5B8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BEF5BC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BEF5C0  48 00 00 70 */	b lbl_80BEF630
lbl_80BEF5C4:
/* 80BEF5C4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BEF5C8  80 81 00 08 */	lwz r4, 8(r1)
/* 80BEF5CC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BEF5D0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BEF5D4  7C 03 00 00 */	cmpw r3, r0
/* 80BEF5D8  41 82 00 14 */	beq lbl_80BEF5EC
/* 80BEF5DC  40 80 00 40 */	bge lbl_80BEF61C
/* 80BEF5E0  2C 03 00 00 */	cmpwi r3, 0
/* 80BEF5E4  41 82 00 20 */	beq lbl_80BEF604
/* 80BEF5E8  48 00 00 34 */	b lbl_80BEF61C
lbl_80BEF5EC:
/* 80BEF5EC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BEF5F0  41 82 00 0C */	beq lbl_80BEF5FC
/* 80BEF5F4  38 00 00 01 */	li r0, 1
/* 80BEF5F8  48 00 00 28 */	b lbl_80BEF620
lbl_80BEF5FC:
/* 80BEF5FC  38 00 00 02 */	li r0, 2
/* 80BEF600  48 00 00 20 */	b lbl_80BEF620
lbl_80BEF604:
/* 80BEF604  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BEF608  41 82 00 0C */	beq lbl_80BEF614
/* 80BEF60C  38 00 00 05 */	li r0, 5
/* 80BEF610  48 00 00 10 */	b lbl_80BEF620
lbl_80BEF614:
/* 80BEF614  38 00 00 03 */	li r0, 3
/* 80BEF618  48 00 00 08 */	b lbl_80BEF620
lbl_80BEF61C:
/* 80BEF61C  38 00 00 04 */	li r0, 4
lbl_80BEF620:
/* 80BEF620  2C 00 00 01 */	cmpwi r0, 1
/* 80BEF624  40 82 00 0C */	bne lbl_80BEF630
/* 80BEF628  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BEF62C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80BEF630:
/* 80BEF630  EF C1 F0 28 */	fsubs f30, f1, f30
/* 80BEF634  38 61 00 30 */	addi r3, r1, 0x30
/* 80BEF638  38 81 00 0C */	addi r4, r1, 0xc
/* 80BEF63C  4B 67 77 89 */	bl normZC__4cXyzCFv
/* 80BEF640  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80BEF644  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BEF648  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80BEF64C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BEF650  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80BEF654  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80BEF658  C0 19 0D 84 */	lfs f0, 0xd84(r25)
/* 80BEF65C  EF DE 00 32 */	fmuls f30, f30, f0
/* 80BEF660  38 61 00 18 */	addi r3, r1, 0x18
/* 80BEF664  7C 64 1B 78 */	mr r4, r3
/* 80BEF668  FC 20 F0 90 */	fmr f1, f30
/* 80BEF66C  4B 75 7A 6D */	bl PSVECScale
/* 80BEF670  38 61 00 48 */	addi r3, r1, 0x48
/* 80BEF674  38 81 00 18 */	addi r4, r1, 0x18
/* 80BEF678  7C 65 1B 78 */	mr r5, r3
/* 80BEF67C  4B 75 7A 15 */	bl PSVECAdd
/* 80BEF680  3B 9C 00 01 */	addi r28, r28, 1
/* 80BEF684  2C 1C 00 08 */	cmpwi r28, 8
/* 80BEF688  3B BD 00 04 */	addi r29, r29, 4
/* 80BEF68C  41 80 FE 50 */	blt lbl_80BEF4DC
lbl_80BEF690:
/* 80BEF690  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80BEF694  D0 18 00 00 */	stfs f0, 0(r24)
/* 80BEF698  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80BEF69C  D0 18 00 04 */	stfs f0, 4(r24)
/* 80BEF6A0  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80BEF6A4  D0 18 00 08 */	stfs f0, 8(r24)
lbl_80BEF6A8:
/* 80BEF6A8  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 80BEF6AC  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 80BEF6B0  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 80BEF6B4  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 80BEF6B8  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80BEF6BC  4B 77 2B 59 */	bl _restgpr_24
/* 80BEF6C0  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80BEF6C4  7C 08 03 A6 */	mtlr r0
/* 80BEF6C8  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80BEF6CC  4E 80 00 20 */	blr 
