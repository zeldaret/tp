lbl_80C9DADC:
/* 80C9DADC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80C9DAE0  7C 08 02 A6 */	mflr r0
/* 80C9DAE4  90 01 00 64 */	stw r0, 0x64(r1)
/* 80C9DAE8  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80C9DAEC  93 C1 00 58 */	stw r30, 0x58(r1)
/* 80C9DAF0  7C 7E 1B 78 */	mr r30, r3
/* 80C9DAF4  3C 80 80 CA */	lis r4, l_bmdName@ha
/* 80C9DAF8  3B E4 E8 AC */	addi r31, r4, l_bmdName@l
/* 80C9DAFC  88 03 06 68 */	lbz r0, 0x668(r3)
/* 80C9DB00  2C 00 00 02 */	cmpwi r0, 2
/* 80C9DB04  41 82 03 04 */	beq lbl_80C9DE08
/* 80C9DB08  40 80 00 14 */	bge lbl_80C9DB1C
/* 80C9DB0C  2C 00 00 00 */	cmpwi r0, 0
/* 80C9DB10  41 82 00 18 */	beq lbl_80C9DB28
/* 80C9DB14  40 80 01 20 */	bge lbl_80C9DC34
/* 80C9DB18  48 00 03 68 */	b lbl_80C9DE80
lbl_80C9DB1C:
/* 80C9DB1C  2C 00 00 04 */	cmpwi r0, 4
/* 80C9DB20  40 80 03 60 */	bge lbl_80C9DE80
/* 80C9DB24  48 00 03 28 */	b lbl_80C9DE4C
lbl_80C9DB28:
/* 80C9DB28  A0 1E 06 5C */	lhz r0, 0x65c(r30)
/* 80C9DB2C  28 00 00 00 */	cmplwi r0, 0
/* 80C9DB30  40 82 00 9C */	bne lbl_80C9DBCC
/* 80C9DB34  80 1E 05 AC */	lwz r0, 0x5ac(r30)
/* 80C9DB38  28 00 00 00 */	cmplwi r0, 0
/* 80C9DB3C  40 82 00 7C */	bne lbl_80C9DBB8
/* 80C9DB40  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 80C9DB44  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80C9DB48  C0 3E 04 AC */	lfs f1, 0x4ac(r30)
/* 80C9DB4C  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80C9DB50  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 80C9DB54  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80C9DB58  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80C9DB5C  EC 01 00 2A */	fadds f0, f1, f0
/* 80C9DB60  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80C9DB64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C9DB68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C9DB6C  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80C9DB70  38 80 00 00 */	li r4, 0
/* 80C9DB74  90 81 00 08 */	stw r4, 8(r1)
/* 80C9DB78  38 00 FF FF */	li r0, -1
/* 80C9DB7C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C9DB80  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C9DB84  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C9DB88  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C9DB8C  38 80 00 00 */	li r4, 0
/* 80C9DB90  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000833E@ha */
/* 80C9DB94  38 A5 83 3E */	addi r5, r5, 0x833E /* 0x0000833E@l */
/* 80C9DB98  38 C1 00 40 */	addi r6, r1, 0x40
/* 80C9DB9C  38 E0 00 00 */	li r7, 0
/* 80C9DBA0  39 1E 04 B4 */	addi r8, r30, 0x4b4
/* 80C9DBA4  39 20 00 00 */	li r9, 0
/* 80C9DBA8  39 40 00 FF */	li r10, 0xff
/* 80C9DBAC  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80C9DBB0  4B 3A EE E0 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C9DBB4  90 7E 05 AC */	stw r3, 0x5ac(r30)
lbl_80C9DBB8:
/* 80C9DBB8  7F C3 F3 78 */	mr r3, r30
/* 80C9DBBC  48 00 08 1D */	bl setParticle__12daObjStair_cFv
/* 80C9DBC0  38 00 00 01 */	li r0, 1
/* 80C9DBC4  98 1E 06 68 */	stb r0, 0x668(r30)
/* 80C9DBC8  48 00 00 5C */	b lbl_80C9DC24
lbl_80C9DBCC:
/* 80C9DBCC  28 00 00 02 */	cmplwi r0, 2
/* 80C9DBD0  40 82 00 54 */	bne lbl_80C9DC24
/* 80C9DBD4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C9DBD8  54 00 1F 7E */	srwi r0, r0, 0x1d
/* 80C9DBDC  28 00 00 01 */	cmplwi r0, 1
/* 80C9DBE0  41 82 00 44 */	beq lbl_80C9DC24
/* 80C9DBE4  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800CC@ha */
/* 80C9DBE8  38 03 00 CC */	addi r0, r3, 0x00CC /* 0x000800CC@l */
/* 80C9DBEC  90 01 00 30 */	stw r0, 0x30(r1)
/* 80C9DBF0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C9DBF4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C9DBF8  80 63 00 00 */	lwz r3, 0(r3)
/* 80C9DBFC  38 81 00 30 */	addi r4, r1, 0x30
/* 80C9DC00  38 BE 06 30 */	addi r5, r30, 0x630
/* 80C9DC04  38 C0 00 00 */	li r6, 0
/* 80C9DC08  38 E0 00 00 */	li r7, 0
/* 80C9DC0C  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80C9DC10  FC 40 08 90 */	fmr f2, f1
/* 80C9DC14  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80C9DC18  FC 80 18 90 */	fmr f4, f3
/* 80C9DC1C  39 00 00 00 */	li r8, 0
/* 80C9DC20  4B 60 DD 64 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C9DC24:
/* 80C9DC24  A0 7E 06 5C */	lhz r3, 0x65c(r30)
/* 80C9DC28  38 03 FF FF */	addi r0, r3, -1
/* 80C9DC2C  B0 1E 06 5C */	sth r0, 0x65c(r30)
/* 80C9DC30  48 00 02 50 */	b lbl_80C9DE80
lbl_80C9DC34:
/* 80C9DC34  38 7E 06 44 */	addi r3, r30, 0x644
/* 80C9DC38  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80C9DC3C  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 80C9DC40  4B 5D 2B 00 */	b cLib_chaseF__FPfff
/* 80C9DC44  38 7E 06 48 */	addi r3, r30, 0x648
/* 80C9DC48  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80C9DC4C  C0 5E 06 44 */	lfs f2, 0x644(r30)
/* 80C9DC50  4B 5D 2A F0 */	b cLib_chaseF__FPfff
/* 80C9DC54  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 80C9DC58  C0 3E 04 AC */	lfs f1, 0x4ac(r30)
/* 80C9DC5C  88 1E 06 3C */	lbz r0, 0x63c(r30)
/* 80C9DC60  54 00 10 3A */	slwi r0, r0, 2
/* 80C9DC64  38 9F 00 10 */	addi r4, r31, 0x10
/* 80C9DC68  7C 04 04 2E */	lfsx f0, r4, r0
/* 80C9DC6C  EC 21 00 2A */	fadds f1, f1, f0
/* 80C9DC70  C0 5E 06 48 */	lfs f2, 0x648(r30)
/* 80C9DC74  4B 5D 2A CC */	b cLib_chaseF__FPfff
/* 80C9DC78  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C9DC7C  D0 1E 06 54 */	stfs f0, 0x654(r30)
/* 80C9DC80  2C 03 00 00 */	cmpwi r3, 0
/* 80C9DC84  41 82 00 D4 */	beq lbl_80C9DD58
/* 80C9DC88  38 00 00 02 */	li r0, 2
/* 80C9DC8C  98 1E 06 68 */	stb r0, 0x668(r30)
/* 80C9DC90  80 7E 05 AC */	lwz r3, 0x5ac(r30)
/* 80C9DC94  28 03 00 00 */	cmplwi r3, 0
/* 80C9DC98  41 82 00 20 */	beq lbl_80C9DCB8
/* 80C9DC9C  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80C9DCA0  60 00 00 01 */	ori r0, r0, 1
/* 80C9DCA4  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80C9DCA8  38 00 00 01 */	li r0, 1
/* 80C9DCAC  90 03 00 24 */	stw r0, 0x24(r3)
/* 80C9DCB0  38 00 00 00 */	li r0, 0
/* 80C9DCB4  90 1E 05 AC */	stw r0, 0x5ac(r30)
lbl_80C9DCB8:
/* 80C9DCB8  7F C3 F3 78 */	mr r3, r30
/* 80C9DCBC  48 00 08 E5 */	bl removeParticle__12daObjStair_cFv
/* 80C9DCC0  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C9DCC4  54 00 1F 7E */	srwi r0, r0, 0x1d
/* 80C9DCC8  28 00 00 01 */	cmplwi r0, 1
/* 80C9DCCC  41 82 00 48 */	beq lbl_80C9DD14
/* 80C9DCD0  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800CE@ha */
/* 80C9DCD4  38 03 00 CE */	addi r0, r3, 0x00CE /* 0x000800CE@l */
/* 80C9DCD8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80C9DCDC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C9DCE0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C9DCE4  80 63 00 00 */	lwz r3, 0(r3)
/* 80C9DCE8  38 81 00 2C */	addi r4, r1, 0x2c
/* 80C9DCEC  38 BE 06 30 */	addi r5, r30, 0x630
/* 80C9DCF0  38 C0 00 00 */	li r6, 0
/* 80C9DCF4  38 E0 00 00 */	li r7, 0
/* 80C9DCF8  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80C9DCFC  FC 40 08 90 */	fmr f2, f1
/* 80C9DD00  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80C9DD04  FC 80 18 90 */	fmr f4, f3
/* 80C9DD08  39 00 00 00 */	li r8, 0
/* 80C9DD0C  4B 60 DC 78 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C9DD10  48 00 00 DC */	b lbl_80C9DDEC
lbl_80C9DD14:
/* 80C9DD14  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801F1@ha */
/* 80C9DD18  38 03 01 F1 */	addi r0, r3, 0x01F1 /* 0x000801F1@l */
/* 80C9DD1C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80C9DD20  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C9DD24  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C9DD28  80 63 00 00 */	lwz r3, 0(r3)
/* 80C9DD2C  38 81 00 28 */	addi r4, r1, 0x28
/* 80C9DD30  38 BE 06 30 */	addi r5, r30, 0x630
/* 80C9DD34  38 C0 00 00 */	li r6, 0
/* 80C9DD38  38 E0 00 00 */	li r7, 0
/* 80C9DD3C  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80C9DD40  FC 40 08 90 */	fmr f2, f1
/* 80C9DD44  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80C9DD48  FC 80 18 90 */	fmr f4, f3
/* 80C9DD4C  39 00 00 00 */	li r8, 0
/* 80C9DD50  4B 60 DC 34 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C9DD54  48 00 00 98 */	b lbl_80C9DDEC
lbl_80C9DD58:
/* 80C9DD58  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C9DD5C  54 00 1F 7E */	srwi r0, r0, 0x1d
/* 80C9DD60  28 00 00 01 */	cmplwi r0, 1
/* 80C9DD64  41 82 00 48 */	beq lbl_80C9DDAC
/* 80C9DD68  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800CD@ha */
/* 80C9DD6C  38 03 00 CD */	addi r0, r3, 0x00CD /* 0x000800CD@l */
/* 80C9DD70  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C9DD74  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C9DD78  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C9DD7C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C9DD80  38 81 00 24 */	addi r4, r1, 0x24
/* 80C9DD84  38 BE 06 30 */	addi r5, r30, 0x630
/* 80C9DD88  38 C0 00 00 */	li r6, 0
/* 80C9DD8C  38 E0 00 00 */	li r7, 0
/* 80C9DD90  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80C9DD94  FC 40 08 90 */	fmr f2, f1
/* 80C9DD98  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80C9DD9C  FC 80 18 90 */	fmr f4, f3
/* 80C9DDA0  39 00 00 00 */	li r8, 0
/* 80C9DDA4  4B 60 E7 68 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C9DDA8  48 00 00 44 */	b lbl_80C9DDEC
lbl_80C9DDAC:
/* 80C9DDAC  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801F0@ha */
/* 80C9DDB0  38 03 01 F0 */	addi r0, r3, 0x01F0 /* 0x000801F0@l */
/* 80C9DDB4  90 01 00 20 */	stw r0, 0x20(r1)
/* 80C9DDB8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C9DDBC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C9DDC0  80 63 00 00 */	lwz r3, 0(r3)
/* 80C9DDC4  38 81 00 20 */	addi r4, r1, 0x20
/* 80C9DDC8  38 BE 06 30 */	addi r5, r30, 0x630
/* 80C9DDCC  38 C0 00 00 */	li r6, 0
/* 80C9DDD0  38 E0 00 00 */	li r7, 0
/* 80C9DDD4  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80C9DDD8  FC 40 08 90 */	fmr f2, f1
/* 80C9DDDC  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80C9DDE0  FC 80 18 90 */	fmr f4, f3
/* 80C9DDE4  39 00 00 00 */	li r8, 0
/* 80C9DDE8  4B 60 E7 24 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C9DDEC:
/* 80C9DDEC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C9DDF0  D0 1E 06 50 */	stfs f0, 0x650(r30)
/* 80C9DDF4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C9DDF8  D0 1E 06 54 */	stfs f0, 0x654(r30)
/* 80C9DDFC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C9DE00  D0 1E 06 58 */	stfs f0, 0x658(r30)
/* 80C9DE04  48 00 00 7C */	b lbl_80C9DE80
lbl_80C9DE08:
/* 80C9DE08  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80C9DE0C  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80C9DE10  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80C9DE14  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C9DE18  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80C9DE1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C9DE20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C9DE24  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C9DE28  38 80 00 04 */	li r4, 4
/* 80C9DE2C  38 A0 00 1F */	li r5, 0x1f
/* 80C9DE30  38 C1 00 34 */	addi r6, r1, 0x34
/* 80C9DE34  4B 3D 1B F0 */	b StartShock__12dVibration_cFii4cXyz
/* 80C9DE38  38 00 00 03 */	li r0, 3
/* 80C9DE3C  98 1E 06 68 */	stb r0, 0x668(r30)
/* 80C9DE40  38 00 00 0F */	li r0, 0xf
/* 80C9DE44  B0 1E 06 5C */	sth r0, 0x65c(r30)
/* 80C9DE48  48 00 00 38 */	b lbl_80C9DE80
lbl_80C9DE4C:
/* 80C9DE4C  A0 9E 06 5C */	lhz r4, 0x65c(r30)
/* 80C9DE50  38 04 FF FF */	addi r0, r4, -1
/* 80C9DE54  B0 1E 06 5C */	sth r0, 0x65c(r30)
/* 80C9DE58  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C9DE5C  D0 1E 06 50 */	stfs f0, 0x650(r30)
/* 80C9DE60  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C9DE64  D0 1E 06 54 */	stfs f0, 0x654(r30)
/* 80C9DE68  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C9DE6C  D0 1E 06 58 */	stfs f0, 0x658(r30)
/* 80C9DE70  A0 1E 06 5C */	lhz r0, 0x65c(r30)
/* 80C9DE74  28 00 00 00 */	cmplwi r0, 0
/* 80C9DE78  40 82 00 08 */	bne lbl_80C9DE80
/* 80C9DE7C  48 00 00 9D */	bl modeWaitLowerInit__12daObjStair_cFv
lbl_80C9DE80:
/* 80C9DE80  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80C9DE84  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80C9DE88  A0 1E 06 5C */	lhz r0, 0x65c(r30)
/* 80C9DE8C  1C 00 3A 98 */	mulli r0, r0, 0x3a98
/* 80C9DE90  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C9DE94  7C 63 02 14 */	add r3, r3, r0
/* 80C9DE98  C0 43 00 04 */	lfs f2, 4(r3)
/* 80C9DE9C  C0 3E 06 54 */	lfs f1, 0x654(r30)
/* 80C9DEA0  C0 1E 06 60 */	lfs f0, 0x660(r30)
/* 80C9DEA4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80C9DEA8  EC 01 00 2A */	fadds f0, f1, f0
/* 80C9DEAC  D0 1E 06 54 */	stfs f0, 0x654(r30)
/* 80C9DEB0  38 7E 06 60 */	addi r3, r30, 0x660
/* 80C9DEB4  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80C9DEB8  FC 40 08 90 */	fmr f2, f1
/* 80C9DEBC  4B 5D 1B C4 */	b cLib_addCalc0__FPfff
/* 80C9DEC0  38 60 00 01 */	li r3, 1
/* 80C9DEC4  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80C9DEC8  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 80C9DECC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80C9DED0  7C 08 03 A6 */	mtlr r0
/* 80C9DED4  38 21 00 60 */	addi r1, r1, 0x60
/* 80C9DED8  4E 80 00 20 */	blr 
