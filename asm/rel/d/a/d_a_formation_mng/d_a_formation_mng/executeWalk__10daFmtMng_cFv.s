lbl_80835DEC:
/* 80835DEC  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80835DF0  7C 08 02 A6 */	mflr r0
/* 80835DF4  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80835DF8  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 80835DFC  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 80835E00  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 80835E04  F3 C1 00 88 */	psq_st f30, 136(r1), 0, 0 /* qr0 */
/* 80835E08  DB A1 00 70 */	stfd f29, 0x70(r1)
/* 80835E0C  F3 A1 00 78 */	psq_st f29, 120(r1), 0, 0 /* qr0 */
/* 80835E10  DB 81 00 60 */	stfd f28, 0x60(r1)
/* 80835E14  F3 81 00 68 */	psq_st f28, 104(r1), 0, 0 /* qr0 */
/* 80835E18  DB 61 00 50 */	stfd f27, 0x50(r1)
/* 80835E1C  F3 61 00 58 */	psq_st f27, 88(r1), 0, 0 /* qr0 */
/* 80835E20  39 61 00 50 */	addi r11, r1, 0x50
/* 80835E24  4B B2 C3 9D */	bl _savegpr_22
/* 80835E28  7C 7E 1B 78 */	mr r30, r3
/* 80835E2C  3C 60 80 83 */	lis r3, M_attr__10daFmtMng_c@ha /* 0x808378A8@ha */
/* 80835E30  3B 63 78 A8 */	addi r27, r3, M_attr__10daFmtMng_c@l /* 0x808378A8@l */
/* 80835E34  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80835E38  38 7B 00 00 */	addi r3, r27, 0
/* 80835E3C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80835E40  EC 01 00 2A */	fadds f0, f1, f0
/* 80835E44  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80835E48  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80835E4C  C0 23 00 04 */	lfs f1, 4(r3)
/* 80835E50  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80835E54  40 81 00 08 */	ble lbl_80835E5C
/* 80835E58  D0 3E 05 2C */	stfs f1, 0x52c(r30)
lbl_80835E5C:
/* 80835E5C  82 DE 05 68 */	lwz r22, 0x568(r30)
/* 80835E60  3B 00 00 00 */	li r24, 0
/* 80835E64  3B FB 00 00 */	addi r31, r27, 0
/* 80835E68  C3 7B 00 24 */	lfs f27, 0x24(r27)
/* 80835E6C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80835E70  3A E3 9A 20 */	addi r23, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80835E74  48 00 00 B4 */	b lbl_80835F28
lbl_80835E78:
/* 80835E78  7F C3 F3 78 */	mr r3, r30
/* 80835E7C  7E C4 B3 78 */	mr r4, r22
/* 80835E80  7F 05 C3 78 */	mr r5, r24
/* 80835E84  48 00 03 A9 */	bl setMovePath__10daFmtMng_cFP8FmtPos_ci
/* 80835E88  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80835E8C  FC 00 D8 40 */	fcmpo cr0, f0, f27
/* 80835E90  4C 40 13 82 */	cror 2, 0, 2
/* 80835E94  41 82 00 48 */	beq lbl_80835EDC
/* 80835E98  80 76 00 00 */	lwz r3, 0(r22)
/* 80835E9C  80 96 00 04 */	lwz r4, 4(r22)
/* 80835EA0  4B 81 B9 11 */	bl dPath_GetPnt__FPC5dPathi
/* 80835EA4  C0 03 00 04 */	lfs f0, 4(r3)
/* 80835EA8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80835EAC  C0 03 00 08 */	lfs f0, 8(r3)
/* 80835EB0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80835EB4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80835EB8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80835EBC  38 76 00 10 */	addi r3, r22, 0x10
/* 80835EC0  38 81 00 10 */	addi r4, r1, 0x10
/* 80835EC4  4B A3 AD 41 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80835EC8  7C 64 1B 78 */	mr r4, r3
/* 80835ECC  38 76 00 1C */	addi r3, r22, 0x1c
/* 80835ED0  A8 BF 00 14 */	lha r5, 0x14(r31)
/* 80835ED4  A8 DF 00 16 */	lha r6, 0x16(r31)
/* 80835ED8  4B A3 A7 31 */	bl cLib_addCalcAngleS2__FPssss
lbl_80835EDC:
/* 80835EDC  A8 16 00 1C */	lha r0, 0x1c(r22)
/* 80835EE0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80835EE4  7C 57 04 2E */	lfsx f2, r23, r0
/* 80835EE8  C0 36 00 10 */	lfs f1, 0x10(r22)
/* 80835EEC  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80835EF0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80835EF4  EC 01 00 2A */	fadds f0, f1, f0
/* 80835EF8  D0 16 00 10 */	stfs f0, 0x10(r22)
/* 80835EFC  A8 16 00 1C */	lha r0, 0x1c(r22)
/* 80835F00  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80835F04  7C 77 02 14 */	add r3, r23, r0
/* 80835F08  C0 43 00 04 */	lfs f2, 4(r3)
/* 80835F0C  C0 36 00 18 */	lfs f1, 0x18(r22)
/* 80835F10  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80835F14  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80835F18  EC 01 00 2A */	fadds f0, f1, f0
/* 80835F1C  D0 16 00 18 */	stfs f0, 0x18(r22)
/* 80835F20  3B 18 00 01 */	addi r24, r24, 1
/* 80835F24  3A D6 00 20 */	addi r22, r22, 0x20
lbl_80835F28:
/* 80835F28  80 1E 05 88 */	lwz r0, 0x588(r30)
/* 80835F2C  7C 18 00 00 */	cmpw r24, r0
/* 80835F30  41 80 FF 48 */	blt lbl_80835E78
/* 80835F34  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80835F38  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80835F3C  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80835F40  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80835F44  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80835F48  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80835F4C  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80835F50  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80835F54  3B 23 00 20 */	addi r25, r3, 0x20
/* 80835F58  3B 00 00 01 */	li r24, 1
/* 80835F5C  3B 5B 00 00 */	addi r26, r27, 0
/* 80835F60  82 FB 00 00 */	lwz r23, 0(r27)
/* 80835F64  48 00 00 64 */	b lbl_80835FC8
lbl_80835F68:
/* 80835F68  A8 79 FF FC */	lha r3, -4(r25)
/* 80835F6C  A8 99 00 1C */	lha r4, 0x1c(r25)
/* 80835F70  4B A3 AE B5 */	bl cLib_distanceAngleS__Fss
/* 80835F74  7C 03 B8 00 */	cmpw r3, r23
/* 80835F78  41 81 00 48 */	bgt lbl_80835FC0
/* 80835F7C  C0 1A 00 10 */	lfs f0, 0x10(r26)
/* 80835F80  FC 20 00 50 */	fneg f1, f0
/* 80835F84  C0 1B 00 24 */	lfs f0, 0x24(r27)
/* 80835F88  D0 19 00 10 */	stfs f0, 0x10(r25)
/* 80835F8C  D0 19 00 14 */	stfs f0, 0x14(r25)
/* 80835F90  D0 39 00 18 */	stfs f1, 0x18(r25)
/* 80835F94  38 79 FF F0 */	addi r3, r25, -16
/* 80835F98  4B 7D 6D CD */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80835F9C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80835FA0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80835FA4  A8 99 FF FC */	lha r4, -4(r25)
/* 80835FA8  4B 7D 64 8D */	bl mDoMtx_YrotM__FPA4_fs
/* 80835FAC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80835FB0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80835FB4  38 99 00 10 */	addi r4, r25, 0x10
/* 80835FB8  7C 85 23 78 */	mr r5, r4
/* 80835FBC  4B B1 0D B1 */	bl PSMTXMultVec
lbl_80835FC0:
/* 80835FC0  3B 18 00 01 */	addi r24, r24, 1
/* 80835FC4  3B 39 00 20 */	addi r25, r25, 0x20
lbl_80835FC8:
/* 80835FC8  80 1E 05 88 */	lwz r0, 0x588(r30)
/* 80835FCC  7C 18 00 00 */	cmpw r24, r0
/* 80835FD0  41 80 FF 98 */	blt lbl_80835F68
/* 80835FD4  83 1E 05 68 */	lwz r24, 0x568(r30)
/* 80835FD8  83 3E 05 6C */	lwz r25, 0x56c(r30)
/* 80835FDC  3B 40 00 00 */	li r26, 0
/* 80835FE0  38 9B 00 00 */	addi r4, r27, 0
/* 80835FE4  C3 DB 00 24 */	lfs f30, 0x24(r27)
/* 80835FE8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80835FEC  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80835FF0  C3 E4 00 0C */	lfs f31, 0xc(r4)
/* 80835FF4  C3 9B 00 44 */	lfs f28, 0x44(r27)
/* 80835FF8  CB BB 00 48 */	lfd f29, 0x48(r27)
/* 80835FFC  3F 80 43 30 */	lis r28, 0x4330
/* 80836000  48 00 01 E0 */	b lbl_808361E0
lbl_80836004:
/* 80836004  80 7E 05 84 */	lwz r3, 0x584(r30)
/* 80836008  38 03 FF FF */	addi r0, r3, -1
/* 8083600C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80836010  90 01 00 24 */	stw r0, 0x24(r1)
/* 80836014  93 81 00 20 */	stw r28, 0x20(r1)
/* 80836018  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8083601C  EC 00 E8 28 */	fsubs f0, f0, f29
/* 80836020  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80836024  EF 7C 00 32 */	fmuls f27, f28, f0
/* 80836028  38 78 00 10 */	addi r3, r24, 0x10
/* 8083602C  4B 7D 6D 39 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80836030  7F A3 EB 78 */	mr r3, r29
/* 80836034  A8 98 00 1C */	lha r4, 0x1c(r24)
/* 80836038  4B 7D 63 FD */	bl mDoMtx_YrotM__FPA4_fs
/* 8083603C  3A E0 00 00 */	li r23, 0
/* 80836040  48 00 01 8C */	b lbl_808361CC
lbl_80836044:
/* 80836044  38 99 00 04 */	addi r4, r25, 4
/* 80836048  C0 19 00 04 */	lfs f0, 4(r25)
/* 8083604C  D0 19 00 10 */	stfs f0, 0x10(r25)
/* 80836050  C0 19 00 08 */	lfs f0, 8(r25)
/* 80836054  D0 19 00 14 */	stfs f0, 0x14(r25)
/* 80836058  C0 19 00 0C */	lfs f0, 0xc(r25)
/* 8083605C  D0 19 00 18 */	stfs f0, 0x18(r25)
/* 80836060  D3 79 00 04 */	stfs f27, 4(r25)
/* 80836064  D3 D9 00 08 */	stfs f30, 8(r25)
/* 80836068  D3 D9 00 0C */	stfs f30, 0xc(r25)
/* 8083606C  7F A3 EB 78 */	mr r3, r29
/* 80836070  7C 85 23 78 */	mr r5, r4
/* 80836074  4B B1 0C F9 */	bl PSMTXMultVec
/* 80836078  EF 7B F8 28 */	fsubs f27, f27, f31
/* 8083607C  38 00 00 00 */	li r0, 0
/* 80836080  90 01 00 0C */	stw r0, 0xc(r1)
/* 80836084  80 79 00 00 */	lwz r3, 0(r25)
/* 80836088  38 81 00 0C */	addi r4, r1, 0xc
/* 8083608C  4B 7E 39 31 */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80836090  82 C1 00 0C */	lwz r22, 0xc(r1)
/* 80836094  28 16 00 00 */	cmplwi r22, 0
/* 80836098  41 82 01 2C */	beq lbl_808361C4
/* 8083609C  C0 19 00 04 */	lfs f0, 4(r25)
/* 808360A0  D0 16 04 D0 */	stfs f0, 0x4d0(r22)
/* 808360A4  C0 19 00 0C */	lfs f0, 0xc(r25)
/* 808360A8  D0 16 04 D8 */	stfs f0, 0x4d8(r22)
/* 808360AC  38 79 00 10 */	addi r3, r25, 0x10
/* 808360B0  38 99 00 04 */	addi r4, r25, 4
/* 808360B4  4B A3 AB 51 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 808360B8  7C 64 1B 78 */	mr r4, r3
/* 808360BC  38 76 04 E6 */	addi r3, r22, 0x4e6
/* 808360C0  A8 BF 00 14 */	lha r5, 0x14(r31)
/* 808360C4  A8 DF 00 16 */	lha r6, 0x16(r31)
/* 808360C8  4B A3 A5 41 */	bl cLib_addCalcAngleS2__FPssss
/* 808360CC  38 79 00 10 */	addi r3, r25, 0x10
/* 808360D0  38 99 00 04 */	addi r4, r25, 4
/* 808360D4  4B B1 12 C9 */	bl PSVECSquareDistance
/* 808360D8  C0 1B 00 24 */	lfs f0, 0x24(r27)
/* 808360DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 808360E0  40 81 00 58 */	ble lbl_80836138
/* 808360E4  FC 00 08 34 */	frsqrte f0, f1
/* 808360E8  C8 9B 00 28 */	lfd f4, 0x28(r27)
/* 808360EC  FC 44 00 32 */	fmul f2, f4, f0
/* 808360F0  C8 7B 00 30 */	lfd f3, 0x30(r27)
/* 808360F4  FC 00 00 32 */	fmul f0, f0, f0
/* 808360F8  FC 01 00 32 */	fmul f0, f1, f0
/* 808360FC  FC 03 00 28 */	fsub f0, f3, f0
/* 80836100  FC 02 00 32 */	fmul f0, f2, f0
/* 80836104  FC 44 00 32 */	fmul f2, f4, f0
/* 80836108  FC 00 00 32 */	fmul f0, f0, f0
/* 8083610C  FC 01 00 32 */	fmul f0, f1, f0
/* 80836110  FC 03 00 28 */	fsub f0, f3, f0
/* 80836114  FC 02 00 32 */	fmul f0, f2, f0
/* 80836118  FC 44 00 32 */	fmul f2, f4, f0
/* 8083611C  FC 00 00 32 */	fmul f0, f0, f0
/* 80836120  FC 01 00 32 */	fmul f0, f1, f0
/* 80836124  FC 03 00 28 */	fsub f0, f3, f0
/* 80836128  FC 02 00 32 */	fmul f0, f2, f0
/* 8083612C  FC 21 00 32 */	fmul f1, f1, f0
/* 80836130  FC 20 08 18 */	frsp f1, f1
/* 80836134  48 00 00 88 */	b lbl_808361BC
lbl_80836138:
/* 80836138  C8 1B 00 38 */	lfd f0, 0x38(r27)
/* 8083613C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80836140  40 80 00 10 */	bge lbl_80836150
/* 80836144  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80836148  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8083614C  48 00 00 70 */	b lbl_808361BC
lbl_80836150:
/* 80836150  D0 21 00 08 */	stfs f1, 8(r1)
/* 80836154  80 81 00 08 */	lwz r4, 8(r1)
/* 80836158  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8083615C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80836160  7C 03 00 00 */	cmpw r3, r0
/* 80836164  41 82 00 14 */	beq lbl_80836178
/* 80836168  40 80 00 40 */	bge lbl_808361A8
/* 8083616C  2C 03 00 00 */	cmpwi r3, 0
/* 80836170  41 82 00 20 */	beq lbl_80836190
/* 80836174  48 00 00 34 */	b lbl_808361A8
lbl_80836178:
/* 80836178  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8083617C  41 82 00 0C */	beq lbl_80836188
/* 80836180  38 00 00 01 */	li r0, 1
/* 80836184  48 00 00 28 */	b lbl_808361AC
lbl_80836188:
/* 80836188  38 00 00 02 */	li r0, 2
/* 8083618C  48 00 00 20 */	b lbl_808361AC
lbl_80836190:
/* 80836190  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80836194  41 82 00 0C */	beq lbl_808361A0
/* 80836198  38 00 00 05 */	li r0, 5
/* 8083619C  48 00 00 10 */	b lbl_808361AC
lbl_808361A0:
/* 808361A0  38 00 00 03 */	li r0, 3
/* 808361A4  48 00 00 08 */	b lbl_808361AC
lbl_808361A8:
/* 808361A8  38 00 00 04 */	li r0, 4
lbl_808361AC:
/* 808361AC  2C 00 00 01 */	cmpwi r0, 1
/* 808361B0  40 82 00 0C */	bne lbl_808361BC
/* 808361B4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 808361B8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_808361BC:
/* 808361BC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 808361C0  D0 23 05 2C */	stfs f1, 0x52c(r3)
lbl_808361C4:
/* 808361C4  3A F7 00 01 */	addi r23, r23, 1
/* 808361C8  3B 39 00 20 */	addi r25, r25, 0x20
lbl_808361CC:
/* 808361CC  80 1E 05 84 */	lwz r0, 0x584(r30)
/* 808361D0  7C 17 00 00 */	cmpw r23, r0
/* 808361D4  41 80 FE 70 */	blt lbl_80836044
/* 808361D8  3B 5A 00 01 */	addi r26, r26, 1
/* 808361DC  3B 18 00 20 */	addi r24, r24, 0x20
lbl_808361E0:
/* 808361E0  80 1E 05 88 */	lwz r0, 0x588(r30)
/* 808361E4  7C 1A 00 00 */	cmpw r26, r0
/* 808361E8  41 80 FE 1C */	blt lbl_80836004
/* 808361EC  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 808361F0  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 808361F4  E3 C1 00 88 */	psq_l f30, 136(r1), 0, 0 /* qr0 */
/* 808361F8  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 808361FC  E3 A1 00 78 */	psq_l f29, 120(r1), 0, 0 /* qr0 */
/* 80836200  CB A1 00 70 */	lfd f29, 0x70(r1)
/* 80836204  E3 81 00 68 */	psq_l f28, 104(r1), 0, 0 /* qr0 */
/* 80836208  CB 81 00 60 */	lfd f28, 0x60(r1)
/* 8083620C  E3 61 00 58 */	psq_l f27, 88(r1), 0, 0 /* qr0 */
/* 80836210  CB 61 00 50 */	lfd f27, 0x50(r1)
/* 80836214  39 61 00 50 */	addi r11, r1, 0x50
/* 80836218  4B B2 BF F5 */	bl _restgpr_22
/* 8083621C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80836220  7C 08 03 A6 */	mtlr r0
/* 80836224  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80836228  4E 80 00 20 */	blr 
