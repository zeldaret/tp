lbl_800E8D1C:
/* 800E8D1C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800E8D20  7C 08 02 A6 */	mflr r0
/* 800E8D24  90 01 00 44 */	stw r0, 0x44(r1)
/* 800E8D28  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 800E8D2C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 800E8D30  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800E8D34  93 C1 00 28 */	stw r30, 0x28(r1)
/* 800E8D38  7C 7F 1B 78 */	mr r31, r3
/* 800E8D3C  7C 85 23 78 */	mr r5, r4
/* 800E8D40  38 80 00 00 */	li r4, 0
/* 800E8D44  4B FF F1 F9 */	bl setPushPullKeepData__9daAlink_cFQ29dBgW_Base13PushPullLabeli
/* 800E8D48  2C 03 00 00 */	cmpwi r3, 0
/* 800E8D4C  40 82 00 0C */	bne lbl_800E8D58
/* 800E8D50  38 60 00 00 */	li r3, 0
/* 800E8D54  48 00 01 D0 */	b lbl_800E8F24
lbl_800E8D58:
/* 800E8D58  7F E3 FB 78 */	mr r3, r31
/* 800E8D5C  38 80 00 39 */	li r4, 0x39
/* 800E8D60  4B FD 92 0D */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800E8D64  7F E3 FB 78 */	mr r3, r31
/* 800E8D68  4B FF F3 3D */	bl checkPushPullTurnBlock__9daAlink_cFv
/* 800E8D6C  B0 7F 30 08 */	sth r3, 0x3008(r31)
/* 800E8D70  A8 1F 30 08 */	lha r0, 0x3008(r31)
/* 800E8D74  B0 1F 30 12 */	sth r0, 0x3012(r31)
/* 800E8D78  A8 1F 30 08 */	lha r0, 0x3008(r31)
/* 800E8D7C  2C 00 00 00 */	cmpwi r0, 0
/* 800E8D80  41 82 00 18 */	beq lbl_800E8D98
/* 800E8D84  C3 E2 92 B8 */	lfs f31, lit_6040(r2)
/* 800E8D88  7F E3 FB 78 */	mr r3, r31
/* 800E8D8C  38 80 00 3B */	li r4, 0x3b
/* 800E8D90  4B FC 41 F1 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800E8D94  48 00 00 28 */	b lbl_800E8DBC
lbl_800E8D98:
/* 800E8D98  7F E3 FB 78 */	mr r3, r31
/* 800E8D9C  4B FF F5 B9 */	bl getPushPullAnimeSpeed__9daAlink_cFv
/* 800E8DA0  FF E0 08 90 */	fmr f31, f1
/* 800E8DA4  7F E3 FB 78 */	mr r3, r31
/* 800E8DA8  38 80 00 3A */	li r4, 0x3a
/* 800E8DAC  3C A0 80 39 */	lis r5, m__22daAlinkHIO_pushpull_c0@ha
/* 800E8DB0  38 A5 E2 10 */	addi r5, r5, m__22daAlinkHIO_pushpull_c0@l
/* 800E8DB4  C0 45 00 24 */	lfs f2, 0x24(r5)
/* 800E8DB8  4B FC 42 29 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
lbl_800E8DBC:
/* 800E8DBC  D3 FF 1F DC */	stfs f31, 0x1fdc(r31)
/* 800E8DC0  38 00 00 01 */	li r0, 1
/* 800E8DC4  90 1F 31 98 */	stw r0, 0x3198(r31)
/* 800E8DC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800E8DCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800E8DD0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 800E8DD4  A0 9F 1E 1E */	lhz r4, 0x1e1e(r31)
/* 800E8DD8  4B F8 B8 41 */	bl GetActorPointer__4cBgSCFi
/* 800E8DDC  7C 7E 1B 78 */	mr r30, r3
/* 800E8DE0  7F E4 FB 78 */	mr r4, r31
/* 800E8DE4  4B F3 19 2D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 800E8DE8  B0 7F 30 0E */	sth r3, 0x300e(r31)
/* 800E8DEC  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 800E8DF0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 800E8DF4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800E8DF8  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800E8DFC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 800E8E00  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 800E8E04  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 800E8E08  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 800E8E0C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800E8E10  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 800E8E14  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 800E8E18  38 61 00 0C */	addi r3, r1, 0xc
/* 800E8E1C  38 81 00 18 */	addi r4, r1, 0x18
/* 800E8E20  48 25 E5 7D */	bl PSVECSquareDistance
/* 800E8E24  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E8E28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E8E2C  40 81 00 58 */	ble lbl_800E8E84
/* 800E8E30  FC 00 08 34 */	frsqrte f0, f1
/* 800E8E34  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800E8E38  FC 44 00 32 */	fmul f2, f4, f0
/* 800E8E3C  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800E8E40  FC 00 00 32 */	fmul f0, f0, f0
/* 800E8E44  FC 01 00 32 */	fmul f0, f1, f0
/* 800E8E48  FC 03 00 28 */	fsub f0, f3, f0
/* 800E8E4C  FC 02 00 32 */	fmul f0, f2, f0
/* 800E8E50  FC 44 00 32 */	fmul f2, f4, f0
/* 800E8E54  FC 00 00 32 */	fmul f0, f0, f0
/* 800E8E58  FC 01 00 32 */	fmul f0, f1, f0
/* 800E8E5C  FC 03 00 28 */	fsub f0, f3, f0
/* 800E8E60  FC 02 00 32 */	fmul f0, f2, f0
/* 800E8E64  FC 44 00 32 */	fmul f2, f4, f0
/* 800E8E68  FC 00 00 32 */	fmul f0, f0, f0
/* 800E8E6C  FC 01 00 32 */	fmul f0, f1, f0
/* 800E8E70  FC 03 00 28 */	fsub f0, f3, f0
/* 800E8E74  FC 02 00 32 */	fmul f0, f2, f0
/* 800E8E78  FC 21 00 32 */	fmul f1, f1, f0
/* 800E8E7C  FC 20 08 18 */	frsp f1, f1
/* 800E8E80  48 00 00 88 */	b lbl_800E8F08
lbl_800E8E84:
/* 800E8E84  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800E8E88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E8E8C  40 80 00 10 */	bge lbl_800E8E9C
/* 800E8E90  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800E8E94  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 800E8E98  48 00 00 70 */	b lbl_800E8F08
lbl_800E8E9C:
/* 800E8E9C  D0 21 00 08 */	stfs f1, 8(r1)
/* 800E8EA0  80 81 00 08 */	lwz r4, 8(r1)
/* 800E8EA4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800E8EA8  3C 00 7F 80 */	lis r0, 0x7f80
/* 800E8EAC  7C 03 00 00 */	cmpw r3, r0
/* 800E8EB0  41 82 00 14 */	beq lbl_800E8EC4
/* 800E8EB4  40 80 00 40 */	bge lbl_800E8EF4
/* 800E8EB8  2C 03 00 00 */	cmpwi r3, 0
/* 800E8EBC  41 82 00 20 */	beq lbl_800E8EDC
/* 800E8EC0  48 00 00 34 */	b lbl_800E8EF4
lbl_800E8EC4:
/* 800E8EC4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800E8EC8  41 82 00 0C */	beq lbl_800E8ED4
/* 800E8ECC  38 00 00 01 */	li r0, 1
/* 800E8ED0  48 00 00 28 */	b lbl_800E8EF8
lbl_800E8ED4:
/* 800E8ED4  38 00 00 02 */	li r0, 2
/* 800E8ED8  48 00 00 20 */	b lbl_800E8EF8
lbl_800E8EDC:
/* 800E8EDC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800E8EE0  41 82 00 0C */	beq lbl_800E8EEC
/* 800E8EE4  38 00 00 05 */	li r0, 5
/* 800E8EE8  48 00 00 10 */	b lbl_800E8EF8
lbl_800E8EEC:
/* 800E8EEC  38 00 00 03 */	li r0, 3
/* 800E8EF0  48 00 00 08 */	b lbl_800E8EF8
lbl_800E8EF4:
/* 800E8EF4  38 00 00 04 */	li r0, 4
lbl_800E8EF8:
/* 800E8EF8  2C 00 00 01 */	cmpwi r0, 1
/* 800E8EFC  40 82 00 0C */	bne lbl_800E8F08
/* 800E8F00  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800E8F04  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_800E8F08:
/* 800E8F08  D0 3F 34 7C */	stfs f1, 0x347c(r31)
/* 800E8F0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800E8F10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800E8F14  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800E8F18  64 00 04 00 */	oris r0, r0, 0x400
/* 800E8F1C  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 800E8F20  38 60 00 01 */	li r3, 1
lbl_800E8F24:
/* 800E8F24  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 800E8F28  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 800E8F2C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800E8F30  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 800E8F34  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800E8F38  7C 08 03 A6 */	mtlr r0
/* 800E8F3C  38 21 00 40 */	addi r1, r1, 0x40
/* 800E8F40  4E 80 00 20 */	blr 
