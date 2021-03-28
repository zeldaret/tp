lbl_809CC3F4:
/* 809CC3F4  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 809CC3F8  7C 08 02 A6 */	mflr r0
/* 809CC3FC  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 809CC400  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 809CC404  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 809CC408  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 809CC40C  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 809CC410  39 61 00 90 */	addi r11, r1, 0x90
/* 809CC414  4B 99 5D B4 */	b _savegpr_24
/* 809CC418  7C 7C 1B 78 */	mr r28, r3
/* 809CC41C  3C 60 80 9D */	lis r3, lit_1109@ha
/* 809CC420  3B A3 FB 68 */	addi r29, r3, lit_1109@l
/* 809CC424  3C 60 80 9D */	lis r3, m__17daNpc_grC_Param_c@ha
/* 809CC428  3B C3 F5 1C */	addi r30, r3, m__17daNpc_grC_Param_c@l
/* 809CC42C  88 1D 00 5C */	lbz r0, 0x5c(r29)
/* 809CC430  7C 00 07 75 */	extsb. r0, r0
/* 809CC434  40 82 00 38 */	bne lbl_809CC46C
/* 809CC438  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 809CC43C  D0 1D 00 60 */	stfs f0, 0x60(r29)
/* 809CC440  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 809CC444  38 7D 00 60 */	addi r3, r29, 0x60
/* 809CC448  D0 03 00 04 */	stfs f0, 4(r3)
/* 809CC44C  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 809CC450  D0 03 00 08 */	stfs f0, 8(r3)
/* 809CC454  3C 80 80 9D */	lis r4, __dt__4cXyzFv@ha
/* 809CC458  38 84 ED F8 */	addi r4, r4, __dt__4cXyzFv@l
/* 809CC45C  38 BD 00 50 */	addi r5, r29, 0x50
/* 809CC460  4B FF EF F9 */	bl __register_global_object
/* 809CC464  38 00 00 01 */	li r0, 1
/* 809CC468  98 1D 00 5C */	stb r0, 0x5c(r29)
lbl_809CC46C:
/* 809CC46C  C3 FE 00 00 */	lfs f31, 0(r30)
/* 809CC470  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809CC474  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809CC478  A8 9C 09 90 */	lha r4, 0x990(r28)
/* 809CC47C  4B 63 FF 60 */	b mDoMtx_YrotS__FPA4_fs
/* 809CC480  38 7C 09 84 */	addi r3, r28, 0x984
/* 809CC484  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 809CC488  C0 5E 00 98 */	lfs f2, 0x98(r30)
/* 809CC48C  C0 7E 00 9C */	lfs f3, 0x9c(r30)
/* 809CC490  4B 8A 35 AC */	b cLib_addCalc2__FPffff
/* 809CC494  38 7C 09 8C */	addi r3, r28, 0x98c
/* 809CC498  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 809CC49C  C0 5E 00 98 */	lfs f2, 0x98(r30)
/* 809CC4A0  C0 7E 00 9C */	lfs f3, 0x9c(r30)
/* 809CC4A4  4B 8A 35 98 */	b cLib_addCalc2__FPffff
/* 809CC4A8  3B 00 00 00 */	li r24, 0
/* 809CC4AC  3B E0 00 00 */	li r31, 0
/* 809CC4B0  3B 60 00 00 */	li r27, 0
/* 809CC4B4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 809CC4B8  3B 23 9A 20 */	addi r25, r3, sincosTable___5JMath@l
/* 809CC4BC  C3 DE 00 80 */	lfs f30, 0x80(r30)
/* 809CC4C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809CC4C4  3B 43 D4 70 */	addi r26, r3, now__14mDoMtx_stack_c@l
lbl_809CC4C8:
/* 809CC4C8  A8 1C 09 92 */	lha r0, 0x992(r28)
/* 809CC4CC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 809CC4D0  7C 39 04 2E */	lfsx f1, r25, r0
/* 809CC4D4  38 1B 09 84 */	addi r0, r27, 0x984
/* 809CC4D8  7C 1C 04 2E */	lfsx f0, r28, r0
/* 809CC4DC  EC 00 00 72 */	fmuls f0, f0, f1
/* 809CC4E0  D3 C1 00 30 */	stfs f30, 0x30(r1)
/* 809CC4E4  D3 C1 00 34 */	stfs f30, 0x34(r1)
/* 809CC4E8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 809CC4EC  7F 43 D3 78 */	mr r3, r26
/* 809CC4F0  38 81 00 30 */	addi r4, r1, 0x30
/* 809CC4F4  38 A1 00 24 */	addi r5, r1, 0x24
/* 809CC4F8  4B 97 A8 74 */	b PSMTXMultVec
/* 809CC4FC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 809CC500  FC 00 00 50 */	fneg f0, f0
/* 809CC504  FC 00 00 1E */	fctiwz f0, f0
/* 809CC508  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 809CC50C  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 809CC510  7C 7C FA 14 */	add r3, r28, r31
/* 809CC514  B0 03 09 08 */	sth r0, 0x908(r3)
/* 809CC518  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 809CC51C  FC 00 00 50 */	fneg f0, f0
/* 809CC520  FC 00 00 1E */	fctiwz f0, f0
/* 809CC524  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 809CC528  80 01 00 64 */	lwz r0, 0x64(r1)
/* 809CC52C  B0 03 09 0C */	sth r0, 0x90c(r3)
/* 809CC530  3B 18 00 01 */	addi r24, r24, 1
/* 809CC534  2C 18 00 03 */	cmpwi r24, 3
/* 809CC538  3B FF 00 06 */	addi r31, r31, 6
/* 809CC53C  3B 7B 00 04 */	addi r27, r27, 4
/* 809CC540  41 80 FF 88 */	blt lbl_809CC4C8
/* 809CC544  38 7C 09 92 */	addi r3, r28, 0x992
/* 809CC548  38 80 00 00 */	li r4, 0
/* 809CC54C  38 A0 05 55 */	li r5, 0x555
/* 809CC550  4B 8A 41 80 */	b cLib_chaseS__FPsss
/* 809CC554  A8 1C 0E 44 */	lha r0, 0xe44(r28)
/* 809CC558  2C 00 00 01 */	cmpwi r0, 1
/* 809CC55C  40 82 00 2C */	bne lbl_809CC588
/* 809CC560  38 60 00 00 */	li r3, 0
/* 809CC564  38 80 00 00 */	li r4, 0
/* 809CC568  38 00 00 03 */	li r0, 3
/* 809CC56C  7C 09 03 A6 */	mtctr r0
lbl_809CC570:
/* 809CC570  7C BC 1A 14 */	add r5, r28, r3
/* 809CC574  B0 85 09 1A */	sth r4, 0x91a(r5)
/* 809CC578  B0 85 09 1C */	sth r4, 0x91c(r5)
/* 809CC57C  B0 85 09 1E */	sth r4, 0x91e(r5)
/* 809CC580  38 63 00 06 */	addi r3, r3, 6
/* 809CC584  42 00 FF EC */	bdnz lbl_809CC570
lbl_809CC588:
/* 809CC588  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 809CC58C  80 63 00 04 */	lwz r3, 4(r3)
/* 809CC590  80 A3 00 04 */	lwz r5, 4(r3)
/* 809CC594  38 C0 00 00 */	li r6, 0
/* 809CC598  3C 60 80 9D */	lis r3, ctrlJointCallBack__11daNpc_grC_cFP8J3DJointi@ha
/* 809CC59C  38 83 C0 E0 */	addi r4, r3, ctrlJointCallBack__11daNpc_grC_cFP8J3DJointi@l
/* 809CC5A0  48 00 00 18 */	b lbl_809CC5B8
lbl_809CC5A4:
/* 809CC5A4  80 65 00 28 */	lwz r3, 0x28(r5)
/* 809CC5A8  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 809CC5AC  7C 63 00 2E */	lwzx r3, r3, r0
/* 809CC5B0  90 83 00 04 */	stw r4, 4(r3)
/* 809CC5B4  38 C6 00 01 */	addi r6, r6, 1
lbl_809CC5B8:
/* 809CC5B8  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 809CC5BC  A0 05 00 2C */	lhz r0, 0x2c(r5)
/* 809CC5C0  7C 03 00 40 */	cmplw r3, r0
/* 809CC5C4  41 80 FF E0 */	blt lbl_809CC5A4
/* 809CC5C8  7F 83 E3 78 */	mr r3, r28
/* 809CC5CC  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 809CC5D0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 809CC5D4  7D 89 03 A6 */	mtctr r12
/* 809CC5D8  4E 80 04 21 */	bctrl 
/* 809CC5DC  7F 83 E3 78 */	mr r3, r28
/* 809CC5E0  48 00 17 95 */	bl lookat__11daNpc_grC_cFv
/* 809CC5E4  7F 83 E3 78 */	mr r3, r28
/* 809CC5E8  48 00 25 69 */	bl setPrtcl__11daNpc_grC_cFv
/* 809CC5EC  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 809CC5F0  80 63 00 04 */	lwz r3, 4(r3)
/* 809CC5F4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809CC5F8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809CC5FC  38 63 00 C0 */	addi r3, r3, 0xc0
/* 809CC600  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 809CC604  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 809CC608  4B 97 9E A8 */	b PSMTXCopy
/* 809CC60C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809CC610  3B E3 D4 70 */	addi r31, r3, now__14mDoMtx_stack_c@l
/* 809CC614  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 809CC618  D0 1C 08 E4 */	stfs f0, 0x8e4(r28)
/* 809CC61C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 809CC620  D0 1C 08 E8 */	stfs f0, 0x8e8(r28)
/* 809CC624  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 809CC628  D0 1C 08 EC */	stfs f0, 0x8ec(r28)
/* 809CC62C  7F E3 FB 78 */	mr r3, r31
/* 809CC630  38 9D 00 60 */	addi r4, r29, 0x60
/* 809CC634  38 BC 05 38 */	addi r5, r28, 0x538
/* 809CC638  4B 97 A7 34 */	b PSMTXMultVec
/* 809CC63C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809CC640  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809CC644  38 9D 00 60 */	addi r4, r29, 0x60
/* 809CC648  38 A1 00 30 */	addi r5, r1, 0x30
/* 809CC64C  4B 97 A7 20 */	b PSMTXMultVec
/* 809CC650  38 7C 08 E4 */	addi r3, r28, 0x8e4
/* 809CC654  38 81 00 30 */	addi r4, r1, 0x30
/* 809CC658  4B 8A 46 1C */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 809CC65C  B0 7C 09 02 */	sth r3, 0x902(r28)
/* 809CC660  38 7C 08 E4 */	addi r3, r28, 0x8e4
/* 809CC664  38 81 00 30 */	addi r4, r1, 0x30
/* 809CC668  4B 8A 45 9C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 809CC66C  B0 7C 09 04 */	sth r3, 0x904(r28)
/* 809CC670  80 9C 0C 0C */	lwz r4, 0xc0c(r28)
/* 809CC674  28 04 00 00 */	cmplwi r4, 0
/* 809CC678  41 82 01 6C */	beq lbl_809CC7E4
/* 809CC67C  38 61 00 18 */	addi r3, r1, 0x18
/* 809CC680  38 BC 05 38 */	addi r5, r28, 0x538
/* 809CC684  4B 89 A4 B0 */	b __mi__4cXyzCFRC3Vec
/* 809CC688  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 809CC68C  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 809CC690  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 809CC694  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 809CC698  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 809CC69C  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 809CC6A0  A8 7C 09 28 */	lha r3, 0x928(r28)
/* 809CC6A4  A8 1C 08 F2 */	lha r0, 0x8f2(r28)
/* 809CC6A8  7C 03 02 14 */	add r0, r3, r0
/* 809CC6AC  7C 00 00 D0 */	neg r0, r0
/* 809CC6B0  B0 1C 08 FE */	sth r0, 0x8fe(r28)
/* 809CC6B4  4B 89 AF C0 */	b cM_atan2s__Fff
/* 809CC6B8  A8 1C 08 FE */	lha r0, 0x8fe(r28)
/* 809CC6BC  7C 00 1A 14 */	add r0, r0, r3
/* 809CC6C0  B0 1C 08 FE */	sth r0, 0x8fe(r28)
/* 809CC6C4  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 809CC6C8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809CC6CC  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 809CC6D0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809CC6D4  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 809CC6D8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809CC6DC  38 61 00 0C */	addi r3, r1, 0xc
/* 809CC6E0  4B 97 AA 58 */	b PSVECSquareMag
/* 809CC6E4  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 809CC6E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809CC6EC  40 81 00 58 */	ble lbl_809CC744
/* 809CC6F0  FC 00 08 34 */	frsqrte f0, f1
/* 809CC6F4  C8 9E 00 A0 */	lfd f4, 0xa0(r30)
/* 809CC6F8  FC 44 00 32 */	fmul f2, f4, f0
/* 809CC6FC  C8 7E 00 A8 */	lfd f3, 0xa8(r30)
/* 809CC700  FC 00 00 32 */	fmul f0, f0, f0
/* 809CC704  FC 01 00 32 */	fmul f0, f1, f0
/* 809CC708  FC 03 00 28 */	fsub f0, f3, f0
/* 809CC70C  FC 02 00 32 */	fmul f0, f2, f0
/* 809CC710  FC 44 00 32 */	fmul f2, f4, f0
/* 809CC714  FC 00 00 32 */	fmul f0, f0, f0
/* 809CC718  FC 01 00 32 */	fmul f0, f1, f0
/* 809CC71C  FC 03 00 28 */	fsub f0, f3, f0
/* 809CC720  FC 02 00 32 */	fmul f0, f2, f0
/* 809CC724  FC 44 00 32 */	fmul f2, f4, f0
/* 809CC728  FC 00 00 32 */	fmul f0, f0, f0
/* 809CC72C  FC 01 00 32 */	fmul f0, f1, f0
/* 809CC730  FC 03 00 28 */	fsub f0, f3, f0
/* 809CC734  FC 02 00 32 */	fmul f0, f2, f0
/* 809CC738  FC 41 00 32 */	fmul f2, f1, f0
/* 809CC73C  FC 40 10 18 */	frsp f2, f2
/* 809CC740  48 00 00 90 */	b lbl_809CC7D0
lbl_809CC744:
/* 809CC744  C8 1E 00 B0 */	lfd f0, 0xb0(r30)
/* 809CC748  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809CC74C  40 80 00 10 */	bge lbl_809CC75C
/* 809CC750  3C 60 80 45 */	lis r3, __float_nan@ha
/* 809CC754  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 809CC758  48 00 00 78 */	b lbl_809CC7D0
lbl_809CC75C:
/* 809CC75C  D0 21 00 08 */	stfs f1, 8(r1)
/* 809CC760  80 81 00 08 */	lwz r4, 8(r1)
/* 809CC764  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 809CC768  3C 00 7F 80 */	lis r0, 0x7f80
/* 809CC76C  7C 03 00 00 */	cmpw r3, r0
/* 809CC770  41 82 00 14 */	beq lbl_809CC784
/* 809CC774  40 80 00 40 */	bge lbl_809CC7B4
/* 809CC778  2C 03 00 00 */	cmpwi r3, 0
/* 809CC77C  41 82 00 20 */	beq lbl_809CC79C
/* 809CC780  48 00 00 34 */	b lbl_809CC7B4
lbl_809CC784:
/* 809CC784  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809CC788  41 82 00 0C */	beq lbl_809CC794
/* 809CC78C  38 00 00 01 */	li r0, 1
/* 809CC790  48 00 00 28 */	b lbl_809CC7B8
lbl_809CC794:
/* 809CC794  38 00 00 02 */	li r0, 2
/* 809CC798  48 00 00 20 */	b lbl_809CC7B8
lbl_809CC79C:
/* 809CC79C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809CC7A0  41 82 00 0C */	beq lbl_809CC7AC
/* 809CC7A4  38 00 00 05 */	li r0, 5
/* 809CC7A8  48 00 00 10 */	b lbl_809CC7B8
lbl_809CC7AC:
/* 809CC7AC  38 00 00 03 */	li r0, 3
/* 809CC7B0  48 00 00 08 */	b lbl_809CC7B8
lbl_809CC7B4:
/* 809CC7B4  38 00 00 04 */	li r0, 4
lbl_809CC7B8:
/* 809CC7B8  2C 00 00 01 */	cmpwi r0, 1
/* 809CC7BC  40 82 00 10 */	bne lbl_809CC7CC
/* 809CC7C0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 809CC7C4  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 809CC7C8  48 00 00 08 */	b lbl_809CC7D0
lbl_809CC7CC:
/* 809CC7CC  FC 40 08 90 */	fmr f2, f1
lbl_809CC7D0:
/* 809CC7D0  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 809CC7D4  4B 89 AE A0 */	b cM_atan2s__Fff
/* 809CC7D8  7C 03 00 D0 */	neg r0, r3
/* 809CC7DC  B0 1C 08 FC */	sth r0, 0x8fc(r28)
/* 809CC7E0  48 00 00 10 */	b lbl_809CC7F0
lbl_809CC7E4:
/* 809CC7E4  38 00 00 00 */	li r0, 0
/* 809CC7E8  B0 1C 08 FE */	sth r0, 0x8fe(r28)
/* 809CC7EC  B0 1C 08 FC */	sth r0, 0x8fc(r28)
lbl_809CC7F0:
/* 809CC7F0  C0 1C 08 E4 */	lfs f0, 0x8e4(r28)
/* 809CC7F4  D0 1C 05 50 */	stfs f0, 0x550(r28)
/* 809CC7F8  C0 1C 08 E8 */	lfs f0, 0x8e8(r28)
/* 809CC7FC  D0 1C 05 54 */	stfs f0, 0x554(r28)
/* 809CC800  C0 1C 08 EC */	lfs f0, 0x8ec(r28)
/* 809CC804  D0 1C 05 58 */	stfs f0, 0x558(r28)
/* 809CC808  C0 1C 05 54 */	lfs f0, 0x554(r28)
/* 809CC80C  EC 00 F8 2A */	fadds f0, f0, f31
/* 809CC810  D0 1C 05 54 */	stfs f0, 0x554(r28)
/* 809CC814  88 1C 09 F2 */	lbz r0, 0x9f2(r28)
/* 809CC818  28 00 00 00 */	cmplwi r0, 0
/* 809CC81C  40 82 00 D8 */	bne lbl_809CC8F4
/* 809CC820  88 1C 09 F0 */	lbz r0, 0x9f0(r28)
/* 809CC824  28 00 00 00 */	cmplwi r0, 0
/* 809CC828  40 82 00 28 */	bne lbl_809CC850
/* 809CC82C  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 809CC830  38 03 FD FF */	addi r0, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 809CC834  90 1C 0C EC */	stw r0, 0xcec(r28)
/* 809CC838  38 00 00 1F */	li r0, 0x1f
/* 809CC83C  90 1C 0C DC */	stw r0, 0xcdc(r28)
/* 809CC840  80 1C 0D 60 */	lwz r0, 0xd60(r28)
/* 809CC844  60 00 00 04 */	ori r0, r0, 4
/* 809CC848  90 1C 0D 60 */	stw r0, 0xd60(r28)
/* 809CC84C  48 00 00 10 */	b lbl_809CC85C
lbl_809CC850:
/* 809CC850  38 00 00 00 */	li r0, 0
/* 809CC854  90 1C 0C EC */	stw r0, 0xcec(r28)
/* 809CC858  90 1C 0C DC */	stw r0, 0xcdc(r28)
lbl_809CC85C:
/* 809CC85C  38 00 00 79 */	li r0, 0x79
/* 809CC860  90 1C 0C F0 */	stw r0, 0xcf0(r28)
/* 809CC864  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 809CC868  80 63 00 04 */	lwz r3, 4(r3)
/* 809CC86C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809CC870  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809CC874  38 63 00 30 */	addi r3, r3, 0x30
/* 809CC878  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 809CC87C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 809CC880  4B 97 9C 30 */	b PSMTXCopy
/* 809CC884  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 809CC888  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 809CC88C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 809CC890  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 809CC894  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 809CC898  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 809CC89C  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 809CC8A0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 809CC8A4  38 7C 0D E8 */	addi r3, r28, 0xde8
/* 809CC8A8  38 81 00 48 */	addi r4, r1, 0x48
/* 809CC8AC  4B 8A 29 30 */	b SetC__8cM3dGCylFRC4cXyz
/* 809CC8B0  38 7C 0D E8 */	addi r3, r28, 0xde8
/* 809CC8B4  38 9E 00 00 */	addi r4, r30, 0
/* 809CC8B8  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 809CC8BC  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 809CC8C0  EC 21 00 2A */	fadds f1, f1, f0
/* 809CC8C4  4B 8A 29 34 */	b SetH__8cM3dGCylFf
/* 809CC8C8  38 7C 0D E8 */	addi r3, r28, 0xde8
/* 809CC8CC  38 9E 00 00 */	addi r4, r30, 0
/* 809CC8D0  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 809CC8D4  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 809CC8D8  EC 21 00 2A */	fadds f1, f1, f0
/* 809CC8DC  4B 8A 29 24 */	b SetR__8cM3dGCylFf
/* 809CC8E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809CC8E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809CC8E8  38 63 23 3C */	addi r3, r3, 0x233c
/* 809CC8EC  38 9C 0C C4 */	addi r4, r28, 0xcc4
/* 809CC8F0  4B 89 82 B8 */	b Set__4cCcSFP8cCcD_Obj
lbl_809CC8F4:
/* 809CC8F4  38 7C 0C C4 */	addi r3, r28, 0xcc4
/* 809CC8F8  81 9C 0D 00 */	lwz r12, 0xd00(r28)
/* 809CC8FC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 809CC900  7D 89 03 A6 */	mtctr r12
/* 809CC904  4E 80 04 21 */	bctrl 
/* 809CC908  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 809CC90C  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 809CC910  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 809CC914  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 809CC918  39 61 00 90 */	addi r11, r1, 0x90
/* 809CC91C  4B 99 58 F8 */	b _restgpr_24
/* 809CC920  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 809CC924  7C 08 03 A6 */	mtlr r0
/* 809CC928  38 21 00 B0 */	addi r1, r1, 0xb0
/* 809CC92C  4E 80 00 20 */	blr 
