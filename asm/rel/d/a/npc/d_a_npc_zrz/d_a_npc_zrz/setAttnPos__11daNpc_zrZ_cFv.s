lbl_80B956B4:
/* 80B956B4  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80B956B8  7C 08 02 A6 */	mflr r0
/* 80B956BC  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80B956C0  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 80B956C4  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 80B956C8  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 80B956CC  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 80B956D0  39 61 00 90 */	addi r11, r1, 0x90
/* 80B956D4  4B 7C CA F4 */	b _savegpr_24
/* 80B956D8  7C 7D 1B 78 */	mr r29, r3
/* 80B956DC  3C 60 80 BA */	lis r3, lit_1109@ha
/* 80B956E0  3B C3 B8 68 */	addi r30, r3, lit_1109@l
/* 80B956E4  3C 60 80 BA */	lis r3, m__17daNpc_zrZ_Param_c@ha
/* 80B956E8  3B E3 AF EC */	addi r31, r3, m__17daNpc_zrZ_Param_c@l
/* 80B956EC  88 1E 00 5C */	lbz r0, 0x5c(r30)
/* 80B956F0  7C 00 07 75 */	extsb. r0, r0
/* 80B956F4  40 82 00 38 */	bne lbl_80B9572C
/* 80B956F8  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80B956FC  D0 1E 00 60 */	stfs f0, 0x60(r30)
/* 80B95700  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 80B95704  38 7E 00 60 */	addi r3, r30, 0x60
/* 80B95708  D0 03 00 04 */	stfs f0, 4(r3)
/* 80B9570C  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80B95710  D0 03 00 08 */	stfs f0, 8(r3)
/* 80B95714  3C 80 80 BA */	lis r4, __dt__4cXyzFv@ha
/* 80B95718  38 84 A7 F8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B9571C  38 BE 00 50 */	addi r5, r30, 0x50
/* 80B95720  4B FF E6 39 */	bl __register_global_object
/* 80B95724  38 00 00 01 */	li r0, 1
/* 80B95728  98 1E 00 5C */	stb r0, 0x5c(r30)
lbl_80B9572C:
/* 80B9572C  C3 FF 00 00 */	lfs f31, 0(r31)
/* 80B95730  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B95734  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B95738  A8 9D 09 90 */	lha r4, 0x990(r29)
/* 80B9573C  4B 47 6C A0 */	b mDoMtx_YrotS__FPA4_fs
/* 80B95740  38 7D 09 84 */	addi r3, r29, 0x984
/* 80B95744  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 80B95748  C0 5F 00 C8 */	lfs f2, 0xc8(r31)
/* 80B9574C  C0 7F 00 CC */	lfs f3, 0xcc(r31)
/* 80B95750  4B 6D A2 EC */	b cLib_addCalc2__FPffff
/* 80B95754  38 7D 09 8C */	addi r3, r29, 0x98c
/* 80B95758  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 80B9575C  C0 5F 00 C8 */	lfs f2, 0xc8(r31)
/* 80B95760  C0 7F 00 CC */	lfs f3, 0xcc(r31)
/* 80B95764  4B 6D A2 D8 */	b cLib_addCalc2__FPffff
/* 80B95768  3B 00 00 00 */	li r24, 0
/* 80B9576C  3B 80 00 00 */	li r28, 0
/* 80B95770  3B 60 00 00 */	li r27, 0
/* 80B95774  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80B95778  3B 23 9A 20 */	addi r25, r3, sincosTable___5JMath@l
/* 80B9577C  C3 DF 00 98 */	lfs f30, 0x98(r31)
/* 80B95780  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B95784  3B 43 D4 70 */	addi r26, r3, now__14mDoMtx_stack_c@l
lbl_80B95788:
/* 80B95788  A8 1D 09 92 */	lha r0, 0x992(r29)
/* 80B9578C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B95790  7C 39 04 2E */	lfsx f1, r25, r0
/* 80B95794  38 1B 09 84 */	addi r0, r27, 0x984
/* 80B95798  7C 1D 04 2E */	lfsx f0, r29, r0
/* 80B9579C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80B957A0  D3 C1 00 30 */	stfs f30, 0x30(r1)
/* 80B957A4  D3 C1 00 34 */	stfs f30, 0x34(r1)
/* 80B957A8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B957AC  7F 43 D3 78 */	mr r3, r26
/* 80B957B0  38 81 00 30 */	addi r4, r1, 0x30
/* 80B957B4  38 A1 00 24 */	addi r5, r1, 0x24
/* 80B957B8  4B 7B 15 B4 */	b PSMTXMultVec
/* 80B957BC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80B957C0  FC 00 00 50 */	fneg f0, f0
/* 80B957C4  FC 00 00 1E */	fctiwz f0, f0
/* 80B957C8  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 80B957CC  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 80B957D0  7C 7D E2 14 */	add r3, r29, r28
/* 80B957D4  B0 03 09 08 */	sth r0, 0x908(r3)
/* 80B957D8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80B957DC  FC 00 00 50 */	fneg f0, f0
/* 80B957E0  FC 00 00 1E */	fctiwz f0, f0
/* 80B957E4  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 80B957E8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80B957EC  B0 03 09 0C */	sth r0, 0x90c(r3)
/* 80B957F0  3B 18 00 01 */	addi r24, r24, 1
/* 80B957F4  2C 18 00 03 */	cmpwi r24, 3
/* 80B957F8  3B 9C 00 06 */	addi r28, r28, 6
/* 80B957FC  3B 7B 00 04 */	addi r27, r27, 4
/* 80B95800  41 80 FF 88 */	blt lbl_80B95788
/* 80B95804  38 7D 09 92 */	addi r3, r29, 0x992
/* 80B95808  38 80 00 00 */	li r4, 0
/* 80B9580C  38 A0 05 55 */	li r5, 0x555
/* 80B95810  4B 6D AE C0 */	b cLib_chaseS__FPsss
/* 80B95814  A8 1D 14 48 */	lha r0, 0x1448(r29)
/* 80B95818  2C 00 00 01 */	cmpwi r0, 1
/* 80B9581C  40 82 00 2C */	bne lbl_80B95848
/* 80B95820  38 60 00 00 */	li r3, 0
/* 80B95824  38 80 00 00 */	li r4, 0
/* 80B95828  38 00 00 03 */	li r0, 3
/* 80B9582C  7C 09 03 A6 */	mtctr r0
lbl_80B95830:
/* 80B95830  7C BD 1A 14 */	add r5, r29, r3
/* 80B95834  B0 85 09 1A */	sth r4, 0x91a(r5)
/* 80B95838  B0 85 09 1C */	sth r4, 0x91c(r5)
/* 80B9583C  B0 85 09 1E */	sth r4, 0x91e(r5)
/* 80B95840  38 63 00 06 */	addi r3, r3, 6
/* 80B95844  42 00 FF EC */	bdnz lbl_80B95830
lbl_80B95848:
/* 80B95848  7F A3 EB 78 */	mr r3, r29
/* 80B9584C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B95850  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B95854  7D 89 03 A6 */	mtctr r12
/* 80B95858  4E 80 04 21 */	bctrl 
/* 80B9585C  7F A3 EB 78 */	mr r3, r29
/* 80B95860  48 00 16 41 */	bl lookat__11daNpc_zrZ_cFv
/* 80B95864  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B95868  80 63 00 04 */	lwz r3, 4(r3)
/* 80B9586C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B95870  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B95874  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80B95878  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80B9587C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80B95880  4B 7B 0C 30 */	b PSMTXCopy
/* 80B95884  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B95888  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B9588C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B95890  D0 1D 08 E4 */	stfs f0, 0x8e4(r29)
/* 80B95894  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B95898  D0 1D 08 E8 */	stfs f0, 0x8e8(r29)
/* 80B9589C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80B958A0  D0 1D 08 EC */	stfs f0, 0x8ec(r29)
/* 80B958A4  38 9E 00 60 */	addi r4, r30, 0x60
/* 80B958A8  38 BD 05 38 */	addi r5, r29, 0x538
/* 80B958AC  4B 7B 14 C0 */	b PSMTXMultVec
/* 80B958B0  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80B958B4  38 9E 00 60 */	addi r4, r30, 0x60
/* 80B958B8  D0 04 00 04 */	stfs f0, 4(r4)
/* 80B958BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B958C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B958C4  38 A1 00 30 */	addi r5, r1, 0x30
/* 80B958C8  4B 7B 14 A4 */	b PSMTXMultVec
/* 80B958CC  38 7D 08 E4 */	addi r3, r29, 0x8e4
/* 80B958D0  38 81 00 30 */	addi r4, r1, 0x30
/* 80B958D4  4B 6D B3 A0 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80B958D8  B0 7D 09 02 */	sth r3, 0x902(r29)
/* 80B958DC  38 7D 08 E4 */	addi r3, r29, 0x8e4
/* 80B958E0  38 81 00 30 */	addi r4, r1, 0x30
/* 80B958E4  4B 6D B3 20 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B958E8  B0 7D 09 04 */	sth r3, 0x904(r29)
/* 80B958EC  80 9D 0C 14 */	lwz r4, 0xc14(r29)
/* 80B958F0  28 04 00 00 */	cmplwi r4, 0
/* 80B958F4  41 82 01 84 */	beq lbl_80B95A78
/* 80B958F8  38 61 00 18 */	addi r3, r1, 0x18
/* 80B958FC  38 BD 05 38 */	addi r5, r29, 0x538
/* 80B95900  4B 6D 12 34 */	b __mi__4cXyzCFRC3Vec
/* 80B95904  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80B95908  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B9590C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80B95910  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B95914  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80B95918  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B9591C  A8 7D 09 28 */	lha r3, 0x928(r29)
/* 80B95920  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80B95924  7C 03 02 14 */	add r0, r3, r0
/* 80B95928  7C 00 00 D0 */	neg r0, r0
/* 80B9592C  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 80B95930  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 80B95934  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 80B95938  4B 6D 1D 3C */	b cM_atan2s__Fff
/* 80B9593C  A8 1D 08 FE */	lha r0, 0x8fe(r29)
/* 80B95940  7C 00 1A 14 */	add r0, r0, r3
/* 80B95944  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 80B95948  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80B9594C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B95950  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80B95954  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B95958  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80B9595C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B95960  38 61 00 0C */	addi r3, r1, 0xc
/* 80B95964  4B 7B 17 D4 */	b PSVECSquareMag
/* 80B95968  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80B9596C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B95970  40 81 00 58 */	ble lbl_80B959C8
/* 80B95974  FC 00 08 34 */	frsqrte f0, f1
/* 80B95978  C8 9F 00 D0 */	lfd f4, 0xd0(r31)
/* 80B9597C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B95980  C8 7F 00 D8 */	lfd f3, 0xd8(r31)
/* 80B95984  FC 00 00 32 */	fmul f0, f0, f0
/* 80B95988  FC 01 00 32 */	fmul f0, f1, f0
/* 80B9598C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B95990  FC 02 00 32 */	fmul f0, f2, f0
/* 80B95994  FC 44 00 32 */	fmul f2, f4, f0
/* 80B95998  FC 00 00 32 */	fmul f0, f0, f0
/* 80B9599C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B959A0  FC 03 00 28 */	fsub f0, f3, f0
/* 80B959A4  FC 02 00 32 */	fmul f0, f2, f0
/* 80B959A8  FC 44 00 32 */	fmul f2, f4, f0
/* 80B959AC  FC 00 00 32 */	fmul f0, f0, f0
/* 80B959B0  FC 01 00 32 */	fmul f0, f1, f0
/* 80B959B4  FC 03 00 28 */	fsub f0, f3, f0
/* 80B959B8  FC 02 00 32 */	fmul f0, f2, f0
/* 80B959BC  FC 41 00 32 */	fmul f2, f1, f0
/* 80B959C0  FC 40 10 18 */	frsp f2, f2
/* 80B959C4  48 00 00 90 */	b lbl_80B95A54
lbl_80B959C8:
/* 80B959C8  C8 1F 00 E0 */	lfd f0, 0xe0(r31)
/* 80B959CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B959D0  40 80 00 10 */	bge lbl_80B959E0
/* 80B959D4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B959D8  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80B959DC  48 00 00 78 */	b lbl_80B95A54
lbl_80B959E0:
/* 80B959E0  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B959E4  80 81 00 08 */	lwz r4, 8(r1)
/* 80B959E8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B959EC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B959F0  7C 03 00 00 */	cmpw r3, r0
/* 80B959F4  41 82 00 14 */	beq lbl_80B95A08
/* 80B959F8  40 80 00 40 */	bge lbl_80B95A38
/* 80B959FC  2C 03 00 00 */	cmpwi r3, 0
/* 80B95A00  41 82 00 20 */	beq lbl_80B95A20
/* 80B95A04  48 00 00 34 */	b lbl_80B95A38
lbl_80B95A08:
/* 80B95A08  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B95A0C  41 82 00 0C */	beq lbl_80B95A18
/* 80B95A10  38 00 00 01 */	li r0, 1
/* 80B95A14  48 00 00 28 */	b lbl_80B95A3C
lbl_80B95A18:
/* 80B95A18  38 00 00 02 */	li r0, 2
/* 80B95A1C  48 00 00 20 */	b lbl_80B95A3C
lbl_80B95A20:
/* 80B95A20  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B95A24  41 82 00 0C */	beq lbl_80B95A30
/* 80B95A28  38 00 00 05 */	li r0, 5
/* 80B95A2C  48 00 00 10 */	b lbl_80B95A3C
lbl_80B95A30:
/* 80B95A30  38 00 00 03 */	li r0, 3
/* 80B95A34  48 00 00 08 */	b lbl_80B95A3C
lbl_80B95A38:
/* 80B95A38  38 00 00 04 */	li r0, 4
lbl_80B95A3C:
/* 80B95A3C  2C 00 00 01 */	cmpwi r0, 1
/* 80B95A40  40 82 00 10 */	bne lbl_80B95A50
/* 80B95A44  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B95A48  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80B95A4C  48 00 00 08 */	b lbl_80B95A54
lbl_80B95A50:
/* 80B95A50  FC 40 08 90 */	fmr f2, f1
lbl_80B95A54:
/* 80B95A54  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 80B95A58  4B 6D 1C 1C */	b cM_atan2s__Fff
/* 80B95A5C  7C 03 00 D0 */	neg r0, r3
/* 80B95A60  B0 1D 08 FC */	sth r0, 0x8fc(r29)
/* 80B95A64  A8 7D 08 FC */	lha r3, 0x8fc(r29)
/* 80B95A68  A8 1D 09 02 */	lha r0, 0x902(r29)
/* 80B95A6C  7C 03 02 14 */	add r0, r3, r0
/* 80B95A70  B0 1D 08 FC */	sth r0, 0x8fc(r29)
/* 80B95A74  48 00 00 10 */	b lbl_80B95A84
lbl_80B95A78:
/* 80B95A78  38 00 00 00 */	li r0, 0
/* 80B95A7C  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 80B95A80  B0 1D 08 FC */	sth r0, 0x8fc(r29)
lbl_80B95A84:
/* 80B95A84  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80B95A88  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B95A8C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B95A90  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B95A94  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80B95A98  4B 47 72 CC */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80B95A9C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B95AA0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B95AA4  A8 9D 08 F0 */	lha r4, 0x8f0(r29)
/* 80B95AA8  A8 BD 08 F2 */	lha r5, 0x8f2(r29)
/* 80B95AAC  A8 DD 08 F4 */	lha r6, 0x8f4(r29)
/* 80B95AB0  4B 47 67 F0 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80B95AB4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B95AB8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B95ABC  38 81 00 3C */	addi r4, r1, 0x3c
/* 80B95AC0  38 A1 00 48 */	addi r5, r1, 0x48
/* 80B95AC4  4B 7B 12 A8 */	b PSMTXMultVec
/* 80B95AC8  C0 41 00 50 */	lfs f2, 0x50(r1)
/* 80B95ACC  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80B95AD0  EC 20 F8 2A */	fadds f1, f0, f31
/* 80B95AD4  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80B95AD8  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 80B95ADC  D0 3D 05 54 */	stfs f1, 0x554(r29)
/* 80B95AE0  D0 5D 05 58 */	stfs f2, 0x558(r29)
/* 80B95AE4  88 1D 09 F2 */	lbz r0, 0x9f2(r29)
/* 80B95AE8  28 00 00 00 */	cmplwi r0, 0
/* 80B95AEC  40 82 00 A4 */	bne lbl_80B95B90
/* 80B95AF0  88 1D 09 F4 */	lbz r0, 0x9f4(r29)
/* 80B95AF4  28 00 00 00 */	cmplwi r0, 0
/* 80B95AF8  40 82 00 98 */	bne lbl_80B95B90
/* 80B95AFC  88 1D 09 F0 */	lbz r0, 0x9f0(r29)
/* 80B95B00  28 00 00 00 */	cmplwi r0, 0
/* 80B95B04  40 82 00 28 */	bne lbl_80B95B2C
/* 80B95B08  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80B95B0C  38 03 FD FF */	addi r0, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80B95B10  90 1D 12 EC */	stw r0, 0x12ec(r29)
/* 80B95B14  38 00 00 1F */	li r0, 0x1f
/* 80B95B18  90 1D 12 DC */	stw r0, 0x12dc(r29)
/* 80B95B1C  80 1D 13 60 */	lwz r0, 0x1360(r29)
/* 80B95B20  60 00 00 04 */	ori r0, r0, 4
/* 80B95B24  90 1D 13 60 */	stw r0, 0x1360(r29)
/* 80B95B28  48 00 00 10 */	b lbl_80B95B38
lbl_80B95B2C:
/* 80B95B2C  38 00 00 00 */	li r0, 0
/* 80B95B30  90 1D 12 EC */	stw r0, 0x12ec(r29)
/* 80B95B34  90 1D 12 DC */	stw r0, 0x12dc(r29)
lbl_80B95B38:
/* 80B95B38  38 7D 13 E8 */	addi r3, r29, 0x13e8
/* 80B95B3C  38 81 00 48 */	addi r4, r1, 0x48
/* 80B95B40  4B 6D 96 9C */	b SetC__8cM3dGCylFRC4cXyz
/* 80B95B44  38 7D 13 E8 */	addi r3, r29, 0x13e8
/* 80B95B48  38 9F 00 00 */	addi r4, r31, 0
/* 80B95B4C  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 80B95B50  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80B95B54  EC 21 00 2A */	fadds f1, f1, f0
/* 80B95B58  4B 6D 96 A0 */	b SetH__8cM3dGCylFf
/* 80B95B5C  38 7D 13 E8 */	addi r3, r29, 0x13e8
/* 80B95B60  38 9F 00 00 */	addi r4, r31, 0
/* 80B95B64  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 80B95B68  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80B95B6C  EC 21 00 2A */	fadds f1, f1, f0
/* 80B95B70  4B 6D 96 90 */	b SetR__8cM3dGCylFf
/* 80B95B74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B95B78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B95B7C  38 63 23 3C */	addi r3, r3, 0x233c
/* 80B95B80  38 9D 12 C4 */	addi r4, r29, 0x12c4
/* 80B95B84  4B 6C F0 24 */	b Set__4cCcSFP8cCcD_Obj
/* 80B95B88  38 00 00 69 */	li r0, 0x69
/* 80B95B8C  90 1D 12 F0 */	stw r0, 0x12f0(r29)
lbl_80B95B90:
/* 80B95B90  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 80B95B94  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 80B95B98  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 80B95B9C  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 80B95BA0  39 61 00 90 */	addi r11, r1, 0x90
/* 80B95BA4  4B 7C C6 70 */	b _restgpr_24
/* 80B95BA8  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80B95BAC  7C 08 03 A6 */	mtlr r0
/* 80B95BB0  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80B95BB4  4E 80 00 20 */	blr 
