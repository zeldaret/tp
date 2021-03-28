lbl_807A9768:
/* 807A9768  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 807A976C  7C 08 02 A6 */	mflr r0
/* 807A9770  90 01 00 54 */	stw r0, 0x54(r1)
/* 807A9774  39 61 00 50 */	addi r11, r1, 0x50
/* 807A9778  4B BB 8A 64 */	b _savegpr_29
/* 807A977C  7C 7D 1B 78 */	mr r29, r3
/* 807A9780  3C 80 80 7B */	lis r4, lit_3909@ha
/* 807A9784  3B E4 FD 2C */	addi r31, r4, lit_3909@l
/* 807A9788  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 807A978C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 807A9790  83 C4 5D AC */	lwz r30, 0x5dac(r4)
/* 807A9794  A8 03 06 80 */	lha r0, 0x680(r3)
/* 807A9798  2C 00 00 02 */	cmpwi r0, 2
/* 807A979C  41 82 04 98 */	beq lbl_807A9C34
/* 807A97A0  40 80 00 14 */	bge lbl_807A97B4
/* 807A97A4  2C 00 00 00 */	cmpwi r0, 0
/* 807A97A8  41 82 00 1C */	beq lbl_807A97C4
/* 807A97AC  40 80 04 24 */	bge lbl_807A9BD0
/* 807A97B0  48 00 06 74 */	b lbl_807A9E24
lbl_807A97B4:
/* 807A97B4  2C 00 00 04 */	cmpwi r0, 4
/* 807A97B8  41 82 05 DC */	beq lbl_807A9D94
/* 807A97BC  40 80 06 68 */	bge lbl_807A9E24
/* 807A97C0  48 00 05 4C */	b lbl_807A9D0C
lbl_807A97C4:
/* 807A97C4  3C 80 D8 FC */	lis r4, 0xD8FC /* 0xD8FBFDFF@ha */
/* 807A97C8  38 04 FD FF */	addi r0, r4, 0xFDFF /* 0xD8FBFDFF@l */
/* 807A97CC  90 1D 09 B4 */	stw r0, 0x9b4(r29)
/* 807A97D0  38 00 00 00 */	li r0, 0
/* 807A97D4  98 1D 06 E4 */	stb r0, 0x6e4(r29)
/* 807A97D8  98 1D 06 E5 */	stb r0, 0x6e5(r29)
/* 807A97DC  4B FF E2 2D */	bl setDiveEffect__8daE_SW_cFv
/* 807A97E0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007035A@ha */
/* 807A97E4  38 03 03 5A */	addi r0, r3, 0x035A /* 0x0007035A@l */
/* 807A97E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 807A97EC  38 7D 05 B8 */	addi r3, r29, 0x5b8
/* 807A97F0  38 81 00 14 */	addi r4, r1, 0x14
/* 807A97F4  88 BD 06 E9 */	lbz r5, 0x6e9(r29)
/* 807A97F8  38 C0 FF FF */	li r6, -1
/* 807A97FC  81 9D 05 B8 */	lwz r12, 0x5b8(r29)
/* 807A9800  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807A9804  7D 89 03 A6 */	mtctr r12
/* 807A9808  4E 80 04 21 */	bctrl 
/* 807A980C  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 807A9810  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 807A9814  7F A3 EB 78 */	mr r3, r29
/* 807A9818  38 80 00 06 */	li r4, 6
/* 807A981C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807A9820  38 A0 00 00 */	li r5, 0
/* 807A9824  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807A9828  4B FF DC 39 */	bl bckSet__8daE_SW_cFifUcf
/* 807A982C  38 00 C0 00 */	li r0, -16384
/* 807A9830  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 807A9834  A8 1D 06 9C */	lha r0, 0x69c(r29)
/* 807A9838  2C 00 00 01 */	cmpwi r0, 1
/* 807A983C  40 82 00 18 */	bne lbl_807A9854
/* 807A9840  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 807A9844  38 9D 06 A8 */	addi r4, r29, 0x6a8
/* 807A9848  4B AC 73 BC */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 807A984C  B0 7D 06 9E */	sth r3, 0x69e(r29)
/* 807A9850  48 00 00 0C */	b lbl_807A985C
lbl_807A9854:
/* 807A9854  A8 1D 06 CC */	lha r0, 0x6cc(r29)
/* 807A9858  B0 1D 06 9E */	sth r0, 0x69e(r29)
lbl_807A985C:
/* 807A985C  A8 1D 06 9E */	lha r0, 0x69e(r29)
/* 807A9860  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 807A9864  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 807A9868  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 807A986C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 807A9870  A8 1D 06 9C */	lha r0, 0x69c(r29)
/* 807A9874  2C 00 00 01 */	cmpwi r0, 1
/* 807A9878  41 82 00 20 */	beq lbl_807A9898
/* 807A987C  40 80 00 10 */	bge lbl_807A988C
/* 807A9880  2C 00 00 00 */	cmpwi r0, 0
/* 807A9884  40 80 01 14 */	bge lbl_807A9998
/* 807A9888  48 00 03 24 */	b lbl_807A9BAC
lbl_807A988C:
/* 807A988C  2C 00 00 03 */	cmpwi r0, 3
/* 807A9890  40 80 03 1C */	bge lbl_807A9BAC
/* 807A9894  48 00 01 18 */	b lbl_807A99AC
lbl_807A9898:
/* 807A9898  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 807A989C  38 9D 06 A8 */	addi r4, r29, 0x6a8
/* 807A98A0  4B B9 DA FC */	b PSVECSquareDistance
/* 807A98A4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807A98A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A98AC  40 81 00 58 */	ble lbl_807A9904
/* 807A98B0  FC 00 08 34 */	frsqrte f0, f1
/* 807A98B4  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807A98B8  FC 44 00 32 */	fmul f2, f4, f0
/* 807A98BC  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807A98C0  FC 00 00 32 */	fmul f0, f0, f0
/* 807A98C4  FC 01 00 32 */	fmul f0, f1, f0
/* 807A98C8  FC 03 00 28 */	fsub f0, f3, f0
/* 807A98CC  FC 02 00 32 */	fmul f0, f2, f0
/* 807A98D0  FC 44 00 32 */	fmul f2, f4, f0
/* 807A98D4  FC 00 00 32 */	fmul f0, f0, f0
/* 807A98D8  FC 01 00 32 */	fmul f0, f1, f0
/* 807A98DC  FC 03 00 28 */	fsub f0, f3, f0
/* 807A98E0  FC 02 00 32 */	fmul f0, f2, f0
/* 807A98E4  FC 44 00 32 */	fmul f2, f4, f0
/* 807A98E8  FC 00 00 32 */	fmul f0, f0, f0
/* 807A98EC  FC 01 00 32 */	fmul f0, f1, f0
/* 807A98F0  FC 03 00 28 */	fsub f0, f3, f0
/* 807A98F4  FC 02 00 32 */	fmul f0, f2, f0
/* 807A98F8  FC 21 00 32 */	fmul f1, f1, f0
/* 807A98FC  FC 20 08 18 */	frsp f1, f1
/* 807A9900  48 00 00 88 */	b lbl_807A9988
lbl_807A9904:
/* 807A9904  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807A9908  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A990C  40 80 00 10 */	bge lbl_807A991C
/* 807A9910  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807A9914  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 807A9918  48 00 00 70 */	b lbl_807A9988
lbl_807A991C:
/* 807A991C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807A9920  80 81 00 0C */	lwz r4, 0xc(r1)
/* 807A9924  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807A9928  3C 00 7F 80 */	lis r0, 0x7f80
/* 807A992C  7C 03 00 00 */	cmpw r3, r0
/* 807A9930  41 82 00 14 */	beq lbl_807A9944
/* 807A9934  40 80 00 40 */	bge lbl_807A9974
/* 807A9938  2C 03 00 00 */	cmpwi r3, 0
/* 807A993C  41 82 00 20 */	beq lbl_807A995C
/* 807A9940  48 00 00 34 */	b lbl_807A9974
lbl_807A9944:
/* 807A9944  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807A9948  41 82 00 0C */	beq lbl_807A9954
/* 807A994C  38 00 00 01 */	li r0, 1
/* 807A9950  48 00 00 28 */	b lbl_807A9978
lbl_807A9954:
/* 807A9954  38 00 00 02 */	li r0, 2
/* 807A9958  48 00 00 20 */	b lbl_807A9978
lbl_807A995C:
/* 807A995C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807A9960  41 82 00 0C */	beq lbl_807A996C
/* 807A9964  38 00 00 05 */	li r0, 5
/* 807A9968  48 00 00 10 */	b lbl_807A9978
lbl_807A996C:
/* 807A996C  38 00 00 03 */	li r0, 3
/* 807A9970  48 00 00 08 */	b lbl_807A9978
lbl_807A9974:
/* 807A9974  38 00 00 04 */	li r0, 4
lbl_807A9978:
/* 807A9978  2C 00 00 01 */	cmpwi r0, 1
/* 807A997C  40 82 00 0C */	bne lbl_807A9988
/* 807A9980  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807A9984  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_807A9988:
/* 807A9988  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 807A998C  EC 01 00 24 */	fdivs f0, f1, f0
/* 807A9990  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 807A9994  48 00 02 18 */	b lbl_807A9BAC
lbl_807A9998:
/* 807A9998  C0 3D 06 C8 */	lfs f1, 0x6c8(r29)
/* 807A999C  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 807A99A0  EC 01 00 24 */	fdivs f0, f1, f0
/* 807A99A4  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 807A99A8  48 00 02 04 */	b lbl_807A9BAC
lbl_807A99AC:
/* 807A99AC  7F C3 F3 78 */	mr r3, r30
/* 807A99B0  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 807A99B4  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 807A99B8  7D 89 03 A6 */	mtctr r12
/* 807A99BC  4E 80 04 21 */	bctrl 
/* 807A99C0  28 03 00 00 */	cmplwi r3, 0
/* 807A99C4  40 82 00 0C */	bne lbl_807A99D0
/* 807A99C8  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 807A99CC  48 00 00 08 */	b lbl_807A99D4
lbl_807A99D0:
/* 807A99D0  C0 3F 00 64 */	lfs f1, 0x64(r31)
lbl_807A99D4:
/* 807A99D4  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 807A99D8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 807A99DC  40 80 00 18 */	bge lbl_807A99F4
/* 807A99E0  C0 3D 06 C8 */	lfs f1, 0x6c8(r29)
/* 807A99E4  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 807A99E8  EC 01 00 24 */	fdivs f0, f1, f0
/* 807A99EC  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 807A99F0  48 00 01 BC */	b lbl_807A9BAC
lbl_807A99F4:
/* 807A99F4  7F C3 F3 78 */	mr r3, r30
/* 807A99F8  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 807A99FC  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 807A9A00  7D 89 03 A6 */	mtctr r12
/* 807A9A04  4E 80 04 21 */	bctrl 
/* 807A9A08  28 03 00 00 */	cmplwi r3, 0
/* 807A9A0C  41 82 00 18 */	beq lbl_807A9A24
/* 807A9A10  C0 3D 06 C8 */	lfs f1, 0x6c8(r29)
/* 807A9A14  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 807A9A18  EC 01 00 24 */	fdivs f0, f1, f0
/* 807A9A1C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 807A9A20  48 00 00 14 */	b lbl_807A9A34
lbl_807A9A24:
/* 807A9A24  C0 3D 06 C8 */	lfs f1, 0x6c8(r29)
/* 807A9A28  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 807A9A2C  EC 01 00 24 */	fdivs f0, f1, f0
/* 807A9A30  D0 1D 05 2C */	stfs f0, 0x52c(r29)
lbl_807A9A34:
/* 807A9A34  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 807A9A38  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 807A9A3C  7C 00 1E 70 */	srawi r0, r0, 3
/* 807A9A40  54 00 18 38 */	slwi r0, r0, 3
/* 807A9A44  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 807A9A48  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 807A9A4C  7C 23 04 2E */	lfsx f1, r3, r0
/* 807A9A50  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 807A9A54  EC 20 00 72 */	fmuls f1, f0, f1
/* 807A9A58  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 807A9A5C  38 A3 00 04 */	addi r5, r3, 4
/* 807A9A60  54 80 04 38 */	rlwinm r0, r4, 0, 0x10, 0x1c
/* 807A9A64  7C 45 04 2E */	lfsx f2, r5, r0
/* 807A9A68  EC 60 00 B2 */	fmuls f3, f0, f2
/* 807A9A6C  D0 61 00 38 */	stfs f3, 0x38(r1)
/* 807A9A70  A8 1D 06 9E */	lha r0, 0x69e(r29)
/* 807A9A74  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807A9A78  7C 03 04 2E */	lfsx f0, r3, r0
/* 807A9A7C  C0 5D 05 2C */	lfs f2, 0x52c(r29)
/* 807A9A80  EC 02 00 32 */	fmuls f0, f2, f0
/* 807A9A84  EC 21 00 2A */	fadds f1, f1, f0
/* 807A9A88  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 807A9A8C  7C 05 04 2E */	lfsx f0, r5, r0
/* 807A9A90  EC 02 00 32 */	fmuls f0, f2, f0
/* 807A9A94  EC 43 00 2A */	fadds f2, f3, f0
/* 807A9A98  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 807A9A9C  4B AB DB D8 */	b cM_atan2s__Fff
/* 807A9AA0  B0 7D 06 9E */	sth r3, 0x69e(r29)
/* 807A9AA4  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 807A9AA8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807A9AAC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807A9AB0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807A9AB4  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 807A9AB8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807A9ABC  38 61 00 18 */	addi r3, r1, 0x18
/* 807A9AC0  4B B9 D6 78 */	b PSVECSquareMag
/* 807A9AC4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807A9AC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A9ACC  40 81 00 58 */	ble lbl_807A9B24
/* 807A9AD0  FC 00 08 34 */	frsqrte f0, f1
/* 807A9AD4  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807A9AD8  FC 44 00 32 */	fmul f2, f4, f0
/* 807A9ADC  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807A9AE0  FC 00 00 32 */	fmul f0, f0, f0
/* 807A9AE4  FC 01 00 32 */	fmul f0, f1, f0
/* 807A9AE8  FC 03 00 28 */	fsub f0, f3, f0
/* 807A9AEC  FC 02 00 32 */	fmul f0, f2, f0
/* 807A9AF0  FC 44 00 32 */	fmul f2, f4, f0
/* 807A9AF4  FC 00 00 32 */	fmul f0, f0, f0
/* 807A9AF8  FC 01 00 32 */	fmul f0, f1, f0
/* 807A9AFC  FC 03 00 28 */	fsub f0, f3, f0
/* 807A9B00  FC 02 00 32 */	fmul f0, f2, f0
/* 807A9B04  FC 44 00 32 */	fmul f2, f4, f0
/* 807A9B08  FC 00 00 32 */	fmul f0, f0, f0
/* 807A9B0C  FC 01 00 32 */	fmul f0, f1, f0
/* 807A9B10  FC 03 00 28 */	fsub f0, f3, f0
/* 807A9B14  FC 02 00 32 */	fmul f0, f2, f0
/* 807A9B18  FC 21 00 32 */	fmul f1, f1, f0
/* 807A9B1C  FC 20 08 18 */	frsp f1, f1
/* 807A9B20  48 00 00 88 */	b lbl_807A9BA8
lbl_807A9B24:
/* 807A9B24  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807A9B28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A9B2C  40 80 00 10 */	bge lbl_807A9B3C
/* 807A9B30  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807A9B34  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 807A9B38  48 00 00 70 */	b lbl_807A9BA8
lbl_807A9B3C:
/* 807A9B3C  D0 21 00 08 */	stfs f1, 8(r1)
/* 807A9B40  80 81 00 08 */	lwz r4, 8(r1)
/* 807A9B44  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807A9B48  3C 00 7F 80 */	lis r0, 0x7f80
/* 807A9B4C  7C 03 00 00 */	cmpw r3, r0
/* 807A9B50  41 82 00 14 */	beq lbl_807A9B64
/* 807A9B54  40 80 00 40 */	bge lbl_807A9B94
/* 807A9B58  2C 03 00 00 */	cmpwi r3, 0
/* 807A9B5C  41 82 00 20 */	beq lbl_807A9B7C
/* 807A9B60  48 00 00 34 */	b lbl_807A9B94
lbl_807A9B64:
/* 807A9B64  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807A9B68  41 82 00 0C */	beq lbl_807A9B74
/* 807A9B6C  38 00 00 01 */	li r0, 1
/* 807A9B70  48 00 00 28 */	b lbl_807A9B98
lbl_807A9B74:
/* 807A9B74  38 00 00 02 */	li r0, 2
/* 807A9B78  48 00 00 20 */	b lbl_807A9B98
lbl_807A9B7C:
/* 807A9B7C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807A9B80  41 82 00 0C */	beq lbl_807A9B8C
/* 807A9B84  38 00 00 05 */	li r0, 5
/* 807A9B88  48 00 00 10 */	b lbl_807A9B98
lbl_807A9B8C:
/* 807A9B8C  38 00 00 03 */	li r0, 3
/* 807A9B90  48 00 00 08 */	b lbl_807A9B98
lbl_807A9B94:
/* 807A9B94  38 00 00 04 */	li r0, 4
lbl_807A9B98:
/* 807A9B98  2C 00 00 01 */	cmpwi r0, 1
/* 807A9B9C  40 82 00 0C */	bne lbl_807A9BA8
/* 807A9BA0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807A9BA4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_807A9BA8:
/* 807A9BA8  D0 3D 05 2C */	stfs f1, 0x52c(r29)
lbl_807A9BAC:
/* 807A9BAC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807A9BB0  D0 1D 06 68 */	stfs f0, 0x668(r29)
/* 807A9BB4  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 807A9BB8  D0 1D 06 6C */	stfs f0, 0x66c(r29)
/* 807A9BBC  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 807A9BC0  D0 1D 06 70 */	stfs f0, 0x670(r29)
/* 807A9BC4  38 00 00 01 */	li r0, 1
/* 807A9BC8  B0 1D 06 80 */	sth r0, 0x680(r29)
/* 807A9BCC  48 00 02 58 */	b lbl_807A9E24
lbl_807A9BD0:
/* 807A9BD0  4B FF DB FD */	bl setJumpEffect__8daE_SW_cFv
/* 807A9BD4  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 807A9BD8  38 80 00 00 */	li r4, 0
/* 807A9BDC  38 A0 04 00 */	li r5, 0x400
/* 807A9BE0  4B AC 6F B0 */	b cLib_chaseAngleS__FPsss
/* 807A9BE4  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 807A9BE8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807A9BEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A9BF0  40 80 02 34 */	bge lbl_807A9E24
/* 807A9BF4  D0 1D 06 D8 */	stfs f0, 0x6d8(r29)
/* 807A9BF8  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 807A9BFC  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 807A9C00  EC 01 00 28 */	fsubs f0, f1, f0
/* 807A9C04  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 807A9C08  7F A3 EB 78 */	mr r3, r29
/* 807A9C0C  38 80 00 05 */	li r4, 5
/* 807A9C10  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 807A9C14  38 A0 00 00 */	li r5, 0
/* 807A9C18  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807A9C1C  4B FF D8 45 */	bl bckSet__8daE_SW_cFifUcf
/* 807A9C20  38 00 00 3C */	li r0, 0x3c
/* 807A9C24  B0 1D 06 EA */	sth r0, 0x6ea(r29)
/* 807A9C28  38 00 00 02 */	li r0, 2
/* 807A9C2C  B0 1D 06 80 */	sth r0, 0x680(r29)
/* 807A9C30  48 00 01 F4 */	b lbl_807A9E24
lbl_807A9C34:
/* 807A9C34  4B FF DB 99 */	bl setJumpEffect__8daE_SW_cFv
/* 807A9C38  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 807A9C3C  38 80 40 00 */	li r4, 0x4000
/* 807A9C40  38 A0 04 00 */	li r5, 0x400
/* 807A9C44  4B AC 6F 4C */	b cLib_chaseAngleS__FPsss
/* 807A9C48  38 7D 05 2C */	addi r3, r29, 0x52c
/* 807A9C4C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807A9C50  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807A9C54  4B AC 6A EC */	b cLib_chaseF__FPfff
/* 807A9C58  80 1D 07 A4 */	lwz r0, 0x7a4(r29)
/* 807A9C5C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807A9C60  41 82 00 88 */	beq lbl_807A9CE8
/* 807A9C64  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 807A9C68  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 807A9C6C  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 807A9C70  D0 1D 06 D8 */	stfs f0, 0x6d8(r29)
/* 807A9C74  A8 1D 06 BC */	lha r0, 0x6bc(r29)
/* 807A9C78  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807A9C7C  40 82 00 18 */	bne lbl_807A9C94
/* 807A9C80  7F A3 EB 78 */	mr r3, r29
/* 807A9C84  38 80 00 07 */	li r4, 7
/* 807A9C88  38 A0 00 00 */	li r5, 0
/* 807A9C8C  4B FF DE D9 */	bl setActionMode__8daE_SW_cFss
/* 807A9C90  48 00 00 4C */	b lbl_807A9CDC
lbl_807A9C94:
/* 807A9C94  38 00 00 01 */	li r0, 1
/* 807A9C98  98 1D 06 E4 */	stb r0, 0x6e4(r29)
/* 807A9C9C  7F A3 EB 78 */	mr r3, r29
/* 807A9CA0  4B FF DD 69 */	bl setDiveEffect__8daE_SW_cFv
/* 807A9CA4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007035B@ha */
/* 807A9CA8  38 03 03 5B */	addi r0, r3, 0x035B /* 0x0007035B@l */
/* 807A9CAC  90 01 00 10 */	stw r0, 0x10(r1)
/* 807A9CB0  38 7D 05 B8 */	addi r3, r29, 0x5b8
/* 807A9CB4  38 81 00 10 */	addi r4, r1, 0x10
/* 807A9CB8  88 BD 06 E9 */	lbz r5, 0x6e9(r29)
/* 807A9CBC  38 C0 FF FF */	li r6, -1
/* 807A9CC0  81 9D 05 B8 */	lwz r12, 0x5b8(r29)
/* 807A9CC4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807A9CC8  7D 89 03 A6 */	mtctr r12
/* 807A9CCC  4E 80 04 21 */	bctrl 
/* 807A9CD0  38 00 00 03 */	li r0, 3
/* 807A9CD4  B0 1D 06 80 */	sth r0, 0x680(r29)
/* 807A9CD8  48 00 01 68 */	b lbl_807A9E40
lbl_807A9CDC:
/* 807A9CDC  38 00 00 00 */	li r0, 0
/* 807A9CE0  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 807A9CE4  48 00 00 18 */	b lbl_807A9CFC
lbl_807A9CE8:
/* 807A9CE8  A8 1D 06 EA */	lha r0, 0x6ea(r29)
/* 807A9CEC  2C 00 00 00 */	cmpwi r0, 0
/* 807A9CF0  40 82 00 0C */	bne lbl_807A9CFC
/* 807A9CF4  7F A3 EB 78 */	mr r3, r29
/* 807A9CF8  4B 86 FF 84 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_807A9CFC:
/* 807A9CFC  80 1D 09 8C */	lwz r0, 0x98c(r29)
/* 807A9D00  60 00 00 01 */	ori r0, r0, 1
/* 807A9D04  90 1D 09 8C */	stw r0, 0x98c(r29)
/* 807A9D08  48 00 01 1C */	b lbl_807A9E24
lbl_807A9D0C:
/* 807A9D0C  38 7D 05 2C */	addi r3, r29, 0x52c
/* 807A9D10  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807A9D14  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807A9D18  4B AC 6A 28 */	b cLib_chaseF__FPfff
/* 807A9D1C  38 7D 06 D8 */	addi r3, r29, 0x6d8
/* 807A9D20  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 807A9D24  C0 5F 00 BC */	lfs f2, 0xbc(r31)
/* 807A9D28  4B AC 6A 18 */	b cLib_chaseF__FPfff
/* 807A9D2C  2C 03 00 00 */	cmpwi r3, 0
/* 807A9D30  41 82 00 F4 */	beq lbl_807A9E24
/* 807A9D34  38 00 00 01 */	li r0, 1
/* 807A9D38  98 1D 06 E5 */	stb r0, 0x6e5(r29)
/* 807A9D3C  38 00 00 04 */	li r0, 4
/* 807A9D40  B0 1D 06 80 */	sth r0, 0x680(r29)
/* 807A9D44  38 00 00 00 */	li r0, 0
/* 807A9D48  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 807A9D4C  38 00 00 3C */	li r0, 0x3c
/* 807A9D50  B0 1D 06 EC */	sth r0, 0x6ec(r29)
/* 807A9D54  7F C3 F3 78 */	mr r3, r30
/* 807A9D58  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 807A9D5C  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 807A9D60  7D 89 03 A6 */	mtctr r12
/* 807A9D64  4E 80 04 21 */	bctrl 
/* 807A9D68  28 03 00 00 */	cmplwi r3, 0
/* 807A9D6C  40 82 00 0C */	bne lbl_807A9D78
/* 807A9D70  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 807A9D74  48 00 00 08 */	b lbl_807A9D7C
lbl_807A9D78:
/* 807A9D78  C0 3F 00 64 */	lfs f1, 0x64(r31)
lbl_807A9D7C:
/* 807A9D7C  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 807A9D80  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 807A9D84  40 80 00 A0 */	bge lbl_807A9E24
/* 807A9D88  38 00 00 0F */	li r0, 0xf
/* 807A9D8C  B0 1D 06 EA */	sth r0, 0x6ea(r29)
/* 807A9D90  48 00 00 94 */	b lbl_807A9E24
lbl_807A9D94:
/* 807A9D94  4B FF DF B5 */	bl setModeBack__8daE_SW_cFv
/* 807A9D98  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807A9D9C  40 82 00 A4 */	bne lbl_807A9E40
/* 807A9DA0  A8 1D 06 EA */	lha r0, 0x6ea(r29)
/* 807A9DA4  2C 00 00 00 */	cmpwi r0, 0
/* 807A9DA8  41 82 00 18 */	beq lbl_807A9DC0
/* 807A9DAC  38 7D 05 2C */	addi r3, r29, 0x52c
/* 807A9DB0  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 807A9DB4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807A9DB8  4B AC 69 88 */	b cLib_chaseF__FPfff
/* 807A9DBC  48 00 00 68 */	b lbl_807A9E24
lbl_807A9DC0:
/* 807A9DC0  7F A3 EB 78 */	mr r3, r29
/* 807A9DC4  38 80 00 00 */	li r4, 0
/* 807A9DC8  38 A0 00 00 */	li r5, 0
/* 807A9DCC  4B FF DD 99 */	bl setActionMode__8daE_SW_cFss
/* 807A9DD0  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 807A9DD4  D0 1D 06 D8 */	stfs f0, 0x6d8(r29)
/* 807A9DD8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807A9DDC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807A9DE0  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 807A9DE4  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 807A9DE8  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 807A9DEC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807A9DF0  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 807A9DF4  EC 01 00 2A */	fadds f0, f1, f0
/* 807A9DF8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807A9DFC  38 61 00 24 */	addi r3, r1, 0x24
/* 807A9E00  4B 87 3E BC */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 807A9E04  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807A9E08  40 82 00 10 */	bne lbl_807A9E18
/* 807A9E0C  7F A3 EB 78 */	mr r3, r29
/* 807A9E10  4B 86 FE 6C */	b fopAcM_delete__FP10fopAc_ac_c
/* 807A9E14  48 00 00 2C */	b lbl_807A9E40
lbl_807A9E18:
/* 807A9E18  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 807A9E1C  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 807A9E20  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
lbl_807A9E24:
/* 807A9E24  38 7D 04 DE */	addi r3, r29, 0x4de
/* 807A9E28  A8 9D 06 9E */	lha r4, 0x69e(r29)
/* 807A9E2C  38 A0 00 04 */	li r5, 4
/* 807A9E30  38 C0 08 00 */	li r6, 0x800
/* 807A9E34  4B AC 67 D4 */	b cLib_addCalcAngleS2__FPssss
/* 807A9E38  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 807A9E3C  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
lbl_807A9E40:
/* 807A9E40  39 61 00 50 */	addi r11, r1, 0x50
/* 807A9E44  4B BB 83 E4 */	b _restgpr_29
/* 807A9E48  80 01 00 54 */	lwz r0, 0x54(r1)
/* 807A9E4C  7C 08 03 A6 */	mtlr r0
/* 807A9E50  38 21 00 50 */	addi r1, r1, 0x50
/* 807A9E54  4E 80 00 20 */	blr 
