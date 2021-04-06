lbl_8086DA00:
/* 8086DA00  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 8086DA04  7C 08 02 A6 */	mflr r0
/* 8086DA08  90 01 01 14 */	stw r0, 0x114(r1)
/* 8086DA0C  39 61 01 10 */	addi r11, r1, 0x110
/* 8086DA10  4B AF 47 B9 */	bl _savegpr_24
/* 8086DA14  7C 7F 1B 78 */	mr r31, r3
/* 8086DA18  3C 80 80 87 */	lis r4, lit_3829@ha /* 0x80870094@ha */
/* 8086DA1C  3B C4 00 94 */	addi r30, r4, lit_3829@l /* 0x80870094@l */
/* 8086DA20  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8086DA24  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8086DA28  83 9D 5D AC */	lwz r28, 0x5dac(r29)
/* 8086DA2C  A8 83 05 70 */	lha r4, 0x570(r3)
/* 8086DA30  38 04 00 01 */	addi r0, r4, 1
/* 8086DA34  B0 03 05 70 */	sth r0, 0x570(r3)
/* 8086DA38  88 03 40 0E */	lbz r0, 0x400e(r3)
/* 8086DA3C  28 00 00 00 */	cmplwi r0, 0
/* 8086DA40  41 82 00 28 */	beq lbl_8086DA68
/* 8086DA44  88 7F 42 8D */	lbz r3, 0x428d(r31)
/* 8086DA48  28 03 00 00 */	cmplwi r3, 0
/* 8086DA4C  41 82 00 0C */	beq lbl_8086DA58
/* 8086DA50  38 03 FF FF */	addi r0, r3, -1
/* 8086DA54  98 1F 42 8D */	stb r0, 0x428d(r31)
lbl_8086DA58:
/* 8086DA58  7F E3 FB 78 */	mr r3, r31
/* 8086DA5C  4B FF F7 91 */	bl koro2_mtx_set__FP11fshop_class
/* 8086DA60  38 60 00 01 */	li r3, 1
/* 8086DA64  48 00 0C 48 */	b lbl_8086E6AC
lbl_8086DA68:
/* 8086DA68  80 1F 40 70 */	lwz r0, 0x4070(r31)
/* 8086DA6C  28 00 00 00 */	cmplwi r0, 0
/* 8086DA70  41 82 08 50 */	beq lbl_8086E2C0
/* 8086DA74  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 8086DA78  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 8086DA7C  38 80 00 00 */	li r4, 0
/* 8086DA80  88 7F 42 8D */	lbz r3, 0x428d(r31)
/* 8086DA84  28 03 00 00 */	cmplwi r3, 0
/* 8086DA88  41 82 00 0C */	beq lbl_8086DA94
/* 8086DA8C  38 03 FF FF */	addi r0, r3, -1
/* 8086DA90  98 1F 42 8D */	stb r0, 0x428d(r31)
lbl_8086DA94:
/* 8086DA94  A8 1F 05 72 */	lha r0, 0x572(r31)
/* 8086DA98  2C 00 00 01 */	cmpwi r0, 1
/* 8086DA9C  41 82 00 70 */	beq lbl_8086DB0C
/* 8086DAA0  40 80 00 10 */	bge lbl_8086DAB0
/* 8086DAA4  2C 00 00 00 */	cmpwi r0, 0
/* 8086DAA8  40 80 00 14 */	bge lbl_8086DABC
/* 8086DAAC  48 00 00 E4 */	b lbl_8086DB90
lbl_8086DAB0:
/* 8086DAB0  2C 00 00 03 */	cmpwi r0, 3
/* 8086DAB4  40 80 00 DC */	bge lbl_8086DB90
/* 8086DAB8  48 00 00 CC */	b lbl_8086DB84
lbl_8086DABC:
/* 8086DABC  3C 60 80 87 */	lis r3, BallStartPos@ha /* 0x808709A4@ha */
/* 8086DAC0  C4 03 09 A4 */	lfsu f0, BallStartPos@l(r3)  /* 0x808709A4@l */
/* 8086DAC4  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 8086DAC8  C0 03 00 04 */	lfs f0, 4(r3)
/* 8086DACC  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 8086DAD0  C0 03 00 08 */	lfs f0, 8(r3)
/* 8086DAD4  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 8086DAD8  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 8086DADC  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 8086DAE0  EC 01 00 2A */	fadds f0, f1, f0
/* 8086DAE4  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 8086DAE8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8086DAEC  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 8086DAF0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8086DAF4  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 8086DAF8  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8086DAFC  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 8086DB00  38 00 00 0A */	li r0, 0xa
/* 8086DB04  98 1F 42 8D */	stb r0, 0x428d(r31)
/* 8086DB08  48 00 00 88 */	b lbl_8086DB90
lbl_8086DB0C:
/* 8086DB0C  3C 60 80 87 */	lis r3, BallStartPos@ha /* 0x808709A4@ha */
/* 8086DB10  C4 03 09 A4 */	lfsu f0, BallStartPos@l(r3)  /* 0x808709A4@l */
/* 8086DB14  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 8086DB18  C0 03 00 04 */	lfs f0, 4(r3)
/* 8086DB1C  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 8086DB20  C0 03 00 08 */	lfs f0, 8(r3)
/* 8086DB24  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 8086DB28  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 8086DB2C  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 8086DB30  EC 01 00 2A */	fadds f0, f1, f0
/* 8086DB34  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 8086DB38  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8086DB3C  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 8086DB40  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8086DB44  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 8086DB48  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8086DB4C  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 8086DB50  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 8086DB54  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 8086DB58  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8086DB5C  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 8086DB60  A8 7F 05 72 */	lha r3, 0x572(r31)
/* 8086DB64  38 03 00 01 */	addi r0, r3, 1
/* 8086DB68  B0 1F 05 72 */	sth r0, 0x572(r31)
/* 8086DB6C  38 00 00 03 */	li r0, 3
/* 8086DB70  98 1F 42 8C */	stb r0, 0x428c(r31)
/* 8086DB74  38 00 00 00 */	li r0, 0
/* 8086DB78  98 1F 05 67 */	stb r0, 0x567(r31)
/* 8086DB7C  38 00 00 0A */	li r0, 0xa
/* 8086DB80  98 1F 42 8D */	stb r0, 0x428d(r31)
lbl_8086DB84:
/* 8086DB84  38 80 00 01 */	li r4, 1
/* 8086DB88  C0 1E 00 C4 */	lfs f0, 0xc4(r30)
/* 8086DB8C  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
lbl_8086DB90:
/* 8086DB90  2C 04 00 00 */	cmpwi r4, 0
/* 8086DB94  41 82 06 44 */	beq lbl_8086E1D8
/* 8086DB98  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8086DB9C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8086DBA0  80 63 00 00 */	lwz r3, 0(r3)
/* 8086DBA4  A8 9F 40 22 */	lha r4, 0x4022(r31)
/* 8086DBA8  4B 79 E8 35 */	bl mDoMtx_YrotS__FPA4_fs
/* 8086DBAC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8086DBB0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8086DBB4  80 63 00 00 */	lwz r3, 0(r3)
/* 8086DBB8  A8 9F 40 20 */	lha r4, 0x4020(r31)
/* 8086DBBC  4B 79 E7 E1 */	bl mDoMtx_XrotM__FPA4_fs
/* 8086DBC0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8086DBC4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8086DBC8  80 63 00 00 */	lwz r3, 0(r3)
/* 8086DBCC  A8 9F 40 24 */	lha r4, 0x4024(r31)
/* 8086DBD0  4B 79 E8 FD */	bl mDoMtx_ZrotM__FPA4_fs
/* 8086DBD4  38 7F 04 F8 */	addi r3, r31, 0x4f8
/* 8086DBD8  38 9F 40 64 */	addi r4, r31, 0x4064
/* 8086DBDC  4B A0 33 11 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8086DBE0  C0 1F 04 F8 */	lfs f0, 0x4f8(r31)
/* 8086DBE4  D0 1F 40 64 */	stfs f0, 0x4064(r31)
/* 8086DBE8  C0 1F 04 FC */	lfs f0, 0x4fc(r31)
/* 8086DBEC  D0 1F 40 68 */	stfs f0, 0x4068(r31)
/* 8086DBF0  C0 1F 05 00 */	lfs f0, 0x500(r31)
/* 8086DBF4  D0 1F 40 6C */	stfs f0, 0x406c(r31)
/* 8086DBF8  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8086DBFC  38 9F 40 64 */	addi r4, r31, 0x4064
/* 8086DC00  7C 65 1B 78 */	mr r5, r3
/* 8086DC04  4B AD 94 8D */	bl PSVECAdd
/* 8086DC08  C0 3F 04 F8 */	lfs f1, 0x4f8(r31)
/* 8086DC0C  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 8086DC10  FC 01 10 00 */	fcmpu cr0, f1, f2
/* 8086DC14  40 82 00 10 */	bne lbl_8086DC24
/* 8086DC18  C0 1F 05 00 */	lfs f0, 0x500(r31)
/* 8086DC1C  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 8086DC20  41 82 00 10 */	beq lbl_8086DC30
lbl_8086DC24:
/* 8086DC24  C0 5F 05 00 */	lfs f2, 0x500(r31)
/* 8086DC28  4B 9F 9A 4D */	bl cM_atan2s__Fff
/* 8086DC2C  B0 7F 04 DE */	sth r3, 0x4de(r31)
lbl_8086DC30:
/* 8086DC30  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 8086DC34  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 8086DC38  EC 01 00 28 */	fsubs f0, f1, f0
/* 8086DC3C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8086DC40  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 8086DC44  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 8086DC48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8086DC4C  4C 40 13 82 */	cror 2, 0, 2
/* 8086DC50  40 82 00 08 */	bne lbl_8086DC58
/* 8086DC54  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
lbl_8086DC58:
/* 8086DC58  80 1F 41 C0 */	lwz r0, 0x41c0(r31)
/* 8086DC5C  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8086DC60  90 1F 41 C0 */	stw r0, 0x41c0(r31)
/* 8086DC64  38 7F 40 B4 */	addi r3, r31, 0x40b4
/* 8086DC68  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8086DC6C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8086DC70  3B 84 0F 38 */	addi r28, r4, 0xf38
/* 8086DC74  7F 84 E3 78 */	mr r4, r28
/* 8086DC78  4B 80 8E 35 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 8086DC7C  7F E3 FB 78 */	mr r3, r31
/* 8086DC80  4B FF FB D5 */	bl ball_wall_check__FP11fshop_class
/* 8086DC84  83 7F 40 08 */	lwz r27, 0x4008(r31)
/* 8086DC88  38 60 00 00 */	li r3, 0
/* 8086DC8C  38 00 00 64 */	li r0, 0x64
/* 8086DC90  7C 09 03 A6 */	mtctr r0
lbl_8086DC94:
/* 8086DC94  7C 9B 1A 14 */	add r4, r27, r3
/* 8086DC98  80 04 42 90 */	lwz r0, 0x4290(r4)
/* 8086DC9C  28 00 00 00 */	cmplwi r0, 0
/* 8086DCA0  41 82 00 58 */	beq lbl_8086DCF8
/* 8086DCA4  C0 24 42 E4 */	lfs f1, 0x42e4(r4)
/* 8086DCA8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8086DCAC  EC 41 00 28 */	fsubs f2, f1, f0
/* 8086DCB0  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 8086DCB4  C0 24 42 EC */	lfs f1, 0x42ec(r4)
/* 8086DCB8  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8086DCBC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8086DCC0  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8086DCC4  EC 22 00 B2 */	fmuls f1, f2, f2
/* 8086DCC8  EC 00 00 32 */	fmuls f0, f0, f0
/* 8086DCCC  EC 21 00 2A */	fadds f1, f1, f0
/* 8086DCD0  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 8086DCD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8086DCD8  40 81 00 0C */	ble lbl_8086DCE4
/* 8086DCDC  FC 00 08 34 */	frsqrte f0, f1
/* 8086DCE0  EC 20 00 72 */	fmuls f1, f0, f1
lbl_8086DCE4:
/* 8086DCE4  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 8086DCE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8086DCEC  40 80 00 0C */	bge lbl_8086DCF8
/* 8086DCF0  38 00 00 00 */	li r0, 0
/* 8086DCF4  98 04 42 F0 */	stb r0, 0x42f0(r4)
lbl_8086DCF8:
/* 8086DCF8  38 63 00 68 */	addi r3, r3, 0x68
/* 8086DCFC  42 00 FF 98 */	bdnz lbl_8086DC94
/* 8086DD00  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 8086DD04  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 8086DD08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8086DD0C  40 80 00 0C */	bge lbl_8086DD18
/* 8086DD10  38 00 00 01 */	li r0, 1
/* 8086DD14  98 1F 05 67 */	stb r0, 0x567(r31)
lbl_8086DD18:
/* 8086DD18  38 00 02 55 */	li r0, 0x255
/* 8086DD1C  B0 01 00 22 */	sth r0, 0x22(r1)
/* 8086DD20  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 8086DD24  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 8086DD28  38 81 00 22 */	addi r4, r1, 0x22
/* 8086DD2C  4B 7A BA CD */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8086DD30  7C 7D 1B 79 */	or. r29, r3, r3
/* 8086DD34  41 82 00 B8 */	beq lbl_8086DDEC
/* 8086DD38  88 1D 07 B9 */	lbz r0, 0x7b9(r29)
/* 8086DD3C  28 00 00 00 */	cmplwi r0, 0
/* 8086DD40  41 82 00 AC */	beq lbl_8086DDEC
/* 8086DD44  88 1F 05 67 */	lbz r0, 0x567(r31)
/* 8086DD48  2C 00 00 01 */	cmpwi r0, 1
/* 8086DD4C  41 82 00 10 */	beq lbl_8086DD5C
/* 8086DD50  4B 9F 34 F5 */	bl dTimer_getRestTimeMs__Fv
/* 8086DD54  2C 03 00 00 */	cmpwi r3, 0
/* 8086DD58  40 82 00 94 */	bne lbl_8086DDEC
lbl_8086DD5C:
/* 8086DD5C  38 A0 00 00 */	li r5, 0
/* 8086DD60  38 60 00 00 */	li r3, 0
/* 8086DD64  38 00 00 64 */	li r0, 0x64
/* 8086DD68  7C 09 03 A6 */	mtctr r0
lbl_8086DD6C:
/* 8086DD6C  7C 9B 1A 14 */	add r4, r27, r3
/* 8086DD70  80 04 42 90 */	lwz r0, 0x4290(r4)
/* 8086DD74  28 00 00 00 */	cmplwi r0, 0
/* 8086DD78  41 82 00 18 */	beq lbl_8086DD90
/* 8086DD7C  88 04 42 F0 */	lbz r0, 0x42f0(r4)
/* 8086DD80  28 00 00 00 */	cmplwi r0, 0
/* 8086DD84  41 82 00 0C */	beq lbl_8086DD90
/* 8086DD88  38 A0 00 01 */	li r5, 1
/* 8086DD8C  48 00 00 0C */	b lbl_8086DD98
lbl_8086DD90:
/* 8086DD90  38 63 00 68 */	addi r3, r3, 0x68
/* 8086DD94  42 00 FF D8 */	bdnz lbl_8086DD6C
lbl_8086DD98:
/* 8086DD98  2C 05 00 00 */	cmpwi r5, 0
/* 8086DD9C  40 82 00 10 */	bne lbl_8086DDAC
/* 8086DDA0  38 00 00 01 */	li r0, 1
/* 8086DDA4  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 8086DDA8  48 00 00 24 */	b lbl_8086DDCC
lbl_8086DDAC:
/* 8086DDAC  88 1F 05 67 */	lbz r0, 0x567(r31)
/* 8086DDB0  2C 00 00 01 */	cmpwi r0, 1
/* 8086DDB4  40 82 00 10 */	bne lbl_8086DDC4
/* 8086DDB8  38 00 00 00 */	li r0, 0
/* 8086DDBC  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 8086DDC0  48 00 00 0C */	b lbl_8086DDCC
lbl_8086DDC4:
/* 8086DDC4  38 00 00 02 */	li r0, 2
/* 8086DDC8  B0 1D 05 62 */	sth r0, 0x562(r29)
lbl_8086DDCC:
/* 8086DDCC  38 00 00 49 */	li r0, 0x49
/* 8086DDD0  B0 1D 07 52 */	sth r0, 0x752(r29)
/* 8086DDD4  38 00 00 00 */	li r0, 0
/* 8086DDD8  B0 1D 07 54 */	sth r0, 0x754(r29)
/* 8086DDDC  98 1D 07 B9 */	stb r0, 0x7b9(r29)
/* 8086DDE0  38 00 00 02 */	li r0, 2
/* 8086DDE4  98 1F 05 67 */	stb r0, 0x567(r31)
/* 8086DDE8  48 00 01 C8 */	b lbl_8086DFB0
lbl_8086DDEC:
/* 8086DDEC  88 1F 05 67 */	lbz r0, 0x567(r31)
/* 8086DDF0  7C 00 07 75 */	extsb. r0, r0
/* 8086DDF4  40 82 01 BC */	bne lbl_8086DFB0
/* 8086DDF8  38 61 00 34 */	addi r3, r1, 0x34
/* 8086DDFC  3C 80 80 87 */	lis r4, BallEndPos@ha /* 0x808709BC@ha */
/* 8086DE00  38 84 09 BC */	addi r4, r4, BallEndPos@l /* 0x808709BC@l */
/* 8086DE04  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8086DE08  4B 9F 8D 2D */	bl __mi__4cXyzCFRC3Vec
/* 8086DE0C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8086DE10  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8086DE14  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8086DE18  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8086DE1C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8086DE20  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8086DE24  38 61 00 70 */	addi r3, r1, 0x70
/* 8086DE28  4B AD 93 11 */	bl PSVECSquareMag
/* 8086DE2C  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 8086DE30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8086DE34  40 81 00 58 */	ble lbl_8086DE8C
/* 8086DE38  FC 00 08 34 */	frsqrte f0, f1
/* 8086DE3C  C8 9E 00 D8 */	lfd f4, 0xd8(r30)
/* 8086DE40  FC 44 00 32 */	fmul f2, f4, f0
/* 8086DE44  C8 7E 00 E0 */	lfd f3, 0xe0(r30)
/* 8086DE48  FC 00 00 32 */	fmul f0, f0, f0
/* 8086DE4C  FC 01 00 32 */	fmul f0, f1, f0
/* 8086DE50  FC 03 00 28 */	fsub f0, f3, f0
/* 8086DE54  FC 02 00 32 */	fmul f0, f2, f0
/* 8086DE58  FC 44 00 32 */	fmul f2, f4, f0
/* 8086DE5C  FC 00 00 32 */	fmul f0, f0, f0
/* 8086DE60  FC 01 00 32 */	fmul f0, f1, f0
/* 8086DE64  FC 03 00 28 */	fsub f0, f3, f0
/* 8086DE68  FC 02 00 32 */	fmul f0, f2, f0
/* 8086DE6C  FC 44 00 32 */	fmul f2, f4, f0
/* 8086DE70  FC 00 00 32 */	fmul f0, f0, f0
/* 8086DE74  FC 01 00 32 */	fmul f0, f1, f0
/* 8086DE78  FC 03 00 28 */	fsub f0, f3, f0
/* 8086DE7C  FC 02 00 32 */	fmul f0, f2, f0
/* 8086DE80  FC 21 00 32 */	fmul f1, f1, f0
/* 8086DE84  FC 20 08 18 */	frsp f1, f1
/* 8086DE88  48 00 00 88 */	b lbl_8086DF10
lbl_8086DE8C:
/* 8086DE8C  C8 1E 00 E8 */	lfd f0, 0xe8(r30)
/* 8086DE90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8086DE94  40 80 00 10 */	bge lbl_8086DEA4
/* 8086DE98  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8086DE9C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8086DEA0  48 00 00 70 */	b lbl_8086DF10
lbl_8086DEA4:
/* 8086DEA4  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8086DEA8  80 81 00 24 */	lwz r4, 0x24(r1)
/* 8086DEAC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8086DEB0  3C 00 7F 80 */	lis r0, 0x7f80
/* 8086DEB4  7C 03 00 00 */	cmpw r3, r0
/* 8086DEB8  41 82 00 14 */	beq lbl_8086DECC
/* 8086DEBC  40 80 00 40 */	bge lbl_8086DEFC
/* 8086DEC0  2C 03 00 00 */	cmpwi r3, 0
/* 8086DEC4  41 82 00 20 */	beq lbl_8086DEE4
/* 8086DEC8  48 00 00 34 */	b lbl_8086DEFC
lbl_8086DECC:
/* 8086DECC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8086DED0  41 82 00 0C */	beq lbl_8086DEDC
/* 8086DED4  38 00 00 01 */	li r0, 1
/* 8086DED8  48 00 00 28 */	b lbl_8086DF00
lbl_8086DEDC:
/* 8086DEDC  38 00 00 02 */	li r0, 2
/* 8086DEE0  48 00 00 20 */	b lbl_8086DF00
lbl_8086DEE4:
/* 8086DEE4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8086DEE8  41 82 00 0C */	beq lbl_8086DEF4
/* 8086DEEC  38 00 00 05 */	li r0, 5
/* 8086DEF0  48 00 00 10 */	b lbl_8086DF00
lbl_8086DEF4:
/* 8086DEF4  38 00 00 03 */	li r0, 3
/* 8086DEF8  48 00 00 08 */	b lbl_8086DF00
lbl_8086DEFC:
/* 8086DEFC  38 00 00 04 */	li r0, 4
lbl_8086DF00:
/* 8086DF00  2C 00 00 01 */	cmpwi r0, 1
/* 8086DF04  40 82 00 0C */	bne lbl_8086DF10
/* 8086DF08  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8086DF0C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8086DF10:
/* 8086DF10  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 8086DF14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8086DF18  40 80 00 98 */	bge lbl_8086DFB0
/* 8086DF1C  38 00 02 55 */	li r0, 0x255
/* 8086DF20  B0 01 00 20 */	sth r0, 0x20(r1)
/* 8086DF24  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 8086DF28  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 8086DF2C  38 81 00 20 */	addi r4, r1, 0x20
/* 8086DF30  4B 7A B8 C9 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8086DF34  28 03 00 00 */	cmplwi r3, 0
/* 8086DF38  41 82 00 78 */	beq lbl_8086DFB0
/* 8086DF3C  38 C0 00 00 */	li r6, 0
/* 8086DF40  38 80 00 00 */	li r4, 0
/* 8086DF44  38 00 00 64 */	li r0, 0x64
/* 8086DF48  7C 09 03 A6 */	mtctr r0
lbl_8086DF4C:
/* 8086DF4C  7C BB 22 14 */	add r5, r27, r4
/* 8086DF50  80 05 42 90 */	lwz r0, 0x4290(r5)
/* 8086DF54  28 00 00 00 */	cmplwi r0, 0
/* 8086DF58  41 82 00 18 */	beq lbl_8086DF70
/* 8086DF5C  88 05 42 F0 */	lbz r0, 0x42f0(r5)
/* 8086DF60  28 00 00 00 */	cmplwi r0, 0
/* 8086DF64  41 82 00 0C */	beq lbl_8086DF70
/* 8086DF68  38 C0 00 01 */	li r6, 1
/* 8086DF6C  48 00 00 0C */	b lbl_8086DF78
lbl_8086DF70:
/* 8086DF70  38 84 00 68 */	addi r4, r4, 0x68
/* 8086DF74  42 00 FF D8 */	bdnz lbl_8086DF4C
lbl_8086DF78:
/* 8086DF78  2C 06 00 00 */	cmpwi r6, 0
/* 8086DF7C  41 82 00 18 */	beq lbl_8086DF94
/* 8086DF80  38 00 00 03 */	li r0, 3
/* 8086DF84  B0 03 05 62 */	sth r0, 0x562(r3)
/* 8086DF88  38 00 00 49 */	li r0, 0x49
/* 8086DF8C  B0 03 07 52 */	sth r0, 0x752(r3)
/* 8086DF90  48 00 00 0C */	b lbl_8086DF9C
lbl_8086DF94:
/* 8086DF94  38 00 00 4C */	li r0, 0x4c
/* 8086DF98  B0 03 07 52 */	sth r0, 0x752(r3)
lbl_8086DF9C:
/* 8086DF9C  38 00 00 00 */	li r0, 0
/* 8086DFA0  B0 03 07 54 */	sth r0, 0x754(r3)
/* 8086DFA4  98 03 07 B9 */	stb r0, 0x7b9(r3)
/* 8086DFA8  38 00 00 02 */	li r0, 2
/* 8086DFAC  98 1F 05 67 */	stb r0, 0x567(r31)
lbl_8086DFB0:
/* 8086DFB0  80 1F 40 E0 */	lwz r0, 0x40e0(r31)
/* 8086DFB4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8086DFB8  41 82 02 20 */	beq lbl_8086E1D8
/* 8086DFBC  88 1F 42 8C */	lbz r0, 0x428c(r31)
/* 8086DFC0  28 00 00 00 */	cmplwi r0, 0
/* 8086DFC4  40 82 00 10 */	bne lbl_8086DFD4
/* 8086DFC8  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 8086DFCC  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8086DFD0  48 00 00 3C */	b lbl_8086E00C
lbl_8086DFD4:
/* 8086DFD4  28 00 00 01 */	cmplwi r0, 1
/* 8086DFD8  40 82 00 10 */	bne lbl_8086DFE8
/* 8086DFDC  C0 1E 00 8C */	lfs f0, 0x8c(r30)
/* 8086DFE0  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8086DFE4  48 00 00 28 */	b lbl_8086E00C
lbl_8086DFE8:
/* 8086DFE8  28 00 00 02 */	cmplwi r0, 2
/* 8086DFEC  40 82 00 10 */	bne lbl_8086DFFC
/* 8086DFF0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8086DFF4  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8086DFF8  48 00 00 14 */	b lbl_8086E00C
lbl_8086DFFC:
/* 8086DFFC  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 8086E000  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8086E004  38 00 00 02 */	li r0, 2
/* 8086E008  98 1F 42 8C */	stb r0, 0x428c(r31)
lbl_8086E00C:
/* 8086E00C  88 7F 42 8C */	lbz r3, 0x428c(r31)
/* 8086E010  38 03 00 01 */	addi r0, r3, 1
/* 8086E014  98 1F 42 8C */	stb r0, 0x428c(r31)
/* 8086E018  38 61 00 88 */	addi r3, r1, 0x88
/* 8086E01C  4B 80 95 61 */	bl __ct__11dBgS_GndChkFv
/* 8086E020  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8086E024  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8086E028  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 8086E02C  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 8086E030  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 8086E034  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 8086E038  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 8086E03C  EC 02 00 2A */	fadds f0, f2, f0
/* 8086E040  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8086E044  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8086E048  EC 01 00 2A */	fadds f0, f1, f0
/* 8086E04C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8086E050  38 61 00 88 */	addi r3, r1, 0x88
/* 8086E054  38 81 00 58 */	addi r4, r1, 0x58
/* 8086E058  4B 9F 9C D1 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 8086E05C  7F 83 E3 78 */	mr r3, r28
/* 8086E060  38 81 00 88 */	addi r4, r1, 0x88
/* 8086E064  4B 80 64 3D */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8086E068  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 8086E06C  FC 20 08 18 */	frsp f1, f1
/* 8086E070  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8086E074  EC 21 00 28 */	fsubs f1, f1, f0
/* 8086E078  C0 41 00 60 */	lfs f2, 0x60(r1)
/* 8086E07C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8086E080  EC 42 00 28 */	fsubs f2, f2, f0
/* 8086E084  4B 9F 95 F1 */	bl cM_atan2s__Fff
/* 8086E088  7C 03 00 D0 */	neg r0, r3
/* 8086E08C  7C 19 07 34 */	extsh r25, r0
/* 8086E090  2C 19 30 00 */	cmpwi r25, 0x3000
/* 8086E094  40 81 00 0C */	ble lbl_8086E0A0
/* 8086E098  3B 20 30 00 */	li r25, 0x3000
/* 8086E09C  48 00 00 10 */	b lbl_8086E0AC
lbl_8086E0A0:
/* 8086E0A0  2C 19 D0 00 */	cmpwi r25, -12288
/* 8086E0A4  40 80 00 08 */	bge lbl_8086E0AC
/* 8086E0A8  3B 20 D0 00 */	li r25, -12288
lbl_8086E0AC:
/* 8086E0AC  C0 5F 04 D0 */	lfs f2, 0x4d0(r31)
/* 8086E0B0  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 8086E0B4  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 8086E0B8  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 8086E0BC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8086E0C0  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8086E0C4  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 8086E0C8  EC 01 00 2A */	fadds f0, f1, f0
/* 8086E0CC  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8086E0D0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8086E0D4  EC 02 00 2A */	fadds f0, f2, f0
/* 8086E0D8  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8086E0DC  38 61 00 88 */	addi r3, r1, 0x88
/* 8086E0E0  38 81 00 58 */	addi r4, r1, 0x58
/* 8086E0E4  4B 9F 9C 45 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 8086E0E8  7F 83 E3 78 */	mr r3, r28
/* 8086E0EC  38 81 00 88 */	addi r4, r1, 0x88
/* 8086E0F0  4B 80 63 B1 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8086E0F4  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 8086E0F8  FC 20 08 18 */	frsp f1, f1
/* 8086E0FC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8086E100  EC 21 00 28 */	fsubs f1, f1, f0
/* 8086E104  C0 41 00 58 */	lfs f2, 0x58(r1)
/* 8086E108  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8086E10C  EC 42 00 28 */	fsubs f2, f2, f0
/* 8086E110  4B 9F 95 65 */	bl cM_atan2s__Fff
/* 8086E114  7C 7A 07 34 */	extsh r26, r3
/* 8086E118  2C 1A 30 00 */	cmpwi r26, 0x3000
/* 8086E11C  40 81 00 0C */	ble lbl_8086E128
/* 8086E120  3B 40 30 00 */	li r26, 0x3000
/* 8086E124  48 00 00 10 */	b lbl_8086E134
lbl_8086E128:
/* 8086E128  2C 1A D0 00 */	cmpwi r26, -12288
/* 8086E12C  40 80 00 08 */	bge lbl_8086E134
/* 8086E130  3B 40 D0 00 */	li r26, -12288
lbl_8086E134:
/* 8086E134  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8086E138  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8086E13C  80 63 00 00 */	lwz r3, 0(r3)
/* 8086E140  7F 24 CB 78 */	mr r4, r25
/* 8086E144  4B 79 E2 01 */	bl mDoMtx_XrotS__FPA4_fs
/* 8086E148  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8086E14C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8086E150  80 63 00 00 */	lwz r3, 0(r3)
/* 8086E154  7F 44 D3 78 */	mr r4, r26
/* 8086E158  4B 79 E3 75 */	bl mDoMtx_ZrotM__FPA4_fs
/* 8086E15C  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 8086E160  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 8086E164  C0 1E 00 FC */	lfs f0, 0xfc(r30)
/* 8086E168  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8086E16C  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 8086E170  38 61 00 70 */	addi r3, r1, 0x70
/* 8086E174  38 81 00 64 */	addi r4, r1, 0x64
/* 8086E178  4B A0 2D 75 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8086E17C  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 8086E180  FC 00 0A 10 */	fabs f0, f1
/* 8086E184  FC 80 00 18 */	frsp f4, f0
/* 8086E188  38 7F 04 F8 */	addi r3, r31, 0x4f8
/* 8086E18C  C0 5E 00 58 */	lfs f2, 0x58(r30)
/* 8086E190  C0 7E 01 00 */	lfs f3, 0x100(r30)
/* 8086E194  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 8086E198  EC 00 01 32 */	fmuls f0, f0, f4
/* 8086E19C  EC 63 00 2A */	fadds f3, f3, f0
/* 8086E1A0  4B A0 18 9D */	bl cLib_addCalc2__FPffff
/* 8086E1A4  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 8086E1A8  FC 00 0A 10 */	fabs f0, f1
/* 8086E1AC  FC 80 00 18 */	frsp f4, f0
/* 8086E1B0  38 7F 05 00 */	addi r3, r31, 0x500
/* 8086E1B4  C0 5E 00 58 */	lfs f2, 0x58(r30)
/* 8086E1B8  C0 7E 01 00 */	lfs f3, 0x100(r30)
/* 8086E1BC  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 8086E1C0  EC 00 01 32 */	fmuls f0, f0, f4
/* 8086E1C4  EC 63 00 2A */	fadds f3, f3, f0
/* 8086E1C8  4B A0 18 75 */	bl cLib_addCalc2__FPffff
/* 8086E1CC  38 61 00 88 */	addi r3, r1, 0x88
/* 8086E1D0  38 80 FF FF */	li r4, -1
/* 8086E1D4  4B 80 94 1D */	bl __dt__11dBgS_GndChkFv
lbl_8086E1D8:
/* 8086E1D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8086E1DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8086E1E0  83 23 5D 74 */	lwz r25, 0x5d74(r3)
/* 8086E1E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8086E1E8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8086E1EC  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8086E1F0  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 8086E1F4  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 8086E1F8  4B AD 86 F1 */	bl PSMTXTrans
/* 8086E1FC  C0 3F 04 EC */	lfs f1, 0x4ec(r31)
/* 8086E200  FC 40 08 90 */	fmr f2, f1
/* 8086E204  FC 60 08 90 */	fmr f3, f1
/* 8086E208  4B 79 EC 31 */	bl scaleM__14mDoMtx_stack_cFfff
/* 8086E20C  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 8086E210  C0 5E 01 04 */	lfs f2, 0x104(r30)
/* 8086E214  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 8086E218  EC 42 00 32 */	fmuls f2, f2, f0
/* 8086E21C  FC 60 08 90 */	fmr f3, f1
/* 8086E220  4B 79 EB 7D */	bl transM__14mDoMtx_stack_cFfff
/* 8086E224  38 61 00 28 */	addi r3, r1, 0x28
/* 8086E228  38 99 00 D8 */	addi r4, r25, 0xd8
/* 8086E22C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8086E230  4B 9F 89 05 */	bl __mi__4cXyzCFRC3Vec
/* 8086E234  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 8086E238  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 8086E23C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8086E240  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8086E244  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 8086E248  D0 41 00 78 */	stfs f2, 0x78(r1)
/* 8086E24C  4B 9F 94 29 */	bl cM_atan2s__Fff
/* 8086E250  7C 64 1B 78 */	mr r4, r3
/* 8086E254  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8086E258  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8086E25C  4B 79 E1 D9 */	bl mDoMtx_YrotM__FPA4_fs
/* 8086E260  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8086E264  EC 20 00 32 */	fmuls f1, f0, f0
/* 8086E268  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 8086E26C  EC 00 00 32 */	fmuls f0, f0, f0
/* 8086E270  EC 41 00 2A */	fadds f2, f1, f0
/* 8086E274  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 8086E278  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8086E27C  40 81 00 0C */	ble lbl_8086E288
/* 8086E280  FC 00 10 34 */	frsqrte f0, f2
/* 8086E284  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8086E288:
/* 8086E288  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 8086E28C  4B 9F 93 E9 */	bl cM_atan2s__Fff
/* 8086E290  7C 03 00 D0 */	neg r0, r3
/* 8086E294  7C 04 07 34 */	extsh r4, r0
/* 8086E298  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8086E29C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8086E2A0  4B 79 E0 FD */	bl mDoMtx_XrotM__FPA4_fs
/* 8086E2A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8086E2A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8086E2AC  80 9F 40 70 */	lwz r4, 0x4070(r31)
/* 8086E2B0  38 84 00 24 */	addi r4, r4, 0x24
/* 8086E2B4  4B AD 81 FD */	bl PSMTXCopy
/* 8086E2B8  38 60 00 01 */	li r3, 1
/* 8086E2BC  48 00 03 F0 */	b lbl_8086E6AC
lbl_8086E2C0:
/* 8086E2C0  4B FF E4 25 */	bl lure_set__FP11fshop_class
/* 8086E2C4  7F E3 FB 78 */	mr r3, r31
/* 8086E2C8  4B FF E7 09 */	bl rod_set__FP11fshop_class
/* 8086E2CC  7F E3 FB 78 */	mr r3, r31
/* 8086E2D0  4B FF EA A1 */	bl tsubo_set__FP11fshop_class
/* 8086E2D4  3B 3F 12 88 */	addi r25, r31, 0x1288
/* 8086E2D8  3B 00 00 00 */	li r24, 0
/* 8086E2DC  3B 60 00 00 */	li r27, 0
/* 8086E2E0  3C 60 80 87 */	lis r3, s_fish_sub__FPvPv@ha /* 0x8086CC6C@ha */
/* 8086E2E4  3B 43 CC 6C */	addi r26, r3, s_fish_sub__FPvPv@l /* 0x8086CC6C@l */
lbl_8086E2E8:
/* 8086E2E8  7F E3 FB 78 */	mr r3, r31
/* 8086E2EC  7F 24 CB 78 */	mr r4, r25
/* 8086E2F0  4B FF EC 9D */	bl weed_control__FP11fshop_classP9fs_weed_s
/* 8086E2F4  80 7F 3F A0 */	lwz r3, 0x3fa0(r31)
/* 8086E2F8  7C A3 D8 2E */	lwzx r5, r3, r27
/* 8086E2FC  38 60 00 00 */	li r3, 0
/* 8086E300  38 00 00 0F */	li r0, 0xf
/* 8086E304  7C 09 03 A6 */	mtctr r0
lbl_8086E308:
/* 8086E308  7C 99 1A 14 */	add r4, r25, r3
/* 8086E30C  C0 04 00 00 */	lfs f0, 0(r4)
/* 8086E310  D0 05 00 00 */	stfs f0, 0(r5)
/* 8086E314  C0 04 00 04 */	lfs f0, 4(r4)
/* 8086E318  D0 05 00 04 */	stfs f0, 4(r5)
/* 8086E31C  C0 04 00 08 */	lfs f0, 8(r4)
/* 8086E320  D0 05 00 08 */	stfs f0, 8(r5)
/* 8086E324  38 63 00 0C */	addi r3, r3, 0xc
/* 8086E328  38 A5 00 0C */	addi r5, r5, 0xc
/* 8086E32C  42 00 FF DC */	bdnz lbl_8086E308
/* 8086E330  7F 43 D3 78 */	mr r3, r26
/* 8086E334  7F 24 CB 78 */	mr r4, r25
/* 8086E338  4B 7B 30 01 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 8086E33C  3B 18 00 01 */	addi r24, r24, 1
/* 8086E340  2C 18 00 3C */	cmpwi r24, 0x3c
/* 8086E344  3B 7B 00 20 */	addi r27, r27, 0x20
/* 8086E348  3B 39 00 C0 */	addi r25, r25, 0xc0
/* 8086E34C  41 80 FF 9C */	blt lbl_8086E2E8
/* 8086E350  C0 1E 01 08 */	lfs f0, 0x108(r30)
/* 8086E354  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8086E358  C0 1E 00 FC */	lfs f0, 0xfc(r30)
/* 8086E35C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8086E360  C0 1E 01 0C */	lfs f0, 0x10c(r30)
/* 8086E364  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8086E368  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 8086E36C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8086E370  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8086E374  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8086E378  3B 00 00 00 */	li r24, 0
/* 8086E37C  3B 60 00 00 */	li r27, 0
/* 8086E380  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8086E384  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
lbl_8086E388:
/* 8086E388  2C 18 00 00 */	cmpwi r24, 0
/* 8086E38C  40 82 00 10 */	bne lbl_8086E39C
/* 8086E390  C0 1E 01 10 */	lfs f0, 0x110(r30)
/* 8086E394  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8086E398  48 00 00 0C */	b lbl_8086E3A4
lbl_8086E39C:
/* 8086E39C  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 8086E3A0  D0 01 00 54 */	stfs f0, 0x54(r1)
lbl_8086E3A4:
/* 8086E3A4  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 8086E3A8  38 00 00 FF */	li r0, 0xff
/* 8086E3AC  90 01 00 08 */	stw r0, 8(r1)
/* 8086E3B0  38 80 00 00 */	li r4, 0
/* 8086E3B4  90 81 00 0C */	stw r4, 0xc(r1)
/* 8086E3B8  38 00 FF FF */	li r0, -1
/* 8086E3BC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8086E3C0  90 81 00 14 */	stw r4, 0x14(r1)
/* 8086E3C4  90 81 00 18 */	stw r4, 0x18(r1)
/* 8086E3C8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8086E3CC  3B 3B 6B 6C */	addi r25, r27, 0x6b6c
/* 8086E3D0  7C 9F C8 2E */	lwzx r4, r31, r25
/* 8086E3D4  38 A0 00 00 */	li r5, 0
/* 8086E3D8  38 C0 01 E8 */	li r6, 0x1e8
/* 8086E3DC  38 E1 00 4C */	addi r7, r1, 0x4c
/* 8086E3E0  39 00 00 00 */	li r8, 0
/* 8086E3E4  39 20 00 00 */	li r9, 0
/* 8086E3E8  39 41 00 40 */	addi r10, r1, 0x40
/* 8086E3EC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8086E3F0  4B 7D F0 DD */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8086E3F4  7C 7F C9 2E */	stwx r3, r31, r25
/* 8086E3F8  3B 18 00 01 */	addi r24, r24, 1
/* 8086E3FC  2C 18 00 02 */	cmpwi r24, 2
/* 8086E400  3B 7B 00 04 */	addi r27, r27, 4
/* 8086E404  41 80 FF 84 */	blt lbl_8086E388
/* 8086E408  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 8086E40C  80 03 05 80 */	lwz r0, 0x580(r3)
/* 8086E410  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 8086E414  41 82 00 0C */	beq lbl_8086E420
/* 8086E418  38 00 00 1E */	li r0, 0x1e
/* 8086E41C  B0 1F 6B 34 */	sth r0, 0x6b34(r31)
lbl_8086E420:
/* 8086E420  A8 9F 6B 34 */	lha r4, 0x6b34(r31)
/* 8086E424  1C 04 13 88 */	mulli r0, r4, 0x1388
/* 8086E428  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8086E42C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8086E430  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8086E434  7C 63 04 2E */	lfsx f3, r3, r0
/* 8086E438  C0 5E 00 FC */	lfs f2, 0xfc(r30)
/* 8086E43C  C8 3E 01 38 */	lfd f1, 0x138(r30)
/* 8086E440  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8086E444  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8086E448  3C 00 43 30 */	lis r0, 0x4330
/* 8086E44C  90 01 00 E0 */	stw r0, 0xe0(r1)
/* 8086E450  C8 01 00 E0 */	lfd f0, 0xe0(r1)
/* 8086E454  EC 00 08 28 */	fsubs f0, f0, f1
/* 8086E458  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8086E45C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8086E460  FC 00 00 1E */	fctiwz f0, f0
/* 8086E464  D8 01 00 E8 */	stfd f0, 0xe8(r1)
/* 8086E468  83 01 00 EC */	lwz r24, 0xec(r1)
/* 8086E46C  7C 80 07 35 */	extsh. r0, r4
/* 8086E470  41 82 00 0C */	beq lbl_8086E47C
/* 8086E474  38 04 FF FF */	addi r0, r4, -1
/* 8086E478  B0 1F 6B 34 */	sth r0, 0x6b34(r31)
lbl_8086E47C:
/* 8086E47C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8086E480  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8086E484  C0 3E 01 18 */	lfs f1, 0x118(r30)
/* 8086E488  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 8086E48C  C0 7E 01 1C */	lfs f3, 0x11c(r30)
/* 8086E490  4B AD 84 59 */	bl PSMTXTrans
/* 8086E494  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8086E498  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8086E49C  38 80 40 00 */	li r4, 0x4000
/* 8086E4A0  4B 79 DF 95 */	bl mDoMtx_YrotM__FPA4_fs
/* 8086E4A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8086E4A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8086E4AC  38 18 07 D0 */	addi r0, r24, 0x7d0
/* 8086E4B0  7C 04 07 34 */	extsh r4, r0
/* 8086E4B4  4B 79 E0 19 */	bl mDoMtx_ZrotM__FPA4_fs
/* 8086E4B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8086E4BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8086E4C0  80 9F 6B 30 */	lwz r4, 0x6b30(r31)
/* 8086E4C4  38 84 00 24 */	addi r4, r4, 0x24
/* 8086E4C8  4B AD 7F E9 */	bl PSMTXCopy
/* 8086E4CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8086E4D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8086E4D4  C0 3E 01 18 */	lfs f1, 0x118(r30)
/* 8086E4D8  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 8086E4DC  C0 7E 01 1C */	lfs f3, 0x11c(r30)
/* 8086E4E0  4B AD 84 09 */	bl PSMTXTrans
/* 8086E4E4  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 8086E4E8  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8086E4EC  C0 7E 00 04 */	lfs f3, 4(r30)
/* 8086E4F0  4B 79 E9 49 */	bl scaleM__14mDoMtx_stack_cFfff
/* 8086E4F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8086E4F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8086E4FC  38 9F 6B 38 */	addi r4, r31, 0x6b38
/* 8086E500  4B AD 7F B1 */	bl PSMTXCopy
/* 8086E504  80 7F 6B 68 */	lwz r3, 0x6b68(r31)
/* 8086E508  4B 80 D4 B9 */	bl Move__4dBgWFv
/* 8086E50C  C0 3E 01 20 */	lfs f1, 0x120(r30)
/* 8086E510  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8086E514  EC 41 00 28 */	fsubs f2, f1, f0
/* 8086E518  D0 41 00 7C */	stfs f2, 0x7c(r1)
/* 8086E51C  C0 3E 01 24 */	lfs f1, 0x124(r30)
/* 8086E520  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 8086E524  EC 01 00 28 */	fsubs f0, f1, f0
/* 8086E528  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8086E52C  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 8086E530  80 03 05 80 */	lwz r0, 0x580(r3)
/* 8086E534  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 8086E538  41 82 00 88 */	beq lbl_8086E5C0
/* 8086E53C  EC 22 00 B2 */	fmuls f1, f2, f2
/* 8086E540  EC 00 00 32 */	fmuls f0, f0, f0
/* 8086E544  EC 21 00 2A */	fadds f1, f1, f0
/* 8086E548  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 8086E54C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8086E550  40 81 00 0C */	ble lbl_8086E55C
/* 8086E554  FC 00 08 34 */	frsqrte f0, f1
/* 8086E558  EC 20 00 72 */	fmuls f1, f0, f1
lbl_8086E55C:
/* 8086E55C  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 8086E560  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8086E564  40 80 00 5C */	bge lbl_8086E5C0
/* 8086E568  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 8086E56C  4B 9F 93 E9 */	bl cM_rndF__Ff
/* 8086E570  FC 00 08 1E */	fctiwz f0, f1
/* 8086E574  D8 01 00 E8 */	stfd f0, 0xe8(r1)
/* 8086E578  80 01 00 EC */	lwz r0, 0xec(r1)
/* 8086E57C  B0 1F 3F F8 */	sth r0, 0x3ff8(r31)
/* 8086E580  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 8086E584  4B 9F 93 D1 */	bl cM_rndF__Ff
/* 8086E588  FC 00 08 1E */	fctiwz f0, f1
/* 8086E58C  D8 01 00 E0 */	stfd f0, 0xe0(r1)
/* 8086E590  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8086E594  B0 1F 3F FA */	sth r0, 0x3ffa(r31)
/* 8086E598  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 8086E59C  4B 9F 93 B9 */	bl cM_rndF__Ff
/* 8086E5A0  C0 1E 01 28 */	lfs f0, 0x128(r30)
/* 8086E5A4  EC 00 08 2A */	fadds f0, f0, f1
/* 8086E5A8  D0 1F 3F FC */	stfs f0, 0x3ffc(r31)
/* 8086E5AC  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 8086E5B0  4B 9F 93 A5 */	bl cM_rndF__Ff
/* 8086E5B4  C0 1E 01 28 */	lfs f0, 0x128(r30)
/* 8086E5B8  EC 00 08 2A */	fadds f0, f0, f1
/* 8086E5BC  D0 1F 40 00 */	stfs f0, 0x4000(r31)
lbl_8086E5C0:
/* 8086E5C0  A8 7F 3F F8 */	lha r3, 0x3ff8(r31)
/* 8086E5C4  38 03 0F A0 */	addi r0, r3, 0xfa0
/* 8086E5C8  B0 1F 3F F8 */	sth r0, 0x3ff8(r31)
/* 8086E5CC  A8 7F 3F FA */	lha r3, 0x3ffa(r31)
/* 8086E5D0  38 03 0F A0 */	addi r0, r3, 0xfa0
/* 8086E5D4  B0 1F 3F FA */	sth r0, 0x3ffa(r31)
/* 8086E5D8  A8 1F 3F FA */	lha r0, 0x3ffa(r31)
/* 8086E5DC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8086E5E0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8086E5E4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8086E5E8  7C 23 04 2E */	lfsx f1, r3, r0
/* 8086E5EC  C0 1F 40 00 */	lfs f0, 0x4000(r31)
/* 8086E5F0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8086E5F4  FC 00 00 1E */	fctiwz f0, f0
/* 8086E5F8  D8 01 00 E8 */	stfd f0, 0xe8(r1)
/* 8086E5FC  83 01 00 EC */	lwz r24, 0xec(r1)
/* 8086E600  A8 1F 3F F8 */	lha r0, 0x3ff8(r31)
/* 8086E604  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8086E608  7C 23 04 2E */	lfsx f1, r3, r0
/* 8086E60C  C0 1F 3F FC */	lfs f0, 0x3ffc(r31)
/* 8086E610  EC 00 00 72 */	fmuls f0, f0, f1
/* 8086E614  FC 00 00 1E */	fctiwz f0, f0
/* 8086E618  D8 01 00 E0 */	stfd f0, 0xe0(r1)
/* 8086E61C  83 21 00 E4 */	lwz r25, 0xe4(r1)
/* 8086E620  38 7F 3F FC */	addi r3, r31, 0x3ffc
/* 8086E624  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8086E628  C0 5E 00 2C */	lfs f2, 0x2c(r30)
/* 8086E62C  4B A0 14 55 */	bl cLib_addCalc0__FPfff
/* 8086E630  38 7F 40 00 */	addi r3, r31, 0x4000
/* 8086E634  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8086E638  C0 5E 00 2C */	lfs f2, 0x2c(r30)
/* 8086E63C  4B A0 14 45 */	bl cLib_addCalc0__FPfff
/* 8086E640  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8086E644  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8086E648  C0 3E 01 20 */	lfs f1, 0x120(r30)
/* 8086E64C  C0 5E 01 2C */	lfs f2, 0x12c(r30)
/* 8086E650  C0 7E 01 24 */	lfs f3, 0x124(r30)
/* 8086E654  4B AD 82 95 */	bl PSMTXTrans
/* 8086E658  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8086E65C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8086E660  7F 04 07 34 */	extsh r4, r24
/* 8086E664  4B 79 DD 39 */	bl mDoMtx_XrotM__FPA4_fs
/* 8086E668  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8086E66C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8086E670  38 19 3A 98 */	addi r0, r25, 0x3a98
/* 8086E674  7C 04 07 34 */	extsh r4, r0
/* 8086E678  4B 79 DE 55 */	bl mDoMtx_ZrotM__FPA4_fs
/* 8086E67C  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 8086E680  C0 5E 01 30 */	lfs f2, 0x130(r30)
/* 8086E684  C0 7E 00 1C */	lfs f3, 0x1c(r30)
/* 8086E688  4B 79 E7 15 */	bl transM__14mDoMtx_stack_cFfff
/* 8086E68C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8086E690  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8086E694  80 9F 3F F4 */	lwz r4, 0x3ff4(r31)
/* 8086E698  38 84 00 24 */	addi r4, r4, 0x24
/* 8086E69C  4B AD 7E 15 */	bl PSMTXCopy
/* 8086E6A0  7F E3 FB 78 */	mr r3, r31
/* 8086E6A4  4B FF EE B9 */	bl koro2_game__FP11fshop_class
/* 8086E6A8  38 60 00 01 */	li r3, 1
lbl_8086E6AC:
/* 8086E6AC  39 61 01 10 */	addi r11, r1, 0x110
/* 8086E6B0  4B AF 3B 65 */	bl _restgpr_24
/* 8086E6B4  80 01 01 14 */	lwz r0, 0x114(r1)
/* 8086E6B8  7C 08 03 A6 */	mtlr r0
/* 8086E6BC  38 21 01 10 */	addi r1, r1, 0x110
/* 8086E6C0  4E 80 00 20 */	blr 
