lbl_809DB854:
/* 809DB854  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 809DB858  7C 08 02 A6 */	mflr r0
/* 809DB85C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 809DB860  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 809DB864  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 809DB868  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 809DB86C  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 809DB870  39 61 00 90 */	addi r11, r1, 0x90
/* 809DB874  4B 98 69 54 */	b _savegpr_24
/* 809DB878  7C 7D 1B 78 */	mr r29, r3
/* 809DB87C  3C 60 80 9E */	lis r3, lit_1109@ha
/* 809DB880  3B C3 F7 00 */	addi r30, r3, lit_1109@l
/* 809DB884  3C 60 80 9E */	lis r3, m__17daNpc_grO_Param_c@ha
/* 809DB888  3B E3 EF 7C */	addi r31, r3, m__17daNpc_grO_Param_c@l
/* 809DB88C  88 1E 00 5C */	lbz r0, 0x5c(r30)
/* 809DB890  7C 00 07 75 */	extsb. r0, r0
/* 809DB894  40 82 00 38 */	bne lbl_809DB8CC
/* 809DB898  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 809DB89C  D0 1E 00 60 */	stfs f0, 0x60(r30)
/* 809DB8A0  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 809DB8A4  38 7E 00 60 */	addi r3, r30, 0x60
/* 809DB8A8  D0 03 00 04 */	stfs f0, 4(r3)
/* 809DB8AC  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 809DB8B0  D0 03 00 08 */	stfs f0, 8(r3)
/* 809DB8B4  3C 80 80 9E */	lis r4, __dt__4cXyzFv@ha
/* 809DB8B8  38 84 E8 1C */	addi r4, r4, __dt__4cXyzFv@l
/* 809DB8BC  38 BE 00 50 */	addi r5, r30, 0x50
/* 809DB8C0  4B FF EC 39 */	bl __register_global_object
/* 809DB8C4  38 00 00 01 */	li r0, 1
/* 809DB8C8  98 1E 00 5C */	stb r0, 0x5c(r30)
lbl_809DB8CC:
/* 809DB8CC  C3 FF 00 00 */	lfs f31, 0(r31)
/* 809DB8D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809DB8D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809DB8D8  A8 9D 09 90 */	lha r4, 0x990(r29)
/* 809DB8DC  4B 63 0B 00 */	b mDoMtx_YrotS__FPA4_fs
/* 809DB8E0  38 7D 09 84 */	addi r3, r29, 0x984
/* 809DB8E4  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 809DB8E8  C0 5F 00 B0 */	lfs f2, 0xb0(r31)
/* 809DB8EC  C0 7F 00 B4 */	lfs f3, 0xb4(r31)
/* 809DB8F0  4B 89 41 4C */	b cLib_addCalc2__FPffff
/* 809DB8F4  38 7D 09 8C */	addi r3, r29, 0x98c
/* 809DB8F8  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 809DB8FC  C0 5F 00 B0 */	lfs f2, 0xb0(r31)
/* 809DB900  C0 7F 00 B4 */	lfs f3, 0xb4(r31)
/* 809DB904  4B 89 41 38 */	b cLib_addCalc2__FPffff
/* 809DB908  3B 00 00 00 */	li r24, 0
/* 809DB90C  3B 80 00 00 */	li r28, 0
/* 809DB910  3B 60 00 00 */	li r27, 0
/* 809DB914  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 809DB918  3B 23 9A 20 */	addi r25, r3, sincosTable___5JMath@l
/* 809DB91C  C3 DF 00 90 */	lfs f30, 0x90(r31)
/* 809DB920  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809DB924  3B 43 D4 70 */	addi r26, r3, now__14mDoMtx_stack_c@l
lbl_809DB928:
/* 809DB928  A8 1D 09 92 */	lha r0, 0x992(r29)
/* 809DB92C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 809DB930  7C 39 04 2E */	lfsx f1, r25, r0
/* 809DB934  38 1B 09 84 */	addi r0, r27, 0x984
/* 809DB938  7C 1D 04 2E */	lfsx f0, r29, r0
/* 809DB93C  EC 00 00 72 */	fmuls f0, f0, f1
/* 809DB940  D3 C1 00 30 */	stfs f30, 0x30(r1)
/* 809DB944  D3 C1 00 34 */	stfs f30, 0x34(r1)
/* 809DB948  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 809DB94C  7F 43 D3 78 */	mr r3, r26
/* 809DB950  38 81 00 30 */	addi r4, r1, 0x30
/* 809DB954  38 A1 00 24 */	addi r5, r1, 0x24
/* 809DB958  4B 96 B4 14 */	b PSMTXMultVec
/* 809DB95C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 809DB960  FC 00 00 50 */	fneg f0, f0
/* 809DB964  FC 00 00 1E */	fctiwz f0, f0
/* 809DB968  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 809DB96C  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 809DB970  7C 7D E2 14 */	add r3, r29, r28
/* 809DB974  B0 03 09 08 */	sth r0, 0x908(r3)
/* 809DB978  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 809DB97C  FC 00 00 50 */	fneg f0, f0
/* 809DB980  FC 00 00 1E */	fctiwz f0, f0
/* 809DB984  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 809DB988  80 01 00 64 */	lwz r0, 0x64(r1)
/* 809DB98C  B0 03 09 0C */	sth r0, 0x90c(r3)
/* 809DB990  3B 18 00 01 */	addi r24, r24, 1
/* 809DB994  2C 18 00 03 */	cmpwi r24, 3
/* 809DB998  3B 9C 00 06 */	addi r28, r28, 6
/* 809DB99C  3B 7B 00 04 */	addi r27, r27, 4
/* 809DB9A0  41 80 FF 88 */	blt lbl_809DB928
/* 809DB9A4  38 7D 09 92 */	addi r3, r29, 0x992
/* 809DB9A8  38 80 00 00 */	li r4, 0
/* 809DB9AC  38 A0 05 55 */	li r5, 0x555
/* 809DB9B0  4B 89 4D 20 */	b cLib_chaseS__FPsss
/* 809DB9B4  A8 1D 0E 20 */	lha r0, 0xe20(r29)
/* 809DB9B8  2C 00 00 01 */	cmpwi r0, 1
/* 809DB9BC  40 82 00 2C */	bne lbl_809DB9E8
/* 809DB9C0  38 60 00 00 */	li r3, 0
/* 809DB9C4  38 80 00 00 */	li r4, 0
/* 809DB9C8  38 00 00 03 */	li r0, 3
/* 809DB9CC  7C 09 03 A6 */	mtctr r0
lbl_809DB9D0:
/* 809DB9D0  7C BD 1A 14 */	add r5, r29, r3
/* 809DB9D4  B0 85 09 1A */	sth r4, 0x91a(r5)
/* 809DB9D8  B0 85 09 1C */	sth r4, 0x91c(r5)
/* 809DB9DC  B0 85 09 1E */	sth r4, 0x91e(r5)
/* 809DB9E0  38 63 00 06 */	addi r3, r3, 6
/* 809DB9E4  42 00 FF EC */	bdnz lbl_809DB9D0
lbl_809DB9E8:
/* 809DB9E8  7F A3 EB 78 */	mr r3, r29
/* 809DB9EC  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809DB9F0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 809DB9F4  7D 89 03 A6 */	mtctr r12
/* 809DB9F8  4E 80 04 21 */	bctrl 
/* 809DB9FC  7F A3 EB 78 */	mr r3, r29
/* 809DBA00  48 00 19 FD */	bl lookat__11daNpc_grO_cFv
/* 809DBA04  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 809DBA08  80 63 00 04 */	lwz r3, 4(r3)
/* 809DBA0C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809DBA10  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809DBA14  38 63 00 C0 */	addi r3, r3, 0xc0
/* 809DBA18  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 809DBA1C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 809DBA20  4B 96 AA 90 */	b PSMTXCopy
/* 809DBA24  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809DBA28  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809DBA2C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 809DBA30  D0 1D 08 E4 */	stfs f0, 0x8e4(r29)
/* 809DBA34  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 809DBA38  D0 1D 08 E8 */	stfs f0, 0x8e8(r29)
/* 809DBA3C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 809DBA40  D0 1D 08 EC */	stfs f0, 0x8ec(r29)
/* 809DBA44  38 9E 00 60 */	addi r4, r30, 0x60
/* 809DBA48  38 BD 05 38 */	addi r5, r29, 0x538
/* 809DBA4C  4B 96 B3 20 */	b PSMTXMultVec
/* 809DBA50  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 809DBA54  38 9E 00 60 */	addi r4, r30, 0x60
/* 809DBA58  D0 04 00 04 */	stfs f0, 4(r4)
/* 809DBA5C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809DBA60  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809DBA64  38 A1 00 30 */	addi r5, r1, 0x30
/* 809DBA68  4B 96 B3 04 */	b PSMTXMultVec
/* 809DBA6C  38 7D 08 E4 */	addi r3, r29, 0x8e4
/* 809DBA70  38 81 00 30 */	addi r4, r1, 0x30
/* 809DBA74  4B 89 52 00 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 809DBA78  B0 7D 09 02 */	sth r3, 0x902(r29)
/* 809DBA7C  38 7D 08 E4 */	addi r3, r29, 0x8e4
/* 809DBA80  38 81 00 30 */	addi r4, r1, 0x30
/* 809DBA84  4B 89 51 80 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 809DBA88  B0 7D 09 04 */	sth r3, 0x904(r29)
/* 809DBA8C  80 9D 0C 10 */	lwz r4, 0xc10(r29)
/* 809DBA90  28 04 00 00 */	cmplwi r4, 0
/* 809DBA94  41 82 01 74 */	beq lbl_809DBC08
/* 809DBA98  38 61 00 18 */	addi r3, r1, 0x18
/* 809DBA9C  38 BD 05 38 */	addi r5, r29, 0x538
/* 809DBAA0  4B 88 B0 94 */	b __mi__4cXyzCFRC3Vec
/* 809DBAA4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 809DBAA8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 809DBAAC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 809DBAB0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 809DBAB4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 809DBAB8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 809DBABC  A8 7D 09 28 */	lha r3, 0x928(r29)
/* 809DBAC0  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 809DBAC4  7C 03 02 14 */	add r0, r3, r0
/* 809DBAC8  7C 00 00 D0 */	neg r0, r0
/* 809DBACC  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 809DBAD0  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 809DBAD4  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 809DBAD8  4B 88 BB 9C */	b cM_atan2s__Fff
/* 809DBADC  A8 1D 08 FE */	lha r0, 0x8fe(r29)
/* 809DBAE0  7C 00 1A 14 */	add r0, r0, r3
/* 809DBAE4  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 809DBAE8  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 809DBAEC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809DBAF0  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 809DBAF4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809DBAF8  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 809DBAFC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809DBB00  38 61 00 0C */	addi r3, r1, 0xc
/* 809DBB04  4B 96 B6 34 */	b PSVECSquareMag
/* 809DBB08  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 809DBB0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809DBB10  40 81 00 58 */	ble lbl_809DBB68
/* 809DBB14  FC 00 08 34 */	frsqrte f0, f1
/* 809DBB18  C8 9F 00 B8 */	lfd f4, 0xb8(r31)
/* 809DBB1C  FC 44 00 32 */	fmul f2, f4, f0
/* 809DBB20  C8 7F 00 C0 */	lfd f3, 0xc0(r31)
/* 809DBB24  FC 00 00 32 */	fmul f0, f0, f0
/* 809DBB28  FC 01 00 32 */	fmul f0, f1, f0
/* 809DBB2C  FC 03 00 28 */	fsub f0, f3, f0
/* 809DBB30  FC 02 00 32 */	fmul f0, f2, f0
/* 809DBB34  FC 44 00 32 */	fmul f2, f4, f0
/* 809DBB38  FC 00 00 32 */	fmul f0, f0, f0
/* 809DBB3C  FC 01 00 32 */	fmul f0, f1, f0
/* 809DBB40  FC 03 00 28 */	fsub f0, f3, f0
/* 809DBB44  FC 02 00 32 */	fmul f0, f2, f0
/* 809DBB48  FC 44 00 32 */	fmul f2, f4, f0
/* 809DBB4C  FC 00 00 32 */	fmul f0, f0, f0
/* 809DBB50  FC 01 00 32 */	fmul f0, f1, f0
/* 809DBB54  FC 03 00 28 */	fsub f0, f3, f0
/* 809DBB58  FC 02 00 32 */	fmul f0, f2, f0
/* 809DBB5C  FC 41 00 32 */	fmul f2, f1, f0
/* 809DBB60  FC 40 10 18 */	frsp f2, f2
/* 809DBB64  48 00 00 90 */	b lbl_809DBBF4
lbl_809DBB68:
/* 809DBB68  C8 1F 00 C8 */	lfd f0, 0xc8(r31)
/* 809DBB6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809DBB70  40 80 00 10 */	bge lbl_809DBB80
/* 809DBB74  3C 60 80 45 */	lis r3, __float_nan@ha
/* 809DBB78  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 809DBB7C  48 00 00 78 */	b lbl_809DBBF4
lbl_809DBB80:
/* 809DBB80  D0 21 00 08 */	stfs f1, 8(r1)
/* 809DBB84  80 81 00 08 */	lwz r4, 8(r1)
/* 809DBB88  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 809DBB8C  3C 00 7F 80 */	lis r0, 0x7f80
/* 809DBB90  7C 03 00 00 */	cmpw r3, r0
/* 809DBB94  41 82 00 14 */	beq lbl_809DBBA8
/* 809DBB98  40 80 00 40 */	bge lbl_809DBBD8
/* 809DBB9C  2C 03 00 00 */	cmpwi r3, 0
/* 809DBBA0  41 82 00 20 */	beq lbl_809DBBC0
/* 809DBBA4  48 00 00 34 */	b lbl_809DBBD8
lbl_809DBBA8:
/* 809DBBA8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809DBBAC  41 82 00 0C */	beq lbl_809DBBB8
/* 809DBBB0  38 00 00 01 */	li r0, 1
/* 809DBBB4  48 00 00 28 */	b lbl_809DBBDC
lbl_809DBBB8:
/* 809DBBB8  38 00 00 02 */	li r0, 2
/* 809DBBBC  48 00 00 20 */	b lbl_809DBBDC
lbl_809DBBC0:
/* 809DBBC0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809DBBC4  41 82 00 0C */	beq lbl_809DBBD0
/* 809DBBC8  38 00 00 05 */	li r0, 5
/* 809DBBCC  48 00 00 10 */	b lbl_809DBBDC
lbl_809DBBD0:
/* 809DBBD0  38 00 00 03 */	li r0, 3
/* 809DBBD4  48 00 00 08 */	b lbl_809DBBDC
lbl_809DBBD8:
/* 809DBBD8  38 00 00 04 */	li r0, 4
lbl_809DBBDC:
/* 809DBBDC  2C 00 00 01 */	cmpwi r0, 1
/* 809DBBE0  40 82 00 10 */	bne lbl_809DBBF0
/* 809DBBE4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 809DBBE8  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 809DBBEC  48 00 00 08 */	b lbl_809DBBF4
lbl_809DBBF0:
/* 809DBBF0  FC 40 08 90 */	fmr f2, f1
lbl_809DBBF4:
/* 809DBBF4  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 809DBBF8  4B 88 BA 7C */	b cM_atan2s__Fff
/* 809DBBFC  7C 03 00 D0 */	neg r0, r3
/* 809DBC00  B0 1D 08 FC */	sth r0, 0x8fc(r29)
/* 809DBC04  48 00 00 10 */	b lbl_809DBC14
lbl_809DBC08:
/* 809DBC08  38 00 00 00 */	li r0, 0
/* 809DBC0C  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 809DBC10  B0 1D 08 FC */	sth r0, 0x8fc(r29)
lbl_809DBC14:
/* 809DBC14  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 809DBC18  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 809DBC1C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 809DBC20  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 809DBC24  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 809DBC28  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 809DBC2C  4B 63 11 38 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 809DBC30  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809DBC34  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809DBC38  A8 9D 08 F0 */	lha r4, 0x8f0(r29)
/* 809DBC3C  A8 BD 08 F2 */	lha r5, 0x8f2(r29)
/* 809DBC40  A8 DD 08 F4 */	lha r6, 0x8f4(r29)
/* 809DBC44  4B 63 06 5C */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 809DBC48  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809DBC4C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809DBC50  38 81 00 3C */	addi r4, r1, 0x3c
/* 809DBC54  38 A1 00 48 */	addi r5, r1, 0x48
/* 809DBC58  4B 96 B1 14 */	b PSMTXMultVec
/* 809DBC5C  C0 41 00 50 */	lfs f2, 0x50(r1)
/* 809DBC60  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 809DBC64  EC 20 F8 2A */	fadds f1, f0, f31
/* 809DBC68  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 809DBC6C  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 809DBC70  D0 3D 05 54 */	stfs f1, 0x554(r29)
/* 809DBC74  D0 5D 05 58 */	stfs f2, 0x558(r29)
/* 809DBC78  88 1D 09 F2 */	lbz r0, 0x9f2(r29)
/* 809DBC7C  28 00 00 00 */	cmplwi r0, 0
/* 809DBC80  40 82 00 9C */	bne lbl_809DBD1C
/* 809DBC84  88 1D 09 F4 */	lbz r0, 0x9f4(r29)
/* 809DBC88  28 00 00 00 */	cmplwi r0, 0
/* 809DBC8C  40 82 00 90 */	bne lbl_809DBD1C
/* 809DBC90  88 1D 09 F0 */	lbz r0, 0x9f0(r29)
/* 809DBC94  28 00 00 00 */	cmplwi r0, 0
/* 809DBC98  40 82 00 28 */	bne lbl_809DBCC0
/* 809DBC9C  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 809DBCA0  38 03 FD FF */	addi r0, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 809DBCA4  90 1D 0C C0 */	stw r0, 0xcc0(r29)
/* 809DBCA8  38 00 00 1F */	li r0, 0x1f
/* 809DBCAC  90 1D 0C B0 */	stw r0, 0xcb0(r29)
/* 809DBCB0  80 1D 0D 34 */	lwz r0, 0xd34(r29)
/* 809DBCB4  60 00 00 04 */	ori r0, r0, 4
/* 809DBCB8  90 1D 0D 34 */	stw r0, 0xd34(r29)
/* 809DBCBC  48 00 00 10 */	b lbl_809DBCCC
lbl_809DBCC0:
/* 809DBCC0  38 00 00 00 */	li r0, 0
/* 809DBCC4  90 1D 0C C0 */	stw r0, 0xcc0(r29)
/* 809DBCC8  90 1D 0C B0 */	stw r0, 0xcb0(r29)
lbl_809DBCCC:
/* 809DBCCC  38 7D 0D BC */	addi r3, r29, 0xdbc
/* 809DBCD0  38 81 00 48 */	addi r4, r1, 0x48
/* 809DBCD4  4B 89 35 08 */	b SetC__8cM3dGCylFRC4cXyz
/* 809DBCD8  38 7D 0D BC */	addi r3, r29, 0xdbc
/* 809DBCDC  38 9F 00 00 */	addi r4, r31, 0
/* 809DBCE0  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 809DBCE4  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 809DBCE8  EC 21 00 2A */	fadds f1, f1, f0
/* 809DBCEC  4B 89 35 0C */	b SetH__8cM3dGCylFf
/* 809DBCF0  38 7D 0D BC */	addi r3, r29, 0xdbc
/* 809DBCF4  38 9F 00 00 */	addi r4, r31, 0
/* 809DBCF8  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 809DBCFC  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 809DBD00  EC 21 00 2A */	fadds f1, f1, f0
/* 809DBD04  4B 89 34 FC */	b SetR__8cM3dGCylFf
/* 809DBD08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809DBD0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809DBD10  38 63 23 3C */	addi r3, r3, 0x233c
/* 809DBD14  38 9D 0C 98 */	addi r4, r29, 0xc98
/* 809DBD18  4B 88 8E 90 */	b Set__4cCcSFP8cCcD_Obj
lbl_809DBD1C:
/* 809DBD1C  38 7D 0C 98 */	addi r3, r29, 0xc98
/* 809DBD20  81 9D 0C D4 */	lwz r12, 0xcd4(r29)
/* 809DBD24  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 809DBD28  7D 89 03 A6 */	mtctr r12
/* 809DBD2C  4E 80 04 21 */	bctrl 
/* 809DBD30  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 809DBD34  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 809DBD38  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 809DBD3C  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 809DBD40  39 61 00 90 */	addi r11, r1, 0x90
/* 809DBD44  4B 98 64 D0 */	b _restgpr_24
/* 809DBD48  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 809DBD4C  7C 08 03 A6 */	mtlr r0
/* 809DBD50  38 21 00 B0 */	addi r1, r1, 0xb0
/* 809DBD54  4E 80 00 20 */	blr 
