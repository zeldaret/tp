lbl_8067DC58:
/* 8067DC58  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8067DC5C  7C 08 02 A6 */	mflr r0
/* 8067DC60  90 01 00 34 */	stw r0, 0x34(r1)
/* 8067DC64  39 61 00 30 */	addi r11, r1, 0x30
/* 8067DC68  4B CE 45 70 */	b _savegpr_28
/* 8067DC6C  7C 7E 1B 78 */	mr r30, r3
/* 8067DC70  3C 60 80 68 */	lis r3, lit_3983@ha
/* 8067DC74  3B E3 E8 80 */	addi r31, r3, lit_3983@l
/* 8067DC78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8067DC7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8067DC80  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 8067DC84  A8 1E 05 C4 */	lha r0, 0x5c4(r30)
/* 8067DC88  2C 00 00 00 */	cmpwi r0, 0
/* 8067DC8C  40 82 00 24 */	bne lbl_8067DCB0
/* 8067DC90  38 00 2E E0 */	li r0, 0x2ee0
/* 8067DC94  B0 1E 0A 0C */	sth r0, 0xa0c(r30)
/* 8067DC98  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 8067DC9C  D0 1E 0A 10 */	stfs f0, 0xa10(r30)
/* 8067DCA0  38 00 00 01 */	li r0, 1
/* 8067DCA4  B0 1E 05 C4 */	sth r0, 0x5c4(r30)
/* 8067DCA8  38 00 00 50 */	li r0, 0x50
/* 8067DCAC  B0 1E 05 C6 */	sth r0, 0x5c6(r30)
lbl_8067DCB0:
/* 8067DCB0  A8 1E 05 C6 */	lha r0, 0x5c6(r30)
/* 8067DCB4  2C 00 00 00 */	cmpwi r0, 0
/* 8067DCB8  40 82 00 0C */	bne lbl_8067DCC4
/* 8067DCBC  7F C3 F3 78 */	mr r3, r30
/* 8067DCC0  4B 99 BF BC */	b fopAcM_delete__FP10fopAc_ac_c
lbl_8067DCC4:
/* 8067DCC4  A8 1E 0A 0C */	lha r0, 0xa0c(r30)
/* 8067DCC8  2C 00 00 00 */	cmpwi r0, 0
/* 8067DCCC  40 81 01 04 */	ble lbl_8067DDD0
/* 8067DCD0  A8 7E 04 E4 */	lha r3, 0x4e4(r30)
/* 8067DCD4  C0 1E 0A 10 */	lfs f0, 0xa10(r30)
/* 8067DCD8  FC 00 00 1E */	fctiwz f0, f0
/* 8067DCDC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8067DCE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8067DCE4  7C 03 02 14 */	add r0, r3, r0
/* 8067DCE8  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 8067DCEC  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 8067DCF0  A8 7E 0A 0C */	lha r3, 0xa0c(r30)
/* 8067DCF4  7C 04 18 00 */	cmpw r4, r3
/* 8067DCF8  41 81 00 14 */	bgt lbl_8067DD0C
/* 8067DCFC  7C 03 00 D0 */	neg r0, r3
/* 8067DD00  7C 00 07 34 */	extsh r0, r0
/* 8067DD04  7C 04 00 00 */	cmpw r4, r0
/* 8067DD08  40 80 00 C8 */	bge lbl_8067DDD0
lbl_8067DD0C:
/* 8067DD0C  2C 03 03 E8 */	cmpwi r3, 0x3e8
/* 8067DD10  40 81 00 7C */	ble lbl_8067DD8C
/* 8067DD14  C0 5F 00 B0 */	lfs f2, 0xb0(r31)
/* 8067DD18  C8 3F 00 C8 */	lfd f1, 0xc8(r31)
/* 8067DD1C  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8067DD20  90 01 00 14 */	stw r0, 0x14(r1)
/* 8067DD24  3C 00 43 30 */	lis r0, 0x4330
/* 8067DD28  90 01 00 10 */	stw r0, 0x10(r1)
/* 8067DD2C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8067DD30  EC 00 08 28 */	fsubs f0, f0, f1
/* 8067DD34  EC 22 00 32 */	fmuls f1, f2, f0
/* 8067DD38  4B CE 43 74 */	b __cvt_fp2unsigned
/* 8067DD3C  7C 7C 1B 78 */	mr r28, r3
/* 8067DD40  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8067DD44  7C 03 07 74 */	extsb r3, r0
/* 8067DD48  4B 9A F3 24 */	b dComIfGp_getReverb__Fi
/* 8067DD4C  7C 67 1B 78 */	mr r7, r3
/* 8067DD50  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800C4@ha */
/* 8067DD54  38 03 00 C4 */	addi r0, r3, 0x00C4 /* 0x000800C4@l */
/* 8067DD58  90 01 00 08 */	stw r0, 8(r1)
/* 8067DD5C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8067DD60  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8067DD64  80 63 00 00 */	lwz r3, 0(r3)
/* 8067DD68  38 81 00 08 */	addi r4, r1, 8
/* 8067DD6C  38 BE 05 38 */	addi r5, r30, 0x538
/* 8067DD70  7F 86 E3 78 */	mr r6, r28
/* 8067DD74  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8067DD78  FC 40 08 90 */	fmr f2, f1
/* 8067DD7C  C0 7F 00 80 */	lfs f3, 0x80(r31)
/* 8067DD80  FC 80 18 90 */	fmr f4, f3
/* 8067DD84  39 00 00 00 */	li r8, 0
/* 8067DD88  4B C2 DB FC */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_8067DD8C:
/* 8067DD8C  A8 1E 0A 0C */	lha r0, 0xa0c(r30)
/* 8067DD90  7C 00 0E 70 */	srawi r0, r0, 1
/* 8067DD94  7C 00 01 94 */	addze r0, r0
/* 8067DD98  B0 1E 0A 0C */	sth r0, 0xa0c(r30)
/* 8067DD9C  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 8067DDA0  2C 00 00 00 */	cmpwi r0, 0
/* 8067DDA4  40 81 00 10 */	ble lbl_8067DDB4
/* 8067DDA8  A8 1E 0A 0C */	lha r0, 0xa0c(r30)
/* 8067DDAC  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 8067DDB0  48 00 00 10 */	b lbl_8067DDC0
lbl_8067DDB4:
/* 8067DDB4  A8 1E 0A 0C */	lha r0, 0xa0c(r30)
/* 8067DDB8  7C 00 00 D0 */	neg r0, r0
/* 8067DDBC  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
lbl_8067DDC0:
/* 8067DDC0  C0 3E 0A 10 */	lfs f1, 0xa10(r30)
/* 8067DDC4  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 8067DDC8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8067DDCC  D0 1E 0A 10 */	stfs f0, 0xa10(r30)
lbl_8067DDD0:
/* 8067DDD0  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 8067DDD4  38 03 E0 00 */	addi r0, r3, -8192
/* 8067DDD8  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8067DDDC  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 8067DDE0  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 8067DDE4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8067DDE8  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 8067DDEC  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 8067DDF0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8067DDF4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8067DDF8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8067DDFC  7C 23 04 2E */	lfsx f1, r3, r0
/* 8067DE00  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 8067DE04  EC 00 00 72 */	fmuls f0, f0, f1
/* 8067DE08  FC 00 02 10 */	fabs f0, f0
/* 8067DE0C  FC 40 00 18 */	frsp f2, f0
/* 8067DE10  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 8067DE14  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8067DE18  EC 01 00 2A */	fadds f0, f1, f0
/* 8067DE1C  EC 00 10 2A */	fadds f0, f0, f2
/* 8067DE20  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8067DE24  C0 5F 00 C0 */	lfs f2, 0xc0(r31)
/* 8067DE28  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 8067DE2C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8067DE30  EC 01 00 2A */	fadds f0, f1, f0
/* 8067DE34  EC 02 00 2A */	fadds f0, f2, f0
/* 8067DE38  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 8067DE3C  39 61 00 30 */	addi r11, r1, 0x30
/* 8067DE40  4B CE 43 E4 */	b _restgpr_28
/* 8067DE44  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8067DE48  7C 08 03 A6 */	mtlr r0
/* 8067DE4C  38 21 00 30 */	addi r1, r1, 0x30
/* 8067DE50  4E 80 00 20 */	blr 
