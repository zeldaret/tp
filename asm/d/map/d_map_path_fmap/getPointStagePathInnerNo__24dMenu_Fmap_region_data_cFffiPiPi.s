lbl_8003DB70:
/* 8003DB70  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 8003DB74  7C 08 02 A6 */	mflr r0
/* 8003DB78  90 01 01 04 */	stw r0, 0x104(r1)
/* 8003DB7C  DB E1 00 F0 */	stfd f31, 0xf0(r1)
/* 8003DB80  F3 E1 00 F8 */	psq_st f31, 248(r1), 0, 0 /* qr0 */
/* 8003DB84  DB C1 00 E0 */	stfd f30, 0xe0(r1)
/* 8003DB88  F3 C1 00 E8 */	psq_st f30, 232(r1), 0, 0 /* qr0 */
/* 8003DB8C  DB A1 00 D0 */	stfd f29, 0xd0(r1)
/* 8003DB90  F3 A1 00 D8 */	psq_st f29, 216(r1), 0, 0 /* qr0 */
/* 8003DB94  DB 81 00 C0 */	stfd f28, 0xc0(r1)
/* 8003DB98  F3 81 00 C8 */	psq_st f28, 200(r1), 0, 0 /* qr0 */
/* 8003DB9C  DB 61 00 B0 */	stfd f27, 0xb0(r1)
/* 8003DBA0  F3 61 00 B8 */	psq_st f27, 184(r1), 0, 0 /* qr0 */
/* 8003DBA4  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8003DBA8  48 32 45 F9 */	bl _savegpr_14
/* 8003DBAC  7C 6F 1B 78 */	mr r15, r3
/* 8003DBB0  FF A0 08 90 */	fmr f29, f1
/* 8003DBB4  FF C0 10 90 */	fmr f30, f2
/* 8003DBB8  90 81 00 08 */	stw r4, 8(r1)
/* 8003DBBC  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8003DBC0  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8003DBC4  3A A0 00 00 */	li r21, 0
/* 8003DBC8  38 00 FF FF */	li r0, -1
/* 8003DBCC  90 01 00 44 */	stw r0, 0x44(r1)
/* 8003DBD0  38 00 FF FF */	li r0, -1
/* 8003DBD4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8003DBD8  C0 02 84 20 */	lfs f0, lit_3894(r2)
/* 8003DBDC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8003DBE0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8003DBE4  83 03 00 00 */	lwz r24, 0(r3)
/* 8003DBE8  48 00 02 7C */	b lbl_8003DE64
lbl_8003DBEC:
/* 8003DBEC  80 78 00 08 */	lwz r3, 8(r24)
/* 8003DBF0  28 03 00 00 */	cmplwi r3, 0
/* 8003DBF4  41 82 02 68 */	beq lbl_8003DE5C
/* 8003DBF8  88 03 00 02 */	lbz r0, 2(r3)
/* 8003DBFC  90 01 00 38 */	stw r0, 0x38(r1)
/* 8003DC00  83 38 00 0C */	lwz r25, 0xc(r24)
/* 8003DC04  48 00 02 50 */	b lbl_8003DE54
lbl_8003DC08:
/* 8003DC08  80 01 00 08 */	lwz r0, 8(r1)
/* 8003DC0C  7C 00 A8 00 */	cmpw r0, r21
/* 8003DC10  41 82 00 14 */	beq lbl_8003DC24
/* 8003DC14  7F 03 C3 78 */	mr r3, r24
/* 8003DC18  4B FF FD 45 */	bl isArrival__23dMenu_Fmap_stage_data_cFv
/* 8003DC1C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8003DC20  41 82 02 30 */	beq lbl_8003DE50
lbl_8003DC24:
/* 8003DC24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8003DC28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8003DC2C  80 81 00 38 */	lwz r4, 0x38(r1)
/* 8003DC30  4B FF 74 79 */	bl getSave2__10dSv_save_cFi
/* 8003DC34  88 99 00 10 */	lbz r4, 0x10(r25)
/* 8003DC38  4B FF 6E B5 */	bl isVisitedRoom__13dSv_memory2_cFi
/* 8003DC3C  2C 03 00 00 */	cmpwi r3, 0
/* 8003DC40  41 82 02 10 */	beq lbl_8003DE50
/* 8003DC44  C0 2F 00 08 */	lfs f1, 8(r15)
/* 8003DC48  C0 18 00 14 */	lfs f0, 0x14(r24)
/* 8003DC4C  EF E1 00 2A */	fadds f31, f1, f0
/* 8003DC50  C0 2F 00 0C */	lfs f1, 0xc(r15)
/* 8003DC54  C0 18 00 18 */	lfs f0, 0x18(r24)
/* 8003DC58  EF 61 00 2A */	fadds f27, f1, f0
/* 8003DC5C  80 79 00 00 */	lwz r3, 0(r25)
/* 8003DC60  28 03 00 00 */	cmplwi r3, 0
/* 8003DC64  41 82 01 EC */	beq lbl_8003DE50
/* 8003DC68  80 63 00 08 */	lwz r3, 8(r3)
/* 8003DC6C  28 03 00 00 */	cmplwi r3, 0
/* 8003DC70  41 82 01 E0 */	beq lbl_8003DE50
/* 8003DC74  83 63 00 04 */	lwz r27, 4(r3)
/* 8003DC78  83 43 00 08 */	lwz r26, 8(r3)
/* 8003DC7C  28 1B 00 00 */	cmplwi r27, 0
/* 8003DC80  41 82 01 D0 */	beq lbl_8003DE50
/* 8003DC84  3A 60 00 00 */	li r19, 0
/* 8003DC88  88 03 00 00 */	lbz r0, 0(r3)
/* 8003DC8C  90 01 00 48 */	stw r0, 0x48(r1)
/* 8003DC90  3A 40 00 00 */	li r18, 0
/* 8003DC94  38 01 00 34 */	addi r0, r1, 0x34
/* 8003DC98  90 01 00 58 */	stw r0, 0x58(r1)
/* 8003DC9C  38 01 00 28 */	addi r0, r1, 0x28
/* 8003DCA0  90 01 00 54 */	stw r0, 0x54(r1)
/* 8003DCA4  38 01 00 18 */	addi r0, r1, 0x18
/* 8003DCA8  90 01 00 50 */	stw r0, 0x50(r1)
/* 8003DCAC  48 00 01 90 */	b lbl_8003DE3C
lbl_8003DCB0:
/* 8003DCB0  88 1B 00 01 */	lbz r0, 1(r27)
/* 8003DCB4  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8003DCB8  83 9B 00 04 */	lwz r28, 4(r27)
/* 8003DCBC  28 1C 00 00 */	cmplwi r28, 0
/* 8003DCC0  41 82 01 74 */	beq lbl_8003DE34
/* 8003DCC4  3A 20 00 00 */	li r17, 0
/* 8003DCC8  48 00 01 58 */	b lbl_8003DE20
lbl_8003DCCC:
/* 8003DCCC  89 DC 00 02 */	lbz r14, 2(r28)
/* 8003DCD0  2C 0E 00 00 */	cmpwi r14, 0
/* 8003DCD4  40 81 01 44 */	ble lbl_8003DE18
/* 8003DCD8  83 BC 00 08 */	lwz r29, 8(r28)
/* 8003DCDC  28 1D 00 00 */	cmplwi r29, 0
/* 8003DCE0  41 82 01 38 */	beq lbl_8003DE18
/* 8003DCE4  3A 00 00 00 */	li r16, 0
/* 8003DCE8  48 00 01 20 */	b lbl_8003DE08
lbl_8003DCEC:
/* 8003DCEC  88 1D 00 01 */	lbz r0, 1(r29)
/* 8003DCF0  28 00 00 03 */	cmplwi r0, 3
/* 8003DCF4  40 82 01 0C */	bne lbl_8003DE00
/* 8003DCF8  8A FD 00 02 */	lbz r23, 2(r29)
/* 8003DCFC  2C 17 00 03 */	cmpwi r23, 3
/* 8003DD00  41 80 01 00 */	blt lbl_8003DE00
/* 8003DD04  3A 80 00 00 */	li r20, 0
/* 8003DD08  83 DD 00 04 */	lwz r30, 4(r29)
/* 8003DD0C  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8003DD10  54 00 18 38 */	slwi r0, r0, 3
/* 8003DD14  7C 7A 02 14 */	add r3, r26, r0
/* 8003DD18  A0 1E 00 02 */	lhz r0, 2(r30)
/* 8003DD1C  54 00 18 38 */	slwi r0, r0, 3
/* 8003DD20  7F FA 02 14 */	add r31, r26, r0
/* 8003DD24  3A C0 00 02 */	li r22, 2
/* 8003DD28  C3 82 84 20 */	lfs f28, lit_3894(r2)
/* 8003DD2C  3B DE 00 04 */	addi r30, r30, 4
lbl_8003DD30:
/* 8003DD30  C0 03 00 00 */	lfs f0, 0(r3)
/* 8003DD34  EC 00 F8 2A */	fadds f0, f0, f31
/* 8003DD38  EC 00 E8 28 */	fsubs f0, f0, f29
/* 8003DD3C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8003DD40  C0 03 00 04 */	lfs f0, 4(r3)
/* 8003DD44  EC 00 D8 2A */	fadds f0, f0, f27
/* 8003DD48  EC 00 F0 28 */	fsubs f0, f0, f30
/* 8003DD4C  80 61 00 58 */	lwz r3, 0x58(r1)
/* 8003DD50  D0 03 00 00 */	stfs f0, 0(r3)
/* 8003DD54  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8003DD58  EC 00 F8 2A */	fadds f0, f0, f31
/* 8003DD5C  EC 00 E8 28 */	fsubs f0, f0, f29
/* 8003DD60  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8003DD64  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8003DD68  EC 00 D8 2A */	fadds f0, f0, f27
/* 8003DD6C  EC 00 F0 28 */	fsubs f0, f0, f30
/* 8003DD70  80 61 00 54 */	lwz r3, 0x54(r1)
/* 8003DD74  D0 03 00 00 */	stfs f0, 0(r3)
/* 8003DD78  38 61 00 2C */	addi r3, r1, 0x2c
/* 8003DD7C  38 81 00 20 */	addi r4, r1, 0x20
/* 8003DD80  38 A1 00 14 */	addi r5, r1, 0x14
/* 8003DD84  48 30 94 31 */	bl PSVECCrossProduct
/* 8003DD88  80 61 00 50 */	lwz r3, 0x50(r1)
/* 8003DD8C  C0 03 00 00 */	lfs f0, 0(r3)
/* 8003DD90  FC 00 E0 40 */	fcmpo cr0, f0, f28
/* 8003DD94  4C 41 13 82 */	cror 2, 1, 2
/* 8003DD98  40 82 00 0C */	bne lbl_8003DDA4
/* 8003DD9C  38 60 00 00 */	li r3, 0
/* 8003DDA0  48 00 00 08 */	b lbl_8003DDA8
lbl_8003DDA4:
/* 8003DDA4  38 60 FF FF */	li r3, -1
lbl_8003DDA8:
/* 8003DDA8  2C 16 00 02 */	cmpwi r22, 2
/* 8003DDAC  40 81 00 18 */	ble lbl_8003DDC4
/* 8003DDB0  80 01 00 40 */	lwz r0, 0x40(r1)
/* 8003DDB4  7C 03 00 00 */	cmpw r3, r0
/* 8003DDB8  41 82 00 0C */	beq lbl_8003DDC4
/* 8003DDBC  3A 80 00 01 */	li r20, 1
/* 8003DDC0  48 00 00 28 */	b lbl_8003DDE8
lbl_8003DDC4:
/* 8003DDC4  90 61 00 40 */	stw r3, 0x40(r1)
/* 8003DDC8  7F E3 FB 78 */	mr r3, r31
/* 8003DDCC  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8003DDD0  54 00 18 38 */	slwi r0, r0, 3
/* 8003DDD4  7F FA 02 14 */	add r31, r26, r0
/* 8003DDD8  3A D6 00 01 */	addi r22, r22, 1
/* 8003DDDC  7C 16 B8 00 */	cmpw r22, r23
/* 8003DDE0  3B DE 00 02 */	addi r30, r30, 2
/* 8003DDE4  40 81 FF 4C */	ble lbl_8003DD30
lbl_8003DDE8:
/* 8003DDE8  56 80 06 3F */	clrlwi. r0, r20, 0x18
/* 8003DDEC  40 82 00 14 */	bne lbl_8003DE00
/* 8003DDF0  3A 60 00 01 */	li r19, 1
/* 8003DDF4  92 A1 00 44 */	stw r21, 0x44(r1)
/* 8003DDF8  88 19 00 10 */	lbz r0, 0x10(r25)
/* 8003DDFC  90 01 00 3C */	stw r0, 0x3c(r1)
lbl_8003DE00:
/* 8003DE00  3A 10 00 01 */	addi r16, r16, 1
/* 8003DE04  3B BD 00 08 */	addi r29, r29, 8
lbl_8003DE08:
/* 8003DE08  56 60 06 3F */	clrlwi. r0, r19, 0x18
/* 8003DE0C  40 82 00 0C */	bne lbl_8003DE18
/* 8003DE10  7C 10 70 00 */	cmpw r16, r14
/* 8003DE14  41 80 FE D8 */	blt lbl_8003DCEC
lbl_8003DE18:
/* 8003DE18  3A 31 00 01 */	addi r17, r17, 1
/* 8003DE1C  3B 9C 00 14 */	addi r28, r28, 0x14
lbl_8003DE20:
/* 8003DE20  56 60 06 3F */	clrlwi. r0, r19, 0x18
/* 8003DE24  40 82 00 10 */	bne lbl_8003DE34
/* 8003DE28  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8003DE2C  7C 11 00 00 */	cmpw r17, r0
/* 8003DE30  41 80 FE 9C */	blt lbl_8003DCCC
lbl_8003DE34:
/* 8003DE34  3A 52 00 01 */	addi r18, r18, 1
/* 8003DE38  3B 7B 00 08 */	addi r27, r27, 8
lbl_8003DE3C:
/* 8003DE3C  56 60 06 3F */	clrlwi. r0, r19, 0x18
/* 8003DE40  40 82 00 10 */	bne lbl_8003DE50
/* 8003DE44  80 01 00 48 */	lwz r0, 0x48(r1)
/* 8003DE48  7C 12 00 00 */	cmpw r18, r0
/* 8003DE4C  41 80 FE 64 */	blt lbl_8003DCB0
lbl_8003DE50:
/* 8003DE50  83 39 00 08 */	lwz r25, 8(r25)
lbl_8003DE54:
/* 8003DE54  28 19 00 00 */	cmplwi r25, 0
/* 8003DE58  40 82 FD B0 */	bne lbl_8003DC08
lbl_8003DE5C:
/* 8003DE5C  83 18 00 10 */	lwz r24, 0x10(r24)
/* 8003DE60  3A B5 00 01 */	addi r21, r21, 1
lbl_8003DE64:
/* 8003DE64  28 18 00 00 */	cmplwi r24, 0
/* 8003DE68  40 82 FD 84 */	bne lbl_8003DBEC
/* 8003DE6C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8003DE70  28 00 00 00 */	cmplwi r0, 0
/* 8003DE74  41 82 00 10 */	beq lbl_8003DE84
/* 8003DE78  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8003DE7C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8003DE80  90 03 00 00 */	stw r0, 0(r3)
lbl_8003DE84:
/* 8003DE84  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8003DE88  28 00 00 00 */	cmplwi r0, 0
/* 8003DE8C  41 82 00 10 */	beq lbl_8003DE9C
/* 8003DE90  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8003DE94  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8003DE98  90 03 00 00 */	stw r0, 0(r3)
lbl_8003DE9C:
/* 8003DE9C  38 60 00 01 */	li r3, 1
/* 8003DEA0  E3 E1 00 F8 */	psq_l f31, 248(r1), 0, 0 /* qr0 */
/* 8003DEA4  CB E1 00 F0 */	lfd f31, 0xf0(r1)
/* 8003DEA8  E3 C1 00 E8 */	psq_l f30, 232(r1), 0, 0 /* qr0 */
/* 8003DEAC  CB C1 00 E0 */	lfd f30, 0xe0(r1)
/* 8003DEB0  E3 A1 00 D8 */	psq_l f29, 216(r1), 0, 0 /* qr0 */
/* 8003DEB4  CB A1 00 D0 */	lfd f29, 0xd0(r1)
/* 8003DEB8  E3 81 00 C8 */	psq_l f28, 200(r1), 0, 0 /* qr0 */
/* 8003DEBC  CB 81 00 C0 */	lfd f28, 0xc0(r1)
/* 8003DEC0  E3 61 00 B8 */	psq_l f27, 184(r1), 0, 0 /* qr0 */
/* 8003DEC4  CB 61 00 B0 */	lfd f27, 0xb0(r1)
/* 8003DEC8  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8003DECC  48 32 43 21 */	bl _restgpr_14
/* 8003DED0  80 01 01 04 */	lwz r0, 0x104(r1)
/* 8003DED4  7C 08 03 A6 */	mtlr r0
/* 8003DED8  38 21 01 00 */	addi r1, r1, 0x100
/* 8003DEDC  4E 80 00 20 */	blr 
