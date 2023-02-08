lbl_80C06CDC:
/* 80C06CDC  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 80C06CE0  7C 08 02 A6 */	mflr r0
/* 80C06CE4  90 01 01 14 */	stw r0, 0x114(r1)
/* 80C06CE8  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 80C06CEC  F3 E1 01 08 */	psq_st f31, 264(r1), 0, 0 /* qr0 */
/* 80C06CF0  39 61 01 00 */	addi r11, r1, 0x100
/* 80C06CF4  4B 75 B4 E9 */	bl _savegpr_29
/* 80C06CF8  7C 7D 1B 78 */	mr r29, r3
/* 80C06CFC  3C 80 80 C1 */	lis r4, m__17daObj_GrA_Param_c@ha /* 0x80C0FA7C@ha */
/* 80C06D00  3B C4 FA 7C */	addi r30, r4, m__17daObj_GrA_Param_c@l /* 0x80C0FA7C@l */
/* 80C06D04  3C 80 80 C1 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80C0FE68@ha */
/* 80C06D08  3B E4 FE 68 */	addi r31, r4, cNullVec__6Z2Calc@l /* 0x80C0FE68@l */
/* 80C06D0C  A0 03 0A 7C */	lhz r0, 0xa7c(r3)
/* 80C06D10  2C 00 00 01 */	cmpwi r0, 1
/* 80C06D14  41 82 02 78 */	beq lbl_80C06F8C
/* 80C06D18  40 80 00 10 */	bge lbl_80C06D28
/* 80C06D1C  2C 00 00 00 */	cmpwi r0, 0
/* 80C06D20  40 80 00 14 */	bge lbl_80C06D34
/* 80C06D24  48 00 0A C4 */	b lbl_80C077E8
lbl_80C06D28:
/* 80C06D28  2C 00 00 03 */	cmpwi r0, 3
/* 80C06D2C  40 80 0A BC */	bge lbl_80C077E8
/* 80C06D30  48 00 0A A8 */	b lbl_80C077D8
lbl_80C06D34:
/* 80C06D34  38 80 00 00 */	li r4, 0
/* 80C06D38  4B FF BD 9D */	bl setLookMode__11daObj_GrA_cFi
/* 80C06D3C  38 00 00 00 */	li r0, 0
/* 80C06D40  90 1D 1F E4 */	stw r0, 0x1fe4(r29)
/* 80C06D44  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C06D48  D0 1D 20 08 */	stfs f0, 0x2008(r29)
/* 80C06D4C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80C06D50  88 1D 0A 7E */	lbz r0, 0xa7e(r29)
/* 80C06D54  28 00 00 01 */	cmplwi r0, 1
/* 80C06D58  40 82 00 3C */	bne lbl_80C06D94
/* 80C06D5C  7F A3 EB 78 */	mr r3, r29
/* 80C06D60  38 80 00 14 */	li r4, 0x14
/* 80C06D64  3B FE 00 00 */	addi r31, r30, 0
/* 80C06D68  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80C06D6C  C0 1E 02 24 */	lfs f0, 0x224(r30)
/* 80C06D70  EC 21 00 32 */	fmuls f1, f1, f0
/* 80C06D74  4B FF AA 19 */	bl setBaseMotion__11daObj_GrA_cFif
/* 80C06D78  7F A3 EB 78 */	mr r3, r29
/* 80C06D7C  38 80 00 0D */	li r4, 0xd
/* 80C06D80  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80C06D84  C0 1E 02 24 */	lfs f0, 0x224(r30)
/* 80C06D88  EC 21 00 32 */	fmuls f1, f1, f0
/* 80C06D8C  4B FF AA 21 */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C06D90  48 00 01 F0 */	b lbl_80C06F80
lbl_80C06D94:
/* 80C06D94  38 61 00 90 */	addi r3, r1, 0x90
/* 80C06D98  38 9D 04 A8 */	addi r4, r29, 0x4a8
/* 80C06D9C  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80C06DA0  4B 65 FD 95 */	bl __mi__4cXyzCFRC3Vec
/* 80C06DA4  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 80C06DA8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C06DAC  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C06DB0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80C06DB4  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 80C06DB8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80C06DBC  38 61 00 3C */	addi r3, r1, 0x3c
/* 80C06DC0  4B 74 03 79 */	bl PSVECSquareMag
/* 80C06DC4  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C06DC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C06DCC  40 81 00 58 */	ble lbl_80C06E24
/* 80C06DD0  FC 00 08 34 */	frsqrte f0, f1
/* 80C06DD4  C8 9E 01 50 */	lfd f4, 0x150(r30)
/* 80C06DD8  FC 44 00 32 */	fmul f2, f4, f0
/* 80C06DDC  C8 7E 01 58 */	lfd f3, 0x158(r30)
/* 80C06DE0  FC 00 00 32 */	fmul f0, f0, f0
/* 80C06DE4  FC 01 00 32 */	fmul f0, f1, f0
/* 80C06DE8  FC 03 00 28 */	fsub f0, f3, f0
/* 80C06DEC  FC 02 00 32 */	fmul f0, f2, f0
/* 80C06DF0  FC 44 00 32 */	fmul f2, f4, f0
/* 80C06DF4  FC 00 00 32 */	fmul f0, f0, f0
/* 80C06DF8  FC 01 00 32 */	fmul f0, f1, f0
/* 80C06DFC  FC 03 00 28 */	fsub f0, f3, f0
/* 80C06E00  FC 02 00 32 */	fmul f0, f2, f0
/* 80C06E04  FC 44 00 32 */	fmul f2, f4, f0
/* 80C06E08  FC 00 00 32 */	fmul f0, f0, f0
/* 80C06E0C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C06E10  FC 03 00 28 */	fsub f0, f3, f0
/* 80C06E14  FC 02 00 32 */	fmul f0, f2, f0
/* 80C06E18  FC 21 00 32 */	fmul f1, f1, f0
/* 80C06E1C  FC 20 08 18 */	frsp f1, f1
/* 80C06E20  48 00 00 88 */	b lbl_80C06EA8
lbl_80C06E24:
/* 80C06E24  C8 1E 01 60 */	lfd f0, 0x160(r30)
/* 80C06E28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C06E2C  40 80 00 10 */	bge lbl_80C06E3C
/* 80C06E30  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C06E34  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C06E38  48 00 00 70 */	b lbl_80C06EA8
lbl_80C06E3C:
/* 80C06E3C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80C06E40  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80C06E44  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C06E48  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C06E4C  7C 03 00 00 */	cmpw r3, r0
/* 80C06E50  41 82 00 14 */	beq lbl_80C06E64
/* 80C06E54  40 80 00 40 */	bge lbl_80C06E94
/* 80C06E58  2C 03 00 00 */	cmpwi r3, 0
/* 80C06E5C  41 82 00 20 */	beq lbl_80C06E7C
/* 80C06E60  48 00 00 34 */	b lbl_80C06E94
lbl_80C06E64:
/* 80C06E64  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C06E68  41 82 00 0C */	beq lbl_80C06E74
/* 80C06E6C  38 00 00 01 */	li r0, 1
/* 80C06E70  48 00 00 28 */	b lbl_80C06E98
lbl_80C06E74:
/* 80C06E74  38 00 00 02 */	li r0, 2
/* 80C06E78  48 00 00 20 */	b lbl_80C06E98
lbl_80C06E7C:
/* 80C06E7C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C06E80  41 82 00 0C */	beq lbl_80C06E8C
/* 80C06E84  38 00 00 05 */	li r0, 5
/* 80C06E88  48 00 00 10 */	b lbl_80C06E98
lbl_80C06E8C:
/* 80C06E8C  38 00 00 03 */	li r0, 3
/* 80C06E90  48 00 00 08 */	b lbl_80C06E98
lbl_80C06E94:
/* 80C06E94  38 00 00 04 */	li r0, 4
lbl_80C06E98:
/* 80C06E98  2C 00 00 01 */	cmpwi r0, 1
/* 80C06E9C  40 82 00 0C */	bne lbl_80C06EA8
/* 80C06EA0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C06EA4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80C06EA8:
/* 80C06EA8  C0 1E 02 A0 */	lfs f0, 0x2a0(r30)
/* 80C06EAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C06EB0  40 80 00 28 */	bge lbl_80C06ED8
/* 80C06EB4  7F A3 EB 78 */	mr r3, r29
/* 80C06EB8  38 80 00 04 */	li r4, 4
/* 80C06EBC  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 80C06EC0  4B FF A8 CD */	bl setBaseMotion__11daObj_GrA_cFif
/* 80C06EC4  7F A3 EB 78 */	mr r3, r29
/* 80C06EC8  38 80 00 0D */	li r4, 0xd
/* 80C06ECC  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 80C06ED0  4B FF A8 DD */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C06ED4  48 00 00 AC */	b lbl_80C06F80
lbl_80C06ED8:
/* 80C06ED8  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80C06EDC  38 9D 04 A8 */	addi r4, r29, 0x4a8
/* 80C06EE0  4B 66 9D 25 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80C06EE4  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 80C06EE8  7C 60 07 34 */	extsh r0, r3
/* 80C06EEC  7C 64 00 50 */	subf r3, r4, r0
/* 80C06EF0  4B 75 E1 E1 */	bl abs
/* 80C06EF4  2C 03 40 00 */	cmpwi r3, 0x4000
/* 80C06EF8  40 80 00 44 */	bge lbl_80C06F3C
/* 80C06EFC  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80C06F00  38 9D 04 A8 */	addi r4, r29, 0x4a8
/* 80C06F04  4B 66 9D 01 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80C06F08  B0 7D 04 DE */	sth r3, 0x4de(r29)
/* 80C06F0C  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80C06F10  B0 1D 09 1C */	sth r0, 0x91c(r29)
/* 80C06F14  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80C06F18  7F A3 EB 78 */	mr r3, r29
/* 80C06F1C  38 80 00 04 */	li r4, 4
/* 80C06F20  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 80C06F24  4B FF A8 69 */	bl setBaseMotion__11daObj_GrA_cFif
/* 80C06F28  7F A3 EB 78 */	mr r3, r29
/* 80C06F2C  38 80 00 0D */	li r4, 0xd
/* 80C06F30  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 80C06F34  4B FF A8 79 */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C06F38  48 00 00 48 */	b lbl_80C06F80
lbl_80C06F3C:
/* 80C06F3C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80C06F40  38 9D 04 A8 */	addi r4, r29, 0x4a8
/* 80C06F44  4B 66 9C C1 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80C06F48  B0 7D 04 DE */	sth r3, 0x4de(r29)
/* 80C06F4C  A8 7D 04 DE */	lha r3, 0x4de(r29)
/* 80C06F50  3C 63 00 01 */	addis r3, r3, 1
/* 80C06F54  38 03 80 00 */	addi r0, r3, -32768
/* 80C06F58  B0 1D 09 1C */	sth r0, 0x91c(r29)
/* 80C06F5C  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80C06F60  7F A3 EB 78 */	mr r3, r29
/* 80C06F64  38 80 00 0E */	li r4, 0xe
/* 80C06F68  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 80C06F6C  4B FF A8 21 */	bl setBaseMotion__11daObj_GrA_cFif
/* 80C06F70  7F A3 EB 78 */	mr r3, r29
/* 80C06F74  38 80 00 0D */	li r4, 0xd
/* 80C06F78  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 80C06F7C  4B FF A8 31 */	bl setFaceMotion__11daObj_GrA_cFif
lbl_80C06F80:
/* 80C06F80  7F A3 EB 78 */	mr r3, r29
/* 80C06F84  4B FF A8 6D */	bl calcMotion__11daObj_GrA_cFv
/* 80C06F88  48 00 08 60 */	b lbl_80C077E8
lbl_80C06F8C:
/* 80C06F8C  80 1D 1F E4 */	lwz r0, 0x1fe4(r29)
/* 80C06F90  2C 00 00 01 */	cmpwi r0, 1
/* 80C06F94  41 82 06 44 */	beq lbl_80C075D8
/* 80C06F98  40 80 08 50 */	bge lbl_80C077E8
/* 80C06F9C  2C 00 00 00 */	cmpwi r0, 0
/* 80C06FA0  40 80 00 08 */	bge lbl_80C06FA8
/* 80C06FA4  48 00 08 44 */	b lbl_80C077E8
lbl_80C06FA8:
/* 80C06FA8  A0 1D 0A 90 */	lhz r0, 0xa90(r29)
/* 80C06FAC  28 00 00 04 */	cmplwi r0, 4
/* 80C06FB0  41 82 00 0C */	beq lbl_80C06FBC
/* 80C06FB4  28 00 00 14 */	cmplwi r0, 0x14
/* 80C06FB8  40 82 02 D8 */	bne lbl_80C07290
lbl_80C06FBC:
/* 80C06FBC  80 9D 07 54 */	lwz r4, 0x754(r29)
/* 80C06FC0  38 60 00 01 */	li r3, 1
/* 80C06FC4  88 04 00 11 */	lbz r0, 0x11(r4)
/* 80C06FC8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80C06FCC  40 82 00 18 */	bne lbl_80C06FE4
/* 80C06FD0  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 80C06FD4  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 80C06FD8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80C06FDC  41 82 00 08 */	beq lbl_80C06FE4
/* 80C06FE0  38 60 00 00 */	li r3, 0
lbl_80C06FE4:
/* 80C06FE4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C06FE8  41 82 02 30 */	beq lbl_80C07218
/* 80C06FEC  88 1D 0A 7E */	lbz r0, 0xa7e(r29)
/* 80C06FF0  28 00 00 01 */	cmplwi r0, 1
/* 80C06FF4  41 82 01 24 */	beq lbl_80C07118
/* 80C06FF8  38 61 00 84 */	addi r3, r1, 0x84
/* 80C06FFC  38 9D 04 A8 */	addi r4, r29, 0x4a8
/* 80C07000  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80C07004  4B 65 FB 31 */	bl __mi__4cXyzCFRC3Vec
/* 80C07008  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80C0700C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C07010  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C07014  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C07018  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80C0701C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C07020  38 61 00 30 */	addi r3, r1, 0x30
/* 80C07024  4B 74 01 15 */	bl PSVECSquareMag
/* 80C07028  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C0702C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C07030  40 81 00 58 */	ble lbl_80C07088
/* 80C07034  FC 00 08 34 */	frsqrte f0, f1
/* 80C07038  C8 9E 01 50 */	lfd f4, 0x150(r30)
/* 80C0703C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C07040  C8 7E 01 58 */	lfd f3, 0x158(r30)
/* 80C07044  FC 00 00 32 */	fmul f0, f0, f0
/* 80C07048  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0704C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C07050  FC 02 00 32 */	fmul f0, f2, f0
/* 80C07054  FC 44 00 32 */	fmul f2, f4, f0
/* 80C07058  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0705C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C07060  FC 03 00 28 */	fsub f0, f3, f0
/* 80C07064  FC 02 00 32 */	fmul f0, f2, f0
/* 80C07068  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0706C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C07070  FC 01 00 32 */	fmul f0, f1, f0
/* 80C07074  FC 03 00 28 */	fsub f0, f3, f0
/* 80C07078  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0707C  FC 21 00 32 */	fmul f1, f1, f0
/* 80C07080  FC 20 08 18 */	frsp f1, f1
/* 80C07084  48 00 00 88 */	b lbl_80C0710C
lbl_80C07088:
/* 80C07088  C8 1E 01 60 */	lfd f0, 0x160(r30)
/* 80C0708C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C07090  40 80 00 10 */	bge lbl_80C070A0
/* 80C07094  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C07098  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C0709C  48 00 00 70 */	b lbl_80C0710C
lbl_80C070A0:
/* 80C070A0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80C070A4  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80C070A8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C070AC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C070B0  7C 03 00 00 */	cmpw r3, r0
/* 80C070B4  41 82 00 14 */	beq lbl_80C070C8
/* 80C070B8  40 80 00 40 */	bge lbl_80C070F8
/* 80C070BC  2C 03 00 00 */	cmpwi r3, 0
/* 80C070C0  41 82 00 20 */	beq lbl_80C070E0
/* 80C070C4  48 00 00 34 */	b lbl_80C070F8
lbl_80C070C8:
/* 80C070C8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C070CC  41 82 00 0C */	beq lbl_80C070D8
/* 80C070D0  38 00 00 01 */	li r0, 1
/* 80C070D4  48 00 00 28 */	b lbl_80C070FC
lbl_80C070D8:
/* 80C070D8  38 00 00 02 */	li r0, 2
/* 80C070DC  48 00 00 20 */	b lbl_80C070FC
lbl_80C070E0:
/* 80C070E0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C070E4  41 82 00 0C */	beq lbl_80C070F0
/* 80C070E8  38 00 00 05 */	li r0, 5
/* 80C070EC  48 00 00 10 */	b lbl_80C070FC
lbl_80C070F0:
/* 80C070F0  38 00 00 03 */	li r0, 3
/* 80C070F4  48 00 00 08 */	b lbl_80C070FC
lbl_80C070F8:
/* 80C070F8  38 00 00 04 */	li r0, 4
lbl_80C070FC:
/* 80C070FC  2C 00 00 01 */	cmpwi r0, 1
/* 80C07100  40 82 00 0C */	bne lbl_80C0710C
/* 80C07104  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C07108  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80C0710C:
/* 80C0710C  C0 1E 02 A0 */	lfs f0, 0x2a0(r30)
/* 80C07110  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C07114  40 80 00 34 */	bge lbl_80C07148
lbl_80C07118:
/* 80C07118  80 7F 03 B8 */	lwz r3, 0x3b8(r31)
/* 80C0711C  80 1F 03 BC */	lwz r0, 0x3bc(r31)
/* 80C07120  90 61 00 78 */	stw r3, 0x78(r1)
/* 80C07124  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80C07128  80 1F 03 C0 */	lwz r0, 0x3c0(r31)
/* 80C0712C  90 01 00 80 */	stw r0, 0x80(r1)
/* 80C07130  7F A3 EB 78 */	mr r3, r29
/* 80C07134  38 81 00 78 */	addi r4, r1, 0x78
/* 80C07138  4B FF A7 BD */	bl setProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
/* 80C0713C  38 00 00 01 */	li r0, 1
/* 80C07140  90 1D 10 9C */	stw r0, 0x109c(r29)
/* 80C07144  48 00 06 A4 */	b lbl_80C077E8
lbl_80C07148:
/* 80C07148  38 00 00 01 */	li r0, 1
/* 80C0714C  90 1D 1F E4 */	stw r0, 0x1fe4(r29)
/* 80C07150  7F A3 EB 78 */	mr r3, r29
/* 80C07154  38 80 00 0A */	li r4, 0xa
/* 80C07158  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 80C0715C  4B FF A6 31 */	bl setBaseMotion__11daObj_GrA_cFif
/* 80C07160  7F A3 EB 78 */	mr r3, r29
/* 80C07164  38 80 00 0D */	li r4, 0xd
/* 80C07168  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 80C0716C  4B FF A6 41 */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C07170  7F A3 EB 78 */	mr r3, r29
/* 80C07174  4B FF A6 7D */	bl calcMotion__11daObj_GrA_cFv
/* 80C07178  A8 7D 09 1C */	lha r3, 0x91c(r29)
/* 80C0717C  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80C07180  7C 63 00 50 */	subf r3, r3, r0
/* 80C07184  4B 75 DF 4D */	bl abs
/* 80C07188  2C 03 40 00 */	cmpwi r3, 0x4000
/* 80C0718C  41 80 00 7C */	blt lbl_80C07208
/* 80C07190  80 9D 07 54 */	lwz r4, 0x754(r29)
/* 80C07194  A8 04 00 14 */	lha r0, 0x14(r4)
/* 80C07198  C8 3E 01 30 */	lfd f1, 0x130(r30)
/* 80C0719C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C071A0  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80C071A4  3C 60 43 30 */	lis r3, 0x4330
/* 80C071A8  90 61 00 C0 */	stw r3, 0xc0(r1)
/* 80C071AC  C8 01 00 C0 */	lfd f0, 0xc0(r1)
/* 80C071B0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C071B4  FC 00 00 1E */	fctiwz f0, f0
/* 80C071B8  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 80C071BC  80 01 00 CC */	lwz r0, 0xcc(r1)
/* 80C071C0  7C 00 07 34 */	extsh r0, r0
/* 80C071C4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C071C8  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80C071CC  90 61 00 D0 */	stw r3, 0xd0(r1)
/* 80C071D0  C8 01 00 D0 */	lfd f0, 0xd0(r1)
/* 80C071D4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C071D8  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80C071DC  80 9D 07 54 */	lwz r4, 0x754(r29)
/* 80C071E0  A8 04 00 14 */	lha r0, 0x14(r4)
/* 80C071E4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C071E8  90 01 00 DC */	stw r0, 0xdc(r1)
/* 80C071EC  90 61 00 D8 */	stw r3, 0xd8(r1)
/* 80C071F0  C8 01 00 D8 */	lfd f0, 0xd8(r1)
/* 80C071F4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C071F8  FC 00 00 1E */	fctiwz f0, f0
/* 80C071FC  D8 01 00 E0 */	stfd f0, 0xe0(r1)
/* 80C07200  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80C07204  B0 04 00 16 */	sth r0, 0x16(r4)
lbl_80C07208:
/* 80C07208  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C0720C  80 7D 07 54 */	lwz r3, 0x754(r29)
/* 80C07210  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C07214  48 00 05 D4 */	b lbl_80C077E8
lbl_80C07218:
/* 80C07218  38 64 00 0C */	addi r3, r4, 0xc
/* 80C0721C  C0 3E 02 A4 */	lfs f1, 0x2a4(r30)
/* 80C07220  4B 72 12 0D */	bl checkPass__12J3DFrameCtrlFf
/* 80C07224  2C 03 00 00 */	cmpwi r3, 0
/* 80C07228  41 82 05 C0 */	beq lbl_80C077E8
/* 80C0722C  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C07230  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80C07234  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80C07238  C0 1E 02 10 */	lfs f0, 0x210(r30)
/* 80C0723C  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80C07240  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80C07244  4B 40 5B 21 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80C07248  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C0724C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C07250  A8 9D 09 1C */	lha r4, 0x91c(r29)
/* 80C07254  4B 40 51 E1 */	bl mDoMtx_YrotM__FPA4_fs
/* 80C07258  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C0725C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C07260  38 81 00 B4 */	addi r4, r1, 0xb4
/* 80C07264  38 BD 0B 74 */	addi r5, r29, 0xb74
/* 80C07268  4B 73 FB 05 */	bl PSMTXMultVec
/* 80C0726C  A8 1D 09 1A */	lha r0, 0x91a(r29)
/* 80C07270  B0 1D 0B 80 */	sth r0, 0xb80(r29)
/* 80C07274  A8 1D 09 1C */	lha r0, 0x91c(r29)
/* 80C07278  B0 1D 0B 82 */	sth r0, 0xb82(r29)
/* 80C0727C  A8 1D 09 1E */	lha r0, 0x91e(r29)
/* 80C07280  B0 1D 0B 84 */	sth r0, 0xb84(r29)
/* 80C07284  38 00 00 01 */	li r0, 1
/* 80C07288  98 1D 0B 70 */	stb r0, 0xb70(r29)
/* 80C0728C  48 00 05 5C */	b lbl_80C077E8
lbl_80C07290:
/* 80C07290  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 80C07294  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80C07298  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 80C0729C  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 80C072A0  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 80C072A4  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 80C072A8  38 7D 20 08 */	addi r3, r29, 0x2008
/* 80C072AC  38 9E 00 00 */	addi r4, r30, 0
/* 80C072B0  C0 24 00 A0 */	lfs f1, 0xa0(r4)
/* 80C072B4  C0 5E 02 A8 */	lfs f2, 0x2a8(r30)
/* 80C072B8  C0 7E 01 18 */	lfs f3, 0x118(r30)
/* 80C072BC  4B 66 87 81 */	bl cLib_addCalc2__FPffff
/* 80C072C0  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80C072C4  38 81 00 A8 */	addi r4, r1, 0xa8
/* 80C072C8  C0 3D 20 08 */	lfs f1, 0x2008(r29)
/* 80C072CC  4B 66 94 E1 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 80C072D0  C0 1E 02 AC */	lfs f0, 0x2ac(r30)
/* 80C072D4  C0 3D 20 08 */	lfs f1, 0x2008(r29)
/* 80C072D8  EF E0 00 72 */	fmuls f31, f0, f1
/* 80C072DC  FC 00 0A 10 */	fabs f0, f1
/* 80C072E0  FC 20 00 18 */	frsp f1, f0
/* 80C072E4  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha /* 0x80451180@ha */
/* 80C072E8  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)  /* 0x80451180@l */
/* 80C072EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C072F0  40 80 00 08 */	bge lbl_80C072F8
/* 80C072F4  C3 FE 01 1C */	lfs f31, 0x11c(r30)
lbl_80C072F8:
/* 80C072F8  A8 7D 04 DE */	lha r3, 0x4de(r29)
/* 80C072FC  3C 63 00 01 */	addis r3, r3, 1
/* 80C07300  38 03 80 00 */	addi r0, r3, -32768
/* 80C07304  B0 1D 09 1C */	sth r0, 0x91c(r29)
/* 80C07308  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80C0730C  80 7D 07 54 */	lwz r3, 0x754(r29)
/* 80C07310  38 80 00 01 */	li r4, 1
/* 80C07314  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80C07318  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80C0731C  40 82 00 18 */	bne lbl_80C07334
/* 80C07320  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 80C07324  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80C07328  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80C0732C  41 82 00 08 */	beq lbl_80C07334
/* 80C07330  38 80 00 00 */	li r4, 0
lbl_80C07334:
/* 80C07334  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80C07338  41 82 04 B0 */	beq lbl_80C077E8
/* 80C0733C  38 61 00 6C */	addi r3, r1, 0x6c
/* 80C07340  38 9D 04 A8 */	addi r4, r29, 0x4a8
/* 80C07344  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80C07348  4B 65 F7 ED */	bl __mi__4cXyzCFRC3Vec
/* 80C0734C  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80C07350  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C07354  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C07358  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C0735C  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80C07360  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C07364  38 61 00 24 */	addi r3, r1, 0x24
/* 80C07368  4B 73 FD D1 */	bl PSVECSquareMag
/* 80C0736C  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C07370  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C07374  40 81 00 58 */	ble lbl_80C073CC
/* 80C07378  FC 00 08 34 */	frsqrte f0, f1
/* 80C0737C  C8 9E 01 50 */	lfd f4, 0x150(r30)
/* 80C07380  FC 44 00 32 */	fmul f2, f4, f0
/* 80C07384  C8 7E 01 58 */	lfd f3, 0x158(r30)
/* 80C07388  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0738C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C07390  FC 03 00 28 */	fsub f0, f3, f0
/* 80C07394  FC 02 00 32 */	fmul f0, f2, f0
/* 80C07398  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0739C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C073A0  FC 01 00 32 */	fmul f0, f1, f0
/* 80C073A4  FC 03 00 28 */	fsub f0, f3, f0
/* 80C073A8  FC 02 00 32 */	fmul f0, f2, f0
/* 80C073AC  FC 44 00 32 */	fmul f2, f4, f0
/* 80C073B0  FC 00 00 32 */	fmul f0, f0, f0
/* 80C073B4  FC 01 00 32 */	fmul f0, f1, f0
/* 80C073B8  FC 03 00 28 */	fsub f0, f3, f0
/* 80C073BC  FC 02 00 32 */	fmul f0, f2, f0
/* 80C073C0  FC 21 00 32 */	fmul f1, f1, f0
/* 80C073C4  FC 20 08 18 */	frsp f1, f1
/* 80C073C8  48 00 00 88 */	b lbl_80C07450
lbl_80C073CC:
/* 80C073CC  C8 1E 01 60 */	lfd f0, 0x160(r30)
/* 80C073D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C073D4  40 80 00 10 */	bge lbl_80C073E4
/* 80C073D8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C073DC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C073E0  48 00 00 70 */	b lbl_80C07450
lbl_80C073E4:
/* 80C073E4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C073E8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80C073EC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C073F0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C073F4  7C 03 00 00 */	cmpw r3, r0
/* 80C073F8  41 82 00 14 */	beq lbl_80C0740C
/* 80C073FC  40 80 00 40 */	bge lbl_80C0743C
/* 80C07400  2C 03 00 00 */	cmpwi r3, 0
/* 80C07404  41 82 00 20 */	beq lbl_80C07424
/* 80C07408  48 00 00 34 */	b lbl_80C0743C
lbl_80C0740C:
/* 80C0740C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C07410  41 82 00 0C */	beq lbl_80C0741C
/* 80C07414  38 00 00 01 */	li r0, 1
/* 80C07418  48 00 00 28 */	b lbl_80C07440
lbl_80C0741C:
/* 80C0741C  38 00 00 02 */	li r0, 2
/* 80C07420  48 00 00 20 */	b lbl_80C07440
lbl_80C07424:
/* 80C07424  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C07428  41 82 00 0C */	beq lbl_80C07434
/* 80C0742C  38 00 00 05 */	li r0, 5
/* 80C07430  48 00 00 10 */	b lbl_80C07440
lbl_80C07434:
/* 80C07434  38 00 00 03 */	li r0, 3
/* 80C07438  48 00 00 08 */	b lbl_80C07440
lbl_80C0743C:
/* 80C0743C  38 00 00 04 */	li r0, 4
lbl_80C07440:
/* 80C07440  2C 00 00 01 */	cmpwi r0, 1
/* 80C07444  40 82 00 0C */	bne lbl_80C07450
/* 80C07448  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C0744C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80C07450:
/* 80C07450  C0 1E 02 18 */	lfs f0, 0x218(r30)
/* 80C07454  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C07458  40 80 00 C8 */	bge lbl_80C07520
/* 80C0745C  80 7F 03 C4 */	lwz r3, 0x3c4(r31)
/* 80C07460  80 1F 03 C8 */	lwz r0, 0x3c8(r31)
/* 80C07464  90 61 00 60 */	stw r3, 0x60(r1)
/* 80C07468  90 01 00 64 */	stw r0, 0x64(r1)
/* 80C0746C  80 1F 03 CC */	lwz r0, 0x3cc(r31)
/* 80C07470  90 01 00 68 */	stw r0, 0x68(r1)
/* 80C07474  7F A3 EB 78 */	mr r3, r29
/* 80C07478  38 81 00 60 */	addi r4, r1, 0x60
/* 80C0747C  4B FF A4 79 */	bl setProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
/* 80C07480  7F A3 EB 78 */	mr r3, r29
/* 80C07484  38 80 00 04 */	li r4, 4
/* 80C07488  3B FE 00 00 */	addi r31, r30, 0
/* 80C0748C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80C07490  C0 1E 02 24 */	lfs f0, 0x224(r30)
/* 80C07494  EC 21 00 32 */	fmuls f1, f1, f0
/* 80C07498  4B FF A2 F5 */	bl setBaseMotion__11daObj_GrA_cFif
/* 80C0749C  7F A3 EB 78 */	mr r3, r29
/* 80C074A0  38 80 00 0D */	li r4, 0xd
/* 80C074A4  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80C074A8  C0 1E 02 24 */	lfs f0, 0x224(r30)
/* 80C074AC  EC 21 00 32 */	fmuls f1, f1, f0
/* 80C074B0  4B FF A2 FD */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C074B4  7F A3 EB 78 */	mr r3, r29
/* 80C074B8  4B FF A3 39 */	bl calcMotion__11daObj_GrA_cFv
/* 80C074BC  80 9D 07 54 */	lwz r4, 0x754(r29)
/* 80C074C0  A8 04 00 14 */	lha r0, 0x14(r4)
/* 80C074C4  C8 3E 01 30 */	lfd f1, 0x130(r30)
/* 80C074C8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C074CC  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80C074D0  3C 60 43 30 */	lis r3, 0x4330
/* 80C074D4  90 61 00 E0 */	stw r3, 0xe0(r1)
/* 80C074D8  C8 01 00 E0 */	lfd f0, 0xe0(r1)
/* 80C074DC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C074E0  FC 00 00 1E */	fctiwz f0, f0
/* 80C074E4  D8 01 00 D8 */	stfd f0, 0xd8(r1)
/* 80C074E8  80 01 00 DC */	lwz r0, 0xdc(r1)
/* 80C074EC  7C 00 07 34 */	extsh r0, r0
/* 80C074F0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C074F4  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80C074F8  90 61 00 D0 */	stw r3, 0xd0(r1)
/* 80C074FC  C8 01 00 D0 */	lfd f0, 0xd0(r1)
/* 80C07500  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C07504  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80C07508  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 80C0750C  80 7D 07 54 */	lwz r3, 0x754(r29)
/* 80C07510  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C07514  38 00 00 01 */	li r0, 1
/* 80C07518  90 1D 10 9C */	stw r0, 0x109c(r29)
/* 80C0751C  48 00 02 CC */	b lbl_80C077E8
lbl_80C07520:
/* 80C07520  38 00 00 01 */	li r0, 1
/* 80C07524  90 1D 1F E4 */	stw r0, 0x1fe4(r29)
/* 80C07528  7F A3 EB 78 */	mr r3, r29
/* 80C0752C  38 80 00 0A */	li r4, 0xa
/* 80C07530  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 80C07534  4B FF A2 59 */	bl setBaseMotion__11daObj_GrA_cFif
/* 80C07538  7F A3 EB 78 */	mr r3, r29
/* 80C0753C  38 80 00 0D */	li r4, 0xd
/* 80C07540  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 80C07544  4B FF A2 69 */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C07548  7F A3 EB 78 */	mr r3, r29
/* 80C0754C  4B FF A2 A5 */	bl calcMotion__11daObj_GrA_cFv
/* 80C07550  80 9D 07 54 */	lwz r4, 0x754(r29)
/* 80C07554  A8 04 00 14 */	lha r0, 0x14(r4)
/* 80C07558  C8 3E 01 30 */	lfd f1, 0x130(r30)
/* 80C0755C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C07560  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80C07564  3C 60 43 30 */	lis r3, 0x4330
/* 80C07568  90 61 00 E0 */	stw r3, 0xe0(r1)
/* 80C0756C  C8 01 00 E0 */	lfd f0, 0xe0(r1)
/* 80C07570  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C07574  FC 00 00 1E */	fctiwz f0, f0
/* 80C07578  D8 01 00 D8 */	stfd f0, 0xd8(r1)
/* 80C0757C  80 01 00 DC */	lwz r0, 0xdc(r1)
/* 80C07580  7C 00 07 34 */	extsh r0, r0
/* 80C07584  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C07588  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80C0758C  90 61 00 D0 */	stw r3, 0xd0(r1)
/* 80C07590  C8 01 00 D0 */	lfd f0, 0xd0(r1)
/* 80C07594  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C07598  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80C0759C  80 9D 07 54 */	lwz r4, 0x754(r29)
/* 80C075A0  A8 04 00 14 */	lha r0, 0x14(r4)
/* 80C075A4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C075A8  90 01 00 CC */	stw r0, 0xcc(r1)
/* 80C075AC  90 61 00 C8 */	stw r3, 0xc8(r1)
/* 80C075B0  C8 01 00 C8 */	lfd f0, 0xc8(r1)
/* 80C075B4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C075B8  FC 00 00 1E */	fctiwz f0, f0
/* 80C075BC  D8 01 00 C0 */	stfd f0, 0xc0(r1)
/* 80C075C0  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80C075C4  B0 04 00 16 */	sth r0, 0x16(r4)
/* 80C075C8  FC 00 F8 50 */	fneg f0, f31
/* 80C075CC  80 7D 07 54 */	lwz r3, 0x754(r29)
/* 80C075D0  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C075D4  48 00 02 14 */	b lbl_80C077E8
lbl_80C075D8:
/* 80C075D8  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 80C075DC  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80C075E0  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 80C075E4  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80C075E8  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 80C075EC  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80C075F0  38 7D 20 08 */	addi r3, r29, 0x2008
/* 80C075F4  38 9E 00 00 */	addi r4, r30, 0
/* 80C075F8  C0 24 00 A0 */	lfs f1, 0xa0(r4)
/* 80C075FC  C0 5E 02 4C */	lfs f2, 0x24c(r30)
/* 80C07600  C0 7E 02 50 */	lfs f3, 0x250(r30)
/* 80C07604  4B 66 84 39 */	bl cLib_addCalc2__FPffff
/* 80C07608  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80C0760C  38 81 00 9C */	addi r4, r1, 0x9c
/* 80C07610  C0 3D 20 08 */	lfs f1, 0x2008(r29)
/* 80C07614  4B 66 91 99 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 80C07618  C0 1E 02 AC */	lfs f0, 0x2ac(r30)
/* 80C0761C  C0 3D 20 08 */	lfs f1, 0x2008(r29)
/* 80C07620  EF E0 00 72 */	fmuls f31, f0, f1
/* 80C07624  FC 00 0A 10 */	fabs f0, f1
/* 80C07628  FC 20 00 18 */	frsp f1, f0
/* 80C0762C  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha /* 0x80451180@ha */
/* 80C07630  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)  /* 0x80451180@l */
/* 80C07634  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C07638  40 80 00 08 */	bge lbl_80C07640
/* 80C0763C  C3 FE 01 1C */	lfs f31, 0x11c(r30)
lbl_80C07640:
/* 80C07640  A8 7D 09 1C */	lha r3, 0x91c(r29)
/* 80C07644  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80C07648  7C 63 00 50 */	subf r3, r3, r0
/* 80C0764C  4B 75 DA 85 */	bl abs
/* 80C07650  2C 03 40 00 */	cmpwi r3, 0x4000
/* 80C07654  40 80 00 1C */	bge lbl_80C07670
/* 80C07658  80 7D 07 54 */	lwz r3, 0x754(r29)
/* 80C0765C  D3 E3 00 18 */	stfs f31, 0x18(r3)
/* 80C07660  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80C07664  B0 1D 09 1C */	sth r0, 0x91c(r29)
/* 80C07668  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80C0766C  48 00 00 24 */	b lbl_80C07690
lbl_80C07670:
/* 80C07670  FC 00 F8 50 */	fneg f0, f31
/* 80C07674  80 7D 07 54 */	lwz r3, 0x754(r29)
/* 80C07678  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C0767C  A8 7D 04 DE */	lha r3, 0x4de(r29)
/* 80C07680  3C 63 00 01 */	addis r3, r3, 1
/* 80C07684  38 03 80 00 */	addi r0, r3, -32768
/* 80C07688  B0 1D 09 1C */	sth r0, 0x91c(r29)
/* 80C0768C  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
lbl_80C07690:
/* 80C07690  38 61 00 54 */	addi r3, r1, 0x54
/* 80C07694  38 9D 04 A8 */	addi r4, r29, 0x4a8
/* 80C07698  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80C0769C  4B 65 F4 99 */	bl __mi__4cXyzCFRC3Vec
/* 80C076A0  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80C076A4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C076A8  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C076AC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C076B0  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80C076B4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C076B8  38 61 00 18 */	addi r3, r1, 0x18
/* 80C076BC  4B 73 FA 7D */	bl PSVECSquareMag
/* 80C076C0  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C076C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C076C8  40 81 00 58 */	ble lbl_80C07720
/* 80C076CC  FC 00 08 34 */	frsqrte f0, f1
/* 80C076D0  C8 9E 01 50 */	lfd f4, 0x150(r30)
/* 80C076D4  FC 44 00 32 */	fmul f2, f4, f0
/* 80C076D8  C8 7E 01 58 */	lfd f3, 0x158(r30)
/* 80C076DC  FC 00 00 32 */	fmul f0, f0, f0
/* 80C076E0  FC 01 00 32 */	fmul f0, f1, f0
/* 80C076E4  FC 03 00 28 */	fsub f0, f3, f0
/* 80C076E8  FC 02 00 32 */	fmul f0, f2, f0
/* 80C076EC  FC 44 00 32 */	fmul f2, f4, f0
/* 80C076F0  FC 00 00 32 */	fmul f0, f0, f0
/* 80C076F4  FC 01 00 32 */	fmul f0, f1, f0
/* 80C076F8  FC 03 00 28 */	fsub f0, f3, f0
/* 80C076FC  FC 02 00 32 */	fmul f0, f2, f0
/* 80C07700  FC 44 00 32 */	fmul f2, f4, f0
/* 80C07704  FC 00 00 32 */	fmul f0, f0, f0
/* 80C07708  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0770C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C07710  FC 02 00 32 */	fmul f0, f2, f0
/* 80C07714  FC 21 00 32 */	fmul f1, f1, f0
/* 80C07718  FC 20 08 18 */	frsp f1, f1
/* 80C0771C  48 00 00 88 */	b lbl_80C077A4
lbl_80C07720:
/* 80C07720  C8 1E 01 60 */	lfd f0, 0x160(r30)
/* 80C07724  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C07728  40 80 00 10 */	bge lbl_80C07738
/* 80C0772C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C07730  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C07734  48 00 00 70 */	b lbl_80C077A4
lbl_80C07738:
/* 80C07738  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C0773C  80 81 00 08 */	lwz r4, 8(r1)
/* 80C07740  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C07744  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C07748  7C 03 00 00 */	cmpw r3, r0
/* 80C0774C  41 82 00 14 */	beq lbl_80C07760
/* 80C07750  40 80 00 40 */	bge lbl_80C07790
/* 80C07754  2C 03 00 00 */	cmpwi r3, 0
/* 80C07758  41 82 00 20 */	beq lbl_80C07778
/* 80C0775C  48 00 00 34 */	b lbl_80C07790
lbl_80C07760:
/* 80C07760  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C07764  41 82 00 0C */	beq lbl_80C07770
/* 80C07768  38 00 00 01 */	li r0, 1
/* 80C0776C  48 00 00 28 */	b lbl_80C07794
lbl_80C07770:
/* 80C07770  38 00 00 02 */	li r0, 2
/* 80C07774  48 00 00 20 */	b lbl_80C07794
lbl_80C07778:
/* 80C07778  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0777C  41 82 00 0C */	beq lbl_80C07788
/* 80C07780  38 00 00 05 */	li r0, 5
/* 80C07784  48 00 00 10 */	b lbl_80C07794
lbl_80C07788:
/* 80C07788  38 00 00 03 */	li r0, 3
/* 80C0778C  48 00 00 08 */	b lbl_80C07794
lbl_80C07790:
/* 80C07790  38 00 00 04 */	li r0, 4
lbl_80C07794:
/* 80C07794  2C 00 00 01 */	cmpwi r0, 1
/* 80C07798  40 82 00 0C */	bne lbl_80C077A4
/* 80C0779C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C077A0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80C077A4:
/* 80C077A4  C0 1E 02 18 */	lfs f0, 0x218(r30)
/* 80C077A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C077AC  40 80 00 3C */	bge lbl_80C077E8
/* 80C077B0  80 7F 03 D0 */	lwz r3, 0x3d0(r31)
/* 80C077B4  80 1F 03 D4 */	lwz r0, 0x3d4(r31)
/* 80C077B8  90 61 00 48 */	stw r3, 0x48(r1)
/* 80C077BC  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80C077C0  80 1F 03 D8 */	lwz r0, 0x3d8(r31)
/* 80C077C4  90 01 00 50 */	stw r0, 0x50(r1)
/* 80C077C8  7F A3 EB 78 */	mr r3, r29
/* 80C077CC  38 81 00 48 */	addi r4, r1, 0x48
/* 80C077D0  4B FF A1 25 */	bl setProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
/* 80C077D4  48 00 00 14 */	b lbl_80C077E8
lbl_80C077D8:
/* 80C077D8  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C077DC  D0 1D 20 08 */	stfs f0, 0x2008(r29)
/* 80C077E0  38 00 FF FF */	li r0, -1
/* 80C077E4  90 1D 1F E4 */	stw r0, 0x1fe4(r29)
lbl_80C077E8:
/* 80C077E8  38 60 00 01 */	li r3, 1
/* 80C077EC  E3 E1 01 08 */	psq_l f31, 264(r1), 0, 0 /* qr0 */
/* 80C077F0  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 80C077F4  39 61 01 00 */	addi r11, r1, 0x100
/* 80C077F8  4B 75 AA 31 */	bl _restgpr_29
/* 80C077FC  80 01 01 14 */	lwz r0, 0x114(r1)
/* 80C07800  7C 08 03 A6 */	mtlr r0
/* 80C07804  38 21 01 10 */	addi r1, r1, 0x110
/* 80C07808  4E 80 00 20 */	blr 
