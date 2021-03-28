lbl_80139A70:
/* 80139A70  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80139A74  7C 08 02 A6 */	mflr r0
/* 80139A78  90 01 00 34 */	stw r0, 0x34(r1)
/* 80139A7C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80139A80  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80139A84  39 61 00 20 */	addi r11, r1, 0x20
/* 80139A88  48 22 87 51 */	bl _savegpr_28
/* 80139A8C  7C 7E 1B 78 */	mr r30, r3
/* 80139A90  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 80139A94  4B FE FF ED */	bl checkWolfGroundSpecialMode__9daAlink_cFv
/* 80139A98  2C 03 00 00 */	cmpwi r3, 0
/* 80139A9C  41 82 00 0C */	beq lbl_80139AA8
/* 80139AA0  38 60 00 01 */	li r3, 1
/* 80139AA4  48 00 03 1C */	b lbl_80139DC0
lbl_80139AA8:
/* 80139AA8  7F C3 F3 78 */	mr r3, r30
/* 80139AAC  38 80 00 08 */	li r4, 8
/* 80139AB0  4B F7 8B 39 */	bl itemButtonCheck__9daAlink_cFUc
/* 80139AB4  2C 03 00 00 */	cmpwi r3, 0
/* 80139AB8  41 82 00 10 */	beq lbl_80139AC8
/* 80139ABC  A8 1E 30 0A */	lha r0, 0x300a(r30)
/* 80139AC0  2C 00 00 00 */	cmpwi r0, 0
/* 80139AC4  40 82 00 7C */	bne lbl_80139B40
lbl_80139AC8:
/* 80139AC8  80 9E 27 EC */	lwz r4, 0x27ec(r30)
/* 80139ACC  28 04 00 00 */	cmplwi r4, 0
/* 80139AD0  41 82 00 1C */	beq lbl_80139AEC
/* 80139AD4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80139AD8  38 84 05 38 */	addi r4, r4, 0x538
/* 80139ADC  48 13 71 29 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80139AE0  B0 7E 04 E6 */	sth r3, 0x4e6(r30)
/* 80139AE4  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80139AE8  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_80139AEC:
/* 80139AEC  A8 1E 30 08 */	lha r0, 0x3008(r30)
/* 80139AF0  2C 00 00 00 */	cmpwi r0, 0
/* 80139AF4  40 82 00 40 */	bne lbl_80139B34
/* 80139AF8  88 1E 2F B1 */	lbz r0, 0x2fb1(r30)
/* 80139AFC  28 00 00 00 */	cmplwi r0, 0
/* 80139B00  41 82 00 20 */	beq lbl_80139B20
/* 80139B04  7F C3 F3 78 */	mr r3, r30
/* 80139B08  38 80 00 01 */	li r4, 1
/* 80139B0C  4B F9 79 25 */	bl resetCombo__9daAlink_cFi
/* 80139B10  7F C3 F3 78 */	mr r3, r30
/* 80139B14  38 80 00 00 */	li r4, 0
/* 80139B18  48 00 23 0D */	bl procWolfLockAttackInit__9daAlink_cFi
/* 80139B1C  48 00 02 A4 */	b lbl_80139DC0
lbl_80139B20:
/* 80139B20  7F C3 F3 78 */	mr r3, r30
/* 80139B24  38 80 00 01 */	li r4, 1
/* 80139B28  38 A0 00 00 */	li r5, 0
/* 80139B2C  48 00 17 75 */	bl procWolfRollAttackInit__9daAlink_cFii
/* 80139B30  48 00 02 90 */	b lbl_80139DC0
lbl_80139B34:
/* 80139B34  7F C3 F3 78 */	mr r3, r30
/* 80139B38  4B FF F8 6D */	bl checkWolfAttackAction__9daAlink_cFv
/* 80139B3C  48 00 02 84 */	b lbl_80139DC0
lbl_80139B40:
/* 80139B40  A8 7E 30 08 */	lha r3, 0x3008(r30)
/* 80139B44  2C 03 00 00 */	cmpwi r3, 0
/* 80139B48  41 82 00 34 */	beq lbl_80139B7C
/* 80139B4C  38 03 FF FF */	addi r0, r3, -1
/* 80139B50  B0 1E 30 08 */	sth r0, 0x3008(r30)
/* 80139B54  A8 1E 30 08 */	lha r0, 0x3008(r30)
/* 80139B58  2C 00 00 00 */	cmpwi r0, 0
/* 80139B5C  40 82 01 24 */	bne lbl_80139C80
/* 80139B60  7F C3 F3 78 */	mr r3, r30
/* 80139B64  4B FF FC 41 */	bl checkWolfLockAttackChargeState__9daAlink_cFv
/* 80139B68  2C 03 00 00 */	cmpwi r3, 0
/* 80139B6C  41 82 01 14 */	beq lbl_80139C80
/* 80139B70  7F C3 F3 78 */	mr r3, r30
/* 80139B74  4B FF F1 45 */	bl setWolfLockDomeModel__9daAlink_cFv
/* 80139B78  48 00 01 08 */	b lbl_80139C80
lbl_80139B7C:
/* 80139B7C  80 1E 05 80 */	lwz r0, 0x580(r30)
/* 80139B80  60 00 00 10 */	ori r0, r0, 0x10
/* 80139B84  90 1E 05 80 */	stw r0, 0x580(r30)
/* 80139B88  A0 1E 2F DC */	lhz r0, 0x2fdc(r30)
/* 80139B8C  28 00 01 09 */	cmplwi r0, 0x109
/* 80139B90  40 82 00 F0 */	bne lbl_80139C80
/* 80139B94  7F C3 F3 78 */	mr r3, r30
/* 80139B98  3C 80 00 02 */	lis r4, 0x0002 /* 0x0002001D@ha */
/* 80139B9C  38 84 00 1D */	addi r4, r4, 0x001D /* 0x0002001D@l */
/* 80139BA0  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80139BA4  81 8C 01 1C */	lwz r12, 0x11c(r12)
/* 80139BA8  7D 89 03 A6 */	mtctr r12
/* 80139BAC  4E 80 04 21 */	bctrl 
/* 80139BB0  A8 7E 30 0A */	lha r3, 0x300a(r30)
/* 80139BB4  38 03 FF FF */	addi r0, r3, -1
/* 80139BB8  B0 1E 30 0A */	sth r0, 0x300a(r30)
/* 80139BBC  C0 1E 34 90 */	lfs f0, 0x3490(r30)
/* 80139BC0  3C 60 80 39 */	lis r3, m__22daAlinkHIO_wlAtLock_c0@ha
/* 80139BC4  38 83 F6 F4 */	addi r4, r3, m__22daAlinkHIO_wlAtLock_c0@l
/* 80139BC8  C0 24 00 30 */	lfs f1, 0x30(r4)
/* 80139BCC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80139BD0  40 80 00 20 */	bge lbl_80139BF0
/* 80139BD4  38 7E 34 90 */	addi r3, r30, 0x3490
/* 80139BD8  C0 44 00 34 */	lfs f2, 0x34(r4)
/* 80139BDC  48 13 6B 65 */	bl cLib_chaseF__FPfff
/* 80139BE0  2C 03 00 00 */	cmpwi r3, 0
/* 80139BE4  41 82 00 0C */	beq lbl_80139BF0
/* 80139BE8  38 00 00 01 */	li r0, 1
/* 80139BEC  B0 1E 30 18 */	sth r0, 0x3018(r30)
lbl_80139BF0:
/* 80139BF0  88 1E 2F B1 */	lbz r0, 0x2fb1(r30)
/* 80139BF4  28 00 00 0A */	cmplwi r0, 0xa
/* 80139BF8  40 80 00 88 */	bge lbl_80139C80
/* 80139BFC  C0 1E 34 90 */	lfs f0, 0x3490(r30)
/* 80139C00  EC 00 00 32 */	fmuls f0, f0, f0
/* 80139C04  D0 1E 34 78 */	stfs f0, 0x3478(r30)
/* 80139C08  38 00 00 00 */	li r0, 0
/* 80139C0C  90 01 00 08 */	stw r0, 8(r1)
/* 80139C10  3C 60 80 14 */	lis r3, daAlink_searchWolfLockEnemy__FP10fopAc_ac_cPv@ha
/* 80139C14  38 63 92 A8 */	addi r3, r3, daAlink_searchWolfLockEnemy__FP10fopAc_ac_cPv@l
/* 80139C18  38 81 00 08 */	addi r4, r1, 8
/* 80139C1C  4B ED FB A1 */	bl fopAcIt_Executor__FPFPvPv_iPv
/* 80139C20  80 01 00 08 */	lwz r0, 8(r1)
/* 80139C24  28 00 00 00 */	cmplwi r0, 0
/* 80139C28  41 82 00 58 */	beq lbl_80139C80
/* 80139C2C  88 7E 2F B1 */	lbz r3, 0x2fb1(r30)
/* 80139C30  3B 83 FF FF */	addi r28, r3, -1
/* 80139C34  57 9D 18 38 */	slwi r29, r28, 3
/* 80139C38  48 00 00 28 */	b lbl_80139C60
lbl_80139C3C:
/* 80139C3C  38 1C 00 01 */	addi r0, r28, 1
/* 80139C40  54 03 18 38 */	slwi r3, r0, 3
/* 80139C44  38 63 07 C4 */	addi r3, r3, 0x7c4
/* 80139C48  7C 7E 1A 14 */	add r3, r30, r3
/* 80139C4C  38 1D 07 C8 */	addi r0, r29, 0x7c8
/* 80139C50  7C 9E 00 2E */	lwzx r4, r30, r0
/* 80139C54  48 02 50 65 */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 80139C58  3B 9C FF FF */	addi r28, r28, -1
/* 80139C5C  3B BD FF F8 */	addi r29, r29, -8
lbl_80139C60:
/* 80139C60  2C 1C 00 00 */	cmpwi r28, 0
/* 80139C64  40 80 FF D8 */	bge lbl_80139C3C
/* 80139C68  38 7E 07 C4 */	addi r3, r30, 0x7c4
/* 80139C6C  80 81 00 08 */	lwz r4, 8(r1)
/* 80139C70  48 02 50 49 */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 80139C74  88 7E 2F B1 */	lbz r3, 0x2fb1(r30)
/* 80139C78  38 03 00 01 */	addi r0, r3, 1
/* 80139C7C  98 1E 2F B1 */	stb r0, 0x2fb1(r30)
lbl_80139C80:
/* 80139C80  7F C3 F3 78 */	mr r3, r30
/* 80139C84  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010037@ha */
/* 80139C88  38 84 00 37 */	addi r4, r4, 0x0037 /* 0x00010037@l */
/* 80139C8C  4B F8 54 2D */	bl voiceStartLevel__9daAlink_cFUl
/* 80139C90  3B 80 00 00 */	li r28, 0
/* 80139C94  7F C3 F3 78 */	mr r3, r30
/* 80139C98  4B FF D4 4D */	bl getWolfLieMoveAnmSpeed__9daAlink_cFv
/* 80139C9C  FF E0 08 90 */	fmr f31, f1
/* 80139CA0  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80139CA4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80139CA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80139CAC  40 81 00 0C */	ble lbl_80139CB8
/* 80139CB0  D3 FF 00 0C */	stfs f31, 0xc(r31)
/* 80139CB4  48 00 00 18 */	b lbl_80139CCC
lbl_80139CB8:
/* 80139CB8  40 80 00 10 */	bge lbl_80139CC8
/* 80139CBC  FC 00 F8 50 */	fneg f0, f31
/* 80139CC0  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80139CC4  48 00 00 08 */	b lbl_80139CCC
lbl_80139CC8:
/* 80139CC8  3B 80 00 01 */	li r28, 1
lbl_80139CCC:
/* 80139CCC  7F C3 F3 78 */	mr r3, r30
/* 80139CD0  4B FE F2 8D */	bl setWolfAtnMoveDirection__9daAlink_cFv
/* 80139CD4  2C 1C 00 01 */	cmpwi r28, 1
/* 80139CD8  41 82 00 2C */	beq lbl_80139D04
/* 80139CDC  7F E3 FB 78 */	mr r3, r31
/* 80139CE0  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80139CE4  48 1E E7 49 */	bl checkPass__12J3DFrameCtrlFf
/* 80139CE8  2C 03 00 00 */	cmpwi r3, 0
/* 80139CEC  40 82 00 18 */	bne lbl_80139D04
/* 80139CF0  7F E3 FB 78 */	mr r3, r31
/* 80139CF4  C0 22 94 64 */	lfs f1, lit_14954(r2)
/* 80139CF8  48 1E E7 35 */	bl checkPass__12J3DFrameCtrlFf
/* 80139CFC  2C 03 00 00 */	cmpwi r3, 0
/* 80139D00  41 82 00 60 */	beq lbl_80139D60
lbl_80139D04:
/* 80139D04  C0 3E 33 AC */	lfs f1, 0x33ac(r30)
/* 80139D08  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 80139D0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80139D10  40 81 00 3C */	ble lbl_80139D4C
/* 80139D14  88 1E 2F 98 */	lbz r0, 0x2f98(r30)
/* 80139D18  28 00 00 01 */	cmplwi r0, 1
/* 80139D1C  41 82 00 14 */	beq lbl_80139D30
/* 80139D20  D3 FF 00 0C */	stfs f31, 0xc(r31)
/* 80139D24  38 00 00 00 */	li r0, 0
/* 80139D28  B0 1F 00 0A */	sth r0, 0xa(r31)
/* 80139D2C  48 00 00 14 */	b lbl_80139D40
lbl_80139D30:
/* 80139D30  FC 00 F8 50 */	fneg f0, f31
/* 80139D34  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80139D38  A8 1F 00 08 */	lha r0, 8(r31)
/* 80139D3C  B0 1F 00 0A */	sth r0, 0xa(r31)
lbl_80139D40:
/* 80139D40  7F C3 F3 78 */	mr r3, r30
/* 80139D44  4B F8 56 39 */	bl initBasAnime__9daAlink_cFv
/* 80139D48  48 00 00 18 */	b lbl_80139D60
lbl_80139D4C:
/* 80139D4C  2C 1C 00 00 */	cmpwi r28, 0
/* 80139D50  40 82 00 10 */	bne lbl_80139D60
/* 80139D54  7F C3 F3 78 */	mr r3, r30
/* 80139D58  C0 22 94 64 */	lfs f1, lit_14954(r2)
/* 80139D5C  4B FB F1 AD */	bl stopHalfMoveAnime__9daAlink_cFf
lbl_80139D60:
/* 80139D60  7F C3 F3 78 */	mr r3, r30
/* 80139D64  4B FE E7 15 */	bl setSpeedAndAngleWolfAtn__9daAlink_cFv
/* 80139D68  7F C3 F3 78 */	mr r3, r30
/* 80139D6C  4B FF D3 C1 */	bl getWolfLieMoveSpeed__9daAlink_cFv
/* 80139D70  D0 3E 33 98 */	stfs f1, 0x3398(r30)
/* 80139D74  C0 3E 33 98 */	lfs f1, 0x3398(r30)
/* 80139D78  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80139D7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80139D80  40 80 00 10 */	bge lbl_80139D90
/* 80139D84  C0 02 92 BC */	lfs f0, lit_6041(r2)
/* 80139D88  EC 01 00 32 */	fmuls f0, f1, f0
/* 80139D8C  D0 1E 33 98 */	stfs f0, 0x3398(r30)
lbl_80139D90:
/* 80139D90  7F C3 F3 78 */	mr r3, r30
/* 80139D94  4B F7 9B 71 */	bl checkZeroSpeedF__9daAlink_cCFv
/* 80139D98  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80139D9C  41 82 00 14 */	beq lbl_80139DB0
/* 80139DA0  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 80139DA4  60 00 00 01 */	ori r0, r0, 1
/* 80139DA8  90 1E 31 A0 */	stw r0, 0x31a0(r30)
/* 80139DAC  48 00 00 10 */	b lbl_80139DBC
lbl_80139DB0:
/* 80139DB0  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 80139DB4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80139DB8  90 1E 31 A0 */	stw r0, 0x31a0(r30)
lbl_80139DBC:
/* 80139DBC  38 60 00 01 */	li r3, 1
lbl_80139DC0:
/* 80139DC0  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80139DC4  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80139DC8  39 61 00 20 */	addi r11, r1, 0x20
/* 80139DCC  48 22 84 59 */	bl _restgpr_28
/* 80139DD0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80139DD4  7C 08 03 A6 */	mtlr r0
/* 80139DD8  38 21 00 30 */	addi r1, r1, 0x30
/* 80139DDC  4E 80 00 20 */	blr 
