lbl_800A7050:
/* 800A7050  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 800A7054  7C 08 02 A6 */	mflr r0
/* 800A7058  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 800A705C  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 800A7060  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 800A7064  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 800A7068  F3 C1 00 88 */	psq_st f30, 136(r1), 0, 0 /* qr0 */
/* 800A706C  DB A1 00 70 */	stfd f29, 0x70(r1)
/* 800A7070  F3 A1 00 78 */	psq_st f29, 120(r1), 0, 0 /* qr0 */
/* 800A7074  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 800A7078  7C 7F 1B 78 */	mr r31, r3
/* 800A707C  C0 03 35 C4 */	lfs f0, 0x35c4(r3)
/* 800A7080  D0 03 35 D0 */	stfs f0, 0x35d0(r3)
/* 800A7084  C0 03 35 C8 */	lfs f0, 0x35c8(r3)
/* 800A7088  D0 03 35 D4 */	stfs f0, 0x35d4(r3)
/* 800A708C  C0 03 35 CC */	lfs f0, 0x35cc(r3)
/* 800A7090  D0 03 35 D8 */	stfs f0, 0x35d8(r3)
/* 800A7094  80 A3 31 A0 */	lwz r5, 0x31a0(r3)
/* 800A7098  3C 80 01 21 */	lis r4, 0x0121 /* 0x01210C52@ha */
/* 800A709C  38 04 0C 52 */	addi r0, r4, 0x0C52 /* 0x01210C52@l */
/* 800A70A0  7C A0 00 39 */	and. r0, r5, r0
/* 800A70A4  40 82 02 74 */	bne lbl_800A7318
/* 800A70A8  48 06 EB 79 */	bl checkEventRun__9daAlink_cCFv
/* 800A70AC  2C 03 00 00 */	cmpwi r3, 0
/* 800A70B0  40 82 02 68 */	bne lbl_800A7318
/* 800A70B4  7F E3 FB 78 */	mr r3, r31
/* 800A70B8  38 80 00 01 */	li r4, 1
/* 800A70BC  38 A0 00 01 */	li r5, 1
/* 800A70C0  48 01 43 F9 */	bl checkHeavyStateOn__9daAlink_cFii
/* 800A70C4  2C 03 00 00 */	cmpwi r3, 0
/* 800A70C8  40 82 02 50 */	bne lbl_800A7318
/* 800A70CC  88 1F 2F A8 */	lbz r0, 0x2fa8(r31)
/* 800A70D0  28 00 00 08 */	cmplwi r0, 8
/* 800A70D4  40 82 02 44 */	bne lbl_800A7318
/* 800A70D8  80 7F 19 9C */	lwz r3, 0x199c(r31)
/* 800A70DC  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 800A70E0  40 82 02 38 */	bne lbl_800A7318
/* 800A70E4  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 800A70E8  41 82 02 30 */	beq lbl_800A7318
/* 800A70EC  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800A70F0  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800A70F4  41 82 00 14 */	beq lbl_800A7108
/* 800A70F8  C3 C2 93 A0 */	lfs f30, lit_9054(r2)
/* 800A70FC  C3 A2 92 B8 */	lfs f29, lit_6040(r2)
/* 800A7100  C3 E2 92 98 */	lfs f31, lit_5943(r2)
/* 800A7104  48 00 00 10 */	b lbl_800A7114
lbl_800A7108:
/* 800A7108  C3 C2 98 1C */	lfs f30, lit_55847(r2)
/* 800A710C  C3 A2 92 98 */	lfs f29, lit_5943(r2)
/* 800A7110  C3 E2 94 AC */	lfs f31, lit_16641(r2)
lbl_800A7114:
/* 800A7114  38 7F 35 C4 */	addi r3, r31, 0x35c4
/* 800A7118  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800A711C  FC 40 F0 90 */	fmr f2, f30
/* 800A7120  C0 62 93 50 */	lfs f3, lit_8247(r2)
/* 800A7124  FC 80 E8 90 */	fmr f4, f29
/* 800A7128  48 1C 88 55 */	bl cLib_addCalc__FPfffff
/* 800A712C  38 7F 35 CC */	addi r3, r31, 0x35cc
/* 800A7130  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800A7134  FC 40 F0 90 */	fmr f2, f30
/* 800A7138  C0 62 93 50 */	lfs f3, lit_8247(r2)
/* 800A713C  FC 80 E8 90 */	fmr f4, f29
/* 800A7140  48 1C 88 3D */	bl cLib_addCalc__FPfffff
/* 800A7144  38 61 00 48 */	addi r3, r1, 0x48
/* 800A7148  38 9F 35 28 */	addi r4, r31, 0x3528
/* 800A714C  38 BF 04 F8 */	addi r5, r31, 0x4f8
/* 800A7150  48 1B F9 E5 */	bl __mi__4cXyzCFRC3Vec
/* 800A7154  C0 41 00 48 */	lfs f2, 0x48(r1)
/* 800A7158  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 800A715C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 800A7160  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 800A7164  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 800A7168  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 800A716C  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 800A7170  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A7174  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800A7178  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 800A717C  38 61 00 0C */	addi r3, r1, 0xc
/* 800A7180  48 29 FF B9 */	bl PSVECSquareMag
/* 800A7184  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A7188  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A718C  40 81 00 58 */	ble lbl_800A71E4
/* 800A7190  FC 00 08 34 */	frsqrte f0, f1
/* 800A7194  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800A7198  FC 44 00 32 */	fmul f2, f4, f0
/* 800A719C  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800A71A0  FC 00 00 32 */	fmul f0, f0, f0
/* 800A71A4  FC 01 00 32 */	fmul f0, f1, f0
/* 800A71A8  FC 03 00 28 */	fsub f0, f3, f0
/* 800A71AC  FC 02 00 32 */	fmul f0, f2, f0
/* 800A71B0  FC 44 00 32 */	fmul f2, f4, f0
/* 800A71B4  FC 00 00 32 */	fmul f0, f0, f0
/* 800A71B8  FC 01 00 32 */	fmul f0, f1, f0
/* 800A71BC  FC 03 00 28 */	fsub f0, f3, f0
/* 800A71C0  FC 02 00 32 */	fmul f0, f2, f0
/* 800A71C4  FC 44 00 32 */	fmul f2, f4, f0
/* 800A71C8  FC 00 00 32 */	fmul f0, f0, f0
/* 800A71CC  FC 01 00 32 */	fmul f0, f1, f0
/* 800A71D0  FC 03 00 28 */	fsub f0, f3, f0
/* 800A71D4  FC 02 00 32 */	fmul f0, f2, f0
/* 800A71D8  FC 21 00 32 */	fmul f1, f1, f0
/* 800A71DC  FC 20 08 18 */	frsp f1, f1
/* 800A71E0  48 00 00 88 */	b lbl_800A7268
lbl_800A71E4:
/* 800A71E4  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800A71E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A71EC  40 80 00 10 */	bge lbl_800A71FC
/* 800A71F0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800A71F4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 800A71F8  48 00 00 70 */	b lbl_800A7268
lbl_800A71FC:
/* 800A71FC  D0 21 00 08 */	stfs f1, 8(r1)
/* 800A7200  80 81 00 08 */	lwz r4, 8(r1)
/* 800A7204  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800A7208  3C 00 7F 80 */	lis r0, 0x7f80
/* 800A720C  7C 03 00 00 */	cmpw r3, r0
/* 800A7210  41 82 00 14 */	beq lbl_800A7224
/* 800A7214  40 80 00 40 */	bge lbl_800A7254
/* 800A7218  2C 03 00 00 */	cmpwi r3, 0
/* 800A721C  41 82 00 20 */	beq lbl_800A723C
/* 800A7220  48 00 00 34 */	b lbl_800A7254
lbl_800A7224:
/* 800A7224  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800A7228  41 82 00 0C */	beq lbl_800A7234
/* 800A722C  38 00 00 01 */	li r0, 1
/* 800A7230  48 00 00 28 */	b lbl_800A7258
lbl_800A7234:
/* 800A7234  38 00 00 02 */	li r0, 2
/* 800A7238  48 00 00 20 */	b lbl_800A7258
lbl_800A723C:
/* 800A723C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800A7240  41 82 00 0C */	beq lbl_800A724C
/* 800A7244  38 00 00 05 */	li r0, 5
/* 800A7248  48 00 00 10 */	b lbl_800A7258
lbl_800A724C:
/* 800A724C  38 00 00 03 */	li r0, 3
/* 800A7250  48 00 00 08 */	b lbl_800A7258
lbl_800A7254:
/* 800A7254  38 00 00 04 */	li r0, 4
lbl_800A7258:
/* 800A7258  2C 00 00 01 */	cmpwi r0, 1
/* 800A725C  40 82 00 0C */	bne lbl_800A7268
/* 800A7260  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800A7264  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_800A7268:
/* 800A7268  C0 02 92 E0 */	lfs f0, lit_6845(r2)
/* 800A726C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A7270  40 81 00 14 */	ble lbl_800A7284
/* 800A7274  38 61 00 54 */	addi r3, r1, 0x54
/* 800A7278  7C 64 1B 78 */	mr r4, r3
/* 800A727C  EC 20 08 24 */	fdivs f1, f0, f1
/* 800A7280  48 29 FE 59 */	bl PSVECScale
lbl_800A7284:
/* 800A7284  38 61 00 3C */	addi r3, r1, 0x3c
/* 800A7288  38 81 00 54 */	addi r4, r1, 0x54
/* 800A728C  FC 20 F8 90 */	fmr f1, f31
/* 800A7290  48 1B F8 F5 */	bl __ml__4cXyzCFf
/* 800A7294  38 7F 35 C4 */	addi r3, r31, 0x35c4
/* 800A7298  38 81 00 3C */	addi r4, r1, 0x3c
/* 800A729C  7C 65 1B 78 */	mr r5, r3
/* 800A72A0  48 29 FD F1 */	bl PSVECAdd
/* 800A72A4  38 61 00 30 */	addi r3, r1, 0x30
/* 800A72A8  38 81 00 54 */	addi r4, r1, 0x54
/* 800A72AC  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800A72B0  EC 20 F8 28 */	fsubs f1, f0, f31
/* 800A72B4  48 1B F8 D1 */	bl __ml__4cXyzCFf
/* 800A72B8  38 7F 04 F8 */	addi r3, r31, 0x4f8
/* 800A72BC  38 81 00 30 */	addi r4, r1, 0x30
/* 800A72C0  7C 65 1B 78 */	mr r5, r3
/* 800A72C4  48 29 FD CD */	bl PSVECAdd
/* 800A72C8  A8 1F 30 10 */	lha r0, 0x3010(r31)
/* 800A72CC  2C 00 00 00 */	cmpwi r0, 0
/* 800A72D0  41 82 00 54 */	beq lbl_800A7324
/* 800A72D4  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800A72D8  28 00 00 33 */	cmplwi r0, 0x33
/* 800A72DC  41 82 00 0C */	beq lbl_800A72E8
/* 800A72E0  28 00 01 08 */	cmplwi r0, 0x108
/* 800A72E4  40 82 00 40 */	bne lbl_800A7324
lbl_800A72E8:
/* 800A72E8  38 61 00 24 */	addi r3, r1, 0x24
/* 800A72EC  38 81 00 54 */	addi r4, r1, 0x54
/* 800A72F0  48 1B FC 59 */	bl normalizeZP__4cXyzFv
/* 800A72F4  38 61 00 18 */	addi r3, r1, 0x18
/* 800A72F8  38 81 00 54 */	addi r4, r1, 0x54
/* 800A72FC  C0 22 93 78 */	lfs f1, lit_8676(r2)
/* 800A7300  48 1B F8 85 */	bl __ml__4cXyzCFf
/* 800A7304  38 7F 35 C4 */	addi r3, r31, 0x35c4
/* 800A7308  38 81 00 18 */	addi r4, r1, 0x18
/* 800A730C  7C 65 1B 78 */	mr r5, r3
/* 800A7310  48 29 FD 81 */	bl PSVECAdd
/* 800A7314  48 00 00 10 */	b lbl_800A7324
lbl_800A7318:
/* 800A7318  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A731C  D0 1F 35 C4 */	stfs f0, 0x35c4(r31)
/* 800A7320  D0 1F 35 CC */	stfs f0, 0x35cc(r31)
lbl_800A7324:
/* 800A7324  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A7328  D0 1F 35 C8 */	stfs f0, 0x35c8(r31)
/* 800A732C  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 800A7330  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 800A7334  E3 C1 00 88 */	psq_l f30, 136(r1), 0, 0 /* qr0 */
/* 800A7338  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 800A733C  E3 A1 00 78 */	psq_l f29, 120(r1), 0, 0 /* qr0 */
/* 800A7340  CB A1 00 70 */	lfd f29, 0x70(r1)
/* 800A7344  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 800A7348  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 800A734C  7C 08 03 A6 */	mtlr r0
/* 800A7350  38 21 00 A0 */	addi r1, r1, 0xa0
/* 800A7354  4E 80 00 20 */	blr 
