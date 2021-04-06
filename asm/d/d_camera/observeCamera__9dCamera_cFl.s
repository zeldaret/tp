lbl_8017D97C:
/* 8017D97C  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 8017D980  7C 08 02 A6 */	mflr r0
/* 8017D984  90 01 01 34 */	stw r0, 0x134(r1)
/* 8017D988  DB E1 01 20 */	stfd f31, 0x120(r1)
/* 8017D98C  F3 E1 01 28 */	psq_st f31, 296(r1), 0, 0 /* qr0 */
/* 8017D990  DB C1 01 10 */	stfd f30, 0x110(r1)
/* 8017D994  F3 C1 01 18 */	psq_st f30, 280(r1), 0, 0 /* qr0 */
/* 8017D998  DB A1 01 00 */	stfd f29, 0x100(r1)
/* 8017D99C  F3 A1 01 08 */	psq_st f29, 264(r1), 0, 0 /* qr0 */
/* 8017D9A0  DB 81 00 F0 */	stfd f28, 0xf0(r1)
/* 8017D9A4  F3 81 00 F8 */	psq_st f28, 248(r1), 0, 0 /* qr0 */
/* 8017D9A8  39 61 00 F0 */	addi r11, r1, 0xf0
/* 8017D9AC  48 1E 48 31 */	bl _savegpr_29
/* 8017D9B0  7C 7D 1B 78 */	mr r29, r3
/* 8017D9B4  7C 9E 23 78 */	mr r30, r4
/* 8017D9B8  C3 E3 09 BC */	lfs f31, 0x9bc(r3)
/* 8017D9BC  80 03 0A F4 */	lwz r0, 0xaf4(r3)
/* 8017D9C0  1F FE 00 78 */	mulli r31, r30, 0x78
/* 8017D9C4  7C 80 FA 14 */	add r4, r0, r31
/* 8017D9C8  C3 C4 00 08 */	lfs f30, 8(r4)
/* 8017D9CC  C3 A4 00 4C */	lfs f29, 0x4c(r4)
/* 8017D9D0  38 61 00 58 */	addi r3, r1, 0x58
/* 8017D9D4  C0 24 00 48 */	lfs f1, 0x48(r4)
/* 8017D9D8  48 0F 35 F1 */	bl __ct__7cSAngleFf
/* 8017D9DC  38 61 00 54 */	addi r3, r1, 0x54
/* 8017D9E0  80 1D 0A F4 */	lwz r0, 0xaf4(r29)
/* 8017D9E4  7C 80 FA 14 */	add r4, r0, r31
/* 8017D9E8  C0 24 00 68 */	lfs f1, 0x68(r4)
/* 8017D9EC  48 0F 35 DD */	bl __ct__7cSAngleFf
/* 8017D9F0  80 1D 01 74 */	lwz r0, 0x174(r29)
/* 8017D9F4  28 00 00 00 */	cmplwi r0, 0
/* 8017D9F8  40 82 02 54 */	bne lbl_8017DC4C
/* 8017D9FC  3C 60 4F 42 */	lis r3, 0x4F42 /* 0x4F425356@ha */
/* 8017DA00  38 03 53 56 */	addi r0, r3, 0x5356 /* 0x4F425356@l */
/* 8017DA04  90 1D 03 E8 */	stw r0, 0x3e8(r29)
/* 8017DA08  38 00 00 01 */	li r0, 1
/* 8017DA0C  98 1D 01 58 */	stb r0, 0x158(r29)
/* 8017DA10  80 1D 07 DC */	lwz r0, 0x7dc(r29)
/* 8017DA14  2C 00 00 FF */	cmpwi r0, 0xff
/* 8017DA18  41 82 00 80 */	beq lbl_8017DA98
/* 8017DA1C  80 1D 0A F4 */	lwz r0, 0xaf4(r29)
/* 8017DA20  7C 60 FA 14 */	add r3, r0, r31
/* 8017DA24  A0 03 00 06 */	lhz r0, 6(r3)
/* 8017DA28  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 8017DA2C  41 82 00 6C */	beq lbl_8017DA98
/* 8017DA30  88 1D 07 BD */	lbz r0, 0x7bd(r29)
/* 8017DA34  98 1D 0A EC */	stb r0, 0xaec(r29)
/* 8017DA38  88 1D 07 BE */	lbz r0, 0x7be(r29)
/* 8017DA3C  98 1D 0A ED */	stb r0, 0xaed(r29)
/* 8017DA40  88 1D 07 BF */	lbz r0, 0x7bf(r29)
/* 8017DA44  98 1D 0A EE */	stb r0, 0xaee(r29)
/* 8017DA48  A0 1D 07 C0 */	lhz r0, 0x7c0(r29)
/* 8017DA4C  7C 00 07 34 */	extsh r0, r0
/* 8017DA50  90 1D 0A F0 */	stw r0, 0xaf0(r29)
/* 8017DA54  80 7D 06 84 */	lwz r3, 0x684(r29)
/* 8017DA58  80 1D 06 8C */	lwz r0, 0x68c(r29)
/* 8017DA5C  1C 00 00 44 */	mulli r0, r0, 0x44
/* 8017DA60  7C 63 02 14 */	add r3, r3, r0
/* 8017DA64  80 1D 01 90 */	lwz r0, 0x190(r29)
/* 8017DA68  1C 00 00 16 */	mulli r0, r0, 0x16
/* 8017DA6C  7C 63 02 14 */	add r3, r3, r0
/* 8017DA70  80 1D 01 A4 */	lwz r0, 0x1a4(r29)
/* 8017DA74  54 00 08 3C */	slwi r0, r0, 1
/* 8017DA78  7C 63 02 14 */	add r3, r3, r0
/* 8017DA7C  A8 03 00 18 */	lha r0, 0x18(r3)
/* 8017DA80  7C 1E 00 00 */	cmpw r30, r0
/* 8017DA84  40 82 00 6C */	bne lbl_8017DAF0
/* 8017DA88  38 7D 0A EC */	addi r3, r29, 0xaec
/* 8017DA8C  7F C4 F3 78 */	mr r4, r30
/* 8017DA90  4B F0 AB 45 */	bl Change__11dCamParam_cFl
/* 8017DA94  48 00 00 5C */	b lbl_8017DAF0
lbl_8017DA98:
/* 8017DA98  38 00 00 FF */	li r0, 0xff
/* 8017DA9C  98 1D 0A EC */	stb r0, 0xaec(r29)
/* 8017DAA0  98 1D 0A ED */	stb r0, 0xaed(r29)
/* 8017DAA4  98 1D 0A EE */	stb r0, 0xaee(r29)
/* 8017DAA8  38 00 FF FF */	li r0, -1
/* 8017DAAC  90 1D 0A F0 */	stw r0, 0xaf0(r29)
/* 8017DAB0  80 7D 06 84 */	lwz r3, 0x684(r29)
/* 8017DAB4  80 1D 06 8C */	lwz r0, 0x68c(r29)
/* 8017DAB8  1C 00 00 44 */	mulli r0, r0, 0x44
/* 8017DABC  7C 63 02 14 */	add r3, r3, r0
/* 8017DAC0  80 1D 01 90 */	lwz r0, 0x190(r29)
/* 8017DAC4  1C 00 00 16 */	mulli r0, r0, 0x16
/* 8017DAC8  7C 63 02 14 */	add r3, r3, r0
/* 8017DACC  80 1D 01 A4 */	lwz r0, 0x1a4(r29)
/* 8017DAD0  54 00 08 3C */	slwi r0, r0, 1
/* 8017DAD4  7C 63 02 14 */	add r3, r3, r0
/* 8017DAD8  A8 03 00 18 */	lha r0, 0x18(r3)
/* 8017DADC  7C 1E 00 00 */	cmpw r30, r0
/* 8017DAE0  40 82 00 10 */	bne lbl_8017DAF0
/* 8017DAE4  38 7D 0A EC */	addi r3, r29, 0xaec
/* 8017DAE8  7F C4 F3 78 */	mr r4, r30
/* 8017DAEC  4B F0 AA E9 */	bl Change__11dCamParam_cFl
lbl_8017DAF0:
/* 8017DAF0  80 1D 07 D8 */	lwz r0, 0x7d8(r29)
/* 8017DAF4  2C 00 00 FF */	cmpwi r0, 0xff
/* 8017DAF8  41 82 00 7C */	beq lbl_8017DB74
/* 8017DAFC  C0 5D 07 CC */	lfs f2, 0x7cc(r29)
/* 8017DB00  C0 3D 07 C8 */	lfs f1, 0x7c8(r29)
/* 8017DB04  C0 1D 07 C4 */	lfs f0, 0x7c4(r29)
/* 8017DB08  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 8017DB0C  D0 21 00 C4 */	stfs f1, 0xc4(r1)
/* 8017DB10  D0 41 00 C8 */	stfs f2, 0xc8(r1)
/* 8017DB14  D0 1D 03 EC */	stfs f0, 0x3ec(r29)
/* 8017DB18  D0 3D 03 F0 */	stfs f1, 0x3f0(r29)
/* 8017DB1C  D0 5D 03 F4 */	stfs f2, 0x3f4(r29)
/* 8017DB20  38 61 00 64 */	addi r3, r1, 0x64
/* 8017DB24  C0 22 9D 88 */	lfs f1, lit_10557(r2)
/* 8017DB28  A8 1D 07 D0 */	lha r0, 0x7d0(r29)
/* 8017DB2C  7C 00 00 D0 */	neg r0, r0
/* 8017DB30  7C 04 07 34 */	extsh r4, r0
/* 8017DB34  A8 BD 07 D2 */	lha r5, 0x7d2(r29)
/* 8017DB38  48 0F 3C E9 */	bl __ct__7cSGlobeFfss
/* 8017DB3C  38 61 00 B4 */	addi r3, r1, 0xb4
/* 8017DB40  38 81 00 64 */	addi r4, r1, 0x64
/* 8017DB44  48 0F 3F 71 */	bl Xyz__7cSGlobeCFv
/* 8017DB48  38 61 00 A8 */	addi r3, r1, 0xa8
/* 8017DB4C  38 9D 03 EC */	addi r4, r29, 0x3ec
/* 8017DB50  38 A1 00 B4 */	addi r5, r1, 0xb4
/* 8017DB54  48 0E 8F 91 */	bl __pl__4cXyzCFRC3Vec
/* 8017DB58  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 8017DB5C  D0 1D 04 10 */	stfs f0, 0x410(r29)
/* 8017DB60  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 8017DB64  D0 1D 04 14 */	stfs f0, 0x414(r29)
/* 8017DB68  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 8017DB6C  D0 1D 04 18 */	stfs f0, 0x418(r29)
/* 8017DB70  48 00 00 78 */	b lbl_8017DBE8
lbl_8017DB74:
/* 8017DB74  C0 1D 00 70 */	lfs f0, 0x70(r29)
/* 8017DB78  D0 1D 03 EC */	stfs f0, 0x3ec(r29)
/* 8017DB7C  C0 1D 00 74 */	lfs f0, 0x74(r29)
/* 8017DB80  D0 1D 03 F0 */	stfs f0, 0x3f0(r29)
/* 8017DB84  C0 1D 00 78 */	lfs f0, 0x78(r29)
/* 8017DB88  D0 1D 03 F4 */	stfs f0, 0x3f4(r29)
/* 8017DB8C  38 7D 00 62 */	addi r3, r29, 0x62
/* 8017DB90  48 0F 35 59 */	bl Inv__7cSAngleCFv
/* 8017DB94  7C 7E 1B 78 */	mr r30, r3
/* 8017DB98  38 7D 00 60 */	addi r3, r29, 0x60
/* 8017DB9C  48 0F 35 4D */	bl Inv__7cSAngleCFv
/* 8017DBA0  7C 64 1B 78 */	mr r4, r3
/* 8017DBA4  38 61 00 5C */	addi r3, r1, 0x5c
/* 8017DBA8  C0 22 9D 88 */	lfs f1, lit_10557(r2)
/* 8017DBAC  7F C5 F3 78 */	mr r5, r30
/* 8017DBB0  48 0F 3C 71 */	bl __ct__7cSGlobeFfss
/* 8017DBB4  38 61 00 9C */	addi r3, r1, 0x9c
/* 8017DBB8  38 81 00 5C */	addi r4, r1, 0x5c
/* 8017DBBC  48 0F 3E F9 */	bl Xyz__7cSGlobeCFv
/* 8017DBC0  38 61 00 90 */	addi r3, r1, 0x90
/* 8017DBC4  38 9D 03 EC */	addi r4, r29, 0x3ec
/* 8017DBC8  38 A1 00 9C */	addi r5, r1, 0x9c
/* 8017DBCC  48 0E 8F 19 */	bl __pl__4cXyzCFRC3Vec
/* 8017DBD0  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 8017DBD4  D0 1D 04 10 */	stfs f0, 0x410(r29)
/* 8017DBD8  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 8017DBDC  D0 1D 04 14 */	stfs f0, 0x414(r29)
/* 8017DBE0  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 8017DBE4  D0 1D 04 18 */	stfs f0, 0x418(r29)
lbl_8017DBE8:
/* 8017DBE8  38 61 00 84 */	addi r3, r1, 0x84
/* 8017DBEC  38 9D 03 EC */	addi r4, r29, 0x3ec
/* 8017DBF0  38 BD 04 10 */	addi r5, r29, 0x410
/* 8017DBF4  48 0E 8F 41 */	bl __mi__4cXyzCFRC3Vec
/* 8017DBF8  38 7D 03 F8 */	addi r3, r29, 0x3f8
/* 8017DBFC  38 81 00 84 */	addi r4, r1, 0x84
/* 8017DC00  48 0F 3E 71 */	bl Val__7cSGlobeFRC4cXyz
/* 8017DC04  C0 1D 04 10 */	lfs f0, 0x410(r29)
/* 8017DC08  D0 1D 00 64 */	stfs f0, 0x64(r29)
/* 8017DC0C  C0 1D 04 14 */	lfs f0, 0x414(r29)
/* 8017DC10  D0 1D 00 68 */	stfs f0, 0x68(r29)
/* 8017DC14  C0 1D 04 18 */	lfs f0, 0x418(r29)
/* 8017DC18  D0 1D 00 6C */	stfs f0, 0x6c(r29)
/* 8017DC1C  C0 1D 03 EC */	lfs f0, 0x3ec(r29)
/* 8017DC20  D0 1D 00 70 */	stfs f0, 0x70(r29)
/* 8017DC24  C0 1D 03 F0 */	lfs f0, 0x3f0(r29)
/* 8017DC28  D0 1D 00 74 */	stfs f0, 0x74(r29)
/* 8017DC2C  C0 1D 03 F4 */	lfs f0, 0x3f4(r29)
/* 8017DC30  D0 1D 00 78 */	stfs f0, 0x78(r29)
/* 8017DC34  C0 1D 03 F8 */	lfs f0, 0x3f8(r29)
/* 8017DC38  D0 1D 00 5C */	stfs f0, 0x5c(r29)
/* 8017DC3C  A8 1D 03 FC */	lha r0, 0x3fc(r29)
/* 8017DC40  B0 1D 00 60 */	sth r0, 0x60(r29)
/* 8017DC44  A8 1D 03 FE */	lha r0, 0x3fe(r29)
/* 8017DC48  B0 1D 00 62 */	sth r0, 0x62(r29)
lbl_8017DC4C:
/* 8017DC4C  80 1D 0A F4 */	lwz r0, 0xaf4(r29)
/* 8017DC50  7C 60 FA 14 */	add r3, r0, r31
/* 8017DC54  A0 03 00 06 */	lhz r0, 6(r3)
/* 8017DC58  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 8017DC5C  41 82 00 A8 */	beq lbl_8017DD04
/* 8017DC60  88 1D 0A EC */	lbz r0, 0xaec(r29)
/* 8017DC64  28 00 00 FF */	cmplwi r0, 0xff
/* 8017DC68  41 82 00 24 */	beq lbl_8017DC8C
/* 8017DC6C  7C 00 07 74 */	extsb r0, r0
/* 8017DC70  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 8017DC74  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8017DC78  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8017DC7C  3C 00 43 30 */	lis r0, 0x4330
/* 8017DC80  90 01 00 D0 */	stw r0, 0xd0(r1)
/* 8017DC84  C8 01 00 D0 */	lfd f0, 0xd0(r1)
/* 8017DC88  EF A0 08 28 */	fsubs f29, f0, f1
lbl_8017DC8C:
/* 8017DC8C  88 1D 0A ED */	lbz r0, 0xaed(r29)
/* 8017DC90  28 00 00 FF */	cmplwi r0, 0xff
/* 8017DC94  41 82 00 34 */	beq lbl_8017DCC8
/* 8017DC98  38 61 00 44 */	addi r3, r1, 0x44
/* 8017DC9C  7C 00 07 74 */	extsb r0, r0
/* 8017DCA0  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 8017DCA4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8017DCA8  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8017DCAC  3C 00 43 30 */	lis r0, 0x4330
/* 8017DCB0  90 01 00 D0 */	stw r0, 0xd0(r1)
/* 8017DCB4  C8 01 00 D0 */	lfd f0, 0xd0(r1)
/* 8017DCB8  EC 20 08 28 */	fsubs f1, f0, f1
/* 8017DCBC  48 0F 33 0D */	bl __ct__7cSAngleFf
/* 8017DCC0  A8 01 00 44 */	lha r0, 0x44(r1)
/* 8017DCC4  B0 01 00 58 */	sth r0, 0x58(r1)
lbl_8017DCC8:
/* 8017DCC8  88 1D 0A EE */	lbz r0, 0xaee(r29)
/* 8017DCCC  28 00 00 FF */	cmplwi r0, 0xff
/* 8017DCD0  41 82 00 34 */	beq lbl_8017DD04
/* 8017DCD4  38 61 00 40 */	addi r3, r1, 0x40
/* 8017DCD8  7C 00 07 74 */	extsb r0, r0
/* 8017DCDC  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 8017DCE0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8017DCE4  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8017DCE8  3C 00 43 30 */	lis r0, 0x4330
/* 8017DCEC  90 01 00 D0 */	stw r0, 0xd0(r1)
/* 8017DCF0  C8 01 00 D0 */	lfd f0, 0xd0(r1)
/* 8017DCF4  EC 20 08 28 */	fsubs f1, f0, f1
/* 8017DCF8  48 0F 32 D1 */	bl __ct__7cSAngleFf
/* 8017DCFC  A8 01 00 40 */	lha r0, 0x40(r1)
/* 8017DD00  B0 01 00 54 */	sth r0, 0x54(r1)
lbl_8017DD04:
/* 8017DD04  C0 3D 01 BC */	lfs f1, 0x1bc(r29)
/* 8017DD08  C0 02 9D 24 */	lfs f0, lit_8530(r2)
/* 8017DD0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8017DD10  4C 41 13 82 */	cror 2, 1, 2
/* 8017DD14  40 82 00 0C */	bne lbl_8017DD20
/* 8017DD18  C3 82 9C A8 */	lfs f28, lit_5658(r2)
/* 8017DD1C  48 00 00 30 */	b lbl_8017DD4C
lbl_8017DD20:
/* 8017DD20  C0 02 9F 00 */	lfs f0, lit_15772(r2)
/* 8017DD24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8017DD28  4C 40 13 82 */	cror 2, 0, 2
/* 8017DD2C  40 82 00 0C */	bne lbl_8017DD38
/* 8017DD30  C3 82 9E 9C */	lfs f28, lit_12868(r2)
/* 8017DD34  48 00 00 18 */	b lbl_8017DD4C
lbl_8017DD38:
/* 8017DD38  C0 02 9F 04 */	lfs f0, lit_15773(r2)
/* 8017DD3C  EC 20 00 72 */	fmuls f1, f0, f1
/* 8017DD40  FC 40 F8 90 */	fmr f2, f31
/* 8017DD44  4B F0 A3 F9 */	bl rationalBezierRatio__8dCamMathFff
/* 8017DD48  FF 80 08 90 */	fmr f28, f1
lbl_8017DD4C:
/* 8017DD4C  C0 3D 01 C0 */	lfs f1, 0x1c0(r29)
/* 8017DD50  C0 02 9D 24 */	lfs f0, lit_8530(r2)
/* 8017DD54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8017DD58  4C 41 13 82 */	cror 2, 1, 2
/* 8017DD5C  40 82 00 0C */	bne lbl_8017DD68
/* 8017DD60  C0 22 9C A8 */	lfs f1, lit_5658(r2)
/* 8017DD64  48 00 00 2C */	b lbl_8017DD90
lbl_8017DD68:
/* 8017DD68  C0 02 9F 00 */	lfs f0, lit_15772(r2)
/* 8017DD6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8017DD70  4C 40 13 82 */	cror 2, 0, 2
/* 8017DD74  40 82 00 0C */	bne lbl_8017DD80
/* 8017DD78  C0 22 9E 9C */	lfs f1, lit_12868(r2)
/* 8017DD7C  48 00 00 14 */	b lbl_8017DD90
lbl_8017DD80:
/* 8017DD80  C0 02 9F 04 */	lfs f0, lit_15773(r2)
/* 8017DD84  EC 20 00 72 */	fmuls f1, f0, f1
/* 8017DD88  FC 40 F8 90 */	fmr f2, f31
/* 8017DD8C  4B F0 A3 B1 */	bl rationalBezierRatio__8dCamMathFff
lbl_8017DD90:
/* 8017DD90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8017DD94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8017DD98  88 03 01 EA */	lbz r0, 0x1ea(r3)
/* 8017DD9C  28 00 00 00 */	cmplwi r0, 0
/* 8017DDA0  41 82 00 08 */	beq lbl_8017DDA8
/* 8017DDA4  FC 20 08 50 */	fneg f1, f1
lbl_8017DDA8:
/* 8017DDA8  38 61 00 3C */	addi r3, r1, 0x3c
/* 8017DDAC  EC 3E 00 72 */	fmuls f1, f30, f1
/* 8017DDB0  48 0F 32 19 */	bl __ct__7cSAngleFf
/* 8017DDB4  38 61 00 38 */	addi r3, r1, 0x38
/* 8017DDB8  38 9D 00 60 */	addi r4, r29, 0x60
/* 8017DDBC  38 A1 00 3C */	addi r5, r1, 0x3c
/* 8017DDC0  48 0F 33 B5 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8017DDC4  38 61 00 4C */	addi r3, r1, 0x4c
/* 8017DDC8  38 81 00 38 */	addi r4, r1, 0x38
/* 8017DDCC  48 0F 31 9D */	bl __ct__7cSAngleFRC7cSAngle
/* 8017DDD0  38 61 00 34 */	addi r3, r1, 0x34
/* 8017DDD4  38 81 00 4C */	addi r4, r1, 0x4c
/* 8017DDD8  3B DD 03 FC */	addi r30, r29, 0x3fc
/* 8017DDDC  7F C5 F3 78 */	mr r5, r30
/* 8017DDE0  48 0F 33 C5 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8017DDE4  A8 01 00 34 */	lha r0, 0x34(r1)
/* 8017DDE8  B0 01 00 50 */	sth r0, 0x50(r1)
/* 8017DDEC  7C 03 07 34 */	extsh r3, r0
/* 8017DDF0  A8 01 00 58 */	lha r0, 0x58(r1)
/* 8017DDF4  7C 03 00 00 */	cmpw r3, r0
/* 8017DDF8  40 81 00 20 */	ble lbl_8017DE18
/* 8017DDFC  38 61 00 30 */	addi r3, r1, 0x30
/* 8017DE00  7F C4 F3 78 */	mr r4, r30
/* 8017DE04  38 A1 00 58 */	addi r5, r1, 0x58
/* 8017DE08  48 0F 33 6D */	bl __pl__7cSAngleCFRC7cSAngle
/* 8017DE0C  A8 01 00 30 */	lha r0, 0x30(r1)
/* 8017DE10  B0 01 00 4C */	sth r0, 0x4c(r1)
/* 8017DE14  48 00 00 48 */	b lbl_8017DE5C
lbl_8017DE18:
/* 8017DE18  38 61 00 2C */	addi r3, r1, 0x2c
/* 8017DE1C  38 81 00 58 */	addi r4, r1, 0x58
/* 8017DE20  48 0F 33 29 */	bl __mi__7cSAngleCFv
/* 8017DE24  A8 01 00 50 */	lha r0, 0x50(r1)
/* 8017DE28  A8 81 00 2C */	lha r4, 0x2c(r1)
/* 8017DE2C  7C 80 02 78 */	xor r0, r4, r0
/* 8017DE30  7C 03 0E 70 */	srawi r3, r0, 1
/* 8017DE34  7C 00 20 38 */	and r0, r0, r4
/* 8017DE38  7C 00 18 50 */	subf r0, r0, r3
/* 8017DE3C  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 8017DE40  41 82 00 1C */	beq lbl_8017DE5C
/* 8017DE44  38 61 00 28 */	addi r3, r1, 0x28
/* 8017DE48  7F C4 F3 78 */	mr r4, r30
/* 8017DE4C  38 A1 00 58 */	addi r5, r1, 0x58
/* 8017DE50  48 0F 33 55 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8017DE54  A8 01 00 28 */	lha r0, 0x28(r1)
/* 8017DE58  B0 01 00 4C */	sth r0, 0x4c(r1)
lbl_8017DE5C:
/* 8017DE5C  38 61 00 0C */	addi r3, r1, 0xc
/* 8017DE60  A8 81 00 4C */	lha r4, 0x4c(r1)
/* 8017DE64  48 0F 31 35 */	bl __ct__7cSAngleFs
/* 8017DE68  A8 01 00 0C */	lha r0, 0xc(r1)
/* 8017DE6C  B0 1D 00 60 */	sth r0, 0x60(r29)
/* 8017DE70  38 61 00 24 */	addi r3, r1, 0x24
/* 8017DE74  EC 3E 07 32 */	fmuls f1, f30, f28
/* 8017DE78  48 0F 31 51 */	bl __ct__7cSAngleFf
/* 8017DE7C  38 61 00 20 */	addi r3, r1, 0x20
/* 8017DE80  38 9D 00 62 */	addi r4, r29, 0x62
/* 8017DE84  38 A1 00 24 */	addi r5, r1, 0x24
/* 8017DE88  48 0F 33 1D */	bl __mi__7cSAngleCFRC7cSAngle
/* 8017DE8C  38 61 00 48 */	addi r3, r1, 0x48
/* 8017DE90  38 81 00 20 */	addi r4, r1, 0x20
/* 8017DE94  48 0F 30 D5 */	bl __ct__7cSAngleFRC7cSAngle
/* 8017DE98  38 61 00 1C */	addi r3, r1, 0x1c
/* 8017DE9C  38 81 00 48 */	addi r4, r1, 0x48
/* 8017DEA0  3B DD 03 FE */	addi r30, r29, 0x3fe
/* 8017DEA4  7F C5 F3 78 */	mr r5, r30
/* 8017DEA8  48 0F 32 FD */	bl __mi__7cSAngleCFRC7cSAngle
/* 8017DEAC  A8 01 00 1C */	lha r0, 0x1c(r1)
/* 8017DEB0  B0 01 00 50 */	sth r0, 0x50(r1)
/* 8017DEB4  7C 03 07 34 */	extsh r3, r0
/* 8017DEB8  A8 01 00 54 */	lha r0, 0x54(r1)
/* 8017DEBC  7C 03 00 00 */	cmpw r3, r0
/* 8017DEC0  40 81 00 20 */	ble lbl_8017DEE0
/* 8017DEC4  38 61 00 18 */	addi r3, r1, 0x18
/* 8017DEC8  7F C4 F3 78 */	mr r4, r30
/* 8017DECC  38 A1 00 54 */	addi r5, r1, 0x54
/* 8017DED0  48 0F 32 A5 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8017DED4  A8 01 00 18 */	lha r0, 0x18(r1)
/* 8017DED8  B0 01 00 48 */	sth r0, 0x48(r1)
/* 8017DEDC  48 00 00 48 */	b lbl_8017DF24
lbl_8017DEE0:
/* 8017DEE0  38 61 00 14 */	addi r3, r1, 0x14
/* 8017DEE4  38 81 00 54 */	addi r4, r1, 0x54
/* 8017DEE8  48 0F 32 61 */	bl __mi__7cSAngleCFv
/* 8017DEEC  A8 01 00 50 */	lha r0, 0x50(r1)
/* 8017DEF0  A8 81 00 14 */	lha r4, 0x14(r1)
/* 8017DEF4  7C 80 02 78 */	xor r0, r4, r0
/* 8017DEF8  7C 03 0E 70 */	srawi r3, r0, 1
/* 8017DEFC  7C 00 20 38 */	and r0, r0, r4
/* 8017DF00  7C 00 18 50 */	subf r0, r0, r3
/* 8017DF04  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 8017DF08  41 82 00 1C */	beq lbl_8017DF24
/* 8017DF0C  38 61 00 10 */	addi r3, r1, 0x10
/* 8017DF10  7F C4 F3 78 */	mr r4, r30
/* 8017DF14  38 A1 00 54 */	addi r5, r1, 0x54
/* 8017DF18  48 0F 32 8D */	bl __mi__7cSAngleCFRC7cSAngle
/* 8017DF1C  A8 01 00 10 */	lha r0, 0x10(r1)
/* 8017DF20  B0 01 00 48 */	sth r0, 0x48(r1)
lbl_8017DF24:
/* 8017DF24  38 61 00 08 */	addi r3, r1, 8
/* 8017DF28  A8 81 00 48 */	lha r4, 0x48(r1)
/* 8017DF2C  48 0F 30 6D */	bl __ct__7cSAngleFs
/* 8017DF30  A8 01 00 08 */	lha r0, 8(r1)
/* 8017DF34  B0 1D 00 62 */	sth r0, 0x62(r29)
/* 8017DF38  38 61 00 78 */	addi r3, r1, 0x78
/* 8017DF3C  38 9D 00 5C */	addi r4, r29, 0x5c
/* 8017DF40  48 0F 3B 75 */	bl Xyz__7cSGlobeCFv
/* 8017DF44  38 61 00 6C */	addi r3, r1, 0x6c
/* 8017DF48  38 9D 00 64 */	addi r4, r29, 0x64
/* 8017DF4C  38 A1 00 78 */	addi r5, r1, 0x78
/* 8017DF50  48 0E 8B 95 */	bl __pl__4cXyzCFRC3Vec
/* 8017DF54  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 8017DF58  D0 1D 00 70 */	stfs f0, 0x70(r29)
/* 8017DF5C  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8017DF60  D0 1D 00 74 */	stfs f0, 0x74(r29)
/* 8017DF64  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8017DF68  D0 1D 00 78 */	stfs f0, 0x78(r29)
/* 8017DF6C  D3 BD 00 80 */	stfs f29, 0x80(r29)
/* 8017DF70  38 60 00 01 */	li r3, 1
/* 8017DF74  E3 E1 01 28 */	psq_l f31, 296(r1), 0, 0 /* qr0 */
/* 8017DF78  CB E1 01 20 */	lfd f31, 0x120(r1)
/* 8017DF7C  E3 C1 01 18 */	psq_l f30, 280(r1), 0, 0 /* qr0 */
/* 8017DF80  CB C1 01 10 */	lfd f30, 0x110(r1)
/* 8017DF84  E3 A1 01 08 */	psq_l f29, 264(r1), 0, 0 /* qr0 */
/* 8017DF88  CB A1 01 00 */	lfd f29, 0x100(r1)
/* 8017DF8C  E3 81 00 F8 */	psq_l f28, 248(r1), 0, 0 /* qr0 */
/* 8017DF90  CB 81 00 F0 */	lfd f28, 0xf0(r1)
/* 8017DF94  39 61 00 F0 */	addi r11, r1, 0xf0
/* 8017DF98  48 1E 42 91 */	bl _restgpr_29
/* 8017DF9C  80 01 01 34 */	lwz r0, 0x134(r1)
/* 8017DFA0  7C 08 03 A6 */	mtlr r0
/* 8017DFA4  38 21 01 30 */	addi r1, r1, 0x130
/* 8017DFA8  4E 80 00 20 */	blr 
