lbl_801369E4:
/* 801369E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801369E8  7C 08 02 A6 */	mflr r0
/* 801369EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801369F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801369F4  93 C1 00 08 */	stw r30, 8(r1)
/* 801369F8  7C 7E 1B 78 */	mr r30, r3
/* 801369FC  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 80136A00  38 60 00 00 */	li r3, 0
/* 80136A04  B0 7E 30 10 */	sth r3, 0x3010(r30)
/* 80136A08  A8 1E 30 0C */	lha r0, 0x300c(r30)
/* 80136A0C  2C 00 00 00 */	cmpwi r0, 0
/* 80136A10  40 82 00 10 */	bne lbl_80136A20
/* 80136A14  38 00 00 05 */	li r0, 5
/* 80136A18  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 80136A1C  48 00 00 08 */	b lbl_80136A24
lbl_80136A20:
/* 80136A20  B0 7E 30 0C */	sth r3, 0x300c(r30)
lbl_80136A24:
/* 80136A24  80 1E 31 98 */	lwz r0, 0x3198(r30)
/* 80136A28  2C 00 00 00 */	cmpwi r0, 0
/* 80136A2C  41 82 00 3C */	beq lbl_80136A68
/* 80136A30  C0 62 93 14 */	lfs f3, lit_7307(r2)
/* 80136A34  C0 42 92 98 */	lfs f2, lit_5943(r2)
/* 80136A38  C0 3E 34 80 */	lfs f1, 0x3480(r30)
/* 80136A3C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80136A40  EC 01 00 32 */	fmuls f0, f1, f0
/* 80136A44  EC 02 00 28 */	fsubs f0, f2, f0
/* 80136A48  EC 23 00 32 */	fmuls f1, f3, f0
/* 80136A4C  3C 60 80 42 */	lis r3, l_wolfBaseAnime@ha
/* 80136A50  C4 03 56 1C */	lfsu f0, l_wolfBaseAnime@l(r3)
/* 80136A54  EC 00 00 72 */	fmuls f0, f0, f1
/* 80136A58  D0 1E 35 88 */	stfs f0, 0x3588(r30)
/* 80136A5C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80136A60  EC 00 00 72 */	fmuls f0, f0, f1
/* 80136A64  D0 1E 35 90 */	stfs f0, 0x3590(r30)
lbl_80136A68:
/* 80136A68  80 1E 31 9C */	lwz r0, 0x319c(r30)
/* 80136A6C  2C 00 FF FC */	cmpwi r0, -4
/* 80136A70  40 82 00 28 */	bne lbl_80136A98
/* 80136A74  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 80136A78  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 80136A7C  41 82 00 0C */	beq lbl_80136A88
/* 80136A80  38 60 00 01 */	li r3, 1
/* 80136A84  48 00 01 7C */	b lbl_80136C00
lbl_80136A88:
/* 80136A88  3C 60 80 39 */	lis r3, m__24daAlinkHIO_wlDamLarge_c0@ha
/* 80136A8C  38 63 F2 9C */	addi r3, r3, m__24daAlinkHIO_wlDamLarge_c0@l
/* 80136A90  C0 03 00 04 */	lfs f0, 4(r3)
/* 80136A94  D0 1F 00 0C */	stfs f0, 0xc(r31)
lbl_80136A98:
/* 80136A98  A8 7E 30 08 */	lha r3, 0x3008(r30)
/* 80136A9C  2C 03 00 00 */	cmpwi r3, 0
/* 80136AA0  40 81 00 40 */	ble lbl_80136AE0
/* 80136AA4  38 03 FF FF */	addi r0, r3, -1
/* 80136AA8  B0 1E 30 08 */	sth r0, 0x3008(r30)
/* 80136AAC  A8 1E 30 08 */	lha r0, 0x3008(r30)
/* 80136AB0  2C 00 00 00 */	cmpwi r0, 0
/* 80136AB4  40 82 01 48 */	bne lbl_80136BFC
/* 80136AB8  38 00 FF FF */	li r0, -1
/* 80136ABC  B0 1E 30 08 */	sth r0, 0x3008(r30)
/* 80136AC0  3C 60 80 39 */	lis r3, m__22daAlinkHIO_wlDamage_c0@ha
/* 80136AC4  38 63 F3 C4 */	addi r3, r3, m__22daAlinkHIO_wlDamage_c0@l
/* 80136AC8  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 80136ACC  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80136AD0  38 00 00 00 */	li r0, 0
/* 80136AD4  B0 1F 00 14 */	sth r0, 0x14(r31)
/* 80136AD8  B0 1F 00 16 */	sth r0, 0x16(r31)
/* 80136ADC  48 00 01 20 */	b lbl_80136BFC
lbl_80136AE0:
/* 80136AE0  A8 1E 30 0E */	lha r0, 0x300e(r30)
/* 80136AE4  2C 00 00 00 */	cmpwi r0, 0
/* 80136AE8  41 82 00 34 */	beq lbl_80136B1C
/* 80136AEC  7F E3 FB 78 */	mr r3, r31
/* 80136AF0  C0 22 93 20 */	lfs f1, lit_7449(r2)
/* 80136AF4  48 1F 19 39 */	bl checkPass__12J3DFrameCtrlFf
/* 80136AF8  2C 03 00 00 */	cmpwi r3, 0
/* 80136AFC  41 82 00 20 */	beq lbl_80136B1C
/* 80136B00  7F C3 F3 78 */	mr r3, r30
/* 80136B04  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010042@ha */
/* 80136B08  38 84 00 42 */	addi r4, r4, 0x0042 /* 0x00010042@l */
/* 80136B0C  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80136B10  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 80136B14  7D 89 03 A6 */	mtctr r12
/* 80136B18  4E 80 04 21 */	bctrl 
lbl_80136B1C:
/* 80136B1C  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80136B20  C0 1E 34 7C */	lfs f0, 0x347c(r30)
/* 80136B24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80136B28  40 81 00 10 */	ble lbl_80136B38
/* 80136B2C  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 80136B30  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 80136B34  90 1E 31 A0 */	stw r0, 0x31a0(r30)
lbl_80136B38:
/* 80136B38  7F E3 FB 78 */	mr r3, r31
/* 80136B3C  48 02 79 91 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 80136B40  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80136B44  41 82 00 70 */	beq lbl_80136BB4
/* 80136B48  A8 1E 30 12 */	lha r0, 0x3012(r30)
/* 80136B4C  2C 00 00 00 */	cmpwi r0, 0
/* 80136B50  41 82 00 28 */	beq lbl_80136B78
/* 80136B54  80 6D 8A 98 */	lwz r3, m_midnaActor__9daPy_py_c(r13)
/* 80136B58  80 03 08 C0 */	lwz r0, 0x8c0(r3)
/* 80136B5C  28 00 00 0B */	cmplwi r0, 0xb
/* 80136B60  40 82 00 18 */	bne lbl_80136B78
/* 80136B64  38 00 00 0D */	li r0, 0xd
/* 80136B68  90 03 08 C0 */	stw r0, 0x8c0(r3)
/* 80136B6C  7F C3 F3 78 */	mr r3, r30
/* 80136B70  4B FF 64 E1 */	bl procWolfMidnaRideShockInit__9daAlink_cFv
/* 80136B74  48 00 00 8C */	b lbl_80136C00
lbl_80136B78:
/* 80136B78  80 1E 06 14 */	lwz r0, 0x614(r30)
/* 80136B7C  28 00 00 1B */	cmplwi r0, 0x1b
/* 80136B80  41 82 00 0C */	beq lbl_80136B8C
/* 80136B84  28 00 00 09 */	cmplwi r0, 9
/* 80136B88  40 82 00 1C */	bne lbl_80136BA4
lbl_80136B8C:
/* 80136B8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80136B90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80136B94  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80136B98  80 9E 31 84 */	lwz r4, 0x3184(r30)
/* 80136B9C  4B F1 15 E1 */	bl cutEnd__16dEvent_manager_cFi
/* 80136BA0  48 00 00 5C */	b lbl_80136BFC
lbl_80136BA4:
/* 80136BA4  7F C3 F3 78 */	mr r3, r30
/* 80136BA8  38 80 00 00 */	li r4, 0
/* 80136BAC  4B FF 2F 99 */	bl checkNextActionWolf__9daAlink_cFi
/* 80136BB0  48 00 00 4C */	b lbl_80136BFC
lbl_80136BB4:
/* 80136BB4  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80136BB8  C0 1E 34 78 */	lfs f0, 0x3478(r30)
/* 80136BBC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80136BC0  40 81 00 14 */	ble lbl_80136BD4
/* 80136BC4  7F C3 F3 78 */	mr r3, r30
/* 80136BC8  38 80 00 01 */	li r4, 1
/* 80136BCC  4B FF 2F 79 */	bl checkNextActionWolf__9daAlink_cFi
/* 80136BD0  48 00 00 2C */	b lbl_80136BFC
lbl_80136BD4:
/* 80136BD4  80 1E 05 8C */	lwz r0, 0x58c(r30)
/* 80136BD8  54 00 01 09 */	rlwinm. r0, r0, 0, 4, 4
/* 80136BDC  41 82 00 20 */	beq lbl_80136BFC
/* 80136BE0  C0 1E 34 84 */	lfs f0, 0x3484(r30)
/* 80136BE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80136BE8  40 81 00 14 */	ble lbl_80136BFC
/* 80136BEC  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 80136BF0  80 7E 1F 2C */	lwz r3, 0x1f2c(r30)
/* 80136BF4  C0 1E 34 84 */	lfs f0, 0x3484(r30)
/* 80136BF8  D0 03 00 08 */	stfs f0, 8(r3)
lbl_80136BFC:
/* 80136BFC  38 60 00 01 */	li r3, 1
lbl_80136C00:
/* 80136C00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80136C04  83 C1 00 08 */	lwz r30, 8(r1)
/* 80136C08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80136C0C  7C 08 03 A6 */	mtlr r0
/* 80136C10  38 21 00 10 */	addi r1, r1, 0x10
/* 80136C14  4E 80 00 20 */	blr 
