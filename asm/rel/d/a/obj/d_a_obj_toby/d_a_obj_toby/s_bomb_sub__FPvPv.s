lbl_80D13870:
/* 80D13870  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80D13874  7C 08 02 A6 */	mflr r0
/* 80D13878  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D1387C  39 61 00 40 */	addi r11, r1, 0x40
/* 80D13880  4B 64 E9 5C */	b _savegpr_29
/* 80D13884  7C 7D 1B 78 */	mr r29, r3
/* 80D13888  7C 9E 23 78 */	mr r30, r4
/* 80D1388C  3C 80 80 D1 */	lis r4, lit_3806@ha
/* 80D13890  3B E4 55 E8 */	addi r31, r4, lit_3806@l
/* 80D13894  4B 30 54 4C */	b fopAc_IsActor__FPv
/* 80D13898  2C 03 00 00 */	cmpwi r3, 0
/* 80D1389C  41 82 01 44 */	beq lbl_80D139E0
/* 80D138A0  A8 1D 00 08 */	lha r0, 8(r29)
/* 80D138A4  2C 00 02 21 */	cmpwi r0, 0x221
/* 80D138A8  40 82 01 38 */	bne lbl_80D139E0
/* 80D138AC  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80D138B0  28 00 00 00 */	cmplwi r0, 0
/* 80D138B4  40 82 01 2C */	bne lbl_80D139E0
/* 80D138B8  38 61 00 0C */	addi r3, r1, 0xc
/* 80D138BC  38 9E 00 08 */	addi r4, r30, 8
/* 80D138C0  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80D138C4  4B 55 32 70 */	b __mi__4cXyzCFRC3Vec
/* 80D138C8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80D138CC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D138D0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80D138D4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80D138D8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80D138DC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80D138E0  38 61 00 18 */	addi r3, r1, 0x18
/* 80D138E4  4B 63 38 54 */	b PSVECSquareMag
/* 80D138E8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80D138EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D138F0  40 81 00 58 */	ble lbl_80D13948
/* 80D138F4  FC 00 08 34 */	frsqrte f0, f1
/* 80D138F8  C8 9F 00 08 */	lfd f4, 8(r31)
/* 80D138FC  FC 44 00 32 */	fmul f2, f4, f0
/* 80D13900  C8 7F 00 10 */	lfd f3, 0x10(r31)
/* 80D13904  FC 00 00 32 */	fmul f0, f0, f0
/* 80D13908  FC 01 00 32 */	fmul f0, f1, f0
/* 80D1390C  FC 03 00 28 */	fsub f0, f3, f0
/* 80D13910  FC 02 00 32 */	fmul f0, f2, f0
/* 80D13914  FC 44 00 32 */	fmul f2, f4, f0
/* 80D13918  FC 00 00 32 */	fmul f0, f0, f0
/* 80D1391C  FC 01 00 32 */	fmul f0, f1, f0
/* 80D13920  FC 03 00 28 */	fsub f0, f3, f0
/* 80D13924  FC 02 00 32 */	fmul f0, f2, f0
/* 80D13928  FC 44 00 32 */	fmul f2, f4, f0
/* 80D1392C  FC 00 00 32 */	fmul f0, f0, f0
/* 80D13930  FC 01 00 32 */	fmul f0, f1, f0
/* 80D13934  FC 03 00 28 */	fsub f0, f3, f0
/* 80D13938  FC 02 00 32 */	fmul f0, f2, f0
/* 80D1393C  FC 21 00 32 */	fmul f1, f1, f0
/* 80D13940  FC 20 08 18 */	frsp f1, f1
/* 80D13944  48 00 00 88 */	b lbl_80D139CC
lbl_80D13948:
/* 80D13948  C8 1F 00 18 */	lfd f0, 0x18(r31)
/* 80D1394C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D13950  40 80 00 10 */	bge lbl_80D13960
/* 80D13954  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D13958  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80D1395C  48 00 00 70 */	b lbl_80D139CC
lbl_80D13960:
/* 80D13960  D0 21 00 08 */	stfs f1, 8(r1)
/* 80D13964  80 81 00 08 */	lwz r4, 8(r1)
/* 80D13968  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D1396C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D13970  7C 03 00 00 */	cmpw r3, r0
/* 80D13974  41 82 00 14 */	beq lbl_80D13988
/* 80D13978  40 80 00 40 */	bge lbl_80D139B8
/* 80D1397C  2C 03 00 00 */	cmpwi r3, 0
/* 80D13980  41 82 00 20 */	beq lbl_80D139A0
/* 80D13984  48 00 00 34 */	b lbl_80D139B8
lbl_80D13988:
/* 80D13988  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D1398C  41 82 00 0C */	beq lbl_80D13998
/* 80D13990  38 00 00 01 */	li r0, 1
/* 80D13994  48 00 00 28 */	b lbl_80D139BC
lbl_80D13998:
/* 80D13998  38 00 00 02 */	li r0, 2
/* 80D1399C  48 00 00 20 */	b lbl_80D139BC
lbl_80D139A0:
/* 80D139A0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D139A4  41 82 00 0C */	beq lbl_80D139B0
/* 80D139A8  38 00 00 05 */	li r0, 5
/* 80D139AC  48 00 00 10 */	b lbl_80D139BC
lbl_80D139B0:
/* 80D139B0  38 00 00 03 */	li r0, 3
/* 80D139B4  48 00 00 08 */	b lbl_80D139BC
lbl_80D139B8:
/* 80D139B8  38 00 00 04 */	li r0, 4
lbl_80D139BC:
/* 80D139BC  2C 00 00 01 */	cmpwi r0, 1
/* 80D139C0  40 82 00 0C */	bne lbl_80D139CC
/* 80D139C4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D139C8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80D139CC:
/* 80D139CC  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80D139D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D139D4  40 80 00 0C */	bge lbl_80D139E0
/* 80D139D8  7F A3 EB 78 */	mr r3, r29
/* 80D139DC  48 00 00 08 */	b lbl_80D139E4
lbl_80D139E0:
/* 80D139E0  38 60 00 00 */	li r3, 0
lbl_80D139E4:
/* 80D139E4  39 61 00 40 */	addi r11, r1, 0x40
/* 80D139E8  4B 64 E8 40 */	b _restgpr_29
/* 80D139EC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D139F0  7C 08 03 A6 */	mtlr r0
/* 80D139F4  38 21 00 40 */	addi r1, r1, 0x40
/* 80D139F8  4E 80 00 20 */	blr 
