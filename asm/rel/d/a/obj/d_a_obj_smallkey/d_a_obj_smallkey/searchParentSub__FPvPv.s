lbl_80CD97B8:
/* 80CD97B8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CD97BC  7C 08 02 A6 */	mflr r0
/* 80CD97C0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CD97C4  39 61 00 30 */	addi r11, r1, 0x30
/* 80CD97C8  4B 68 8A 14 */	b _savegpr_29
/* 80CD97CC  7C 9D 23 78 */	mr r29, r4
/* 80CD97D0  3C 80 80 CE */	lis r4, l_cyl_src@ha
/* 80CD97D4  3B E4 B7 F4 */	addi r31, r4, l_cyl_src@l
/* 80CD97D8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CD97DC  41 82 03 48 */	beq lbl_80CD9B24
/* 80CD97E0  4B 33 F5 00 */	b fopAc_IsActor__FPv
/* 80CD97E4  2C 03 00 00 */	cmpwi r3, 0
/* 80CD97E8  41 82 03 3C */	beq lbl_80CD9B24
/* 80CD97EC  A8 1E 00 0E */	lha r0, 0xe(r30)
/* 80CD97F0  2C 00 00 2E */	cmpwi r0, 0x2e
/* 80CD97F4  40 82 01 08 */	bne lbl_80CD98FC
/* 80CD97F8  38 7D 04 A8 */	addi r3, r29, 0x4a8
/* 80CD97FC  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 80CD9800  4B 66 DB 9C */	b PSVECSquareDistance
/* 80CD9804  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80CD9808  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CD980C  40 81 00 58 */	ble lbl_80CD9864
/* 80CD9810  FC 00 08 34 */	frsqrte f0, f1
/* 80CD9814  C8 9F 00 48 */	lfd f4, 0x48(r31)
/* 80CD9818  FC 44 00 32 */	fmul f2, f4, f0
/* 80CD981C  C8 7F 00 50 */	lfd f3, 0x50(r31)
/* 80CD9820  FC 00 00 32 */	fmul f0, f0, f0
/* 80CD9824  FC 01 00 32 */	fmul f0, f1, f0
/* 80CD9828  FC 03 00 28 */	fsub f0, f3, f0
/* 80CD982C  FC 02 00 32 */	fmul f0, f2, f0
/* 80CD9830  FC 44 00 32 */	fmul f2, f4, f0
/* 80CD9834  FC 00 00 32 */	fmul f0, f0, f0
/* 80CD9838  FC 01 00 32 */	fmul f0, f1, f0
/* 80CD983C  FC 03 00 28 */	fsub f0, f3, f0
/* 80CD9840  FC 02 00 32 */	fmul f0, f2, f0
/* 80CD9844  FC 44 00 32 */	fmul f2, f4, f0
/* 80CD9848  FC 00 00 32 */	fmul f0, f0, f0
/* 80CD984C  FC 01 00 32 */	fmul f0, f1, f0
/* 80CD9850  FC 03 00 28 */	fsub f0, f3, f0
/* 80CD9854  FC 02 00 32 */	fmul f0, f2, f0
/* 80CD9858  FC 21 00 32 */	fmul f1, f1, f0
/* 80CD985C  FC 20 08 18 */	frsp f1, f1
/* 80CD9860  48 00 00 88 */	b lbl_80CD98E8
lbl_80CD9864:
/* 80CD9864  C8 1F 00 58 */	lfd f0, 0x58(r31)
/* 80CD9868  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CD986C  40 80 00 10 */	bge lbl_80CD987C
/* 80CD9870  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CD9874  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80CD9878  48 00 00 70 */	b lbl_80CD98E8
lbl_80CD987C:
/* 80CD987C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80CD9880  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80CD9884  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CD9888  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CD988C  7C 03 00 00 */	cmpw r3, r0
/* 80CD9890  41 82 00 14 */	beq lbl_80CD98A4
/* 80CD9894  40 80 00 40 */	bge lbl_80CD98D4
/* 80CD9898  2C 03 00 00 */	cmpwi r3, 0
/* 80CD989C  41 82 00 20 */	beq lbl_80CD98BC
/* 80CD98A0  48 00 00 34 */	b lbl_80CD98D4
lbl_80CD98A4:
/* 80CD98A4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CD98A8  41 82 00 0C */	beq lbl_80CD98B4
/* 80CD98AC  38 00 00 01 */	li r0, 1
/* 80CD98B0  48 00 00 28 */	b lbl_80CD98D8
lbl_80CD98B4:
/* 80CD98B4  38 00 00 02 */	li r0, 2
/* 80CD98B8  48 00 00 20 */	b lbl_80CD98D8
lbl_80CD98BC:
/* 80CD98BC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CD98C0  41 82 00 0C */	beq lbl_80CD98CC
/* 80CD98C4  38 00 00 05 */	li r0, 5
/* 80CD98C8  48 00 00 10 */	b lbl_80CD98D8
lbl_80CD98CC:
/* 80CD98CC  38 00 00 03 */	li r0, 3
/* 80CD98D0  48 00 00 08 */	b lbl_80CD98D8
lbl_80CD98D4:
/* 80CD98D4  38 00 00 04 */	li r0, 4
lbl_80CD98D8:
/* 80CD98D8  2C 00 00 01 */	cmpwi r0, 1
/* 80CD98DC  40 82 00 0C */	bne lbl_80CD98E8
/* 80CD98E0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CD98E4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80CD98E8:
/* 80CD98E8  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80CD98EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CD98F0  40 80 02 34 */	bge lbl_80CD9B24
/* 80CD98F4  7F C3 F3 78 */	mr r3, r30
/* 80CD98F8  48 00 02 30 */	b lbl_80CD9B28
lbl_80CD98FC:
/* 80CD98FC  2C 00 01 C8 */	cmpwi r0, 0x1c8
/* 80CD9900  40 82 01 08 */	bne lbl_80CD9A08
/* 80CD9904  38 7D 04 A8 */	addi r3, r29, 0x4a8
/* 80CD9908  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 80CD990C  4B 66 DA 90 */	b PSVECSquareDistance
/* 80CD9910  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80CD9914  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CD9918  40 81 00 58 */	ble lbl_80CD9970
/* 80CD991C  FC 00 08 34 */	frsqrte f0, f1
/* 80CD9920  C8 9F 00 48 */	lfd f4, 0x48(r31)
/* 80CD9924  FC 44 00 32 */	fmul f2, f4, f0
/* 80CD9928  C8 7F 00 50 */	lfd f3, 0x50(r31)
/* 80CD992C  FC 00 00 32 */	fmul f0, f0, f0
/* 80CD9930  FC 01 00 32 */	fmul f0, f1, f0
/* 80CD9934  FC 03 00 28 */	fsub f0, f3, f0
/* 80CD9938  FC 02 00 32 */	fmul f0, f2, f0
/* 80CD993C  FC 44 00 32 */	fmul f2, f4, f0
/* 80CD9940  FC 00 00 32 */	fmul f0, f0, f0
/* 80CD9944  FC 01 00 32 */	fmul f0, f1, f0
/* 80CD9948  FC 03 00 28 */	fsub f0, f3, f0
/* 80CD994C  FC 02 00 32 */	fmul f0, f2, f0
/* 80CD9950  FC 44 00 32 */	fmul f2, f4, f0
/* 80CD9954  FC 00 00 32 */	fmul f0, f0, f0
/* 80CD9958  FC 01 00 32 */	fmul f0, f1, f0
/* 80CD995C  FC 03 00 28 */	fsub f0, f3, f0
/* 80CD9960  FC 02 00 32 */	fmul f0, f2, f0
/* 80CD9964  FC 21 00 32 */	fmul f1, f1, f0
/* 80CD9968  FC 20 08 18 */	frsp f1, f1
/* 80CD996C  48 00 00 88 */	b lbl_80CD99F4
lbl_80CD9970:
/* 80CD9970  C8 1F 00 58 */	lfd f0, 0x58(r31)
/* 80CD9974  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CD9978  40 80 00 10 */	bge lbl_80CD9988
/* 80CD997C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CD9980  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80CD9984  48 00 00 70 */	b lbl_80CD99F4
lbl_80CD9988:
/* 80CD9988  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80CD998C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80CD9990  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CD9994  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CD9998  7C 03 00 00 */	cmpw r3, r0
/* 80CD999C  41 82 00 14 */	beq lbl_80CD99B0
/* 80CD99A0  40 80 00 40 */	bge lbl_80CD99E0
/* 80CD99A4  2C 03 00 00 */	cmpwi r3, 0
/* 80CD99A8  41 82 00 20 */	beq lbl_80CD99C8
/* 80CD99AC  48 00 00 34 */	b lbl_80CD99E0
lbl_80CD99B0:
/* 80CD99B0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CD99B4  41 82 00 0C */	beq lbl_80CD99C0
/* 80CD99B8  38 00 00 01 */	li r0, 1
/* 80CD99BC  48 00 00 28 */	b lbl_80CD99E4
lbl_80CD99C0:
/* 80CD99C0  38 00 00 02 */	li r0, 2
/* 80CD99C4  48 00 00 20 */	b lbl_80CD99E4
lbl_80CD99C8:
/* 80CD99C8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CD99CC  41 82 00 0C */	beq lbl_80CD99D8
/* 80CD99D0  38 00 00 05 */	li r0, 5
/* 80CD99D4  48 00 00 10 */	b lbl_80CD99E4
lbl_80CD99D8:
/* 80CD99D8  38 00 00 03 */	li r0, 3
/* 80CD99DC  48 00 00 08 */	b lbl_80CD99E4
lbl_80CD99E0:
/* 80CD99E0  38 00 00 04 */	li r0, 4
lbl_80CD99E4:
/* 80CD99E4  2C 00 00 01 */	cmpwi r0, 1
/* 80CD99E8  40 82 00 0C */	bne lbl_80CD99F4
/* 80CD99EC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CD99F0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80CD99F4:
/* 80CD99F4  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80CD99F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CD99FC  40 80 01 28 */	bge lbl_80CD9B24
/* 80CD9A00  7F C3 F3 78 */	mr r3, r30
/* 80CD9A04  48 00 01 24 */	b lbl_80CD9B28
lbl_80CD9A08:
/* 80CD9A08  2C 00 01 E3 */	cmpwi r0, 0x1e3
/* 80CD9A0C  40 82 01 18 */	bne lbl_80CD9B24
/* 80CD9A10  38 7D 04 A8 */	addi r3, r29, 0x4a8
/* 80CD9A14  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 80CD9A18  4B 66 D9 84 */	b PSVECSquareDistance
/* 80CD9A1C  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80CD9A20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CD9A24  40 81 00 58 */	ble lbl_80CD9A7C
/* 80CD9A28  FC 00 08 34 */	frsqrte f0, f1
/* 80CD9A2C  C8 9F 00 48 */	lfd f4, 0x48(r31)
/* 80CD9A30  FC 44 00 32 */	fmul f2, f4, f0
/* 80CD9A34  C8 7F 00 50 */	lfd f3, 0x50(r31)
/* 80CD9A38  FC 00 00 32 */	fmul f0, f0, f0
/* 80CD9A3C  FC 01 00 32 */	fmul f0, f1, f0
/* 80CD9A40  FC 03 00 28 */	fsub f0, f3, f0
/* 80CD9A44  FC 02 00 32 */	fmul f0, f2, f0
/* 80CD9A48  FC 44 00 32 */	fmul f2, f4, f0
/* 80CD9A4C  FC 00 00 32 */	fmul f0, f0, f0
/* 80CD9A50  FC 01 00 32 */	fmul f0, f1, f0
/* 80CD9A54  FC 03 00 28 */	fsub f0, f3, f0
/* 80CD9A58  FC 02 00 32 */	fmul f0, f2, f0
/* 80CD9A5C  FC 44 00 32 */	fmul f2, f4, f0
/* 80CD9A60  FC 00 00 32 */	fmul f0, f0, f0
/* 80CD9A64  FC 01 00 32 */	fmul f0, f1, f0
/* 80CD9A68  FC 03 00 28 */	fsub f0, f3, f0
/* 80CD9A6C  FC 02 00 32 */	fmul f0, f2, f0
/* 80CD9A70  FC 21 00 32 */	fmul f1, f1, f0
/* 80CD9A74  FC 20 08 18 */	frsp f1, f1
/* 80CD9A78  48 00 00 88 */	b lbl_80CD9B00
lbl_80CD9A7C:
/* 80CD9A7C  C8 1F 00 58 */	lfd f0, 0x58(r31)
/* 80CD9A80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CD9A84  40 80 00 10 */	bge lbl_80CD9A94
/* 80CD9A88  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CD9A8C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80CD9A90  48 00 00 70 */	b lbl_80CD9B00
lbl_80CD9A94:
/* 80CD9A94  D0 21 00 08 */	stfs f1, 8(r1)
/* 80CD9A98  80 81 00 08 */	lwz r4, 8(r1)
/* 80CD9A9C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CD9AA0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CD9AA4  7C 03 00 00 */	cmpw r3, r0
/* 80CD9AA8  41 82 00 14 */	beq lbl_80CD9ABC
/* 80CD9AAC  40 80 00 40 */	bge lbl_80CD9AEC
/* 80CD9AB0  2C 03 00 00 */	cmpwi r3, 0
/* 80CD9AB4  41 82 00 20 */	beq lbl_80CD9AD4
/* 80CD9AB8  48 00 00 34 */	b lbl_80CD9AEC
lbl_80CD9ABC:
/* 80CD9ABC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CD9AC0  41 82 00 0C */	beq lbl_80CD9ACC
/* 80CD9AC4  38 00 00 01 */	li r0, 1
/* 80CD9AC8  48 00 00 28 */	b lbl_80CD9AF0
lbl_80CD9ACC:
/* 80CD9ACC  38 00 00 02 */	li r0, 2
/* 80CD9AD0  48 00 00 20 */	b lbl_80CD9AF0
lbl_80CD9AD4:
/* 80CD9AD4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CD9AD8  41 82 00 0C */	beq lbl_80CD9AE4
/* 80CD9ADC  38 00 00 05 */	li r0, 5
/* 80CD9AE0  48 00 00 10 */	b lbl_80CD9AF0
lbl_80CD9AE4:
/* 80CD9AE4  38 00 00 03 */	li r0, 3
/* 80CD9AE8  48 00 00 08 */	b lbl_80CD9AF0
lbl_80CD9AEC:
/* 80CD9AEC  38 00 00 04 */	li r0, 4
lbl_80CD9AF0:
/* 80CD9AF0  2C 00 00 01 */	cmpwi r0, 1
/* 80CD9AF4  40 82 00 0C */	bne lbl_80CD9B00
/* 80CD9AF8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CD9AFC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80CD9B00:
/* 80CD9B00  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80CD9B04  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80CD9B08  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80CD9B0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CD9B10  40 80 00 14 */	bge lbl_80CD9B24
/* 80CD9B14  28 00 00 0A */	cmplwi r0, 0xa
/* 80CD9B18  40 80 00 0C */	bge lbl_80CD9B24
/* 80CD9B1C  7F C3 F3 78 */	mr r3, r30
/* 80CD9B20  48 00 00 08 */	b lbl_80CD9B28
lbl_80CD9B24:
/* 80CD9B24  38 60 00 00 */	li r3, 0
lbl_80CD9B28:
/* 80CD9B28  39 61 00 30 */	addi r11, r1, 0x30
/* 80CD9B2C  4B 68 86 FC */	b _restgpr_29
/* 80CD9B30  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CD9B34  7C 08 03 A6 */	mtlr r0
/* 80CD9B38  38 21 00 30 */	addi r1, r1, 0x30
/* 80CD9B3C  4E 80 00 20 */	blr 
