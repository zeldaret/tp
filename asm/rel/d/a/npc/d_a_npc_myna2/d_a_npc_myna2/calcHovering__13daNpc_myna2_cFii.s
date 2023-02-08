lbl_80A86E8C:
/* 80A86E8C  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 80A86E90  7C 08 02 A6 */	mflr r0
/* 80A86E94  90 01 01 14 */	stw r0, 0x114(r1)
/* 80A86E98  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 80A86E9C  F3 E1 01 08 */	psq_st f31, 264(r1), 0, 0 /* qr0 */
/* 80A86EA0  DB C1 00 F0 */	stfd f30, 0xf0(r1)
/* 80A86EA4  F3 C1 00 F8 */	psq_st f30, 248(r1), 0, 0 /* qr0 */
/* 80A86EA8  DB A1 00 E0 */	stfd f29, 0xe0(r1)
/* 80A86EAC  F3 A1 00 E8 */	psq_st f29, 232(r1), 0, 0 /* qr0 */
/* 80A86EB0  39 61 00 E0 */	addi r11, r1, 0xe0
/* 80A86EB4  4B 8D B3 29 */	bl _savegpr_29
/* 80A86EB8  7C 7E 1B 78 */	mr r30, r3
/* 80A86EBC  3C 60 80 A9 */	lis r3, m__19daNpc_myna2_Param_c@ha /* 0x80A88434@ha */
/* 80A86EC0  3B E3 84 34 */	addi r31, r3, m__19daNpc_myna2_Param_c@l /* 0x80A88434@l */
/* 80A86EC4  2C 04 00 00 */	cmpwi r4, 0
/* 80A86EC8  41 82 00 3C */	beq lbl_80A86F04
/* 80A86ECC  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80A86ED0  D0 3E 0E 1C */	stfs f1, 0xe1c(r30)
/* 80A86ED4  C0 1F 01 B8 */	lfs f0, 0x1b8(r31)
/* 80A86ED8  D0 1E 0E 20 */	stfs f0, 0xe20(r30)
/* 80A86EDC  D0 3E 0E 24 */	stfs f1, 0xe24(r30)
/* 80A86EE0  38 7E 0E 10 */	addi r3, r30, 0xe10
/* 80A86EE4  38 9E 0E 1C */	addi r4, r30, 0xe1c
/* 80A86EE8  C0 3F 01 BC */	lfs f1, 0x1bc(r31)
/* 80A86EEC  FC 40 08 90 */	fmr f2, f1
/* 80A86EF0  4B 7E 92 89 */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80A86EF4  C0 1F 01 C0 */	lfs f0, 0x1c0(r31)
/* 80A86EF8  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80A86EFC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80A86F00  48 00 07 60 */	b lbl_80A87660
lbl_80A86F04:
/* 80A86F04  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80A86F08  C0 3F 01 B0 */	lfs f1, 0x1b0(r31)
/* 80A86F0C  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80A86F10  EC 01 00 2A */	fadds f0, f1, f0
/* 80A86F14  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A86F18  40 81 00 1C */	ble lbl_80A86F34
/* 80A86F1C  C0 1F 01 C4 */	lfs f0, 0x1c4(r31)
/* 80A86F20  D0 1E 0E 14 */	stfs f0, 0xe14(r30)
/* 80A86F24  C0 1F 01 C8 */	lfs f0, 0x1c8(r31)
/* 80A86F28  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80A86F2C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80A86F30  48 00 07 30 */	b lbl_80A87660
lbl_80A86F34:
/* 80A86F34  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 80A86F38  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 80A86F3C  C0 3E 04 AC */	lfs f1, 0x4ac(r30)
/* 80A86F40  D0 21 00 B4 */	stfs f1, 0xb4(r1)
/* 80A86F44  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 80A86F48  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80A86F4C  C0 1F 01 CC */	lfs f0, 0x1cc(r31)
/* 80A86F50  EC 01 00 2A */	fadds f0, f1, f0
/* 80A86F54  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80A86F58  2C 05 00 01 */	cmpwi r5, 1
/* 80A86F5C  40 82 02 70 */	bne lbl_80A871CC
/* 80A86F60  38 61 00 98 */	addi r3, r1, 0x98
/* 80A86F64  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80A86F68  38 A1 00 B0 */	addi r5, r1, 0xb0
/* 80A86F6C  4B 7D FB C9 */	bl __mi__4cXyzCFRC3Vec
/* 80A86F70  C0 61 00 98 */	lfs f3, 0x98(r1)
/* 80A86F74  D0 61 00 A4 */	stfs f3, 0xa4(r1)
/* 80A86F78  C0 41 00 9C */	lfs f2, 0x9c(r1)
/* 80A86F7C  D0 41 00 A8 */	stfs f2, 0xa8(r1)
/* 80A86F80  C0 21 00 A0 */	lfs f1, 0xa0(r1)
/* 80A86F84  D0 21 00 AC */	stfs f1, 0xac(r1)
/* 80A86F88  FC 00 12 10 */	fabs f0, f2
/* 80A86F8C  FC 80 00 18 */	frsp f4, f0
/* 80A86F90  C0 1E 0E 30 */	lfs f0, 0xe30(r30)
/* 80A86F94  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80A86F98  40 81 00 4C */	ble lbl_80A86FE4
/* 80A86F9C  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80A86FA0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A86FA4  40 81 00 1C */	ble lbl_80A86FC0
/* 80A86FA8  C0 3F 01 C8 */	lfs f1, 0x1c8(r31)
/* 80A86FAC  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 80A86FB0  48 00 12 8D */	bl func_80A8823C
/* 80A86FB4  FC 00 08 50 */	fneg f0, f1
/* 80A86FB8  D0 1E 0E 20 */	stfs f0, 0xe20(r30)
/* 80A86FBC  48 00 00 14 */	b lbl_80A86FD0
lbl_80A86FC0:
/* 80A86FC0  C0 3F 01 C8 */	lfs f1, 0x1c8(r31)
/* 80A86FC4  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 80A86FC8  48 00 12 75 */	bl func_80A8823C
/* 80A86FCC  D0 3E 0E 20 */	stfs f1, 0xe20(r30)
lbl_80A86FD0:
/* 80A86FD0  38 60 00 14 */	li r3, 0x14
/* 80A86FD4  38 80 00 14 */	li r4, 0x14
/* 80A86FD8  48 00 12 A1 */	bl func_80A88278
/* 80A86FDC  90 7E 0E 28 */	stw r3, 0xe28(r30)
/* 80A86FE0  48 00 05 24 */	b lbl_80A87504
lbl_80A86FE4:
/* 80A86FE4  D0 61 00 38 */	stfs f3, 0x38(r1)
/* 80A86FE8  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80A86FEC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80A86FF0  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80A86FF4  38 61 00 38 */	addi r3, r1, 0x38
/* 80A86FF8  4B 8C 01 41 */	bl PSVECSquareMag
/* 80A86FFC  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80A87000  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A87004  40 81 00 58 */	ble lbl_80A8705C
/* 80A87008  FC 00 08 34 */	frsqrte f0, f1
/* 80A8700C  C8 9F 01 90 */	lfd f4, 0x190(r31)
/* 80A87010  FC 44 00 32 */	fmul f2, f4, f0
/* 80A87014  C8 7F 01 98 */	lfd f3, 0x198(r31)
/* 80A87018  FC 00 00 32 */	fmul f0, f0, f0
/* 80A8701C  FC 01 00 32 */	fmul f0, f1, f0
/* 80A87020  FC 03 00 28 */	fsub f0, f3, f0
/* 80A87024  FC 02 00 32 */	fmul f0, f2, f0
/* 80A87028  FC 44 00 32 */	fmul f2, f4, f0
/* 80A8702C  FC 00 00 32 */	fmul f0, f0, f0
/* 80A87030  FC 01 00 32 */	fmul f0, f1, f0
/* 80A87034  FC 03 00 28 */	fsub f0, f3, f0
/* 80A87038  FC 02 00 32 */	fmul f0, f2, f0
/* 80A8703C  FC 44 00 32 */	fmul f2, f4, f0
/* 80A87040  FC 00 00 32 */	fmul f0, f0, f0
/* 80A87044  FC 01 00 32 */	fmul f0, f1, f0
/* 80A87048  FC 03 00 28 */	fsub f0, f3, f0
/* 80A8704C  FC 02 00 32 */	fmul f0, f2, f0
/* 80A87050  FC 21 00 32 */	fmul f1, f1, f0
/* 80A87054  FC 20 08 18 */	frsp f1, f1
/* 80A87058  48 00 00 88 */	b lbl_80A870E0
lbl_80A8705C:
/* 80A8705C  C8 1F 01 A0 */	lfd f0, 0x1a0(r31)
/* 80A87060  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A87064  40 80 00 10 */	bge lbl_80A87074
/* 80A87068  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A8706C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80A87070  48 00 00 70 */	b lbl_80A870E0
lbl_80A87074:
/* 80A87074  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80A87078  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 80A8707C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A87080  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A87084  7C 03 00 00 */	cmpw r3, r0
/* 80A87088  41 82 00 14 */	beq lbl_80A8709C
/* 80A8708C  40 80 00 40 */	bge lbl_80A870CC
/* 80A87090  2C 03 00 00 */	cmpwi r3, 0
/* 80A87094  41 82 00 20 */	beq lbl_80A870B4
/* 80A87098  48 00 00 34 */	b lbl_80A870CC
lbl_80A8709C:
/* 80A8709C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A870A0  41 82 00 0C */	beq lbl_80A870AC
/* 80A870A4  38 00 00 01 */	li r0, 1
/* 80A870A8  48 00 00 28 */	b lbl_80A870D0
lbl_80A870AC:
/* 80A870AC  38 00 00 02 */	li r0, 2
/* 80A870B0  48 00 00 20 */	b lbl_80A870D0
lbl_80A870B4:
/* 80A870B4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A870B8  41 82 00 0C */	beq lbl_80A870C4
/* 80A870BC  38 00 00 05 */	li r0, 5
/* 80A870C0  48 00 00 10 */	b lbl_80A870D0
lbl_80A870C4:
/* 80A870C4  38 00 00 03 */	li r0, 3
/* 80A870C8  48 00 00 08 */	b lbl_80A870D0
lbl_80A870CC:
/* 80A870CC  38 00 00 04 */	li r0, 4
lbl_80A870D0:
/* 80A870D0  2C 00 00 01 */	cmpwi r0, 1
/* 80A870D4  40 82 00 0C */	bne lbl_80A870E0
/* 80A870D8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A870DC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80A870E0:
/* 80A870E0  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 80A870E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A870E8  40 81 00 5C */	ble lbl_80A87144
/* 80A870EC  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80A870F0  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80A870F4  38 61 00 8C */	addi r3, r1, 0x8c
/* 80A870F8  38 81 00 A4 */	addi r4, r1, 0xa4
/* 80A870FC  4B 7D FE 4D */	bl normalizeZP__4cXyzFv
/* 80A87100  C0 3F 01 D0 */	lfs f1, 0x1d0(r31)
/* 80A87104  FC 40 08 90 */	fmr f2, f1
/* 80A87108  48 00 11 35 */	bl func_80A8823C
/* 80A8710C  38 61 00 A4 */	addi r3, r1, 0xa4
/* 80A87110  7C 64 1B 78 */	mr r4, r3
/* 80A87114  4B 8B FF C5 */	bl PSVECScale
/* 80A87118  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 80A8711C  FC 00 00 50 */	fneg f0, f0
/* 80A87120  D0 1E 0E 1C */	stfs f0, 0xe1c(r30)
/* 80A87124  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 80A87128  FC 00 00 50 */	fneg f0, f0
/* 80A8712C  D0 1E 0E 24 */	stfs f0, 0xe24(r30)
/* 80A87130  38 60 00 14 */	li r3, 0x14
/* 80A87134  38 80 00 14 */	li r4, 0x14
/* 80A87138  48 00 11 41 */	bl func_80A88278
/* 80A8713C  90 7E 0E 28 */	stw r3, 0xe28(r30)
/* 80A87140  48 00 03 C4 */	b lbl_80A87504
lbl_80A87144:
/* 80A87144  38 7E 0E 28 */	addi r3, r30, 0xe28
/* 80A87148  48 00 10 D9 */	bl func_80A88220
/* 80A8714C  2C 03 00 00 */	cmpwi r3, 0
/* 80A87150  40 82 03 B4 */	bne lbl_80A87504
/* 80A87154  C0 3F 01 D4 */	lfs f1, 0x1d4(r31)
/* 80A87158  C0 5F 01 D8 */	lfs f2, 0x1d8(r31)
/* 80A8715C  48 00 10 E1 */	bl func_80A8823C
/* 80A87160  D0 3E 0E 1C */	stfs f1, 0xe1c(r30)
/* 80A87164  C0 3F 01 C8 */	lfs f1, 0x1c8(r31)
/* 80A87168  FC 40 08 90 */	fmr f2, f1
/* 80A8716C  48 00 10 D1 */	bl func_80A8823C
/* 80A87170  D0 3E 0E 20 */	stfs f1, 0xe20(r30)
/* 80A87174  C0 3F 01 D4 */	lfs f1, 0x1d4(r31)
/* 80A87178  C0 5F 01 D8 */	lfs f2, 0x1d8(r31)
/* 80A8717C  48 00 10 C1 */	bl func_80A8823C
/* 80A87180  D0 3E 0E 24 */	stfs f1, 0xe24(r30)
/* 80A87184  38 61 00 80 */	addi r3, r1, 0x80
/* 80A87188  38 9E 0E 1C */	addi r4, r30, 0xe1c
/* 80A8718C  4B 7D FD BD */	bl normalizeZP__4cXyzFv
/* 80A87190  C0 3F 01 DC */	lfs f1, 0x1dc(r31)
/* 80A87194  C0 5F 01 E0 */	lfs f2, 0x1e0(r31)
/* 80A87198  48 00 10 A5 */	bl func_80A8823C
/* 80A8719C  38 7E 0E 1C */	addi r3, r30, 0xe1c
/* 80A871A0  7C 64 1B 78 */	mr r4, r3
/* 80A871A4  4B 8B FF 35 */	bl PSVECScale
/* 80A871A8  38 60 00 14 */	li r3, 0x14
/* 80A871AC  38 80 00 14 */	li r4, 0x14
/* 80A871B0  48 00 10 C9 */	bl func_80A88278
/* 80A871B4  90 7E 0E 28 */	stw r3, 0xe28(r30)
/* 80A871B8  C0 3F 01 E4 */	lfs f1, 0x1e4(r31)
/* 80A871BC  C0 5F 01 E8 */	lfs f2, 0x1e8(r31)
/* 80A871C0  48 00 10 7D */	bl func_80A8823C
/* 80A871C4  D0 3E 0E 30 */	stfs f1, 0xe30(r30)
/* 80A871C8  48 00 03 3C */	b lbl_80A87504
lbl_80A871CC:
/* 80A871CC  38 61 00 74 */	addi r3, r1, 0x74
/* 80A871D0  38 81 00 B0 */	addi r4, r1, 0xb0
/* 80A871D4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80A871D8  4B 7D F9 5D */	bl __mi__4cXyzCFRC3Vec
/* 80A871DC  38 61 00 74 */	addi r3, r1, 0x74
/* 80A871E0  4B 8B FF 59 */	bl PSVECSquareMag
/* 80A871E4  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80A871E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A871EC  40 81 00 58 */	ble lbl_80A87244
/* 80A871F0  FC 00 08 34 */	frsqrte f0, f1
/* 80A871F4  C8 9F 01 90 */	lfd f4, 0x190(r31)
/* 80A871F8  FC 44 00 32 */	fmul f2, f4, f0
/* 80A871FC  C8 7F 01 98 */	lfd f3, 0x198(r31)
/* 80A87200  FC 00 00 32 */	fmul f0, f0, f0
/* 80A87204  FC 01 00 32 */	fmul f0, f1, f0
/* 80A87208  FC 03 00 28 */	fsub f0, f3, f0
/* 80A8720C  FC 02 00 32 */	fmul f0, f2, f0
/* 80A87210  FC 44 00 32 */	fmul f2, f4, f0
/* 80A87214  FC 00 00 32 */	fmul f0, f0, f0
/* 80A87218  FC 01 00 32 */	fmul f0, f1, f0
/* 80A8721C  FC 03 00 28 */	fsub f0, f3, f0
/* 80A87220  FC 02 00 32 */	fmul f0, f2, f0
/* 80A87224  FC 44 00 32 */	fmul f2, f4, f0
/* 80A87228  FC 00 00 32 */	fmul f0, f0, f0
/* 80A8722C  FC 01 00 32 */	fmul f0, f1, f0
/* 80A87230  FC 03 00 28 */	fsub f0, f3, f0
/* 80A87234  FC 02 00 32 */	fmul f0, f2, f0
/* 80A87238  FC 21 00 32 */	fmul f1, f1, f0
/* 80A8723C  FC 20 08 18 */	frsp f1, f1
/* 80A87240  48 00 00 88 */	b lbl_80A872C8
lbl_80A87244:
/* 80A87244  C8 1F 01 A0 */	lfd f0, 0x1a0(r31)
/* 80A87248  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8724C  40 80 00 10 */	bge lbl_80A8725C
/* 80A87250  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A87254  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80A87258  48 00 00 70 */	b lbl_80A872C8
lbl_80A8725C:
/* 80A8725C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80A87260  80 81 00 18 */	lwz r4, 0x18(r1)
/* 80A87264  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A87268  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A8726C  7C 03 00 00 */	cmpw r3, r0
/* 80A87270  41 82 00 14 */	beq lbl_80A87284
/* 80A87274  40 80 00 40 */	bge lbl_80A872B4
/* 80A87278  2C 03 00 00 */	cmpwi r3, 0
/* 80A8727C  41 82 00 20 */	beq lbl_80A8729C
/* 80A87280  48 00 00 34 */	b lbl_80A872B4
lbl_80A87284:
/* 80A87284  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A87288  41 82 00 0C */	beq lbl_80A87294
/* 80A8728C  38 00 00 01 */	li r0, 1
/* 80A87290  48 00 00 28 */	b lbl_80A872B8
lbl_80A87294:
/* 80A87294  38 00 00 02 */	li r0, 2
/* 80A87298  48 00 00 20 */	b lbl_80A872B8
lbl_80A8729C:
/* 80A8729C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A872A0  41 82 00 0C */	beq lbl_80A872AC
/* 80A872A4  38 00 00 05 */	li r0, 5
/* 80A872A8  48 00 00 10 */	b lbl_80A872B8
lbl_80A872AC:
/* 80A872AC  38 00 00 03 */	li r0, 3
/* 80A872B0  48 00 00 08 */	b lbl_80A872B8
lbl_80A872B4:
/* 80A872B4  38 00 00 04 */	li r0, 4
lbl_80A872B8:
/* 80A872B8  2C 00 00 01 */	cmpwi r0, 1
/* 80A872BC  40 82 00 0C */	bne lbl_80A872C8
/* 80A872C0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A872C4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80A872C8:
/* 80A872C8  C0 1F 01 EC */	lfs f0, 0x1ec(r31)
/* 80A872CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A872D0  40 81 00 64 */	ble lbl_80A87334
/* 80A872D4  38 61 00 68 */	addi r3, r1, 0x68
/* 80A872D8  38 81 00 B0 */	addi r4, r1, 0xb0
/* 80A872DC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80A872E0  4B 7D F8 55 */	bl __mi__4cXyzCFRC3Vec
/* 80A872E4  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80A872E8  D0 1E 0E 1C */	stfs f0, 0xe1c(r30)
/* 80A872EC  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80A872F0  D0 1E 0E 20 */	stfs f0, 0xe20(r30)
/* 80A872F4  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80A872F8  D0 1E 0E 24 */	stfs f0, 0xe24(r30)
/* 80A872FC  38 61 00 5C */	addi r3, r1, 0x5c
/* 80A87300  38 9E 0E 1C */	addi r4, r30, 0xe1c
/* 80A87304  4B 7D FC 45 */	bl normalizeZP__4cXyzFv
/* 80A87308  38 7E 0E 1C */	addi r3, r30, 0xe1c
/* 80A8730C  7C 64 1B 78 */	mr r4, r3
/* 80A87310  C0 3F 01 E0 */	lfs f1, 0x1e0(r31)
/* 80A87314  4B 8B FD C5 */	bl PSVECScale
/* 80A87318  38 60 00 14 */	li r3, 0x14
/* 80A8731C  38 80 00 14 */	li r4, 0x14
/* 80A87320  48 00 0F 59 */	bl func_80A88278
/* 80A87324  90 7E 0E 28 */	stw r3, 0xe28(r30)
/* 80A87328  38 00 00 00 */	li r0, 0
/* 80A8732C  90 1E 0E 2C */	stw r0, 0xe2c(r30)
/* 80A87330  48 00 00 78 */	b lbl_80A873A8
lbl_80A87334:
/* 80A87334  38 7E 0E 28 */	addi r3, r30, 0xe28
/* 80A87338  48 00 0E E9 */	bl func_80A88220
/* 80A8733C  2C 03 00 00 */	cmpwi r3, 0
/* 80A87340  40 82 00 68 */	bne lbl_80A873A8
/* 80A87344  C0 3F 01 F0 */	lfs f1, 0x1f0(r31)
/* 80A87348  C0 5F 01 F4 */	lfs f2, 0x1f4(r31)
/* 80A8734C  48 00 0E F1 */	bl func_80A8823C
/* 80A87350  D0 3E 0E 1C */	stfs f1, 0xe1c(r30)
/* 80A87354  C0 3F 01 8C */	lfs f1, 0x18c(r31)
/* 80A87358  C0 5F 01 F8 */	lfs f2, 0x1f8(r31)
/* 80A8735C  48 00 0E E1 */	bl func_80A8823C
/* 80A87360  D0 3E 0E 20 */	stfs f1, 0xe20(r30)
/* 80A87364  C0 3F 01 F0 */	lfs f1, 0x1f0(r31)
/* 80A87368  C0 5F 01 F4 */	lfs f2, 0x1f4(r31)
/* 80A8736C  48 00 0E D1 */	bl func_80A8823C
/* 80A87370  D0 3E 0E 24 */	stfs f1, 0xe24(r30)
/* 80A87374  38 61 00 50 */	addi r3, r1, 0x50
/* 80A87378  38 9E 0E 1C */	addi r4, r30, 0xe1c
/* 80A8737C  4B 7D FB CD */	bl normalizeZP__4cXyzFv
/* 80A87380  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80A87384  C0 5F 01 E0 */	lfs f2, 0x1e0(r31)
/* 80A87388  48 00 0E B5 */	bl func_80A8823C
/* 80A8738C  38 7E 0E 1C */	addi r3, r30, 0xe1c
/* 80A87390  7C 64 1B 78 */	mr r4, r3
/* 80A87394  4B 8B FD 45 */	bl PSVECScale
/* 80A87398  38 60 00 1E */	li r3, 0x1e
/* 80A8739C  38 80 00 78 */	li r4, 0x78
/* 80A873A0  48 00 0E D9 */	bl func_80A88278
/* 80A873A4  90 7E 0E 28 */	stw r3, 0xe28(r30)
lbl_80A873A8:
/* 80A873A8  38 61 00 44 */	addi r3, r1, 0x44
/* 80A873AC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A873B0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A873B4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A873B8  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80A873BC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80A873C0  4B 7D F7 75 */	bl __mi__4cXyzCFRC3Vec
/* 80A873C4  38 61 00 44 */	addi r3, r1, 0x44
/* 80A873C8  4B 8B FD 71 */	bl PSVECSquareMag
/* 80A873CC  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80A873D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A873D4  40 81 00 58 */	ble lbl_80A8742C
/* 80A873D8  FC 00 08 34 */	frsqrte f0, f1
/* 80A873DC  C8 9F 01 90 */	lfd f4, 0x190(r31)
/* 80A873E0  FC 44 00 32 */	fmul f2, f4, f0
/* 80A873E4  C8 7F 01 98 */	lfd f3, 0x198(r31)
/* 80A873E8  FC 00 00 32 */	fmul f0, f0, f0
/* 80A873EC  FC 01 00 32 */	fmul f0, f1, f0
/* 80A873F0  FC 03 00 28 */	fsub f0, f3, f0
/* 80A873F4  FC 02 00 32 */	fmul f0, f2, f0
/* 80A873F8  FC 44 00 32 */	fmul f2, f4, f0
/* 80A873FC  FC 00 00 32 */	fmul f0, f0, f0
/* 80A87400  FC 01 00 32 */	fmul f0, f1, f0
/* 80A87404  FC 03 00 28 */	fsub f0, f3, f0
/* 80A87408  FC 02 00 32 */	fmul f0, f2, f0
/* 80A8740C  FC 44 00 32 */	fmul f2, f4, f0
/* 80A87410  FC 00 00 32 */	fmul f0, f0, f0
/* 80A87414  FC 01 00 32 */	fmul f0, f1, f0
/* 80A87418  FC 03 00 28 */	fsub f0, f3, f0
/* 80A8741C  FC 02 00 32 */	fmul f0, f2, f0
/* 80A87420  FC 21 00 32 */	fmul f1, f1, f0
/* 80A87424  FC 20 08 18 */	frsp f1, f1
/* 80A87428  48 00 00 88 */	b lbl_80A874B0
lbl_80A8742C:
/* 80A8742C  C8 1F 01 A0 */	lfd f0, 0x1a0(r31)
/* 80A87430  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A87434  40 80 00 10 */	bge lbl_80A87444
/* 80A87438  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A8743C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80A87440  48 00 00 70 */	b lbl_80A874B0
lbl_80A87444:
/* 80A87444  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80A87448  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80A8744C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A87450  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A87454  7C 03 00 00 */	cmpw r3, r0
/* 80A87458  41 82 00 14 */	beq lbl_80A8746C
/* 80A8745C  40 80 00 40 */	bge lbl_80A8749C
/* 80A87460  2C 03 00 00 */	cmpwi r3, 0
/* 80A87464  41 82 00 20 */	beq lbl_80A87484
/* 80A87468  48 00 00 34 */	b lbl_80A8749C
lbl_80A8746C:
/* 80A8746C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A87470  41 82 00 0C */	beq lbl_80A8747C
/* 80A87474  38 00 00 01 */	li r0, 1
/* 80A87478  48 00 00 28 */	b lbl_80A874A0
lbl_80A8747C:
/* 80A8747C  38 00 00 02 */	li r0, 2
/* 80A87480  48 00 00 20 */	b lbl_80A874A0
lbl_80A87484:
/* 80A87484  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A87488  41 82 00 0C */	beq lbl_80A87494
/* 80A8748C  38 00 00 05 */	li r0, 5
/* 80A87490  48 00 00 10 */	b lbl_80A874A0
lbl_80A87494:
/* 80A87494  38 00 00 03 */	li r0, 3
/* 80A87498  48 00 00 08 */	b lbl_80A874A0
lbl_80A8749C:
/* 80A8749C  38 00 00 04 */	li r0, 4
lbl_80A874A0:
/* 80A874A0  2C 00 00 01 */	cmpwi r0, 1
/* 80A874A4  40 82 00 0C */	bne lbl_80A874B0
/* 80A874A8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A874AC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80A874B0:
/* 80A874B0  C0 1F 01 A8 */	lfs f0, 0x1a8(r31)
/* 80A874B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A874B8  41 80 00 14 */	blt lbl_80A874CC
/* 80A874BC  38 7E 0C 84 */	addi r3, r30, 0xc84
/* 80A874C0  4B 5F D1 99 */	bl ChkCoHit__12dCcD_GObjInfFv
/* 80A874C4  28 03 00 00 */	cmplwi r3, 0
/* 80A874C8  41 82 00 3C */	beq lbl_80A87504
lbl_80A874CC:
/* 80A874CC  C0 3E 0E 20 */	lfs f1, 0xe20(r30)
/* 80A874D0  C8 1F 02 00 */	lfd f0, 0x200(r31)
/* 80A874D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A874D8  40 80 00 2C */	bge lbl_80A87504
/* 80A874DC  C0 3F 01 BC */	lfs f1, 0x1bc(r31)
/* 80A874E0  C0 5F 01 C0 */	lfs f2, 0x1c0(r31)
/* 80A874E4  48 00 0D 59 */	bl func_80A8823C
/* 80A874E8  D0 3E 0E 20 */	stfs f1, 0xe20(r30)
/* 80A874EC  38 60 00 14 */	li r3, 0x14
/* 80A874F0  38 80 00 14 */	li r4, 0x14
/* 80A874F4  48 00 0D 85 */	bl func_80A88278
/* 80A874F8  90 7E 0E 28 */	stw r3, 0xe28(r30)
/* 80A874FC  38 00 00 0A */	li r0, 0xa
/* 80A87500  90 1E 0E 2C */	stw r0, 0xe2c(r30)
lbl_80A87504:
/* 80A87504  38 7E 0E 2C */	addi r3, r30, 0xe2c
/* 80A87508  48 00 0D 19 */	bl func_80A88220
/* 80A8750C  38 7E 0E 10 */	addi r3, r30, 0xe10
/* 80A87510  4B 8B FC 29 */	bl PSVECSquareMag
/* 80A87514  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80A87518  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8751C  40 81 00 58 */	ble lbl_80A87574
/* 80A87520  FC 00 08 34 */	frsqrte f0, f1
/* 80A87524  C8 9F 01 90 */	lfd f4, 0x190(r31)
/* 80A87528  FC 44 00 32 */	fmul f2, f4, f0
/* 80A8752C  C8 7F 01 98 */	lfd f3, 0x198(r31)
/* 80A87530  FC 00 00 32 */	fmul f0, f0, f0
/* 80A87534  FC 01 00 32 */	fmul f0, f1, f0
/* 80A87538  FC 03 00 28 */	fsub f0, f3, f0
/* 80A8753C  FC 02 00 32 */	fmul f0, f2, f0
/* 80A87540  FC 44 00 32 */	fmul f2, f4, f0
/* 80A87544  FC 00 00 32 */	fmul f0, f0, f0
/* 80A87548  FC 01 00 32 */	fmul f0, f1, f0
/* 80A8754C  FC 03 00 28 */	fsub f0, f3, f0
/* 80A87550  FC 02 00 32 */	fmul f0, f2, f0
/* 80A87554  FC 44 00 32 */	fmul f2, f4, f0
/* 80A87558  FC 00 00 32 */	fmul f0, f0, f0
/* 80A8755C  FC 01 00 32 */	fmul f0, f1, f0
/* 80A87560  FC 03 00 28 */	fsub f0, f3, f0
/* 80A87564  FC 02 00 32 */	fmul f0, f2, f0
/* 80A87568  FC 21 00 32 */	fmul f1, f1, f0
/* 80A8756C  FC 20 08 18 */	frsp f1, f1
/* 80A87570  48 00 00 88 */	b lbl_80A875F8
lbl_80A87574:
/* 80A87574  C8 1F 01 A0 */	lfd f0, 0x1a0(r31)
/* 80A87578  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8757C  40 80 00 10 */	bge lbl_80A8758C
/* 80A87580  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A87584  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80A87588  48 00 00 70 */	b lbl_80A875F8
lbl_80A8758C:
/* 80A8758C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80A87590  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80A87594  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A87598  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A8759C  7C 03 00 00 */	cmpw r3, r0
/* 80A875A0  41 82 00 14 */	beq lbl_80A875B4
/* 80A875A4  40 80 00 40 */	bge lbl_80A875E4
/* 80A875A8  2C 03 00 00 */	cmpwi r3, 0
/* 80A875AC  41 82 00 20 */	beq lbl_80A875CC
/* 80A875B0  48 00 00 34 */	b lbl_80A875E4
lbl_80A875B4:
/* 80A875B4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A875B8  41 82 00 0C */	beq lbl_80A875C4
/* 80A875BC  38 00 00 01 */	li r0, 1
/* 80A875C0  48 00 00 28 */	b lbl_80A875E8
lbl_80A875C4:
/* 80A875C4  38 00 00 02 */	li r0, 2
/* 80A875C8  48 00 00 20 */	b lbl_80A875E8
lbl_80A875CC:
/* 80A875CC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A875D0  41 82 00 0C */	beq lbl_80A875DC
/* 80A875D4  38 00 00 05 */	li r0, 5
/* 80A875D8  48 00 00 10 */	b lbl_80A875E8
lbl_80A875DC:
/* 80A875DC  38 00 00 03 */	li r0, 3
/* 80A875E0  48 00 00 08 */	b lbl_80A875E8
lbl_80A875E4:
/* 80A875E4  38 00 00 04 */	li r0, 4
lbl_80A875E8:
/* 80A875E8  2C 00 00 01 */	cmpwi r0, 1
/* 80A875EC  40 82 00 0C */	bne lbl_80A875F8
/* 80A875F0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A875F4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80A875F8:
/* 80A875F8  C0 1F 01 E0 */	lfs f0, 0x1e0(r31)
/* 80A875FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A87600  41 81 00 10 */	bgt lbl_80A87610
/* 80A87604  80 1E 0E 2C */	lwz r0, 0xe2c(r30)
/* 80A87608  2C 00 00 00 */	cmpwi r0, 0
/* 80A8760C  41 82 00 1C */	beq lbl_80A87628
lbl_80A87610:
/* 80A87610  38 7E 0E 10 */	addi r3, r30, 0xe10
/* 80A87614  38 9E 0E 1C */	addi r4, r30, 0xe1c
/* 80A87618  C0 3F 01 C8 */	lfs f1, 0x1c8(r31)
/* 80A8761C  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 80A87620  4B 7E 8B 59 */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80A87624  48 00 00 18 */	b lbl_80A8763C
lbl_80A87628:
/* 80A87628  38 7E 0E 10 */	addi r3, r30, 0xe10
/* 80A8762C  38 9E 0E 1C */	addi r4, r30, 0xe1c
/* 80A87630  C0 3F 01 BC */	lfs f1, 0x1bc(r31)
/* 80A87634  FC 40 08 90 */	fmr f2, f1
/* 80A87638  4B 7E 8B 41 */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
lbl_80A8763C:
/* 80A8763C  C0 5F 01 C8 */	lfs f2, 0x1c8(r31)
/* 80A87640  C0 3F 01 E0 */	lfs f1, 0x1e0(r31)
/* 80A87644  C0 1E 0E 20 */	lfs f0, 0xe20(r30)
/* 80A87648  EC 21 00 2A */	fadds f1, f1, f0
/* 80A8764C  C0 1F 02 08 */	lfs f0, 0x208(r31)
/* 80A87650  EC 01 00 24 */	fdivs f0, f1, f0
/* 80A87654  EC 02 00 2A */	fadds f0, f2, f0
/* 80A87658  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80A8765C  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_80A87660:
/* 80A87660  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80A87664  38 9E 0E 10 */	addi r4, r30, 0xe10
/* 80A87668  7C 65 1B 78 */	mr r5, r3
/* 80A8766C  4B 8B FA 25 */	bl PSVECAdd
/* 80A87670  7F C3 F3 78 */	mr r3, r30
/* 80A87674  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A87678  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A8767C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A87680  4B 59 30 91 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A87684  7C 64 1B 78 */	mr r4, r3
/* 80A87688  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80A8768C  38 A0 00 10 */	li r5, 0x10
/* 80A87690  38 C0 02 00 */	li r6, 0x200
/* 80A87694  4B 7E 8F 75 */	bl cLib_addCalcAngleS2__FPssss
/* 80A87698  C0 3E 0E 10 */	lfs f1, 0xe10(r30)
/* 80A8769C  C0 5E 0E 18 */	lfs f2, 0xe18(r30)
/* 80A876A0  4B 7D FF D5 */	bl cM_atan2s__Fff
/* 80A876A4  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80A876A8  7C 00 1A 14 */	add r0, r0, r3
/* 80A876AC  7C 1D 07 34 */	extsh r29, r0
/* 80A876B0  C0 3E 0E 18 */	lfs f1, 0xe18(r30)
/* 80A876B4  C0 1E 0E 10 */	lfs f0, 0xe10(r30)
/* 80A876B8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A876BC  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80A876C0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A876C4  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80A876C8  38 61 00 2C */	addi r3, r1, 0x2c
/* 80A876CC  4B 8B FA 6D */	bl PSVECSquareMag
/* 80A876D0  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80A876D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A876D8  40 81 00 58 */	ble lbl_80A87730
/* 80A876DC  FC 00 08 34 */	frsqrte f0, f1
/* 80A876E0  C8 9F 01 90 */	lfd f4, 0x190(r31)
/* 80A876E4  FC 44 00 32 */	fmul f2, f4, f0
/* 80A876E8  C8 7F 01 98 */	lfd f3, 0x198(r31)
/* 80A876EC  FC 00 00 32 */	fmul f0, f0, f0
/* 80A876F0  FC 01 00 32 */	fmul f0, f1, f0
/* 80A876F4  FC 03 00 28 */	fsub f0, f3, f0
/* 80A876F8  FC 02 00 32 */	fmul f0, f2, f0
/* 80A876FC  FC 44 00 32 */	fmul f2, f4, f0
/* 80A87700  FC 00 00 32 */	fmul f0, f0, f0
/* 80A87704  FC 01 00 32 */	fmul f0, f1, f0
/* 80A87708  FC 03 00 28 */	fsub f0, f3, f0
/* 80A8770C  FC 02 00 32 */	fmul f0, f2, f0
/* 80A87710  FC 44 00 32 */	fmul f2, f4, f0
/* 80A87714  FC 00 00 32 */	fmul f0, f0, f0
/* 80A87718  FC 01 00 32 */	fmul f0, f1, f0
/* 80A8771C  FC 03 00 28 */	fsub f0, f3, f0
/* 80A87720  FC 02 00 32 */	fmul f0, f2, f0
/* 80A87724  FC 21 00 32 */	fmul f1, f1, f0
/* 80A87728  FC 20 08 18 */	frsp f1, f1
/* 80A8772C  48 00 00 88 */	b lbl_80A877B4
lbl_80A87730:
/* 80A87730  C8 1F 01 A0 */	lfd f0, 0x1a0(r31)
/* 80A87734  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A87738  40 80 00 10 */	bge lbl_80A87748
/* 80A8773C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A87740  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80A87744  48 00 00 70 */	b lbl_80A877B4
lbl_80A87748:
/* 80A87748  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80A8774C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80A87750  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A87754  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A87758  7C 03 00 00 */	cmpw r3, r0
/* 80A8775C  41 82 00 14 */	beq lbl_80A87770
/* 80A87760  40 80 00 40 */	bge lbl_80A877A0
/* 80A87764  2C 03 00 00 */	cmpwi r3, 0
/* 80A87768  41 82 00 20 */	beq lbl_80A87788
/* 80A8776C  48 00 00 34 */	b lbl_80A877A0
lbl_80A87770:
/* 80A87770  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A87774  41 82 00 0C */	beq lbl_80A87780
/* 80A87778  38 00 00 01 */	li r0, 1
/* 80A8777C  48 00 00 28 */	b lbl_80A877A4
lbl_80A87780:
/* 80A87780  38 00 00 02 */	li r0, 2
/* 80A87784  48 00 00 20 */	b lbl_80A877A4
lbl_80A87788:
/* 80A87788  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A8778C  41 82 00 0C */	beq lbl_80A87798
/* 80A87790  38 00 00 05 */	li r0, 5
/* 80A87794  48 00 00 10 */	b lbl_80A877A4
lbl_80A87798:
/* 80A87798  38 00 00 03 */	li r0, 3
/* 80A8779C  48 00 00 08 */	b lbl_80A877A4
lbl_80A877A0:
/* 80A877A0  38 00 00 04 */	li r0, 4
lbl_80A877A4:
/* 80A877A4  2C 00 00 01 */	cmpwi r0, 1
/* 80A877A8  40 82 00 0C */	bne lbl_80A877B4
/* 80A877AC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A877B0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80A877B4:
/* 80A877B4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80A877B8  38 03 9A 20 */	addi r0, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80A877BC  57 BD 04 38 */	rlwinm r29, r29, 0, 0x10, 0x1c
/* 80A877C0  7C 60 EA 14 */	add r3, r0, r29
/* 80A877C4  C0 03 00 04 */	lfs f0, 4(r3)
/* 80A877C8  EF E1 00 32 */	fmuls f31, f1, f0
/* 80A877CC  C0 3E 0E 18 */	lfs f1, 0xe18(r30)
/* 80A877D0  C0 1E 0E 10 */	lfs f0, 0xe10(r30)
/* 80A877D4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A877D8  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80A877DC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A877E0  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80A877E4  38 61 00 20 */	addi r3, r1, 0x20
/* 80A877E8  4B 8B F9 51 */	bl PSVECSquareMag
/* 80A877EC  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80A877F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A877F4  40 81 00 58 */	ble lbl_80A8784C
/* 80A877F8  FC 00 08 34 */	frsqrte f0, f1
/* 80A877FC  C8 9F 01 90 */	lfd f4, 0x190(r31)
/* 80A87800  FC 44 00 32 */	fmul f2, f4, f0
/* 80A87804  C8 7F 01 98 */	lfd f3, 0x198(r31)
/* 80A87808  FC 00 00 32 */	fmul f0, f0, f0
/* 80A8780C  FC 01 00 32 */	fmul f0, f1, f0
/* 80A87810  FC 03 00 28 */	fsub f0, f3, f0
/* 80A87814  FC 02 00 32 */	fmul f0, f2, f0
/* 80A87818  FC 44 00 32 */	fmul f2, f4, f0
/* 80A8781C  FC 00 00 32 */	fmul f0, f0, f0
/* 80A87820  FC 01 00 32 */	fmul f0, f1, f0
/* 80A87824  FC 03 00 28 */	fsub f0, f3, f0
/* 80A87828  FC 02 00 32 */	fmul f0, f2, f0
/* 80A8782C  FC 44 00 32 */	fmul f2, f4, f0
/* 80A87830  FC 00 00 32 */	fmul f0, f0, f0
/* 80A87834  FC 01 00 32 */	fmul f0, f1, f0
/* 80A87838  FC 03 00 28 */	fsub f0, f3, f0
/* 80A8783C  FC 02 00 32 */	fmul f0, f2, f0
/* 80A87840  FF C1 00 32 */	fmul f30, f1, f0
/* 80A87844  FF C0 F0 18 */	frsp f30, f30
/* 80A87848  48 00 00 90 */	b lbl_80A878D8
lbl_80A8784C:
/* 80A8784C  C8 1F 01 A0 */	lfd f0, 0x1a0(r31)
/* 80A87850  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A87854  40 80 00 10 */	bge lbl_80A87864
/* 80A87858  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A8785C  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80A87860  48 00 00 78 */	b lbl_80A878D8
lbl_80A87864:
/* 80A87864  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A87868  80 81 00 08 */	lwz r4, 8(r1)
/* 80A8786C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A87870  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A87874  7C 03 00 00 */	cmpw r3, r0
/* 80A87878  41 82 00 14 */	beq lbl_80A8788C
/* 80A8787C  40 80 00 40 */	bge lbl_80A878BC
/* 80A87880  2C 03 00 00 */	cmpwi r3, 0
/* 80A87884  41 82 00 20 */	beq lbl_80A878A4
/* 80A87888  48 00 00 34 */	b lbl_80A878BC
lbl_80A8788C:
/* 80A8788C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A87890  41 82 00 0C */	beq lbl_80A8789C
/* 80A87894  38 00 00 01 */	li r0, 1
/* 80A87898  48 00 00 28 */	b lbl_80A878C0
lbl_80A8789C:
/* 80A8789C  38 00 00 02 */	li r0, 2
/* 80A878A0  48 00 00 20 */	b lbl_80A878C0
lbl_80A878A4:
/* 80A878A4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A878A8  41 82 00 0C */	beq lbl_80A878B4
/* 80A878AC  38 00 00 05 */	li r0, 5
/* 80A878B0  48 00 00 10 */	b lbl_80A878C0
lbl_80A878B4:
/* 80A878B4  38 00 00 03 */	li r0, 3
/* 80A878B8  48 00 00 08 */	b lbl_80A878C0
lbl_80A878BC:
/* 80A878BC  38 00 00 04 */	li r0, 4
lbl_80A878C0:
/* 80A878C0  2C 00 00 01 */	cmpwi r0, 1
/* 80A878C4  40 82 00 10 */	bne lbl_80A878D4
/* 80A878C8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A878CC  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80A878D0  48 00 00 08 */	b lbl_80A878D8
lbl_80A878D4:
/* 80A878D4  FF C0 08 90 */	fmr f30, f1
lbl_80A878D8:
/* 80A878D8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80A878DC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80A878E0  7F A3 EC 2E */	lfsx f29, r3, r29
/* 80A878E4  38 7E 04 E0 */	addi r3, r30, 0x4e0
/* 80A878E8  C0 1F 02 0C */	lfs f0, 0x20c(r31)
/* 80A878EC  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80A878F0  C0 1F 01 E0 */	lfs f0, 0x1e0(r31)
/* 80A878F4  EC 01 00 24 */	fdivs f0, f1, f0
/* 80A878F8  FC 00 00 1E */	fctiwz f0, f0
/* 80A878FC  D8 01 00 C0 */	stfd f0, 0xc0(r1)
/* 80A87900  80 81 00 C4 */	lwz r4, 0xc4(r1)
/* 80A87904  38 A0 00 10 */	li r5, 0x10
/* 80A87908  38 C0 02 00 */	li r6, 0x200
/* 80A8790C  4B 7E 8C FD */	bl cLib_addCalcAngleS2__FPssss
/* 80A87910  38 7E 04 DC */	addi r3, r30, 0x4dc
/* 80A87914  C0 3F 02 10 */	lfs f1, 0x210(r31)
/* 80A87918  EC 1E 07 72 */	fmuls f0, f30, f29
/* 80A8791C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80A87920  C0 1F 01 E0 */	lfs f0, 0x1e0(r31)
/* 80A87924  EC 01 00 24 */	fdivs f0, f1, f0
/* 80A87928  FC 00 00 1E */	fctiwz f0, f0
/* 80A8792C  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 80A87930  80 81 00 CC */	lwz r4, 0xcc(r1)
/* 80A87934  38 A0 00 10 */	li r5, 0x10
/* 80A87938  38 C0 02 00 */	li r6, 0x200
/* 80A8793C  4B 7E 8C CD */	bl cLib_addCalcAngleS2__FPssss
/* 80A87940  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80A87944  B0 1E 08 F0 */	sth r0, 0x8f0(r30)
/* 80A87948  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80A8794C  B0 1E 08 F2 */	sth r0, 0x8f2(r30)
/* 80A87950  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 80A87954  B0 1E 08 F4 */	sth r0, 0x8f4(r30)
/* 80A87958  A8 1E 08 F0 */	lha r0, 0x8f0(r30)
/* 80A8795C  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80A87960  A8 1E 08 F2 */	lha r0, 0x8f2(r30)
/* 80A87964  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80A87968  A8 1E 08 F4 */	lha r0, 0x8f4(r30)
/* 80A8796C  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 80A87970  E3 E1 01 08 */	psq_l f31, 264(r1), 0, 0 /* qr0 */
/* 80A87974  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 80A87978  E3 C1 00 F8 */	psq_l f30, 248(r1), 0, 0 /* qr0 */
/* 80A8797C  CB C1 00 F0 */	lfd f30, 0xf0(r1)
/* 80A87980  E3 A1 00 E8 */	psq_l f29, 232(r1), 0, 0 /* qr0 */
/* 80A87984  CB A1 00 E0 */	lfd f29, 0xe0(r1)
/* 80A87988  39 61 00 E0 */	addi r11, r1, 0xe0
/* 80A8798C  4B 8D A8 9D */	bl _restgpr_29
/* 80A87990  80 01 01 14 */	lwz r0, 0x114(r1)
/* 80A87994  7C 08 03 A6 */	mtlr r0
/* 80A87998  38 21 01 10 */	addi r1, r1, 0x110
/* 80A8799C  4E 80 00 20 */	blr 
