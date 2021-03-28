lbl_809C02A0:
/* 809C02A0  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 809C02A4  7C 08 02 A6 */	mflr r0
/* 809C02A8  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 809C02AC  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 809C02B0  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 809C02B4  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 809C02B8  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 809C02BC  39 61 00 A0 */	addi r11, r1, 0xa0
/* 809C02C0  4B 9A 1F 08 */	b _savegpr_24
/* 809C02C4  7C 7D 1B 78 */	mr r29, r3
/* 809C02C8  3C 60 80 9D */	lis r3, lit_1109@ha
/* 809C02CC  3B C3 B2 F8 */	addi r30, r3, lit_1109@l
/* 809C02D0  3C 60 80 9D */	lis r3, m__17daNpc_grA_Param_c@ha
/* 809C02D4  3B E3 9D 98 */	addi r31, r3, m__17daNpc_grA_Param_c@l
/* 809C02D8  88 1E 00 5C */	lbz r0, 0x5c(r30)
/* 809C02DC  7C 00 07 75 */	extsb. r0, r0
/* 809C02E0  40 82 00 38 */	bne lbl_809C0318
/* 809C02E4  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 809C02E8  D0 1E 00 60 */	stfs f0, 0x60(r30)
/* 809C02EC  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 809C02F0  38 7E 00 60 */	addi r3, r30, 0x60
/* 809C02F4  D0 03 00 04 */	stfs f0, 4(r3)
/* 809C02F8  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 809C02FC  D0 03 00 08 */	stfs f0, 8(r3)
/* 809C0300  3C 80 80 9D */	lis r4, __dt__4cXyzFv@ha
/* 809C0304  38 84 94 7C */	addi r4, r4, __dt__4cXyzFv@l
/* 809C0308  38 BE 00 50 */	addi r5, r30, 0x50
/* 809C030C  4B FF E5 CD */	bl __register_global_object
/* 809C0310  38 00 00 01 */	li r0, 1
/* 809C0314  98 1E 00 5C */	stb r0, 0x5c(r30)
lbl_809C0318:
/* 809C0318  C3 FF 00 9C */	lfs f31, 0x9c(r31)
/* 809C031C  A0 1D 09 E6 */	lhz r0, 0x9e6(r29)
/* 809C0320  28 00 00 01 */	cmplwi r0, 1
/* 809C0324  41 82 00 08 */	beq lbl_809C032C
/* 809C0328  C3 FF 00 00 */	lfs f31, 0(r31)
lbl_809C032C:
/* 809C032C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809C0330  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809C0334  A8 9D 09 90 */	lha r4, 0x990(r29)
/* 809C0338  4B 64 C0 A4 */	b mDoMtx_YrotS__FPA4_fs
/* 809C033C  38 7D 09 84 */	addi r3, r29, 0x984
/* 809C0340  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 809C0344  C0 5F 00 B4 */	lfs f2, 0xb4(r31)
/* 809C0348  C0 7F 00 B8 */	lfs f3, 0xb8(r31)
/* 809C034C  4B 8A F6 F0 */	b cLib_addCalc2__FPffff
/* 809C0350  38 7D 09 8C */	addi r3, r29, 0x98c
/* 809C0354  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 809C0358  C0 5F 00 B4 */	lfs f2, 0xb4(r31)
/* 809C035C  C0 7F 00 B8 */	lfs f3, 0xb8(r31)
/* 809C0360  4B 8A F6 DC */	b cLib_addCalc2__FPffff
/* 809C0364  3B 00 00 00 */	li r24, 0
/* 809C0368  3B 80 00 00 */	li r28, 0
/* 809C036C  3B 60 00 00 */	li r27, 0
/* 809C0370  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 809C0374  3B 23 9A 20 */	addi r25, r3, sincosTable___5JMath@l
/* 809C0378  C3 DF 00 9C */	lfs f30, 0x9c(r31)
/* 809C037C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809C0380  3B 43 D4 70 */	addi r26, r3, now__14mDoMtx_stack_c@l
lbl_809C0384:
/* 809C0384  A8 1D 09 92 */	lha r0, 0x992(r29)
/* 809C0388  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 809C038C  7C 39 04 2E */	lfsx f1, r25, r0
/* 809C0390  38 1B 09 84 */	addi r0, r27, 0x984
/* 809C0394  7C 1D 04 2E */	lfsx f0, r29, r0
/* 809C0398  EC 00 00 72 */	fmuls f0, f0, f1
/* 809C039C  D3 C1 00 54 */	stfs f30, 0x54(r1)
/* 809C03A0  D3 C1 00 58 */	stfs f30, 0x58(r1)
/* 809C03A4  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 809C03A8  7F 43 D3 78 */	mr r3, r26
/* 809C03AC  38 81 00 54 */	addi r4, r1, 0x54
/* 809C03B0  38 A1 00 48 */	addi r5, r1, 0x48
/* 809C03B4  4B 98 69 B8 */	b PSMTXMultVec
/* 809C03B8  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 809C03BC  FC 00 00 50 */	fneg f0, f0
/* 809C03C0  FC 00 00 1E */	fctiwz f0, f0
/* 809C03C4  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 809C03C8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 809C03CC  7C 7D E2 14 */	add r3, r29, r28
/* 809C03D0  B0 03 09 08 */	sth r0, 0x908(r3)
/* 809C03D4  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 809C03D8  FC 00 00 50 */	fneg f0, f0
/* 809C03DC  FC 00 00 1E */	fctiwz f0, f0
/* 809C03E0  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 809C03E4  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 809C03E8  B0 03 09 0C */	sth r0, 0x90c(r3)
/* 809C03EC  3B 18 00 01 */	addi r24, r24, 1
/* 809C03F0  2C 18 00 03 */	cmpwi r24, 3
/* 809C03F4  3B 9C 00 06 */	addi r28, r28, 6
/* 809C03F8  3B 7B 00 04 */	addi r27, r27, 4
/* 809C03FC  41 80 FF 88 */	blt lbl_809C0384
/* 809C0400  38 7D 09 92 */	addi r3, r29, 0x992
/* 809C0404  38 80 00 00 */	li r4, 0
/* 809C0408  38 A0 05 55 */	li r5, 0x555
/* 809C040C  4B 8B 02 C4 */	b cLib_chaseS__FPsss
/* 809C0410  A8 1D 14 70 */	lha r0, 0x1470(r29)
/* 809C0414  2C 00 00 01 */	cmpwi r0, 1
/* 809C0418  40 82 00 2C */	bne lbl_809C0444
/* 809C041C  38 60 00 00 */	li r3, 0
/* 809C0420  38 80 00 00 */	li r4, 0
/* 809C0424  38 00 00 03 */	li r0, 3
/* 809C0428  7C 09 03 A6 */	mtctr r0
lbl_809C042C:
/* 809C042C  7C BD 1A 14 */	add r5, r29, r3
/* 809C0430  B0 85 09 1A */	sth r4, 0x91a(r5)
/* 809C0434  B0 85 09 1C */	sth r4, 0x91c(r5)
/* 809C0438  B0 85 09 1E */	sth r4, 0x91e(r5)
/* 809C043C  38 63 00 06 */	addi r3, r3, 6
/* 809C0440  42 00 FF EC */	bdnz lbl_809C042C
lbl_809C0444:
/* 809C0444  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 809C0448  80 63 00 04 */	lwz r3, 4(r3)
/* 809C044C  80 A3 00 04 */	lwz r5, 4(r3)
/* 809C0450  38 C0 00 00 */	li r6, 0
/* 809C0454  3C 60 80 9C */	lis r3, ctrlJointCallBack__11daNpc_grA_cFP8J3DJointi@ha
/* 809C0458  38 83 F7 58 */	addi r4, r3, ctrlJointCallBack__11daNpc_grA_cFP8J3DJointi@l
/* 809C045C  48 00 00 18 */	b lbl_809C0474
lbl_809C0460:
/* 809C0460  80 65 00 28 */	lwz r3, 0x28(r5)
/* 809C0464  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 809C0468  7C 63 00 2E */	lwzx r3, r3, r0
/* 809C046C  90 83 00 04 */	stw r4, 4(r3)
/* 809C0470  38 C6 00 01 */	addi r6, r6, 1
lbl_809C0474:
/* 809C0474  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 809C0478  A0 05 00 2C */	lhz r0, 0x2c(r5)
/* 809C047C  7C 03 00 40 */	cmplw r3, r0
/* 809C0480  41 80 FF E0 */	blt lbl_809C0460
/* 809C0484  7F A3 EB 78 */	mr r3, r29
/* 809C0488  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809C048C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 809C0490  7D 89 03 A6 */	mtctr r12
/* 809C0494  4E 80 04 21 */	bctrl 
/* 809C0498  7F A3 EB 78 */	mr r3, r29
/* 809C049C  48 00 35 B9 */	bl setOtherObjMtx__11daNpc_grA_cFv
/* 809C04A0  7F A3 EB 78 */	mr r3, r29
/* 809C04A4  48 00 2B F1 */	bl lookat__11daNpc_grA_cFv
/* 809C04A8  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 809C04AC  80 63 00 04 */	lwz r3, 4(r3)
/* 809C04B0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809C04B4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809C04B8  38 63 00 C0 */	addi r3, r3, 0xc0
/* 809C04BC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 809C04C0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 809C04C4  4B 98 5F EC */	b PSMTXCopy
/* 809C04C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809C04CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809C04D0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 809C04D4  D0 1D 08 E4 */	stfs f0, 0x8e4(r29)
/* 809C04D8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 809C04DC  D0 1D 08 E8 */	stfs f0, 0x8e8(r29)
/* 809C04E0  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 809C04E4  D0 1D 08 EC */	stfs f0, 0x8ec(r29)
/* 809C04E8  38 9E 00 60 */	addi r4, r30, 0x60
/* 809C04EC  38 BD 05 38 */	addi r5, r29, 0x538
/* 809C04F0  4B 98 68 7C */	b PSMTXMultVec
/* 809C04F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809C04F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809C04FC  38 9E 00 60 */	addi r4, r30, 0x60
/* 809C0500  38 A1 00 54 */	addi r5, r1, 0x54
/* 809C0504  4B 98 68 68 */	b PSMTXMultVec
/* 809C0508  38 7D 08 E4 */	addi r3, r29, 0x8e4
/* 809C050C  38 81 00 54 */	addi r4, r1, 0x54
/* 809C0510  4B 8B 07 64 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 809C0514  B0 7D 09 02 */	sth r3, 0x902(r29)
/* 809C0518  38 7D 08 E4 */	addi r3, r29, 0x8e4
/* 809C051C  38 81 00 54 */	addi r4, r1, 0x54
/* 809C0520  4B 8B 06 E4 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 809C0524  B0 7D 09 04 */	sth r3, 0x904(r29)
/* 809C0528  80 9D 0C 10 */	lwz r4, 0xc10(r29)
/* 809C052C  28 04 00 00 */	cmplwi r4, 0
/* 809C0530  41 82 01 6C */	beq lbl_809C069C
/* 809C0534  38 61 00 30 */	addi r3, r1, 0x30
/* 809C0538  38 BD 05 38 */	addi r5, r29, 0x538
/* 809C053C  4B 8A 65 F8 */	b __mi__4cXyzCFRC3Vec
/* 809C0540  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 809C0544  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 809C0548  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 809C054C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 809C0550  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 809C0554  D0 41 00 68 */	stfs f2, 0x68(r1)
/* 809C0558  A8 7D 09 28 */	lha r3, 0x928(r29)
/* 809C055C  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 809C0560  7C 03 02 14 */	add r0, r3, r0
/* 809C0564  7C 00 00 D0 */	neg r0, r0
/* 809C0568  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 809C056C  4B 8A 71 08 */	b cM_atan2s__Fff
/* 809C0570  A8 1D 08 FE */	lha r0, 0x8fe(r29)
/* 809C0574  7C 00 1A 14 */	add r0, r0, r3
/* 809C0578  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 809C057C  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 809C0580  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809C0584  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 809C0588  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809C058C  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 809C0590  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809C0594  38 61 00 0C */	addi r3, r1, 0xc
/* 809C0598  4B 98 6B A0 */	b PSVECSquareMag
/* 809C059C  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 809C05A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809C05A4  40 81 00 58 */	ble lbl_809C05FC
/* 809C05A8  FC 00 08 34 */	frsqrte f0, f1
/* 809C05AC  C8 9F 00 C0 */	lfd f4, 0xc0(r31)
/* 809C05B0  FC 44 00 32 */	fmul f2, f4, f0
/* 809C05B4  C8 7F 00 C8 */	lfd f3, 0xc8(r31)
/* 809C05B8  FC 00 00 32 */	fmul f0, f0, f0
/* 809C05BC  FC 01 00 32 */	fmul f0, f1, f0
/* 809C05C0  FC 03 00 28 */	fsub f0, f3, f0
/* 809C05C4  FC 02 00 32 */	fmul f0, f2, f0
/* 809C05C8  FC 44 00 32 */	fmul f2, f4, f0
/* 809C05CC  FC 00 00 32 */	fmul f0, f0, f0
/* 809C05D0  FC 01 00 32 */	fmul f0, f1, f0
/* 809C05D4  FC 03 00 28 */	fsub f0, f3, f0
/* 809C05D8  FC 02 00 32 */	fmul f0, f2, f0
/* 809C05DC  FC 44 00 32 */	fmul f2, f4, f0
/* 809C05E0  FC 00 00 32 */	fmul f0, f0, f0
/* 809C05E4  FC 01 00 32 */	fmul f0, f1, f0
/* 809C05E8  FC 03 00 28 */	fsub f0, f3, f0
/* 809C05EC  FC 02 00 32 */	fmul f0, f2, f0
/* 809C05F0  FC 41 00 32 */	fmul f2, f1, f0
/* 809C05F4  FC 40 10 18 */	frsp f2, f2
/* 809C05F8  48 00 00 90 */	b lbl_809C0688
lbl_809C05FC:
/* 809C05FC  C8 1F 00 D0 */	lfd f0, 0xd0(r31)
/* 809C0600  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809C0604  40 80 00 10 */	bge lbl_809C0614
/* 809C0608  3C 60 80 45 */	lis r3, __float_nan@ha
/* 809C060C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 809C0610  48 00 00 78 */	b lbl_809C0688
lbl_809C0614:
/* 809C0614  D0 21 00 08 */	stfs f1, 8(r1)
/* 809C0618  80 81 00 08 */	lwz r4, 8(r1)
/* 809C061C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 809C0620  3C 00 7F 80 */	lis r0, 0x7f80
/* 809C0624  7C 03 00 00 */	cmpw r3, r0
/* 809C0628  41 82 00 14 */	beq lbl_809C063C
/* 809C062C  40 80 00 40 */	bge lbl_809C066C
/* 809C0630  2C 03 00 00 */	cmpwi r3, 0
/* 809C0634  41 82 00 20 */	beq lbl_809C0654
/* 809C0638  48 00 00 34 */	b lbl_809C066C
lbl_809C063C:
/* 809C063C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809C0640  41 82 00 0C */	beq lbl_809C064C
/* 809C0644  38 00 00 01 */	li r0, 1
/* 809C0648  48 00 00 28 */	b lbl_809C0670
lbl_809C064C:
/* 809C064C  38 00 00 02 */	li r0, 2
/* 809C0650  48 00 00 20 */	b lbl_809C0670
lbl_809C0654:
/* 809C0654  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809C0658  41 82 00 0C */	beq lbl_809C0664
/* 809C065C  38 00 00 05 */	li r0, 5
/* 809C0660  48 00 00 10 */	b lbl_809C0670
lbl_809C0664:
/* 809C0664  38 00 00 03 */	li r0, 3
/* 809C0668  48 00 00 08 */	b lbl_809C0670
lbl_809C066C:
/* 809C066C  38 00 00 04 */	li r0, 4
lbl_809C0670:
/* 809C0670  2C 00 00 01 */	cmpwi r0, 1
/* 809C0674  40 82 00 10 */	bne lbl_809C0684
/* 809C0678  3C 60 80 45 */	lis r3, __float_nan@ha
/* 809C067C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 809C0680  48 00 00 08 */	b lbl_809C0688
lbl_809C0684:
/* 809C0684  FC 40 08 90 */	fmr f2, f1
lbl_809C0688:
/* 809C0688  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 809C068C  4B 8A 6F E8 */	b cM_atan2s__Fff
/* 809C0690  7C 03 00 D0 */	neg r0, r3
/* 809C0694  B0 1D 08 FC */	sth r0, 0x8fc(r29)
/* 809C0698  48 00 00 10 */	b lbl_809C06A8
lbl_809C069C:
/* 809C069C  38 00 00 00 */	li r0, 0
/* 809C06A0  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 809C06A4  B0 1D 08 FC */	sth r0, 0x8fc(r29)
lbl_809C06A8:
/* 809C06A8  3C 60 80 9D */	lis r3, lit_5105@ha
/* 809C06AC  38 83 AC 7C */	addi r4, r3, lit_5105@l
/* 809C06B0  80 64 00 00 */	lwz r3, 0(r4)
/* 809C06B4  80 04 00 04 */	lwz r0, 4(r4)
/* 809C06B8  90 61 00 24 */	stw r3, 0x24(r1)
/* 809C06BC  90 01 00 28 */	stw r0, 0x28(r1)
/* 809C06C0  80 04 00 08 */	lwz r0, 8(r4)
/* 809C06C4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 809C06C8  7F A3 EB 78 */	mr r3, r29
/* 809C06CC  38 81 00 24 */	addi r4, r1, 0x24
/* 809C06D0  48 00 21 ED */	bl chkAction__11daNpc_grA_cFM11daNpc_grA_cFPCvPvPv_i
/* 809C06D4  2C 03 00 00 */	cmpwi r3, 0
/* 809C06D8  40 82 00 10 */	bne lbl_809C06E8
/* 809C06DC  80 1D 14 D8 */	lwz r0, 0x14d8(r29)
/* 809C06E0  2C 00 00 1A */	cmpwi r0, 0x1a
/* 809C06E4  40 82 00 28 */	bne lbl_809C070C
lbl_809C06E8:
/* 809C06E8  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 809C06EC  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 809C06F0  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 809C06F4  EC 21 00 2A */	fadds f1, f1, f0
/* 809C06F8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 809C06FC  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 809C0700  D0 3D 05 54 */	stfs f1, 0x554(r29)
/* 809C0704  D0 5D 05 58 */	stfs f2, 0x558(r29)
/* 809C0708  48 00 00 20 */	b lbl_809C0728
lbl_809C070C:
/* 809C070C  C0 5D 08 EC */	lfs f2, 0x8ec(r29)
/* 809C0710  C0 1D 08 E8 */	lfs f0, 0x8e8(r29)
/* 809C0714  EC 20 F8 2A */	fadds f1, f0, f31
/* 809C0718  C0 1D 08 E4 */	lfs f0, 0x8e4(r29)
/* 809C071C  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 809C0720  D0 3D 05 54 */	stfs f1, 0x554(r29)
/* 809C0724  D0 5D 05 58 */	stfs f2, 0x558(r29)
lbl_809C0728:
/* 809C0728  88 1D 09 F2 */	lbz r0, 0x9f2(r29)
/* 809C072C  28 00 00 00 */	cmplwi r0, 0
/* 809C0730  40 82 01 B4 */	bne lbl_809C08E4
/* 809C0734  80 1D 09 54 */	lwz r0, 0x954(r29)
/* 809C0738  2C 00 00 00 */	cmpwi r0, 0
/* 809C073C  40 82 00 4C */	bne lbl_809C0788
/* 809C0740  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 809C0744  38 03 FD FF */	addi r0, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 809C0748  90 1D 0C C0 */	stw r0, 0xcc0(r29)
/* 809C074C  38 00 00 1F */	li r0, 0x1f
/* 809C0750  90 1D 0C B0 */	stw r0, 0xcb0(r29)
/* 809C0754  80 1D 0D 34 */	lwz r0, 0xd34(r29)
/* 809C0758  60 00 00 04 */	ori r0, r0, 4
/* 809C075C  90 1D 0D 34 */	stw r0, 0xd34(r29)
/* 809C0760  88 1D 14 74 */	lbz r0, 0x1474(r29)
/* 809C0764  28 00 00 07 */	cmplwi r0, 7
/* 809C0768  40 82 00 2C */	bne lbl_809C0794
/* 809C076C  80 1D 0D 34 */	lwz r0, 0xd34(r29)
/* 809C0770  60 00 00 02 */	ori r0, r0, 2
/* 809C0774  90 1D 0D 34 */	stw r0, 0xd34(r29)
/* 809C0778  80 1D 0D 34 */	lwz r0, 0xd34(r29)
/* 809C077C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 809C0780  90 1D 0D 34 */	stw r0, 0xd34(r29)
/* 809C0784  48 00 00 10 */	b lbl_809C0794
lbl_809C0788:
/* 809C0788  38 00 00 00 */	li r0, 0
/* 809C078C  90 1D 0C C0 */	stw r0, 0xcc0(r29)
/* 809C0790  90 1D 0C B0 */	stw r0, 0xcb0(r29)
lbl_809C0794:
/* 809C0794  88 1D 14 74 */	lbz r0, 0x1474(r29)
/* 809C0798  28 00 00 0A */	cmplwi r0, 0xa
/* 809C079C  40 82 00 50 */	bne lbl_809C07EC
/* 809C07A0  80 1D 14 D8 */	lwz r0, 0x14d8(r29)
/* 809C07A4  2C 00 00 1A */	cmpwi r0, 0x1a
/* 809C07A8  40 82 00 38 */	bne lbl_809C07E0
/* 809C07AC  80 1D 0C 98 */	lwz r0, 0xc98(r29)
/* 809C07B0  60 00 00 0C */	ori r0, r0, 0xc
/* 809C07B4  90 1D 0C 98 */	stw r0, 0xc98(r29)
/* 809C07B8  38 00 00 0A */	li r0, 0xa
/* 809C07BC  98 1D 0D 0C */	stb r0, 0xd0c(r29)
/* 809C07C0  38 00 00 0D */	li r0, 0xd
/* 809C07C4  98 1D 0D 0F */	stb r0, 0xd0f(r29)
/* 809C07C8  38 00 04 00 */	li r0, 0x400
/* 809C07CC  90 1D 0C A8 */	stw r0, 0xca8(r29)
/* 809C07D0  80 1D 0C 98 */	lwz r0, 0xc98(r29)
/* 809C07D4  60 00 00 01 */	ori r0, r0, 1
/* 809C07D8  90 1D 0C 98 */	stw r0, 0xc98(r29)
/* 809C07DC  48 00 00 10 */	b lbl_809C07EC
lbl_809C07E0:
/* 809C07E0  80 1D 0C 98 */	lwz r0, 0xc98(r29)
/* 809C07E4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 809C07E8  90 1D 0C 98 */	stw r0, 0xc98(r29)
lbl_809C07EC:
/* 809C07EC  38 7F 00 00 */	addi r3, r31, 0
/* 809C07F0  C3 E3 00 14 */	lfs f31, 0x14(r3)
/* 809C07F4  88 1D 14 74 */	lbz r0, 0x1474(r29)
/* 809C07F8  28 00 00 02 */	cmplwi r0, 2
/* 809C07FC  40 82 00 10 */	bne lbl_809C080C
/* 809C0800  C3 DF 00 94 */	lfs f30, 0x94(r31)
/* 809C0804  C3 FF 00 D8 */	lfs f31, 0xd8(r31)
/* 809C0808  48 00 00 08 */	b lbl_809C0810
lbl_809C080C:
/* 809C080C  C3 C3 00 1C */	lfs f30, 0x1c(r3)
lbl_809C0810:
/* 809C0810  3C 60 80 9D */	lis r3, lit_5126@ha
/* 809C0814  38 83 AC 88 */	addi r4, r3, lit_5126@l
/* 809C0818  80 64 00 00 */	lwz r3, 0(r4)
/* 809C081C  80 04 00 04 */	lwz r0, 4(r4)
/* 809C0820  90 61 00 18 */	stw r3, 0x18(r1)
/* 809C0824  90 01 00 1C */	stw r0, 0x1c(r1)
/* 809C0828  80 04 00 08 */	lwz r0, 8(r4)
/* 809C082C  90 01 00 20 */	stw r0, 0x20(r1)
/* 809C0830  7F A3 EB 78 */	mr r3, r29
/* 809C0834  38 81 00 18 */	addi r4, r1, 0x18
/* 809C0838  48 00 20 85 */	bl chkAction__11daNpc_grA_cFM11daNpc_grA_cFPCvPvPv_i
/* 809C083C  2C 03 00 00 */	cmpwi r3, 0
/* 809C0840  41 82 00 64 */	beq lbl_809C08A4
/* 809C0844  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 809C0848  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 809C084C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 809C0850  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 809C0854  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 809C0858  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809C085C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809C0860  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 809C0864  4B 64 BB 78 */	b mDoMtx_YrotS__FPA4_fs
/* 809C0868  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809C086C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809C0870  38 81 00 3C */	addi r4, r1, 0x3c
/* 809C0874  7C 85 23 78 */	mr r5, r4
/* 809C0878  4B 98 64 F4 */	b PSMTXMultVec
/* 809C087C  38 61 00 3C */	addi r3, r1, 0x3c
/* 809C0880  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 809C0884  7C 65 1B 78 */	mr r5, r3
/* 809C0888  4B 98 68 08 */	b PSVECAdd
/* 809C088C  38 7D 0D BC */	addi r3, r29, 0xdbc
/* 809C0890  38 81 00 3C */	addi r4, r1, 0x3c
/* 809C0894  4B 8A E9 48 */	b SetC__8cM3dGCylFRC4cXyz
/* 809C0898  C3 DF 00 E0 */	lfs f30, 0xe0(r31)
/* 809C089C  FF E0 F0 90 */	fmr f31, f30
/* 809C08A0  48 00 00 10 */	b lbl_809C08B0
lbl_809C08A4:
/* 809C08A4  38 7D 0D BC */	addi r3, r29, 0xdbc
/* 809C08A8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 809C08AC  4B 8A E9 30 */	b SetC__8cM3dGCylFRC4cXyz
lbl_809C08B0:
/* 809C08B0  38 00 00 79 */	li r0, 0x79
/* 809C08B4  90 1D 0C C4 */	stw r0, 0xcc4(r29)
/* 809C08B8  38 7D 0D BC */	addi r3, r29, 0xdbc
/* 809C08BC  FC 20 F8 90 */	fmr f1, f31
/* 809C08C0  4B 8A E9 38 */	b SetH__8cM3dGCylFf
/* 809C08C4  38 7D 0D BC */	addi r3, r29, 0xdbc
/* 809C08C8  FC 20 F0 90 */	fmr f1, f30
/* 809C08CC  4B 8A E9 34 */	b SetR__8cM3dGCylFf
/* 809C08D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809C08D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809C08D8  38 63 23 3C */	addi r3, r3, 0x233c
/* 809C08DC  38 9D 0C 98 */	addi r4, r29, 0xc98
/* 809C08E0  4B 8A 42 C8 */	b Set__4cCcSFP8cCcD_Obj
lbl_809C08E4:
/* 809C08E4  38 7D 0C 98 */	addi r3, r29, 0xc98
/* 809C08E8  81 9D 0C D4 */	lwz r12, 0xcd4(r29)
/* 809C08EC  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 809C08F0  7D 89 03 A6 */	mtctr r12
/* 809C08F4  4E 80 04 21 */	bctrl 
/* 809C08F8  38 7D 0C 98 */	addi r3, r29, 0xc98
/* 809C08FC  81 9D 0C D4 */	lwz r12, 0xcd4(r29)
/* 809C0900  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 809C0904  7D 89 03 A6 */	mtctr r12
/* 809C0908  4E 80 04 21 */	bctrl 
/* 809C090C  38 7D 0C 98 */	addi r3, r29, 0xc98
/* 809C0910  81 9D 0C D4 */	lwz r12, 0xcd4(r29)
/* 809C0914  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 809C0918  7D 89 03 A6 */	mtctr r12
/* 809C091C  4E 80 04 21 */	bctrl 
/* 809C0920  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 809C0924  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 809C0928  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 809C092C  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 809C0930  39 61 00 A0 */	addi r11, r1, 0xa0
/* 809C0934  4B 9A 18 E0 */	b _restgpr_24
/* 809C0938  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 809C093C  7C 08 03 A6 */	mtlr r0
/* 809C0940  38 21 00 C0 */	addi r1, r1, 0xc0
/* 809C0944  4E 80 00 20 */	blr 
