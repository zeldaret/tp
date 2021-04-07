lbl_8052DAE4:
/* 8052DAE4  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 8052DAE8  7C 08 02 A6 */	mflr r0
/* 8052DAEC  90 01 01 14 */	stw r0, 0x114(r1)
/* 8052DAF0  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 8052DAF4  F3 E1 01 08 */	psq_st f31, 264(r1), 0, 0 /* qr0 */
/* 8052DAF8  DB C1 00 F0 */	stfd f30, 0xf0(r1)
/* 8052DAFC  F3 C1 00 F8 */	psq_st f30, 248(r1), 0, 0 /* qr0 */
/* 8052DB00  DB A1 00 E0 */	stfd f29, 0xe0(r1)
/* 8052DB04  F3 A1 00 E8 */	psq_st f29, 232(r1), 0, 0 /* qr0 */
/* 8052DB08  DB 81 00 D0 */	stfd f28, 0xd0(r1)
/* 8052DB0C  F3 81 00 D8 */	psq_st f28, 216(r1), 0, 0 /* qr0 */
/* 8052DB10  DB 61 00 C0 */	stfd f27, 0xc0(r1)
/* 8052DB14  F3 61 00 C8 */	psq_st f27, 200(r1), 0, 0 /* qr0 */
/* 8052DB18  DB 41 00 B0 */	stfd f26, 0xb0(r1)
/* 8052DB1C  F3 41 00 B8 */	psq_st f26, 184(r1), 0, 0 /* qr0 */
/* 8052DB20  DB 21 00 A0 */	stfd f25, 0xa0(r1)
/* 8052DB24  F3 21 00 A8 */	psq_st f25, 168(r1), 0, 0 /* qr0 */
/* 8052DB28  DB 01 00 90 */	stfd f24, 0x90(r1)
/* 8052DB2C  F3 01 00 98 */	psq_st f24, 152(r1), 0, 0 /* qr0 */
/* 8052DB30  39 61 00 90 */	addi r11, r1, 0x90
/* 8052DB34  4B E3 46 85 */	bl _savegpr_20
/* 8052DB38  7C 77 1B 78 */	mr r23, r3
/* 8052DB3C  3C 60 80 53 */	lis r3, lit_3679@ha /* 0x80536168@ha */
/* 8052DB40  3B E3 61 68 */	addi r31, r3, lit_3679@l /* 0x80536168@l */
/* 8052DB44  C0 17 04 D0 */	lfs f0, 0x4d0(r23)
/* 8052DB48  D0 17 06 64 */	stfs f0, 0x664(r23)
/* 8052DB4C  C0 17 04 D4 */	lfs f0, 0x4d4(r23)
/* 8052DB50  D0 17 06 68 */	stfs f0, 0x668(r23)
/* 8052DB54  C0 17 04 D8 */	lfs f0, 0x4d8(r23)
/* 8052DB58  D0 17 06 6C */	stfs f0, 0x66c(r23)
/* 8052DB5C  3B 57 06 70 */	addi r26, r23, 0x670
/* 8052DB60  3B 37 06 E2 */	addi r25, r23, 0x6e2
/* 8052DB64  88 17 06 34 */	lbz r0, 0x634(r23)
/* 8052DB68  28 00 00 01 */	cmplwi r0, 1
/* 8052DB6C  40 82 00 0C */	bne lbl_8052DB78
/* 8052DB70  C3 1F 00 00 */	lfs f24, 0(r31)
/* 8052DB74  48 00 00 08 */	b lbl_8052DB7C
lbl_8052DB78:
/* 8052DB78  C3 1F 00 58 */	lfs f24, 0x58(r31)
lbl_8052DB7C:
/* 8052DB7C  28 00 00 05 */	cmplwi r0, 5
/* 8052DB80  41 80 00 0C */	blt lbl_8052DB8C
/* 8052DB84  C3 1F 00 F4 */	lfs f24, 0xf4(r31)
/* 8052DB88  48 00 00 44 */	b lbl_8052DBCC
lbl_8052DB8C:
/* 8052DB8C  C0 37 05 2C */	lfs f1, 0x52c(r23)
/* 8052DB90  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 8052DB94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052DB98  40 81 00 0C */	ble lbl_8052DBA4
/* 8052DB9C  C3 1F 00 F8 */	lfs f24, 0xf8(r31)
/* 8052DBA0  48 00 00 2C */	b lbl_8052DBCC
lbl_8052DBA4:
/* 8052DBA4  A8 77 05 B6 */	lha r3, 0x5b6(r23)
/* 8052DBA8  2C 03 00 32 */	cmpwi r3, 0x32
/* 8052DBAC  41 82 00 0C */	beq lbl_8052DBB8
/* 8052DBB0  2C 03 00 33 */	cmpwi r3, 0x33
/* 8052DBB4  40 82 00 18 */	bne lbl_8052DBCC
lbl_8052DBB8:
/* 8052DBB8  28 00 00 03 */	cmplwi r0, 3
/* 8052DBBC  40 82 00 0C */	bne lbl_8052DBC8
/* 8052DBC0  C3 1F 00 FC */	lfs f24, 0xfc(r31)
/* 8052DBC4  48 00 00 08 */	b lbl_8052DBCC
lbl_8052DBC8:
/* 8052DBC8  C3 1F 00 F8 */	lfs f24, 0xf8(r31)
lbl_8052DBCC:
/* 8052DBCC  88 77 06 5D */	lbz r3, 0x65d(r23)
/* 8052DBD0  28 03 00 00 */	cmplwi r3, 0
/* 8052DBD4  41 82 00 10 */	beq lbl_8052DBE4
/* 8052DBD8  38 03 FF FF */	addi r0, r3, -1
/* 8052DBDC  98 17 06 5D */	stb r0, 0x65d(r23)
/* 8052DBE0  C3 1F 00 24 */	lfs f24, 0x24(r31)
lbl_8052DBE4:
/* 8052DBE4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8052DBE8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8052DBEC  80 63 00 00 */	lwz r3, 0(r3)
/* 8052DBF0  A8 97 04 E6 */	lha r4, 0x4e6(r23)
/* 8052DBF4  4B AD E7 E9 */	bl mDoMtx_YrotS__FPA4_fs
/* 8052DBF8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8052DBFC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8052DC00  80 63 00 00 */	lwz r3, 0(r3)
/* 8052DC04  A8 97 04 E4 */	lha r4, 0x4e4(r23)
/* 8052DC08  4B AD E7 95 */	bl mDoMtx_XrotM__FPA4_fs
/* 8052DC0C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8052DC10  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8052DC14  80 63 00 00 */	lwz r3, 0(r3)
/* 8052DC18  A8 97 04 E8 */	lha r4, 0x4e8(r23)
/* 8052DC1C  4B AD E8 B1 */	bl mDoMtx_ZrotM__FPA4_fs
/* 8052DC20  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8052DC24  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8052DC28  80 63 00 00 */	lwz r3, 0(r3)
/* 8052DC2C  A8 97 07 30 */	lha r4, 0x730(r23)
/* 8052DC30  4B AD E8 05 */	bl mDoMtx_YrotM__FPA4_fs
/* 8052DC34  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8052DC38  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8052DC3C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8052DC40  FC 20 C0 50 */	fneg f1, f24
/* 8052DC44  C0 17 05 BC */	lfs f0, 0x5bc(r23)
/* 8052DC48  EC 01 00 32 */	fmuls f0, f1, f0
/* 8052DC4C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8052DC50  38 61 00 20 */	addi r3, r1, 0x20
/* 8052DC54  38 81 00 08 */	addi r4, r1, 8
/* 8052DC58  4B D4 32 95 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8052DC5C  C3 BF 00 00 */	lfs f29, 0(r31)
/* 8052DC60  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 8052DC64  C0 17 05 D4 */	lfs f0, 0x5d4(r23)
/* 8052DC68  EF 81 00 32 */	fmuls f28, f1, f0
/* 8052DC6C  38 A1 00 28 */	addi r5, r1, 0x28
/* 8052DC70  38 9F 00 C4 */	addi r4, r31, 0xc4
/* 8052DC74  38 00 00 05 */	li r0, 5
/* 8052DC78  7C 09 03 A6 */	mtctr r0
lbl_8052DC7C:
/* 8052DC7C  80 64 00 04 */	lwz r3, 4(r4)
/* 8052DC80  84 04 00 08 */	lwzu r0, 8(r4)
/* 8052DC84  90 65 00 04 */	stw r3, 4(r5)
/* 8052DC88  94 05 00 08 */	stwu r0, 8(r5)
/* 8052DC8C  42 00 FF F0 */	bdnz lbl_8052DC7C
/* 8052DC90  80 04 00 04 */	lwz r0, 4(r4)
/* 8052DC94  90 05 00 04 */	stw r0, 4(r5)
/* 8052DC98  88 17 06 34 */	lbz r0, 0x634(r23)
/* 8052DC9C  54 00 10 3A */	slwi r0, r0, 2
/* 8052DCA0  38 61 00 2C */	addi r3, r1, 0x2c
/* 8052DCA4  7F 03 00 2E */	lwzx r24, r3, r0
/* 8052DCA8  C3 7F 01 00 */	lfs f27, 0x100(r31)
/* 8052DCAC  80 17 07 2C */	lwz r0, 0x72c(r23)
/* 8052DCB0  2C 00 00 04 */	cmpwi r0, 4
/* 8052DCB4  41 82 00 10 */	beq lbl_8052DCC4
/* 8052DCB8  2C 00 00 06 */	cmpwi r0, 6
/* 8052DCBC  40 80 00 08 */	bge lbl_8052DCC4
/* 8052DCC0  C3 7F 00 58 */	lfs f27, 0x58(r31)
lbl_8052DCC4:
/* 8052DCC4  38 60 2A F8 */	li r3, 0x2af8
/* 8052DCC8  2C 00 00 04 */	cmpwi r0, 4
/* 8052DCCC  40 82 00 0C */	bne lbl_8052DCD8
/* 8052DCD0  38 60 2E E0 */	li r3, 0x2ee0
/* 8052DCD4  48 00 00 0C */	b lbl_8052DCE0
lbl_8052DCD8:
/* 8052DCD8  40 80 00 08 */	bge lbl_8052DCE0
/* 8052DCDC  38 60 36 B0 */	li r3, 0x36b0
lbl_8052DCE0:
/* 8052DCE0  3B A0 00 01 */	li r29, 1
/* 8052DCE4  3A C0 00 04 */	li r22, 4
/* 8052DCE8  7C 60 07 34 */	extsh r0, r3
/* 8052DCEC  7F C0 00 D0 */	neg r30, r0
/* 8052DCF0  C3 DF 00 00 */	lfs f30, 0(r31)
/* 8052DCF4  C3 FF 00 18 */	lfs f31, 0x18(r31)
/* 8052DCF8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8052DCFC  3A 83 9A 20 */	addi r20, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8052DD00  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8052DD04  3A A3 07 68 */	addi r21, r3, calc_mtx@l /* 0x80450768@l */
/* 8052DD08  48 00 01 4C */	b lbl_8052DE54
lbl_8052DD0C:
/* 8052DD0C  2C 1D 00 01 */	cmpwi r29, 1
/* 8052DD10  40 82 00 10 */	bne lbl_8052DD20
/* 8052DD14  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8052DD18  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8052DD1C  48 00 00 18 */	b lbl_8052DD34
lbl_8052DD20:
/* 8052DD20  C0 37 05 BC */	lfs f1, 0x5bc(r23)
/* 8052DD24  38 16 FF F8 */	addi r0, r22, -8
/* 8052DD28  7C 18 04 2E */	lfsx f0, r24, r0
/* 8052DD2C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8052DD30  D0 01 00 28 */	stfs f0, 0x28(r1)
lbl_8052DD34:
/* 8052DD34  C0 3A 00 00 */	lfs f1, 0(r26)
/* 8052DD38  C0 1A FF F4 */	lfs f0, -0xc(r26)
/* 8052DD3C  EC 21 00 28 */	fsubs f1, f1, f0
/* 8052DD40  C0 01 00 08 */	lfs f0, 8(r1)
/* 8052DD44  EC 00 07 B2 */	fmuls f0, f0, f30
/* 8052DD48  EF 41 00 2A */	fadds f26, f1, f0
/* 8052DD4C  C0 3A 00 04 */	lfs f1, 4(r26)
/* 8052DD50  C0 1A FF F8 */	lfs f0, -8(r26)
/* 8052DD54  EC 21 00 28 */	fsubs f1, f1, f0
/* 8052DD58  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8052DD5C  EC 00 07 B2 */	fmuls f0, f0, f30
/* 8052DD60  EF 21 00 2A */	fadds f25, f1, f0
/* 8052DD64  C0 3A 00 08 */	lfs f1, 8(r26)
/* 8052DD68  C0 1A FF FC */	lfs f0, -4(r26)
/* 8052DD6C  EC 21 00 28 */	fsubs f1, f1, f0
/* 8052DD70  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8052DD74  EC 00 07 B2 */	fmuls f0, f0, f30
/* 8052DD78  EF 01 00 2A */	fadds f24, f1, f0
/* 8052DD7C  FC 20 D0 90 */	fmr f1, f26
/* 8052DD80  FC 40 C0 90 */	fmr f2, f24
/* 8052DD84  4B D3 98 F1 */	bl cM_atan2s__Fff
/* 8052DD88  7C 7B 07 34 */	extsh r27, r3
/* 8052DD8C  EC 3A 06 B2 */	fmuls f1, f26, f26
/* 8052DD90  EC 18 06 32 */	fmuls f0, f24, f24
/* 8052DD94  EC 41 00 2A */	fadds f2, f1, f0
/* 8052DD98  FC 02 F8 40 */	fcmpo cr0, f2, f31
/* 8052DD9C  40 81 00 0C */	ble lbl_8052DDA8
/* 8052DDA0  FC 00 10 34 */	frsqrte f0, f2
/* 8052DDA4  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8052DDA8:
/* 8052DDA8  FC 20 C8 90 */	fmr f1, f25
/* 8052DDAC  4B D3 98 C9 */	bl cM_atan2s__Fff
/* 8052DDB0  7C 03 00 D0 */	neg r0, r3
/* 8052DDB4  7C 1C 07 34 */	extsh r28, r0
/* 8052DDB8  A8 77 07 32 */	lha r3, 0x732(r23)
/* 8052DDBC  7C 1D F1 D6 */	mullw r0, r29, r30
/* 8052DDC0  7C 03 02 14 */	add r0, r3, r0
/* 8052DDC4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8052DDC8  7C 14 04 2E */	lfsx f0, r20, r0
/* 8052DDCC  EC 1C 00 32 */	fmuls f0, f28, f0
/* 8052DDD0  EC 1D 00 32 */	fmuls f0, f29, f0
/* 8052DDD4  FC 00 00 1E */	fctiwz f0, f0
/* 8052DDD8  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 8052DDDC  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 8052DDE0  7F 7B 02 14 */	add r27, r27, r0
/* 8052DDE4  EF BD 06 F2 */	fmuls f29, f29, f27
/* 8052DDE8  80 75 00 00 */	lwz r3, 0(r21)
/* 8052DDEC  7F 64 DB 78 */	mr r4, r27
/* 8052DDF0  4B AD E5 ED */	bl mDoMtx_YrotS__FPA4_fs
/* 8052DDF4  80 75 00 00 */	lwz r3, 0(r21)
/* 8052DDF8  7F 84 E3 78 */	mr r4, r28
/* 8052DDFC  4B AD E5 A1 */	bl mDoMtx_XrotM__FPA4_fs
/* 8052DE00  38 61 00 20 */	addi r3, r1, 0x20
/* 8052DE04  38 81 00 14 */	addi r4, r1, 0x14
/* 8052DE08  4B D4 30 E5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8052DE0C  C0 3A FF F4 */	lfs f1, -0xc(r26)
/* 8052DE10  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8052DE14  EC 01 00 2A */	fadds f0, f1, f0
/* 8052DE18  D0 1A 00 00 */	stfs f0, 0(r26)
/* 8052DE1C  C0 3A FF F8 */	lfs f1, -8(r26)
/* 8052DE20  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8052DE24  EC 01 00 2A */	fadds f0, f1, f0
/* 8052DE28  D0 1A 00 04 */	stfs f0, 4(r26)
/* 8052DE2C  C0 3A FF FC */	lfs f1, -4(r26)
/* 8052DE30  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8052DE34  EC 01 00 2A */	fadds f0, f1, f0
/* 8052DE38  D0 1A 00 08 */	stfs f0, 8(r26)
/* 8052DE3C  B3 99 00 00 */	sth r28, 0(r25)
/* 8052DE40  B3 79 00 02 */	sth r27, 2(r25)
/* 8052DE44  3B BD 00 01 */	addi r29, r29, 1
/* 8052DE48  3A D6 00 04 */	addi r22, r22, 4
/* 8052DE4C  3B 5A 00 0C */	addi r26, r26, 0xc
/* 8052DE50  3B 39 00 06 */	addi r25, r25, 6
lbl_8052DE54:
/* 8052DE54  80 17 07 2C */	lwz r0, 0x72c(r23)
/* 8052DE58  7C 1D 00 00 */	cmpw r29, r0
/* 8052DE5C  40 81 FE B0 */	ble lbl_8052DD0C
/* 8052DE60  E3 E1 01 08 */	psq_l f31, 264(r1), 0, 0 /* qr0 */
/* 8052DE64  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 8052DE68  E3 C1 00 F8 */	psq_l f30, 248(r1), 0, 0 /* qr0 */
/* 8052DE6C  CB C1 00 F0 */	lfd f30, 0xf0(r1)
/* 8052DE70  E3 A1 00 E8 */	psq_l f29, 232(r1), 0, 0 /* qr0 */
/* 8052DE74  CB A1 00 E0 */	lfd f29, 0xe0(r1)
/* 8052DE78  E3 81 00 D8 */	psq_l f28, 216(r1), 0, 0 /* qr0 */
/* 8052DE7C  CB 81 00 D0 */	lfd f28, 0xd0(r1)
/* 8052DE80  E3 61 00 C8 */	psq_l f27, 200(r1), 0, 0 /* qr0 */
/* 8052DE84  CB 61 00 C0 */	lfd f27, 0xc0(r1)
/* 8052DE88  E3 41 00 B8 */	psq_l f26, 184(r1), 0, 0 /* qr0 */
/* 8052DE8C  CB 41 00 B0 */	lfd f26, 0xb0(r1)
/* 8052DE90  E3 21 00 A8 */	psq_l f25, 168(r1), 0, 0 /* qr0 */
/* 8052DE94  CB 21 00 A0 */	lfd f25, 0xa0(r1)
/* 8052DE98  E3 01 00 98 */	psq_l f24, 152(r1), 0, 0 /* qr0 */
/* 8052DE9C  CB 01 00 90 */	lfd f24, 0x90(r1)
/* 8052DEA0  39 61 00 90 */	addi r11, r1, 0x90
/* 8052DEA4  4B E3 43 61 */	bl _restgpr_20
/* 8052DEA8  80 01 01 14 */	lwz r0, 0x114(r1)
/* 8052DEAC  7C 08 03 A6 */	mtlr r0
/* 8052DEB0  38 21 01 10 */	addi r1, r1, 0x110
/* 8052DEB4  4E 80 00 20 */	blr 
