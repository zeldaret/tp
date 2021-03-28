lbl_80133930:
/* 80133930  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80133934  7C 08 02 A6 */	mflr r0
/* 80133938  90 01 00 84 */	stw r0, 0x84(r1)
/* 8013393C  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80133940  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80133944  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80133948  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 8013394C  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80133950  93 C1 00 58 */	stw r30, 0x58(r1)
/* 80133954  7C 7F 1B 78 */	mr r31, r3
/* 80133958  80 83 28 10 */	lwz r4, 0x2810(r3)
/* 8013395C  80 64 10 A8 */	lwz r3, 0x10a8(r4)
/* 80133960  83 C3 00 00 */	lwz r30, 0(r3)
/* 80133964  88 04 07 14 */	lbz r0, 0x714(r4)
/* 80133968  28 00 00 00 */	cmplwi r0, 0
/* 8013396C  41 82 00 1C */	beq lbl_80133988
/* 80133970  C0 44 07 24 */	lfs f2, 0x724(r4)
/* 80133974  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80133978  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8013397C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80133980  EF E2 00 32 */	fmuls f31, f2, f0
/* 80133984  48 00 00 18 */	b lbl_8013399C
lbl_80133988:
/* 80133988  C0 44 07 24 */	lfs f2, 0x724(r4)
/* 8013398C  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 80133990  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80133994  EC 01 00 28 */	fsubs f0, f1, f0
/* 80133998  EF E2 00 32 */	fmuls f31, f2, f0
lbl_8013399C:
/* 8013399C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 801339A0  C0 1E 00 00 */	lfs f0, 0(r30)
/* 801339A4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 801339A8  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 801339AC  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 801339B0  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 801339B4  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 801339B8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 801339BC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 801339C0  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 801339C4  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 801339C8  38 61 00 28 */	addi r3, r1, 0x28
/* 801339CC  38 81 00 34 */	addi r4, r1, 0x34
/* 801339D0  48 21 39 CD */	bl PSVECSquareDistance
/* 801339D4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 801339D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801339DC  40 81 00 58 */	ble lbl_80133A34
/* 801339E0  FC 00 08 34 */	frsqrte f0, f1
/* 801339E4  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 801339E8  FC 44 00 32 */	fmul f2, f4, f0
/* 801339EC  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 801339F0  FC 00 00 32 */	fmul f0, f0, f0
/* 801339F4  FC 01 00 32 */	fmul f0, f1, f0
/* 801339F8  FC 03 00 28 */	fsub f0, f3, f0
/* 801339FC  FC 02 00 32 */	fmul f0, f2, f0
/* 80133A00  FC 44 00 32 */	fmul f2, f4, f0
/* 80133A04  FC 00 00 32 */	fmul f0, f0, f0
/* 80133A08  FC 01 00 32 */	fmul f0, f1, f0
/* 80133A0C  FC 03 00 28 */	fsub f0, f3, f0
/* 80133A10  FC 02 00 32 */	fmul f0, f2, f0
/* 80133A14  FC 44 00 32 */	fmul f2, f4, f0
/* 80133A18  FC 00 00 32 */	fmul f0, f0, f0
/* 80133A1C  FC 01 00 32 */	fmul f0, f1, f0
/* 80133A20  FC 03 00 28 */	fsub f0, f3, f0
/* 80133A24  FC 02 00 32 */	fmul f0, f2, f0
/* 80133A28  FF C1 00 32 */	fmul f30, f1, f0
/* 80133A2C  FF C0 F0 18 */	frsp f30, f30
/* 80133A30  48 00 00 90 */	b lbl_80133AC0
lbl_80133A34:
/* 80133A34  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 80133A38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80133A3C  40 80 00 10 */	bge lbl_80133A4C
/* 80133A40  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80133A44  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)
/* 80133A48  48 00 00 78 */	b lbl_80133AC0
lbl_80133A4C:
/* 80133A4C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80133A50  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80133A54  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80133A58  3C 00 7F 80 */	lis r0, 0x7f80
/* 80133A5C  7C 03 00 00 */	cmpw r3, r0
/* 80133A60  41 82 00 14 */	beq lbl_80133A74
/* 80133A64  40 80 00 40 */	bge lbl_80133AA4
/* 80133A68  2C 03 00 00 */	cmpwi r3, 0
/* 80133A6C  41 82 00 20 */	beq lbl_80133A8C
/* 80133A70  48 00 00 34 */	b lbl_80133AA4
lbl_80133A74:
/* 80133A74  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80133A78  41 82 00 0C */	beq lbl_80133A84
/* 80133A7C  38 00 00 01 */	li r0, 1
/* 80133A80  48 00 00 28 */	b lbl_80133AA8
lbl_80133A84:
/* 80133A84  38 00 00 02 */	li r0, 2
/* 80133A88  48 00 00 20 */	b lbl_80133AA8
lbl_80133A8C:
/* 80133A8C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80133A90  41 82 00 0C */	beq lbl_80133A9C
/* 80133A94  38 00 00 05 */	li r0, 5
/* 80133A98  48 00 00 10 */	b lbl_80133AA8
lbl_80133A9C:
/* 80133A9C  38 00 00 03 */	li r0, 3
/* 80133AA0  48 00 00 08 */	b lbl_80133AA8
lbl_80133AA4:
/* 80133AA4  38 00 00 04 */	li r0, 4
lbl_80133AA8:
/* 80133AA8  2C 00 00 01 */	cmpwi r0, 1
/* 80133AAC  40 82 00 10 */	bne lbl_80133ABC
/* 80133AB0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80133AB4  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)
/* 80133AB8  48 00 00 08 */	b lbl_80133AC0
lbl_80133ABC:
/* 80133ABC  FF C0 08 90 */	fmr f30, f1
lbl_80133AC0:
/* 80133AC0  C0 5E 04 AC */	lfs f2, 0x4ac(r30)
/* 80133AC4  C0 1E 04 A4 */	lfs f0, 0x4a4(r30)
/* 80133AC8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80133ACC  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80133AD0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80133AD4  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80133AD8  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 80133ADC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80133AE0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80133AE4  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80133AE8  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80133AEC  38 61 00 10 */	addi r3, r1, 0x10
/* 80133AF0  38 81 00 1C */	addi r4, r1, 0x1c
/* 80133AF4  48 21 38 A9 */	bl PSVECSquareDistance
/* 80133AF8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80133AFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80133B00  40 81 00 58 */	ble lbl_80133B58
/* 80133B04  FC 00 08 34 */	frsqrte f0, f1
/* 80133B08  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 80133B0C  FC 44 00 32 */	fmul f2, f4, f0
/* 80133B10  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 80133B14  FC 00 00 32 */	fmul f0, f0, f0
/* 80133B18  FC 01 00 32 */	fmul f0, f1, f0
/* 80133B1C  FC 03 00 28 */	fsub f0, f3, f0
/* 80133B20  FC 02 00 32 */	fmul f0, f2, f0
/* 80133B24  FC 44 00 32 */	fmul f2, f4, f0
/* 80133B28  FC 00 00 32 */	fmul f0, f0, f0
/* 80133B2C  FC 01 00 32 */	fmul f0, f1, f0
/* 80133B30  FC 03 00 28 */	fsub f0, f3, f0
/* 80133B34  FC 02 00 32 */	fmul f0, f2, f0
/* 80133B38  FC 44 00 32 */	fmul f2, f4, f0
/* 80133B3C  FC 00 00 32 */	fmul f0, f0, f0
/* 80133B40  FC 01 00 32 */	fmul f0, f1, f0
/* 80133B44  FC 03 00 28 */	fsub f0, f3, f0
/* 80133B48  FC 02 00 32 */	fmul f0, f2, f0
/* 80133B4C  FC 21 00 32 */	fmul f1, f1, f0
/* 80133B50  FC 20 08 18 */	frsp f1, f1
/* 80133B54  48 00 00 88 */	b lbl_80133BDC
lbl_80133B58:
/* 80133B58  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 80133B5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80133B60  40 80 00 10 */	bge lbl_80133B70
/* 80133B64  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80133B68  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80133B6C  48 00 00 70 */	b lbl_80133BDC
lbl_80133B70:
/* 80133B70  D0 21 00 08 */	stfs f1, 8(r1)
/* 80133B74  80 81 00 08 */	lwz r4, 8(r1)
/* 80133B78  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80133B7C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80133B80  7C 03 00 00 */	cmpw r3, r0
/* 80133B84  41 82 00 14 */	beq lbl_80133B98
/* 80133B88  40 80 00 40 */	bge lbl_80133BC8
/* 80133B8C  2C 03 00 00 */	cmpwi r3, 0
/* 80133B90  41 82 00 20 */	beq lbl_80133BB0
/* 80133B94  48 00 00 34 */	b lbl_80133BC8
lbl_80133B98:
/* 80133B98  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80133B9C  41 82 00 0C */	beq lbl_80133BA8
/* 80133BA0  38 00 00 01 */	li r0, 1
/* 80133BA4  48 00 00 28 */	b lbl_80133BCC
lbl_80133BA8:
/* 80133BA8  38 00 00 02 */	li r0, 2
/* 80133BAC  48 00 00 20 */	b lbl_80133BCC
lbl_80133BB0:
/* 80133BB0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80133BB4  41 82 00 0C */	beq lbl_80133BC0
/* 80133BB8  38 00 00 05 */	li r0, 5
/* 80133BBC  48 00 00 10 */	b lbl_80133BCC
lbl_80133BC0:
/* 80133BC0  38 00 00 03 */	li r0, 3
/* 80133BC4  48 00 00 08 */	b lbl_80133BCC
lbl_80133BC8:
/* 80133BC8  38 00 00 04 */	li r0, 4
lbl_80133BCC:
/* 80133BCC  2C 00 00 01 */	cmpwi r0, 1
/* 80133BD0  40 82 00 0C */	bne lbl_80133BDC
/* 80133BD4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80133BD8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80133BDC:
/* 80133BDC  80 1F 05 80 */	lwz r0, 0x580(r31)
/* 80133BE0  64 00 04 00 */	oris r0, r0, 0x400
/* 80133BE4  90 1F 05 80 */	stw r0, 0x580(r31)
/* 80133BE8  C0 42 92 C0 */	lfs f2, lit_6108(r2)
/* 80133BEC  FC 1F 10 40 */	fcmpo cr0, f31, f2
/* 80133BF0  40 81 00 8C */	ble lbl_80133C7C
/* 80133BF4  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80133BF8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80133BFC  40 80 00 80 */	bge lbl_80133C7C
/* 80133C00  C0 02 93 50 */	lfs f0, lit_8247(r2)
/* 80133C04  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80133C08  40 81 00 74 */	ble lbl_80133C7C
/* 80133C0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80133C10  40 81 00 6C */	ble lbl_80133C7C
/* 80133C14  C0 3F 08 1C */	lfs f1, 0x81c(r31)
/* 80133C18  C0 1F 08 14 */	lfs f0, 0x814(r31)
/* 80133C1C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80133C20  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 80133C24  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80133C28  38 61 00 40 */	addi r3, r1, 0x40
/* 80133C2C  48 21 35 0D */	bl PSVECSquareMag
/* 80133C30  C0 02 93 50 */	lfs f0, lit_8247(r2)
/* 80133C34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80133C38  40 81 00 44 */	ble lbl_80133C7C
/* 80133C3C  38 7F 08 14 */	addi r3, r31, 0x814
/* 80133C40  48 12 FD 1D */	bl ClrCcMove__9cCcD_SttsFv
/* 80133C44  38 7F 08 14 */	addi r3, r31, 0x814
/* 80133C48  48 13 34 E1 */	bl atan2sX_Z__4cXyzCFv
/* 80133C4C  7C 63 07 34 */	extsh r3, r3
/* 80133C50  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80133C54  7C 00 18 51 */	subf. r0, r0, r3
/* 80133C58  40 81 00 14 */	ble lbl_80133C6C
/* 80133C5C  7F E3 FB 78 */	mr r3, r31
/* 80133C60  38 80 00 02 */	li r4, 2
/* 80133C64  4B FF EA D5 */	bl procWolfRopeHangInit__9daAlink_cFi
/* 80133C68  48 00 00 DC */	b lbl_80133D44
lbl_80133C6C:
/* 80133C6C  7F E3 FB 78 */	mr r3, r31
/* 80133C70  38 80 00 03 */	li r4, 3
/* 80133C74  4B FF EA C5 */	bl procWolfRopeHangInit__9daAlink_cFi
/* 80133C78  48 00 00 CC */	b lbl_80133D44
lbl_80133C7C:
/* 80133C7C  38 7F 08 14 */	addi r3, r31, 0x814
/* 80133C80  48 12 FC DD */	bl ClrCcMove__9cCcD_SttsFv
/* 80133C84  7F E3 FB 78 */	mr r3, r31
/* 80133C88  4B FF DA 91 */	bl setWolfRopePosY__9daAlink_cFv
/* 80133C8C  7C 64 1B 78 */	mr r4, r3
/* 80133C90  7F E3 FB 78 */	mr r3, r31
/* 80133C94  4B FF DE 69 */	bl setWolfRopeOffsetY__9daAlink_cFi
/* 80133C98  7F E3 FB 78 */	mr r3, r31
/* 80133C9C  38 80 00 01 */	li r4, 1
/* 80133CA0  4B F9 AF 39 */	bl checkSubjectEnd__9daAlink_cFi
/* 80133CA4  2C 03 00 00 */	cmpwi r3, 0
/* 80133CA8  41 82 00 44 */	beq lbl_80133CEC
/* 80133CAC  C0 3F 1F E0 */	lfs f1, 0x1fe0(r31)
/* 80133CB0  C0 02 97 84 */	lfs f0, lit_48077(r2)
/* 80133CB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80133CB8  4C 41 13 82 */	cror 2, 1, 2
/* 80133CBC  40 82 00 1C */	bne lbl_80133CD8
/* 80133CC0  C0 02 97 88 */	lfs f0, lit_48078(r2)
/* 80133CC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80133CC8  4C 40 13 82 */	cror 2, 0, 2
/* 80133CCC  40 82 00 0C */	bne lbl_80133CD8
/* 80133CD0  38 80 00 01 */	li r4, 1
/* 80133CD4  48 00 00 08 */	b lbl_80133CDC
lbl_80133CD8:
/* 80133CD8  38 80 00 00 */	li r4, 0
lbl_80133CDC:
/* 80133CDC  7F E3 FB 78 */	mr r3, r31
/* 80133CE0  38 A0 00 00 */	li r5, 0
/* 80133CE4  4B FF DF 91 */	bl procWolfRopeMoveInit__9daAlink_cFii
/* 80133CE8  48 00 00 5C */	b lbl_80133D44
lbl_80133CEC:
/* 80133CEC  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 80133CF0  A8 1F 05 9E */	lha r0, 0x59e(r31)
/* 80133CF4  7C 03 02 14 */	add r0, r3, r0
/* 80133CF8  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80133CFC  7F E3 FB 78 */	mr r3, r31
/* 80133D00  4B F9 AB A1 */	bl setBodyAngleToCamera__9daAlink_cFv
/* 80133D04  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 80133D08  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80133D0C  7C 03 00 50 */	subf r0, r3, r0
/* 80133D10  7C 03 07 34 */	extsh r3, r0
/* 80133D14  2C 03 B0 00 */	cmpwi r3, -20480
/* 80133D18  40 80 00 0C */	bge lbl_80133D24
/* 80133D1C  38 00 B0 00 */	li r0, -20480
/* 80133D20  48 00 00 14 */	b lbl_80133D34
lbl_80133D24:
/* 80133D24  2C 03 50 00 */	cmpwi r3, 0x5000
/* 80133D28  38 00 50 00 */	li r0, 0x5000
/* 80133D2C  41 81 00 08 */	bgt lbl_80133D34
/* 80133D30  7C 60 1B 78 */	mr r0, r3
lbl_80133D34:
/* 80133D34  B0 1F 05 9E */	sth r0, 0x59e(r31)
/* 80133D38  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80133D3C  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80133D40  38 60 00 01 */	li r3, 1
lbl_80133D44:
/* 80133D44  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80133D48  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80133D4C  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 80133D50  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80133D54  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80133D58  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 80133D5C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80133D60  7C 08 03 A6 */	mtlr r0
/* 80133D64  38 21 00 80 */	addi r1, r1, 0x80
/* 80133D68  4E 80 00 20 */	blr 
