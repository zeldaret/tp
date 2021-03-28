lbl_805F6FA4:
/* 805F6FA4  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 805F6FA8  7C 08 02 A6 */	mflr r0
/* 805F6FAC  90 01 00 84 */	stw r0, 0x84(r1)
/* 805F6FB0  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 805F6FB4  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 805F6FB8  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 805F6FBC  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 805F6FC0  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 805F6FC4  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 805F6FC8  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 805F6FCC  F3 81 00 48 */	psq_st f28, 72(r1), 0, 0 /* qr0 */
/* 805F6FD0  39 61 00 40 */	addi r11, r1, 0x40
/* 805F6FD4  4B D6 B1 F8 */	b _savegpr_25
/* 805F6FD8  7C 79 1B 78 */	mr r25, r3
/* 805F6FDC  3C 60 80 60 */	lis r3, lit_3815@ha
/* 805F6FE0  3B E3 26 64 */	addi r31, r3, lit_3815@l
/* 805F6FE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805F6FE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805F6FEC  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 805F6FF0  C3 F9 0C 38 */	lfs f31, 0xc38(r25)
/* 805F6FF4  C3 DF 00 BC */	lfs f30, 0xbc(r31)
/* 805F6FF8  3B A0 00 00 */	li r29, 0
/* 805F6FFC  7F C3 F3 78 */	mr r3, r30
/* 805F7000  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 805F7004  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 805F7008  7D 89 03 A6 */	mtctr r12
/* 805F700C  4E 80 04 21 */	bctrl 
/* 805F7010  28 03 00 00 */	cmplwi r3, 0
/* 805F7014  41 82 00 28 */	beq lbl_805F703C
/* 805F7018  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805F701C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805F7020  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 805F7024  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 805F7028  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 805F702C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F7030  4C 41 13 82 */	cror 2, 1, 2
/* 805F7034  40 82 00 08 */	bne lbl_805F703C
/* 805F7038  3B A0 00 01 */	li r29, 1
lbl_805F703C:
/* 805F703C  AB 99 04 DE */	lha r28, 0x4de(r25)
/* 805F7040  C3 BF 00 00 */	lfs f29, 0(r31)
/* 805F7044  3B 60 00 00 */	li r27, 0
/* 805F7048  A8 79 04 E6 */	lha r3, 0x4e6(r25)
/* 805F704C  A8 19 0C 3C */	lha r0, 0xc3c(r25)
/* 805F7050  7C 03 00 50 */	subf r0, r3, r0
/* 805F7054  7C 1A 07 34 */	extsh r26, r0
/* 805F7058  2C 1A 40 00 */	cmpwi r26, 0x4000
/* 805F705C  40 80 00 10 */	bge lbl_805F706C
/* 805F7060  2C 1A C0 00 */	cmpwi r26, -16384
/* 805F7064  40 81 00 08 */	ble lbl_805F706C
/* 805F7068  3B 60 00 01 */	li r27, 1
lbl_805F706C:
/* 805F706C  7F A0 07 75 */	extsb. r0, r29
/* 805F7070  41 82 00 0C */	beq lbl_805F707C
/* 805F7074  C3 9F 00 14 */	lfs f28, 0x14(r31)
/* 805F7078  48 00 00 08 */	b lbl_805F7080
lbl_805F707C:
/* 805F707C  C3 9F 00 D4 */	lfs f28, 0xd4(r31)
lbl_805F7080:
/* 805F7080  A8 19 05 BC */	lha r0, 0x5bc(r25)
/* 805F7084  2C 00 00 04 */	cmpwi r0, 4
/* 805F7088  41 82 00 C4 */	beq lbl_805F714C
/* 805F708C  40 80 00 1C */	bge lbl_805F70A8
/* 805F7090  2C 00 00 02 */	cmpwi r0, 2
/* 805F7094  41 82 00 78 */	beq lbl_805F710C
/* 805F7098  40 80 00 94 */	bge lbl_805F712C
/* 805F709C  2C 00 00 00 */	cmpwi r0, 0
/* 805F70A0  40 80 00 18 */	bge lbl_805F70B8
/* 805F70A4  48 00 01 B0 */	b lbl_805F7254
lbl_805F70A8:
/* 805F70A8  2C 00 00 06 */	cmpwi r0, 6
/* 805F70AC  41 82 01 6C */	beq lbl_805F7218
/* 805F70B0  40 80 01 A4 */	bge lbl_805F7254
/* 805F70B4  48 00 01 00 */	b lbl_805F71B4
lbl_805F70B8:
/* 805F70B8  80 19 07 58 */	lwz r0, 0x758(r25)
/* 805F70BC  2C 00 00 49 */	cmpwi r0, 0x49
/* 805F70C0  41 82 00 38 */	beq lbl_805F70F8
/* 805F70C4  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805F70C8  D0 59 07 60 */	stfs f2, 0x760(r25)
/* 805F70CC  7F 23 CB 78 */	mr r3, r25
/* 805F70D0  38 80 00 49 */	li r4, 0x49
/* 805F70D4  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 805F70D8  38 A0 00 02 */	li r5, 2
/* 805F70DC  4B FF D9 B9 */	bl anm_init__FP11b_gnd_classifUcf
/* 805F70E0  7F 23 CB 78 */	mr r3, r25
/* 805F70E4  38 80 00 09 */	li r4, 9
/* 805F70E8  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 805F70EC  38 A0 00 02 */	li r5, 2
/* 805F70F0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805F70F4  4B FF DA 55 */	bl h_anm_init__FP11b_gnd_classifUcf
lbl_805F70F8:
/* 805F70F8  38 00 00 00 */	li r0, 0
/* 805F70FC  B0 19 0C 68 */	sth r0, 0xc68(r25)
/* 805F7100  38 00 00 02 */	li r0, 2
/* 805F7104  B0 19 05 BC */	sth r0, 0x5bc(r25)
/* 805F7108  48 00 01 4C */	b lbl_805F7254
lbl_805F710C:
/* 805F710C  3B 60 00 01 */	li r27, 1
/* 805F7110  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 805F7114  EC 00 E0 2A */	fadds f0, f0, f28
/* 805F7118  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 805F711C  40 80 01 38 */	bge lbl_805F7254
/* 805F7120  38 00 00 03 */	li r0, 3
/* 805F7124  B0 19 05 BC */	sth r0, 0x5bc(r25)
/* 805F7128  48 00 01 2C */	b lbl_805F7254
lbl_805F712C:
/* 805F712C  7F 23 CB 78 */	mr r3, r25
/* 805F7130  38 80 00 34 */	li r4, 0x34
/* 805F7134  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 805F7138  38 A0 00 00 */	li r5, 0
/* 805F713C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805F7140  4B FF D9 55 */	bl anm_init__FP11b_gnd_classifUcf
/* 805F7144  38 00 00 04 */	li r0, 4
/* 805F7148  B0 19 05 BC */	sth r0, 0x5bc(r25)
lbl_805F714C:
/* 805F714C  3B 60 00 01 */	li r27, 1
/* 805F7150  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 805F7154  EC 00 E0 2A */	fadds f0, f0, f28
/* 805F7158  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 805F715C  41 80 00 34 */	blt lbl_805F7190
/* 805F7160  80 79 05 D0 */	lwz r3, 0x5d0(r25)
/* 805F7164  38 80 00 01 */	li r4, 1
/* 805F7168  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805F716C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805F7170  40 82 00 18 */	bne lbl_805F7188
/* 805F7174  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 805F7178  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805F717C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805F7180  41 82 00 08 */	beq lbl_805F7188
/* 805F7184  38 80 00 00 */	li r4, 0
lbl_805F7188:
/* 805F7188  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805F718C  41 82 00 C8 */	beq lbl_805F7254
lbl_805F7190:
/* 805F7190  7F 23 CB 78 */	mr r3, r25
/* 805F7194  38 80 00 37 */	li r4, 0x37
/* 805F7198  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 805F719C  38 A0 00 02 */	li r5, 2
/* 805F71A0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805F71A4  4B FF D8 F1 */	bl anm_init__FP11b_gnd_classifUcf
/* 805F71A8  38 00 00 05 */	li r0, 5
/* 805F71AC  B0 19 05 BC */	sth r0, 0x5bc(r25)
/* 805F71B0  48 00 00 A4 */	b lbl_805F7254
lbl_805F71B4:
/* 805F71B4  3B 60 00 01 */	li r27, 1
/* 805F71B8  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 805F71BC  EC 00 E0 2A */	fadds f0, f0, f28
/* 805F71C0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 805F71C4  40 80 00 90 */	bge lbl_805F7254
/* 805F71C8  7F 40 07 35 */	extsh. r0, r26
/* 805F71CC  41 80 00 0C */	blt lbl_805F71D8
/* 805F71D0  7F A0 07 75 */	extsb. r0, r29
/* 805F71D4  40 82 00 20 */	bne lbl_805F71F4
lbl_805F71D8:
/* 805F71D8  7F 23 CB 78 */	mr r3, r25
/* 805F71DC  38 80 00 36 */	li r4, 0x36
/* 805F71E0  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 805F71E4  38 A0 00 00 */	li r5, 0
/* 805F71E8  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805F71EC  4B FF D8 A9 */	bl anm_init__FP11b_gnd_classifUcf
/* 805F71F0  48 00 00 1C */	b lbl_805F720C
lbl_805F71F4:
/* 805F71F4  7F 23 CB 78 */	mr r3, r25
/* 805F71F8  38 80 00 35 */	li r4, 0x35
/* 805F71FC  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 805F7200  38 A0 00 00 */	li r5, 0
/* 805F7204  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805F7208  4B FF D8 8D */	bl anm_init__FP11b_gnd_classifUcf
lbl_805F720C:
/* 805F720C  38 00 00 06 */	li r0, 6
/* 805F7210  B0 19 05 BC */	sth r0, 0x5bc(r25)
/* 805F7214  48 00 00 40 */	b lbl_805F7254
lbl_805F7218:
/* 805F7218  3B 60 00 01 */	li r27, 1
/* 805F721C  38 80 00 01 */	li r4, 1
/* 805F7220  98 99 0C 77 */	stb r4, 0xc77(r25)
/* 805F7224  80 79 05 D0 */	lwz r3, 0x5d0(r25)
/* 805F7228  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805F722C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805F7230  40 82 00 18 */	bne lbl_805F7248
/* 805F7234  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 805F7238  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805F723C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805F7240  41 82 00 08 */	beq lbl_805F7248
/* 805F7244  38 80 00 00 */	li r4, 0
lbl_805F7248:
/* 805F7248  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805F724C  41 82 00 08 */	beq lbl_805F7254
/* 805F7250  3B 60 00 00 */	li r27, 0
lbl_805F7254:
/* 805F7254  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805F7258  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805F725C  80 63 00 00 */	lwz r3, 0(r3)
/* 805F7260  A8 99 04 E6 */	lha r4, 0x4e6(r25)
/* 805F7264  4B A1 51 78 */	b mDoMtx_YrotS__FPA4_fs
/* 805F7268  7F A0 07 75 */	extsb. r0, r29
/* 805F726C  41 82 00 24 */	beq lbl_805F7290
/* 805F7270  7F 40 07 35 */	extsh. r0, r26
/* 805F7274  40 80 00 10 */	bge lbl_805F7284
/* 805F7278  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 805F727C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805F7280  48 00 00 18 */	b lbl_805F7298
lbl_805F7284:
/* 805F7284  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 805F7288  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805F728C  48 00 00 0C */	b lbl_805F7298
lbl_805F7290:
/* 805F7290  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 805F7294  D0 01 00 14 */	stfs f0, 0x14(r1)
lbl_805F7298:
/* 805F7298  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 805F729C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805F72A0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805F72A4  38 61 00 14 */	addi r3, r1, 0x14
/* 805F72A8  38 81 00 08 */	addi r4, r1, 8
/* 805F72AC  4B C7 9C 40 */	b MtxPosition__FP4cXyzP4cXyz
/* 805F72B0  38 61 00 08 */	addi r3, r1, 8
/* 805F72B4  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 805F72B8  7C 65 1B 78 */	mr r5, r3
/* 805F72BC  4B D4 FD D4 */	b PSVECAdd
/* 805F72C0  38 61 00 08 */	addi r3, r1, 8
/* 805F72C4  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 805F72C8  7C 65 1B 78 */	mr r5, r3
/* 805F72CC  4B D4 FD E8 */	b PSVECSubtract
/* 805F72D0  C0 21 00 08 */	lfs f1, 8(r1)
/* 805F72D4  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 805F72D8  4B C7 03 9C */	b cM_atan2s__Fff
/* 805F72DC  B0 79 05 CC */	sth r3, 0x5cc(r25)
/* 805F72E0  38 79 04 DE */	addi r3, r25, 0x4de
/* 805F72E4  A8 99 05 CC */	lha r4, 0x5cc(r25)
/* 805F72E8  38 A0 00 08 */	li r5, 8
/* 805F72EC  A8 D9 0C 68 */	lha r6, 0xc68(r25)
/* 805F72F0  4B C7 93 18 */	b cLib_addCalcAngleS2__FPssss
/* 805F72F4  38 79 0C 68 */	addi r3, r25, 0xc68
/* 805F72F8  38 80 04 00 */	li r4, 0x400
/* 805F72FC  38 A0 00 01 */	li r5, 1
/* 805F7300  38 C0 00 40 */	li r6, 0x40
/* 805F7304  4B C7 93 04 */	b cLib_addCalcAngleS2__FPssss
/* 805F7308  7F A0 07 75 */	extsb. r0, r29
/* 805F730C  41 82 00 6C */	beq lbl_805F7378
/* 805F7310  3C 60 80 60 */	lis r3, l_HIO@ha
/* 805F7314  38 63 2F B4 */	addi r3, r3, l_HIO@l
/* 805F7318  C3 83 00 14 */	lfs f28, 0x14(r3)
/* 805F731C  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 805F7320  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 805F7324  40 81 00 10 */	ble lbl_805F7334
/* 805F7328  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 805F732C  EF 9C 00 32 */	fmuls f28, f28, f0
/* 805F7330  48 00 00 18 */	b lbl_805F7348
lbl_805F7334:
/* 805F7334  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 805F7338  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 805F733C  40 81 00 0C */	ble lbl_805F7348
/* 805F7340  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 805F7344  EF 9C 00 32 */	fmuls f28, f28, f0
lbl_805F7348:
/* 805F7348  C0 39 05 2C */	lfs f1, 0x52c(r25)
/* 805F734C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 805F7350  EF A1 00 24 */	fdivs f29, f1, f0
/* 805F7354  C0 1F 00 00 */	lfs f0, 0(r31)
/* 805F7358  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 805F735C  40 80 00 08 */	bge lbl_805F7364
/* 805F7360  FF A0 00 90 */	fmr f29, f0
lbl_805F7364:
/* 805F7364  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 805F7368  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 805F736C  40 81 00 1C */	ble lbl_805F7388
/* 805F7370  FF A0 00 90 */	fmr f29, f0
/* 805F7374  48 00 00 14 */	b lbl_805F7388
lbl_805F7378:
/* 805F7378  C3 DF 00 8C */	lfs f30, 0x8c(r31)
/* 805F737C  3C 60 80 60 */	lis r3, l_HIO@ha
/* 805F7380  38 63 2F B4 */	addi r3, r3, l_HIO@l
/* 805F7384  C3 83 00 0C */	lfs f28, 0xc(r3)
lbl_805F7388:
/* 805F7388  2C 1B 00 00 */	cmpwi r27, 0
/* 805F738C  40 82 00 10 */	bne lbl_805F739C
/* 805F7390  A8 19 0C 4A */	lha r0, 0xc4a(r25)
/* 805F7394  2C 00 00 00 */	cmpwi r0, 0
/* 805F7398  41 82 00 10 */	beq lbl_805F73A8
lbl_805F739C:
/* 805F739C  88 19 0C 76 */	lbz r0, 0xc76(r25)
/* 805F73A0  28 00 00 00 */	cmplwi r0, 0
/* 805F73A4  41 82 00 78 */	beq lbl_805F741C
lbl_805F73A8:
/* 805F73A8  38 00 00 03 */	li r0, 3
/* 805F73AC  B0 19 0A FE */	sth r0, 0xafe(r25)
/* 805F73B0  88 19 0C 76 */	lbz r0, 0xc76(r25)
/* 805F73B4  28 00 00 02 */	cmplwi r0, 2
/* 805F73B8  40 82 00 1C */	bne lbl_805F73D4
/* 805F73BC  38 00 00 28 */	li r0, 0x28
/* 805F73C0  B0 19 0C 72 */	sth r0, 0xc72(r25)
/* 805F73C4  A8 79 04 E6 */	lha r3, 0x4e6(r25)
/* 805F73C8  38 03 C0 00 */	addi r0, r3, -16384
/* 805F73CC  B0 19 0C 74 */	sth r0, 0xc74(r25)
/* 805F73D0  48 00 00 3C */	b lbl_805F740C
lbl_805F73D4:
/* 805F73D4  28 00 00 03 */	cmplwi r0, 3
/* 805F73D8  40 82 00 1C */	bne lbl_805F73F4
/* 805F73DC  38 00 00 28 */	li r0, 0x28
/* 805F73E0  B0 19 0C 72 */	sth r0, 0xc72(r25)
/* 805F73E4  A8 79 04 E6 */	lha r3, 0x4e6(r25)
/* 805F73E8  38 03 40 00 */	addi r0, r3, 0x4000
/* 805F73EC  B0 19 0C 74 */	sth r0, 0xc74(r25)
/* 805F73F0  48 00 00 1C */	b lbl_805F740C
lbl_805F73F4:
/* 805F73F4  28 00 00 04 */	cmplwi r0, 4
/* 805F73F8  41 80 00 14 */	blt lbl_805F740C
/* 805F73FC  A8 79 04 E6 */	lha r3, 0x4e6(r25)
/* 805F7400  3C 63 00 01 */	addis r3, r3, 1
/* 805F7404  38 03 80 00 */	addi r0, r3, -32768
/* 805F7408  B0 19 0C 74 */	sth r0, 0xc74(r25)
lbl_805F740C:
/* 805F740C  38 00 00 00 */	li r0, 0
/* 805F7410  B0 19 05 BC */	sth r0, 0x5bc(r25)
/* 805F7414  38 00 00 64 */	li r0, 0x64
/* 805F7418  B0 19 0C 4A */	sth r0, 0xc4a(r25)
lbl_805F741C:
/* 805F741C  38 00 00 01 */	li r0, 1
/* 805F7420  B0 19 0C 6A */	sth r0, 0xc6a(r25)
/* 805F7424  38 79 05 2C */	addi r3, r25, 0x52c
/* 805F7428  FC 20 E0 90 */	fmr f1, f28
/* 805F742C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805F7430  FC 60 F0 90 */	fmr f3, f30
/* 805F7434  4B C7 86 08 */	b cLib_addCalc2__FPffff
/* 805F7438  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 805F743C  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 805F7440  40 81 00 44 */	ble lbl_805F7484
/* 805F7444  A8 19 04 DE */	lha r0, 0x4de(r25)
/* 805F7448  7C 1C 00 50 */	subf r0, r28, r0
/* 805F744C  54 00 18 38 */	slwi r0, r0, 3
/* 805F7450  7C 00 00 D0 */	neg r0, r0
/* 805F7454  7C 04 07 34 */	extsh r4, r0
/* 805F7458  2C 04 07 D0 */	cmpwi r4, 0x7d0
/* 805F745C  40 81 00 0C */	ble lbl_805F7468
/* 805F7460  38 80 07 D0 */	li r4, 0x7d0
/* 805F7464  48 00 00 10 */	b lbl_805F7474
lbl_805F7468:
/* 805F7468  2C 04 F8 30 */	cmpwi r4, -2000
/* 805F746C  40 80 00 08 */	bge lbl_805F7474
/* 805F7470  38 80 F8 30 */	li r4, -2000
lbl_805F7474:
/* 805F7474  38 79 0C 5C */	addi r3, r25, 0xc5c
/* 805F7478  38 A0 00 04 */	li r5, 4
/* 805F747C  38 C0 03 00 */	li r6, 0x300
/* 805F7480  4B C7 91 88 */	b cLib_addCalcAngleS2__FPssss
lbl_805F7484:
/* 805F7484  C0 19 07 60 */	lfs f0, 0x760(r25)
/* 805F7488  80 79 05 D4 */	lwz r3, 0x5d4(r25)
/* 805F748C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 805F7490  80 19 07 58 */	lwz r0, 0x758(r25)
/* 805F7494  2C 00 00 49 */	cmpwi r0, 0x49
/* 805F7498  40 82 00 10 */	bne lbl_805F74A8
/* 805F749C  C0 19 07 60 */	lfs f0, 0x760(r25)
/* 805F74A0  80 79 05 D0 */	lwz r3, 0x5d0(r25)
/* 805F74A4  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_805F74A8:
/* 805F74A8  38 79 07 60 */	addi r3, r25, 0x760
/* 805F74AC  FC 20 E8 90 */	fmr f1, f29
/* 805F74B0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805F74B4  C0 7F 00 C4 */	lfs f3, 0xc4(r31)
/* 805F74B8  4B C7 85 84 */	b cLib_addCalc2__FPffff
/* 805F74BC  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 805F74C0  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 805F74C4  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 805F74C8  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 805F74CC  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 805F74D0  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 805F74D4  E3 81 00 48 */	psq_l f28, 72(r1), 0, 0 /* qr0 */
/* 805F74D8  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 805F74DC  39 61 00 40 */	addi r11, r1, 0x40
/* 805F74E0  4B D6 AD 38 */	b _restgpr_25
/* 805F74E4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 805F74E8  7C 08 03 A6 */	mtlr r0
/* 805F74EC  38 21 00 80 */	addi r1, r1, 0x80
/* 805F74F0  4E 80 00 20 */	blr 
