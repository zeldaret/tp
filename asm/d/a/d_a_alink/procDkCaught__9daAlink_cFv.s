lbl_800DB860:
/* 800DB860  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 800DB864  7C 08 02 A6 */	mflr r0
/* 800DB868  90 01 00 84 */	stw r0, 0x84(r1)
/* 800DB86C  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 800DB870  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 800DB874  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 800DB878  93 C1 00 68 */	stw r30, 0x68(r1)
/* 800DB87C  7C 7F 1B 78 */	mr r31, r3
/* 800DB880  80 03 28 F8 */	lwz r0, 0x28f8(r3)
/* 800DB884  90 01 00 0C */	stw r0, 0xc(r1)
/* 800DB888  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 800DB88C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 800DB890  38 81 00 0C */	addi r4, r1, 0xc
/* 800DB894  4B F3 DF 65 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 800DB898  7C 7E 1B 79 */	or. r30, r3, r3
/* 800DB89C  41 82 00 10 */	beq lbl_800DB8AC
/* 800DB8A0  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800DB8A4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800DB8A8  40 82 00 2C */	bne lbl_800DB8D4
lbl_800DB8AC:
/* 800DB8AC  7F E3 FB 78 */	mr r3, r31
/* 800DB8B0  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010009@ha */
/* 800DB8B4  38 84 00 09 */	addi r4, r4, 0x0009 /* 0x00010009@l */
/* 800DB8B8  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800DB8BC  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800DB8C0  7D 89 03 A6 */	mtctr r12
/* 800DB8C4  4E 80 04 21 */	bctrl 
/* 800DB8C8  7F E3 FB 78 */	mr r3, r31
/* 800DB8CC  4B FE 98 95 */	bl procFrontRollSuccessInit__9daAlink_cFv
/* 800DB8D0  48 00 03 A8 */	b lbl_800DBC78
lbl_800DB8D4:
/* 800DB8D4  7F E3 FB 78 */	mr r3, r31
/* 800DB8D8  4B FF B7 C9 */	bl checkCaughtEscapeCutTurn__9daAlink_cFv
/* 800DB8DC  2C 03 00 00 */	cmpwi r3, 0
/* 800DB8E0  41 82 00 0C */	beq lbl_800DB8EC
/* 800DB8E4  38 60 00 01 */	li r3, 1
/* 800DB8E8  48 00 03 90 */	b lbl_800DBC78
lbl_800DB8EC:
/* 800DB8EC  38 61 00 40 */	addi r3, r1, 0x40
/* 800DB8F0  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 800DB8F4  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 800DB8F8  48 18 B2 3D */	bl __mi__4cXyzCFRC3Vec
/* 800DB8FC  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 800DB900  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 800DB904  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 800DB908  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 800DB90C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 800DB910  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 800DB914  7F E3 FB 78 */	mr r3, r31
/* 800DB918  38 81 00 58 */	addi r4, r1, 0x58
/* 800DB91C  48 00 6B 61 */	bl multVecMagneBootInvMtx__9daAlink_cFP4cXyz
/* 800DB920  38 61 00 58 */	addi r3, r1, 0x58
/* 800DB924  48 18 B8 05 */	bl atan2sX_Z__4cXyzCFv
/* 800DB928  7C 64 1B 78 */	mr r4, r3
/* 800DB92C  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 800DB930  38 A0 00 02 */	li r5, 2
/* 800DB934  38 C0 20 00 */	li r6, 0x2000
/* 800DB938  38 E0 08 00 */	li r7, 0x800
/* 800DB93C  48 19 4C 05 */	bl cLib_addCalcAngleS__FPsssss
/* 800DB940  38 61 00 34 */	addi r3, r1, 0x34
/* 800DB944  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 800DB948  38 BE 04 A8 */	addi r5, r30, 0x4a8
/* 800DB94C  48 18 B1 E9 */	bl __mi__4cXyzCFRC3Vec
/* 800DB950  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 800DB954  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 800DB958  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 800DB95C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 800DB960  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 800DB964  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 800DB968  38 61 00 4C */	addi r3, r1, 0x4c
/* 800DB96C  48 26 B7 CD */	bl PSVECSquareMag
/* 800DB970  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800DB974  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800DB978  40 81 00 58 */	ble lbl_800DB9D0
/* 800DB97C  FC 00 08 34 */	frsqrte f0, f1
/* 800DB980  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800DB984  FC 44 00 32 */	fmul f2, f4, f0
/* 800DB988  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800DB98C  FC 00 00 32 */	fmul f0, f0, f0
/* 800DB990  FC 01 00 32 */	fmul f0, f1, f0
/* 800DB994  FC 03 00 28 */	fsub f0, f3, f0
/* 800DB998  FC 02 00 32 */	fmul f0, f2, f0
/* 800DB99C  FC 44 00 32 */	fmul f2, f4, f0
/* 800DB9A0  FC 00 00 32 */	fmul f0, f0, f0
/* 800DB9A4  FC 01 00 32 */	fmul f0, f1, f0
/* 800DB9A8  FC 03 00 28 */	fsub f0, f3, f0
/* 800DB9AC  FC 02 00 32 */	fmul f0, f2, f0
/* 800DB9B0  FC 44 00 32 */	fmul f2, f4, f0
/* 800DB9B4  FC 00 00 32 */	fmul f0, f0, f0
/* 800DB9B8  FC 01 00 32 */	fmul f0, f1, f0
/* 800DB9BC  FC 03 00 28 */	fsub f0, f3, f0
/* 800DB9C0  FC 02 00 32 */	fmul f0, f2, f0
/* 800DB9C4  FF E1 00 32 */	fmul f31, f1, f0
/* 800DB9C8  FF E0 F8 18 */	frsp f31, f31
/* 800DB9CC  48 00 00 90 */	b lbl_800DBA5C
lbl_800DB9D0:
/* 800DB9D0  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800DB9D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800DB9D8  40 80 00 10 */	bge lbl_800DB9E8
/* 800DB9DC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800DB9E0  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 800DB9E4  48 00 00 78 */	b lbl_800DBA5C
lbl_800DB9E8:
/* 800DB9E8  D0 21 00 08 */	stfs f1, 8(r1)
/* 800DB9EC  80 81 00 08 */	lwz r4, 8(r1)
/* 800DB9F0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800DB9F4  3C 00 7F 80 */	lis r0, 0x7f80
/* 800DB9F8  7C 03 00 00 */	cmpw r3, r0
/* 800DB9FC  41 82 00 14 */	beq lbl_800DBA10
/* 800DBA00  40 80 00 40 */	bge lbl_800DBA40
/* 800DBA04  2C 03 00 00 */	cmpwi r3, 0
/* 800DBA08  41 82 00 20 */	beq lbl_800DBA28
/* 800DBA0C  48 00 00 34 */	b lbl_800DBA40
lbl_800DBA10:
/* 800DBA10  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800DBA14  41 82 00 0C */	beq lbl_800DBA20
/* 800DBA18  38 00 00 01 */	li r0, 1
/* 800DBA1C  48 00 00 28 */	b lbl_800DBA44
lbl_800DBA20:
/* 800DBA20  38 00 00 02 */	li r0, 2
/* 800DBA24  48 00 00 20 */	b lbl_800DBA44
lbl_800DBA28:
/* 800DBA28  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800DBA2C  41 82 00 0C */	beq lbl_800DBA38
/* 800DBA30  38 00 00 05 */	li r0, 5
/* 800DBA34  48 00 00 10 */	b lbl_800DBA44
lbl_800DBA38:
/* 800DBA38  38 00 00 03 */	li r0, 3
/* 800DBA3C  48 00 00 08 */	b lbl_800DBA44
lbl_800DBA40:
/* 800DBA40  38 00 00 04 */	li r0, 4
lbl_800DBA44:
/* 800DBA44  2C 00 00 01 */	cmpwi r0, 1
/* 800DBA48  40 82 00 10 */	bne lbl_800DBA58
/* 800DBA4C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800DBA50  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 800DBA54  48 00 00 08 */	b lbl_800DBA5C
lbl_800DBA58:
/* 800DBA58  FF E0 08 90 */	fmr f31, f1
lbl_800DBA5C:
/* 800DBA5C  C0 3F 34 78 */	lfs f1, 0x3478(r31)
/* 800DBA60  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 800DBA64  40 81 00 48 */	ble lbl_800DBAAC
/* 800DBA68  38 61 00 28 */	addi r3, r1, 0x28
/* 800DBA6C  38 81 00 4C */	addi r4, r1, 0x4c
/* 800DBA70  48 18 B1 15 */	bl __ml__4cXyzCFf
/* 800DBA74  38 61 00 1C */	addi r3, r1, 0x1c
/* 800DBA78  38 81 00 28 */	addi r4, r1, 0x28
/* 800DBA7C  FC 20 F8 90 */	fmr f1, f31
/* 800DBA80  48 18 B1 99 */	bl __dv__4cXyzCFf
/* 800DBA84  38 61 00 10 */	addi r3, r1, 0x10
/* 800DBA88  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 800DBA8C  38 A1 00 1C */	addi r5, r1, 0x1c
/* 800DBA90  48 18 B0 55 */	bl __pl__4cXyzCFRC3Vec
/* 800DBA94  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800DBA98  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 800DBA9C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 800DBAA0  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 800DBAA4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 800DBAA8  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
lbl_800DBAAC:
/* 800DBAAC  C0 3F 33 AC */	lfs f1, 0x33ac(r31)
/* 800DBAB0  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800DBAB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800DBAB8  40 81 00 B4 */	ble lbl_800DBB6C
/* 800DBABC  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 800DBAC0  A8 1F 2F E2 */	lha r0, 0x2fe2(r31)
/* 800DBAC4  7C 03 00 50 */	subf r0, r3, r0
/* 800DBAC8  7C 03 07 34 */	extsh r3, r0
/* 800DBACC  4B FD 79 C9 */	bl getDirectionFromAngle__9daAlink_cFs
/* 800DBAD0  2C 03 00 01 */	cmpwi r3, 1
/* 800DBAD4  40 82 00 24 */	bne lbl_800DBAF8
/* 800DBAD8  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 800DBADC  3C 63 00 01 */	addis r3, r3, 1
/* 800DBAE0  38 03 80 00 */	addi r0, r3, -32768
/* 800DBAE4  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800DBAE8  C0 3F 33 98 */	lfs f1, 0x3398(r31)
/* 800DBAEC  C0 02 92 BC */	lfs f0, lit_6041(r2)
/* 800DBAF0  EC 01 00 32 */	fmuls f0, f1, f0
/* 800DBAF4  D0 1F 33 98 */	stfs f0, 0x3398(r31)
lbl_800DBAF8:
/* 800DBAF8  7F E3 FB 78 */	mr r3, r31
/* 800DBAFC  4B FD 7E 09 */	bl checkZeroSpeedF__9daAlink_cCFv
/* 800DBB00  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800DBB04  41 82 00 0C */	beq lbl_800DBB10
/* 800DBB08  A8 1F 2F E2 */	lha r0, 0x2fe2(r31)
/* 800DBB0C  B0 1F 04 DE */	sth r0, 0x4de(r31)
lbl_800DBB10:
/* 800DBB10  AB DF 04 DE */	lha r30, 0x4de(r31)
/* 800DBB14  38 7F 04 DE */	addi r3, r31, 0x4de
/* 800DBB18  A8 9F 2F E2 */	lha r4, 0x2fe2(r31)
/* 800DBB1C  3C A0 80 39 */	lis r5, m__21daAlinkHIO_atnMove_c0@ha /* 0x8038D714@ha */
/* 800DBB20  38 E5 D7 14 */	addi r7, r5, m__21daAlinkHIO_atnMove_c0@l /* 0x8038D714@l */
/* 800DBB24  A8 A7 00 04 */	lha r5, 4(r7)
/* 800DBB28  A8 C7 00 00 */	lha r6, 0(r7)
/* 800DBB2C  A8 E7 00 02 */	lha r7, 2(r7)
/* 800DBB30  48 19 4A 11 */	bl cLib_addCalcAngleS__FPsssss
/* 800DBB34  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800DBB38  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800DBB3C  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 800DBB40  7C 1E 00 50 */	subf r0, r30, r0
/* 800DBB44  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800DBB48  7C 63 02 14 */	add r3, r3, r0
/* 800DBB4C  C0 43 00 04 */	lfs f2, 4(r3)
/* 800DBB50  3C 60 80 39 */	lis r3, m__21daAlinkHIO_atnMove_c0@ha /* 0x8038D714@ha */
/* 800DBB54  38 63 D7 14 */	addi r3, r3, m__21daAlinkHIO_atnMove_c0@l /* 0x8038D714@l */
/* 800DBB58  C0 23 00 20 */	lfs f1, 0x20(r3)
/* 800DBB5C  C0 1F 33 A8 */	lfs f0, 0x33a8(r31)
/* 800DBB60  EC 01 00 32 */	fmuls f0, f1, f0
/* 800DBB64  EC 20 00 B2 */	fmuls f1, f0, f2
/* 800DBB68  48 00 00 08 */	b lbl_800DBB70
lbl_800DBB6C:
/* 800DBB6C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
lbl_800DBB70:
/* 800DBB70  7F E3 FB 78 */	mr r3, r31
/* 800DBB74  3C 80 80 39 */	lis r4, m__21daAlinkHIO_atnMove_c0@ha /* 0x8038D714@ha */
/* 800DBB78  38 84 D7 14 */	addi r4, r4, m__21daAlinkHIO_atnMove_c0@l /* 0x8038D714@l */
/* 800DBB7C  C0 44 00 24 */	lfs f2, 0x24(r4)
/* 800DBB80  4B FD 7D A5 */	bl setNormalSpeedF__9daAlink_cFff
/* 800DBB84  7F E3 FB 78 */	mr r3, r31
/* 800DBB88  4B FD 7D 7D */	bl checkZeroSpeedF__9daAlink_cCFv
/* 800DBB8C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800DBB90  41 82 00 14 */	beq lbl_800DBBA4
/* 800DBB94  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800DBB98  60 00 00 01 */	ori r0, r0, 1
/* 800DBB9C  90 1F 31 A0 */	stw r0, 0x31a0(r31)
/* 800DBBA0  48 00 00 10 */	b lbl_800DBBB0
lbl_800DBBA4:
/* 800DBBA4  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800DBBA8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 800DBBAC  90 1F 31 A0 */	stw r0, 0x31a0(r31)
lbl_800DBBB0:
/* 800DBBB0  A8 7F 30 08 */	lha r3, 0x3008(r31)
/* 800DBBB4  38 03 FF FF */	addi r0, r3, -1
/* 800DBBB8  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 800DBBBC  88 1F 2F AE */	lbz r0, 0x2fae(r31)
/* 800DBBC0  60 00 00 08 */	ori r0, r0, 8
/* 800DBBC4  98 1F 2F AE */	stb r0, 0x2fae(r31)
/* 800DBBC8  88 1F 2F 8D */	lbz r0, 0x2f8d(r31)
/* 800DBBCC  54 00 06 F9 */	rlwinm. r0, r0, 0, 0x1b, 0x1c
/* 800DBBD0  41 82 00 1C */	beq lbl_800DBBEC
/* 800DBBD4  3C 60 80 39 */	lis r3, m__23daAlinkHIO_damCaught_c0@ha /* 0x8038E49C@ha */
/* 800DBBD8  38 63 E4 9C */	addi r3, r3, m__23daAlinkHIO_damCaught_c0@l /* 0x8038E49C@l */
/* 800DBBDC  A8 63 00 16 */	lha r3, 0x16(r3)
/* 800DBBE0  A8 1F 30 08 */	lha r0, 0x3008(r31)
/* 800DBBE4  7C 03 00 50 */	subf r0, r3, r0
/* 800DBBE8  B0 1F 30 08 */	sth r0, 0x3008(r31)
lbl_800DBBEC:
/* 800DBBEC  C0 3F 33 AC */	lfs f1, 0x33ac(r31)
/* 800DBBF0  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800DBBF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800DBBF8  40 81 00 38 */	ble lbl_800DBC30
/* 800DBBFC  A8 7F 30 7C */	lha r3, 0x307c(r31)
/* 800DBC00  A8 1F 2F E0 */	lha r0, 0x2fe0(r31)
/* 800DBC04  7C 03 00 50 */	subf r0, r3, r0
/* 800DBC08  7C 03 07 34 */	extsh r3, r0
/* 800DBC0C  48 28 94 C5 */	bl abs
/* 800DBC10  2C 03 10 00 */	cmpwi r3, 0x1000
/* 800DBC14  40 81 00 1C */	ble lbl_800DBC30
/* 800DBC18  3C 60 80 39 */	lis r3, m__23daAlinkHIO_damCaught_c0@ha /* 0x8038E49C@ha */
/* 800DBC1C  38 63 E4 9C */	addi r3, r3, m__23daAlinkHIO_damCaught_c0@l /* 0x8038E49C@l */
/* 800DBC20  A8 63 00 16 */	lha r3, 0x16(r3)
/* 800DBC24  A8 1F 30 08 */	lha r0, 0x3008(r31)
/* 800DBC28  7C 03 00 50 */	subf r0, r3, r0
/* 800DBC2C  B0 1F 30 08 */	sth r0, 0x3008(r31)
lbl_800DBC30:
/* 800DBC30  A8 1F 30 08 */	lha r0, 0x3008(r31)
/* 800DBC34  2C 00 00 00 */	cmpwi r0, 0
/* 800DBC38  40 80 00 2C */	bge lbl_800DBC64
/* 800DBC3C  7F E3 FB 78 */	mr r3, r31
/* 800DBC40  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010009@ha */
/* 800DBC44  38 84 00 09 */	addi r4, r4, 0x0009 /* 0x00010009@l */
/* 800DBC48  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800DBC4C  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800DBC50  7D 89 03 A6 */	mtctr r12
/* 800DBC54  4E 80 04 21 */	bctrl 
/* 800DBC58  7F E3 FB 78 */	mr r3, r31
/* 800DBC5C  4B FE 95 05 */	bl procFrontRollSuccessInit__9daAlink_cFv
/* 800DBC60  48 00 00 14 */	b lbl_800DBC74
lbl_800DBC64:
/* 800DBC64  7F E3 FB 78 */	mr r3, r31
/* 800DBC68  3C 80 00 01 */	lis r4, 0x0001 /* 0x0001001E@ha */
/* 800DBC6C  38 84 00 1E */	addi r4, r4, 0x001E /* 0x0001001E@l */
/* 800DBC70  4B FE 34 49 */	bl voiceStartLevel__9daAlink_cFUl
lbl_800DBC74:
/* 800DBC74  38 60 00 01 */	li r3, 1
lbl_800DBC78:
/* 800DBC78  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 800DBC7C  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 800DBC80  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 800DBC84  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 800DBC88  80 01 00 84 */	lwz r0, 0x84(r1)
/* 800DBC8C  7C 08 03 A6 */	mtlr r0
/* 800DBC90  38 21 00 80 */	addi r1, r1, 0x80
/* 800DBC94  4E 80 00 20 */	blr 
