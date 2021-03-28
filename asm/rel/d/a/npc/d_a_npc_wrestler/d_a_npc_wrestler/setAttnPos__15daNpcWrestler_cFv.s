lbl_80B405E8:
/* 80B405E8  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80B405EC  7C 08 02 A6 */	mflr r0
/* 80B405F0  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80B405F4  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 80B405F8  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 80B405FC  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80B40600  4B 82 1B C8 */	b _savegpr_24
/* 80B40604  7C 7D 1B 78 */	mr r29, r3
/* 80B40608  3C 60 80 B4 */	lis r3, m__21daNpcWrestler_Param_c@ha
/* 80B4060C  3B C3 16 DC */	addi r30, r3, m__21daNpcWrestler_Param_c@l
/* 80B40610  3C 60 80 B4 */	lis r3, cNullVec__6Z2Calc@ha
/* 80B40614  3B E3 1D F8 */	addi r31, r3, cNullVec__6Z2Calc@l
/* 80B40618  3C 60 80 B4 */	lis r3, data_80B42E34@ha
/* 80B4061C  88 03 2E 34 */	lbz r0, data_80B42E34@l(r3)
/* 80B40620  7C 00 07 75 */	extsb. r0, r0
/* 80B40624  40 82 00 40 */	bne lbl_80B40664
/* 80B40628  C0 1E 06 94 */	lfs f0, 0x694(r30)
/* 80B4062C  3C 60 80 B4 */	lis r3, data_80B42E38@ha
/* 80B40630  D4 03 2E 38 */	stfsu f0, data_80B42E38@l(r3)
/* 80B40634  C0 1E 06 48 */	lfs f0, 0x648(r30)
/* 80B40638  D0 03 00 04 */	stfs f0, 4(r3)
/* 80B4063C  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B40640  D0 03 00 08 */	stfs f0, 8(r3)
/* 80B40644  3C 80 80 B4 */	lis r4, __dt__4cXyzFv@ha
/* 80B40648  38 84 0F CC */	addi r4, r4, __dt__4cXyzFv@l
/* 80B4064C  3C A0 80 B4 */	lis r5, lit_4628@ha
/* 80B40650  38 A5 2E 28 */	addi r5, r5, lit_4628@l
/* 80B40654  4B FE EB C5 */	bl __register_global_object
/* 80B40658  38 00 00 01 */	li r0, 1
/* 80B4065C  3C 60 80 B4 */	lis r3, data_80B42E34@ha
/* 80B40660  98 03 2E 34 */	stb r0, data_80B42E34@l(r3)
lbl_80B40664:
/* 80B40664  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B40668  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B4066C  A8 9D 09 90 */	lha r4, 0x990(r29)
/* 80B40670  4B 4C BD 6C */	b mDoMtx_YrotS__FPA4_fs
/* 80B40674  38 7D 09 84 */	addi r3, r29, 0x984
/* 80B40678  C0 3E 01 B8 */	lfs f1, 0x1b8(r30)
/* 80B4067C  C0 5E 06 3C */	lfs f2, 0x63c(r30)
/* 80B40680  C0 7E 06 98 */	lfs f3, 0x698(r30)
/* 80B40684  4B 72 F3 B8 */	b cLib_addCalc2__FPffff
/* 80B40688  38 7D 09 8C */	addi r3, r29, 0x98c
/* 80B4068C  C0 3E 01 B8 */	lfs f1, 0x1b8(r30)
/* 80B40690  C0 5E 06 3C */	lfs f2, 0x63c(r30)
/* 80B40694  C0 7E 06 98 */	lfs f3, 0x698(r30)
/* 80B40698  4B 72 F3 A4 */	b cLib_addCalc2__FPffff
/* 80B4069C  3B 00 00 00 */	li r24, 0
/* 80B406A0  3B 80 00 00 */	li r28, 0
/* 80B406A4  3B 60 00 00 */	li r27, 0
/* 80B406A8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80B406AC  3B 23 9A 20 */	addi r25, r3, sincosTable___5JMath@l
/* 80B406B0  C3 FE 01 B8 */	lfs f31, 0x1b8(r30)
/* 80B406B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B406B8  3B 43 D4 70 */	addi r26, r3, now__14mDoMtx_stack_c@l
lbl_80B406BC:
/* 80B406BC  7F 23 CB 78 */	mr r3, r25
/* 80B406C0  A8 9D 09 92 */	lha r4, 0x992(r29)
/* 80B406C4  48 00 06 65 */	bl func_80B40D28
/* 80B406C8  38 1B 09 84 */	addi r0, r27, 0x984
/* 80B406CC  7C 1D 04 2E */	lfsx f0, r29, r0
/* 80B406D0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80B406D4  D3 E1 00 6C */	stfs f31, 0x6c(r1)
/* 80B406D8  D3 E1 00 70 */	stfs f31, 0x70(r1)
/* 80B406DC  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80B406E0  7F 43 D3 78 */	mr r3, r26
/* 80B406E4  38 81 00 6C */	addi r4, r1, 0x6c
/* 80B406E8  38 A1 00 60 */	addi r5, r1, 0x60
/* 80B406EC  4B 80 66 80 */	b PSMTXMultVec
/* 80B406F0  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80B406F4  FC 00 00 50 */	fneg f0, f0
/* 80B406F8  FC 00 00 1E */	fctiwz f0, f0
/* 80B406FC  D8 01 00 88 */	stfd f0, 0x88(r1)
/* 80B40700  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 80B40704  7C 7D E2 14 */	add r3, r29, r28
/* 80B40708  B0 03 09 08 */	sth r0, 0x908(r3)
/* 80B4070C  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80B40710  FC 00 00 50 */	fneg f0, f0
/* 80B40714  FC 00 00 1E */	fctiwz f0, f0
/* 80B40718  D8 01 00 90 */	stfd f0, 0x90(r1)
/* 80B4071C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80B40720  B0 03 09 0C */	sth r0, 0x90c(r3)
/* 80B40724  3B 18 00 01 */	addi r24, r24, 1
/* 80B40728  2C 18 00 03 */	cmpwi r24, 3
/* 80B4072C  3B 9C 00 06 */	addi r28, r28, 6
/* 80B40730  3B 7B 00 04 */	addi r27, r27, 4
/* 80B40734  41 80 FF 88 */	blt lbl_80B406BC
/* 80B40738  38 7D 09 92 */	addi r3, r29, 0x992
/* 80B4073C  38 80 00 00 */	li r4, 0
/* 80B40740  38 A0 05 55 */	li r5, 0x555
/* 80B40744  4B 72 FF 8C */	b cLib_chaseS__FPsss
/* 80B40748  A8 1D 0E 90 */	lha r0, 0xe90(r29)
/* 80B4074C  2C 00 00 01 */	cmpwi r0, 1
/* 80B40750  40 82 00 2C */	bne lbl_80B4077C
/* 80B40754  38 60 00 00 */	li r3, 0
/* 80B40758  38 80 00 00 */	li r4, 0
/* 80B4075C  38 00 00 03 */	li r0, 3
/* 80B40760  7C 09 03 A6 */	mtctr r0
lbl_80B40764:
/* 80B40764  7C BD 1A 14 */	add r5, r29, r3
/* 80B40768  B0 85 09 1A */	sth r4, 0x91a(r5)
/* 80B4076C  B0 85 09 1C */	sth r4, 0x91c(r5)
/* 80B40770  B0 85 09 1E */	sth r4, 0x91e(r5)
/* 80B40774  38 63 00 06 */	addi r3, r3, 6
/* 80B40778  42 00 FF EC */	bdnz lbl_80B40764
lbl_80B4077C:
/* 80B4077C  7F A3 EB 78 */	mr r3, r29
/* 80B40780  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B40784  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B40788  7D 89 03 A6 */	mtctr r12
/* 80B4078C  4E 80 04 21 */	bctrl 
/* 80B40790  7F A3 EB 78 */	mr r3, r29
/* 80B40794  48 00 03 A9 */	bl lookat__15daNpcWrestler_cFv
/* 80B40798  88 1D 0E 9B */	lbz r0, 0xe9b(r29)
/* 80B4079C  28 00 00 00 */	cmplwi r0, 0
/* 80B407A0  38 00 00 04 */	li r0, 4
/* 80B407A4  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B407A8  80 63 00 04 */	lwz r3, 4(r3)
/* 80B407AC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B407B0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B407B4  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80B407B8  7C 63 02 14 */	add r3, r3, r0
/* 80B407BC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80B407C0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80B407C4  4B 80 5C EC */	b PSMTXCopy
/* 80B407C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B407CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B407D0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B407D4  D0 1D 08 E4 */	stfs f0, 0x8e4(r29)
/* 80B407D8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B407DC  D0 1D 08 E8 */	stfs f0, 0x8e8(r29)
/* 80B407E0  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80B407E4  D0 1D 08 EC */	stfs f0, 0x8ec(r29)
/* 80B407E8  3C 80 80 B4 */	lis r4, data_80B42E38@ha
/* 80B407EC  38 84 2E 38 */	addi r4, r4, data_80B42E38@l
/* 80B407F0  38 BD 05 38 */	addi r5, r29, 0x538
/* 80B407F4  4B 80 65 78 */	b PSMTXMultVec
/* 80B407F8  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B407FC  3C 60 80 B4 */	lis r3, data_80B42E38@ha
/* 80B40800  38 83 2E 38 */	addi r4, r3, data_80B42E38@l
/* 80B40804  D0 04 00 04 */	stfs f0, 4(r4)
/* 80B40808  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B4080C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B40810  38 A1 00 6C */	addi r5, r1, 0x6c
/* 80B40814  4B 80 65 58 */	b PSMTXMultVec
/* 80B40818  38 7D 08 E4 */	addi r3, r29, 0x8e4
/* 80B4081C  38 81 00 6C */	addi r4, r1, 0x6c
/* 80B40820  4B 73 04 54 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80B40824  B0 7D 09 02 */	sth r3, 0x902(r29)
/* 80B40828  38 7D 08 E4 */	addi r3, r29, 0x8e4
/* 80B4082C  38 81 00 6C */	addi r4, r1, 0x6c
/* 80B40830  4B 73 03 D4 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B40834  B0 7D 09 04 */	sth r3, 0x904(r29)
/* 80B40838  80 9D 0C 14 */	lwz r4, 0xc14(r29)
/* 80B4083C  28 04 00 00 */	cmplwi r4, 0
/* 80B40840  41 82 01 74 */	beq lbl_80B409B4
/* 80B40844  38 61 00 48 */	addi r3, r1, 0x48
/* 80B40848  38 BD 05 38 */	addi r5, r29, 0x538
/* 80B4084C  4B 72 62 E8 */	b __mi__4cXyzCFRC3Vec
/* 80B40850  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80B40854  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80B40858  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80B4085C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80B40860  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80B40864  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80B40868  A8 7D 09 28 */	lha r3, 0x928(r29)
/* 80B4086C  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80B40870  7C 03 02 14 */	add r0, r3, r0
/* 80B40874  7C 00 00 D0 */	neg r0, r0
/* 80B40878  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 80B4087C  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 80B40880  C0 41 00 80 */	lfs f2, 0x80(r1)
/* 80B40884  4B 72 6D F0 */	b cM_atan2s__Fff
/* 80B40888  A8 1D 08 FE */	lha r0, 0x8fe(r29)
/* 80B4088C  7C 00 1A 14 */	add r0, r0, r3
/* 80B40890  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 80B40894  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80B40898  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B4089C  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B408A0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B408A4  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80B408A8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B408AC  38 61 00 0C */	addi r3, r1, 0xc
/* 80B408B0  4B 80 68 88 */	b PSVECSquareMag
/* 80B408B4  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B408B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B408BC  40 81 00 58 */	ble lbl_80B40914
/* 80B408C0  FC 00 08 34 */	frsqrte f0, f1
/* 80B408C4  C8 9E 06 00 */	lfd f4, 0x600(r30)
/* 80B408C8  FC 44 00 32 */	fmul f2, f4, f0
/* 80B408CC  C8 7E 06 08 */	lfd f3, 0x608(r30)
/* 80B408D0  FC 00 00 32 */	fmul f0, f0, f0
/* 80B408D4  FC 01 00 32 */	fmul f0, f1, f0
/* 80B408D8  FC 03 00 28 */	fsub f0, f3, f0
/* 80B408DC  FC 02 00 32 */	fmul f0, f2, f0
/* 80B408E0  FC 44 00 32 */	fmul f2, f4, f0
/* 80B408E4  FC 00 00 32 */	fmul f0, f0, f0
/* 80B408E8  FC 01 00 32 */	fmul f0, f1, f0
/* 80B408EC  FC 03 00 28 */	fsub f0, f3, f0
/* 80B408F0  FC 02 00 32 */	fmul f0, f2, f0
/* 80B408F4  FC 44 00 32 */	fmul f2, f4, f0
/* 80B408F8  FC 00 00 32 */	fmul f0, f0, f0
/* 80B408FC  FC 01 00 32 */	fmul f0, f1, f0
/* 80B40900  FC 03 00 28 */	fsub f0, f3, f0
/* 80B40904  FC 02 00 32 */	fmul f0, f2, f0
/* 80B40908  FC 41 00 32 */	fmul f2, f1, f0
/* 80B4090C  FC 40 10 18 */	frsp f2, f2
/* 80B40910  48 00 00 90 */	b lbl_80B409A0
lbl_80B40914:
/* 80B40914  C8 1E 06 10 */	lfd f0, 0x610(r30)
/* 80B40918  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B4091C  40 80 00 10 */	bge lbl_80B4092C
/* 80B40920  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B40924  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80B40928  48 00 00 78 */	b lbl_80B409A0
lbl_80B4092C:
/* 80B4092C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B40930  80 81 00 08 */	lwz r4, 8(r1)
/* 80B40934  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B40938  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B4093C  7C 03 00 00 */	cmpw r3, r0
/* 80B40940  41 82 00 14 */	beq lbl_80B40954
/* 80B40944  40 80 00 40 */	bge lbl_80B40984
/* 80B40948  2C 03 00 00 */	cmpwi r3, 0
/* 80B4094C  41 82 00 20 */	beq lbl_80B4096C
/* 80B40950  48 00 00 34 */	b lbl_80B40984
lbl_80B40954:
/* 80B40954  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B40958  41 82 00 0C */	beq lbl_80B40964
/* 80B4095C  38 00 00 01 */	li r0, 1
/* 80B40960  48 00 00 28 */	b lbl_80B40988
lbl_80B40964:
/* 80B40964  38 00 00 02 */	li r0, 2
/* 80B40968  48 00 00 20 */	b lbl_80B40988
lbl_80B4096C:
/* 80B4096C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B40970  41 82 00 0C */	beq lbl_80B4097C
/* 80B40974  38 00 00 05 */	li r0, 5
/* 80B40978  48 00 00 10 */	b lbl_80B40988
lbl_80B4097C:
/* 80B4097C  38 00 00 03 */	li r0, 3
/* 80B40980  48 00 00 08 */	b lbl_80B40988
lbl_80B40984:
/* 80B40984  38 00 00 04 */	li r0, 4
lbl_80B40988:
/* 80B40988  2C 00 00 01 */	cmpwi r0, 1
/* 80B4098C  40 82 00 10 */	bne lbl_80B4099C
/* 80B40990  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B40994  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80B40998  48 00 00 08 */	b lbl_80B409A0
lbl_80B4099C:
/* 80B4099C  FC 40 08 90 */	fmr f2, f1
lbl_80B409A0:
/* 80B409A0  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 80B409A4  4B 72 6C D0 */	b cM_atan2s__Fff
/* 80B409A8  7C 03 00 D0 */	neg r0, r3
/* 80B409AC  B0 1D 08 FC */	sth r0, 0x8fc(r29)
/* 80B409B0  48 00 00 10 */	b lbl_80B409C0
lbl_80B409B4:
/* 80B409B4  38 00 00 00 */	li r0, 0
/* 80B409B8  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 80B409BC  B0 1D 08 FC */	sth r0, 0x8fc(r29)
lbl_80B409C0:
/* 80B409C0  80 7D 0B D8 */	lwz r3, 0xbd8(r29)
/* 80B409C4  C3 E3 00 00 */	lfs f31, 0(r3)
/* 80B409C8  80 7D 0B DC */	lwz r3, 0xbdc(r29)
/* 80B409CC  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80B409D0  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B409D4  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80B409D8  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80B409DC  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 80B409E0  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80B409E4  4B 4C C3 80 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80B409E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B409EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B409F0  A8 9D 08 F0 */	lha r4, 0x8f0(r29)
/* 80B409F4  A8 BD 08 F2 */	lha r5, 0x8f2(r29)
/* 80B409F8  A8 DD 08 F4 */	lha r6, 0x8f4(r29)
/* 80B409FC  4B 4C B8 A4 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80B40A00  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B40A04  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B40A08  38 81 00 78 */	addi r4, r1, 0x78
/* 80B40A0C  38 A1 00 54 */	addi r5, r1, 0x54
/* 80B40A10  4B 80 63 5C */	b PSMTXMultVec
/* 80B40A14  80 7F 08 D4 */	lwz r3, 0x8d4(r31)
/* 80B40A18  80 1F 08 D8 */	lwz r0, 0x8d8(r31)
/* 80B40A1C  90 61 00 3C */	stw r3, 0x3c(r1)
/* 80B40A20  90 01 00 40 */	stw r0, 0x40(r1)
/* 80B40A24  80 1F 08 DC */	lwz r0, 0x8dc(r31)
/* 80B40A28  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B40A2C  38 61 00 3C */	addi r3, r1, 0x3c
/* 80B40A30  38 9D 0D CC */	addi r4, r29, 0xdcc
/* 80B40A34  4B 82 16 14 */	b __ptmf_cmpr
/* 80B40A38  2C 03 00 00 */	cmpwi r3, 0
/* 80B40A3C  40 82 00 30 */	bne lbl_80B40A6C
/* 80B40A40  80 7F 08 E0 */	lwz r3, 0x8e0(r31)
/* 80B40A44  80 1F 08 E4 */	lwz r0, 0x8e4(r31)
/* 80B40A48  90 61 00 30 */	stw r3, 0x30(r1)
/* 80B40A4C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B40A50  80 1F 08 E8 */	lwz r0, 0x8e8(r31)
/* 80B40A54  90 01 00 38 */	stw r0, 0x38(r1)
/* 80B40A58  38 61 00 30 */	addi r3, r1, 0x30
/* 80B40A5C  38 9D 0D CC */	addi r4, r29, 0xdcc
/* 80B40A60  4B 82 15 E8 */	b __ptmf_cmpr
/* 80B40A64  2C 03 00 00 */	cmpwi r3, 0
/* 80B40A68  41 82 00 24 */	beq lbl_80B40A8C
lbl_80B40A6C:
/* 80B40A6C  C0 41 00 5C */	lfs f2, 0x5c(r1)
/* 80B40A70  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80B40A74  EC 20 F8 2A */	fadds f1, f0, f31
/* 80B40A78  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80B40A7C  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 80B40A80  D0 3D 05 54 */	stfs f1, 0x554(r29)
/* 80B40A84  D0 5D 05 58 */	stfs f2, 0x558(r29)
/* 80B40A88  48 00 00 1C */	b lbl_80B40AA4
lbl_80B40A8C:
/* 80B40A8C  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 80B40A90  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80B40A94  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 80B40A98  C0 1E 05 84 */	lfs f0, 0x584(r30)
/* 80B40A9C  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 80B40AA0  D0 3D 05 58 */	stfs f1, 0x558(r29)
lbl_80B40AA4:
/* 80B40AA4  80 7F 08 EC */	lwz r3, 0x8ec(r31)
/* 80B40AA8  80 1F 08 F0 */	lwz r0, 0x8f0(r31)
/* 80B40AAC  90 61 00 24 */	stw r3, 0x24(r1)
/* 80B40AB0  90 01 00 28 */	stw r0, 0x28(r1)
/* 80B40AB4  80 1F 08 F4 */	lwz r0, 0x8f4(r31)
/* 80B40AB8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80B40ABC  38 61 00 24 */	addi r3, r1, 0x24
/* 80B40AC0  38 9D 0D CC */	addi r4, r29, 0xdcc
/* 80B40AC4  4B 82 15 84 */	b __ptmf_cmpr
/* 80B40AC8  2C 03 00 00 */	cmpwi r3, 0
/* 80B40ACC  41 82 00 30 */	beq lbl_80B40AFC
/* 80B40AD0  80 7F 08 F8 */	lwz r3, 0x8f8(r31)
/* 80B40AD4  80 1F 08 FC */	lwz r0, 0x8fc(r31)
/* 80B40AD8  90 61 00 18 */	stw r3, 0x18(r1)
/* 80B40ADC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B40AE0  80 1F 09 00 */	lwz r0, 0x900(r31)
/* 80B40AE4  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B40AE8  38 61 00 18 */	addi r3, r1, 0x18
/* 80B40AEC  38 9D 0D CC */	addi r4, r29, 0xdcc
/* 80B40AF0  4B 82 15 58 */	b __ptmf_cmpr
/* 80B40AF4  2C 03 00 00 */	cmpwi r3, 0
/* 80B40AF8  40 82 00 24 */	bne lbl_80B40B1C
lbl_80B40AFC:
/* 80B40AFC  38 7D 0D B4 */	addi r3, r29, 0xdb4
/* 80B40B00  38 81 00 54 */	addi r4, r1, 0x54
/* 80B40B04  4B 72 E6 D8 */	b SetC__8cM3dGCylFRC4cXyz
/* 80B40B08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B40B0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B40B10  38 63 23 3C */	addi r3, r3, 0x233c
/* 80B40B14  38 9D 0C 90 */	addi r4, r29, 0xc90
/* 80B40B18  4B 72 40 90 */	b Set__4cCcSFP8cCcD_Obj
lbl_80B40B1C:
/* 80B40B1C  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 80B40B20  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 80B40B24  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80B40B28  4B 82 16 EC */	b _restgpr_24
/* 80B40B2C  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80B40B30  7C 08 03 A6 */	mtlr r0
/* 80B40B34  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80B40B38  4E 80 00 20 */	blr 
