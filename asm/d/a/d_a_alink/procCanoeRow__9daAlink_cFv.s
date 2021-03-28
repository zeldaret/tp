lbl_800F5A1C:
/* 800F5A1C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800F5A20  7C 08 02 A6 */	mflr r0
/* 800F5A24  90 01 00 34 */	stw r0, 0x34(r1)
/* 800F5A28  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 800F5A2C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 800F5A30  39 61 00 20 */	addi r11, r1, 0x20
/* 800F5A34  48 26 C7 A9 */	bl _savegpr_29
/* 800F5A38  7C 7D 1B 78 */	mr r29, r3
/* 800F5A3C  83 E3 28 18 */	lwz r31, 0x2818(r3)
/* 800F5A40  4B FF ED 99 */	bl canoeCommon__9daAlink_cFv
/* 800F5A44  2C 03 00 00 */	cmpwi r3, 0
/* 800F5A48  41 82 00 0C */	beq lbl_800F5A54
/* 800F5A4C  38 60 00 01 */	li r3, 1
/* 800F5A50  48 00 02 94 */	b lbl_800F5CE4
lbl_800F5A54:
/* 800F5A54  3B DD 20 18 */	addi r30, r29, 0x2018
/* 800F5A58  7F A3 EB 78 */	mr r3, r29
/* 800F5A5C  4B FC 3E F1 */	bl checkItemChangeFromButton__9daAlink_cFv
/* 800F5A60  2C 03 00 00 */	cmpwi r3, 0
/* 800F5A64  40 82 02 7C */	bne lbl_800F5CE0
/* 800F5A68  7F A3 EB 78 */	mr r3, r29
/* 800F5A6C  4B FC 38 D5 */	bl checkEquipAnime__9daAlink_cCFv
/* 800F5A70  2C 03 00 00 */	cmpwi r3, 0
/* 800F5A74  41 82 00 14 */	beq lbl_800F5A88
/* 800F5A78  7F A3 EB 78 */	mr r3, r29
/* 800F5A7C  38 80 00 00 */	li r4, 0
/* 800F5A80  48 00 04 29 */	bl procCanoePaddlePutInit__9daAlink_cFi
/* 800F5A84  48 00 02 5C */	b lbl_800F5CE0
lbl_800F5A88:
/* 800F5A88  7F C3 F3 78 */	mr r3, r30
/* 800F5A8C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800F5A90  48 23 29 9D */	bl checkPass__12J3DFrameCtrlFf
/* 800F5A94  2C 03 00 00 */	cmpwi r3, 0
/* 800F5A98  41 82 00 34 */	beq lbl_800F5ACC
/* 800F5A9C  C0 3D 33 AC */	lfs f1, 0x33ac(r29)
/* 800F5AA0  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800F5AA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F5AA8  40 81 00 14 */	ble lbl_800F5ABC
/* 800F5AAC  7F A3 EB 78 */	mr r3, r29
/* 800F5AB0  80 9D 31 98 */	lwz r4, 0x3198(r29)
/* 800F5AB4  4B FF FC 69 */	bl procCanoeRowInit__9daAlink_cFi
/* 800F5AB8  48 00 02 28 */	b lbl_800F5CE0
lbl_800F5ABC:
/* 800F5ABC  7F A3 EB 78 */	mr r3, r29
/* 800F5AC0  38 80 00 00 */	li r4, 0
/* 800F5AC4  4B FF F7 21 */	bl procCanoeWaitInit__9daAlink_cFi
/* 800F5AC8  48 00 02 18 */	b lbl_800F5CE0
lbl_800F5ACC:
/* 800F5ACC  3C 60 80 39 */	lis r3, m__19daAlinkHIO_canoe_c0@ha
/* 800F5AD0  38 63 E6 10 */	addi r3, r3, m__19daAlinkHIO_canoe_c0@l
/* 800F5AD4  C3 E3 00 1C */	lfs f31, 0x1c(r3)
/* 800F5AD8  A8 1D 30 0E */	lha r0, 0x300e(r29)
/* 800F5ADC  2C 00 00 01 */	cmpwi r0, 1
/* 800F5AE0  40 82 00 24 */	bne lbl_800F5B04
/* 800F5AE4  C0 7F 05 2C */	lfs f3, 0x52c(r31)
/* 800F5AE8  C0 42 92 98 */	lfs f2, lit_5943(r2)
/* 800F5AEC  FC 20 F8 50 */	fneg f1, f31
/* 800F5AF0  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 800F5AF4  EC 01 00 32 */	fmuls f0, f1, f0
/* 800F5AF8  EC 02 00 32 */	fmuls f0, f2, f0
/* 800F5AFC  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 800F5B00  41 81 00 2C */	bgt lbl_800F5B2C
lbl_800F5B04:
/* 800F5B04  7C 00 07 35 */	extsh. r0, r0
/* 800F5B08  40 82 00 30 */	bne lbl_800F5B38
/* 800F5B0C  7F A3 EB 78 */	mr r3, r29
/* 800F5B10  4B FF E1 09 */	bl getCanoeSpeedRate__9daAlink_cCFv
/* 800F5B14  EC 3F 00 72 */	fmuls f1, f31, f1
/* 800F5B18  C0 02 92 98 */	lfs f0, lit_5943(r2)
/* 800F5B1C  EC 20 00 72 */	fmuls f1, f0, f1
/* 800F5B20  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 800F5B24  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800F5B28  40 80 00 10 */	bge lbl_800F5B38
lbl_800F5B2C:
/* 800F5B2C  3C 60 80 39 */	lis r3, m__19daAlinkHIO_canoe_c0@ha
/* 800F5B30  38 63 E6 10 */	addi r3, r3, m__19daAlinkHIO_canoe_c0@l
/* 800F5B34  C3 E3 00 30 */	lfs f31, 0x30(r3)
lbl_800F5B38:
/* 800F5B38  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 800F5B3C  D0 01 00 08 */	stfs f0, 8(r1)
/* 800F5B40  38 61 00 08 */	addi r3, r1, 8
/* 800F5B44  FC 20 F8 90 */	fmr f1, f31
/* 800F5B48  C0 42 93 A0 */	lfs f2, lit_9054(r2)
/* 800F5B4C  48 17 AB F5 */	bl cLib_chaseF__FPfff
/* 800F5B50  C0 01 00 08 */	lfs f0, 8(r1)
/* 800F5B54  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 800F5B58  A8 1D 30 08 */	lha r0, 0x3008(r29)
/* 800F5B5C  2C 00 00 00 */	cmpwi r0, 0
/* 800F5B60  41 82 00 18 */	beq lbl_800F5B78
/* 800F5B64  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 800F5B68  C0 02 93 C8 */	lfs f0, lit_10286(r2)
/* 800F5B6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F5B70  4C 41 13 82 */	cror 2, 1, 2
/* 800F5B74  40 82 01 28 */	bne lbl_800F5C9C
lbl_800F5B78:
/* 800F5B78  C0 3D 33 AC */	lfs f1, 0x33ac(r29)
/* 800F5B7C  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800F5B80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F5B84  40 81 00 70 */	ble lbl_800F5BF4
/* 800F5B88  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 800F5B8C  A8 7D 2F E2 */	lha r3, 0x2fe2(r29)
/* 800F5B90  7C 00 18 50 */	subf r0, r0, r3
/* 800F5B94  7C 04 07 34 */	extsh r4, r0
/* 800F5B98  A8 1D 30 0E */	lha r0, 0x300e(r29)
/* 800F5B9C  2C 00 00 01 */	cmpwi r0, 1
/* 800F5BA0  40 82 00 10 */	bne lbl_800F5BB0
/* 800F5BA4  3C 63 00 01 */	addis r3, r3, 1
/* 800F5BA8  38 03 80 00 */	addi r0, r3, -32768
/* 800F5BAC  7C 03 07 34 */	extsh r3, r0
lbl_800F5BB0:
/* 800F5BB0  2C 04 80 00 */	cmpwi r4, -32768
/* 800F5BB4  41 82 00 2C */	beq lbl_800F5BE0
/* 800F5BB8  7C 80 07 35 */	extsh. r0, r4
/* 800F5BBC  40 81 00 10 */	ble lbl_800F5BCC
/* 800F5BC0  A8 1D 30 12 */	lha r0, 0x3012(r29)
/* 800F5BC4  2C 00 00 01 */	cmpwi r0, 1
/* 800F5BC8  41 82 00 18 */	beq lbl_800F5BE0
lbl_800F5BCC:
/* 800F5BCC  7C 80 07 35 */	extsh. r0, r4
/* 800F5BD0  40 80 00 1C */	bge lbl_800F5BEC
/* 800F5BD4  A8 1D 30 12 */	lha r0, 0x3012(r29)
/* 800F5BD8  2C 00 00 00 */	cmpwi r0, 0
/* 800F5BDC  40 82 00 10 */	bne lbl_800F5BEC
lbl_800F5BE0:
/* 800F5BE0  B0 7F 14 4C */	sth r3, 0x144c(r31)
/* 800F5BE4  38 00 00 01 */	li r0, 1
/* 800F5BE8  98 1F 14 42 */	stb r0, 0x1442(r31)
lbl_800F5BEC:
/* 800F5BEC  A8 9D 2F E0 */	lha r4, 0x2fe0(r29)
/* 800F5BF0  48 00 00 08 */	b lbl_800F5BF8
lbl_800F5BF4:
/* 800F5BF4  38 80 40 00 */	li r4, 0x4000
lbl_800F5BF8:
/* 800F5BF8  C3 FE 00 0C */	lfs f31, 0xc(r30)
/* 800F5BFC  88 1D 05 6A */	lbz r0, 0x56a(r29)
/* 800F5C00  28 00 00 2D */	cmplwi r0, 0x2d
/* 800F5C04  40 82 00 40 */	bne lbl_800F5C44
/* 800F5C08  7C 83 07 34 */	extsh r3, r4
/* 800F5C0C  48 26 F4 C5 */	bl abs
/* 800F5C10  2C 03 60 00 */	cmpwi r3, 0x6000
/* 800F5C14  40 80 00 50 */	bge lbl_800F5C64
/* 800F5C18  2C 03 20 00 */	cmpwi r3, 0x2000
/* 800F5C1C  40 81 00 48 */	ble lbl_800F5C64
/* 800F5C20  38 03 C0 00 */	addi r0, r3, -16384
/* 800F5C24  54 03 08 3C */	slwi r3, r0, 1
/* 800F5C28  48 26 F4 A9 */	bl abs
/* 800F5C2C  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 800F5C30  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 800F5C34  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 800F5C38  7C 03 04 2E */	lfsx f0, r3, r0
/* 800F5C3C  EF FF 00 32 */	fmuls f31, f31, f0
/* 800F5C40  48 00 00 24 */	b lbl_800F5C64
lbl_800F5C44:
/* 800F5C44  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 800F5C48  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 800F5C4C  54 80 04 38 */	rlwinm r0, r4, 0, 0x10, 0x1c
/* 800F5C50  7C 63 02 14 */	add r3, r3, r0
/* 800F5C54  C0 03 00 04 */	lfs f0, 4(r3)
/* 800F5C58  FC 00 02 10 */	fabs f0, f0
/* 800F5C5C  FC 00 00 18 */	frsp f0, f0
/* 800F5C60  EF FF 00 32 */	fmuls f31, f31, f0
lbl_800F5C64:
/* 800F5C64  A8 1D 30 0E */	lha r0, 0x300e(r29)
/* 800F5C68  2C 00 00 00 */	cmpwi r0, 0
/* 800F5C6C  40 82 00 18 */	bne lbl_800F5C84
/* 800F5C70  7F A3 EB 78 */	mr r3, r29
/* 800F5C74  4B FF DF A5 */	bl getCanoeSpeedRate__9daAlink_cCFv
/* 800F5C78  EC 1F 00 72 */	fmuls f0, f31, f1
/* 800F5C7C  D0 1F 14 68 */	stfs f0, 0x1468(r31)
/* 800F5C80  48 00 00 1C */	b lbl_800F5C9C
lbl_800F5C84:
/* 800F5C84  FC 20 F8 50 */	fneg f1, f31
/* 800F5C88  3C 60 80 39 */	lis r3, m__19daAlinkHIO_canoe_c0@ha
/* 800F5C8C  38 63 E6 10 */	addi r3, r3, m__19daAlinkHIO_canoe_c0@l
/* 800F5C90  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 800F5C94  EC 01 00 32 */	fmuls f0, f1, f0
/* 800F5C98  D0 1F 14 68 */	stfs f0, 0x1468(r31)
lbl_800F5C9C:
/* 800F5C9C  7F C3 F3 78 */	mr r3, r30
/* 800F5CA0  C0 3D 34 78 */	lfs f1, 0x3478(r29)
/* 800F5CA4  48 23 27 89 */	bl checkPass__12J3DFrameCtrlFf
/* 800F5CA8  2C 03 00 00 */	cmpwi r3, 0
/* 800F5CAC  41 82 00 34 */	beq lbl_800F5CE0
/* 800F5CB0  A8 1D 30 12 */	lha r0, 0x3012(r29)
/* 800F5CB4  2C 00 00 01 */	cmpwi r0, 1
/* 800F5CB8  40 82 00 18 */	bne lbl_800F5CD0
/* 800F5CBC  38 00 00 40 */	li r0, 0x40
/* 800F5CC0  B0 1F 14 54 */	sth r0, 0x1454(r31)
/* 800F5CC4  38 00 00 0F */	li r0, 0xf
/* 800F5CC8  B0 1F 14 56 */	sth r0, 0x1456(r31)
/* 800F5CCC  48 00 00 14 */	b lbl_800F5CE0
lbl_800F5CD0:
/* 800F5CD0  38 00 FF C0 */	li r0, -64
/* 800F5CD4  B0 1F 14 54 */	sth r0, 0x1454(r31)
/* 800F5CD8  38 00 00 0F */	li r0, 0xf
/* 800F5CDC  B0 1F 14 56 */	sth r0, 0x1456(r31)
lbl_800F5CE0:
/* 800F5CE0  38 60 00 01 */	li r3, 1
lbl_800F5CE4:
/* 800F5CE4  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 800F5CE8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 800F5CEC  39 61 00 20 */	addi r11, r1, 0x20
/* 800F5CF0  48 26 C5 39 */	bl _restgpr_29
/* 800F5CF4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800F5CF8  7C 08 03 A6 */	mtlr r0
/* 800F5CFC  38 21 00 30 */	addi r1, r1, 0x30
/* 800F5D00  4E 80 00 20 */	blr 
