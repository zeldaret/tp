lbl_809E536C:
/* 809E536C  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 809E5370  7C 08 02 A6 */	mflr r0
/* 809E5374  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 809E5378  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 809E537C  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 809E5380  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 809E5384  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 809E5388  39 61 00 90 */	addi r11, r1, 0x90
/* 809E538C  4B 97 CE 3D */	bl _savegpr_24
/* 809E5390  7C 7D 1B 78 */	mr r29, r3
/* 809E5394  3C 60 80 9F */	lis r3, lit_1109@ha /* 0x809E8238@ha */
/* 809E5398  3B C3 82 38 */	addi r30, r3, lit_1109@l /* 0x809E8238@l */
/* 809E539C  3C 60 80 9E */	lis r3, m__17daNpc_grS_Param_c@ha /* 0x809E7DCC@ha */
/* 809E53A0  3B E3 7D CC */	addi r31, r3, m__17daNpc_grS_Param_c@l /* 0x809E7DCC@l */
/* 809E53A4  88 1E 00 5C */	lbz r0, 0x5c(r30)
/* 809E53A8  7C 00 07 75 */	extsb. r0, r0
/* 809E53AC  40 82 00 38 */	bne lbl_809E53E4
/* 809E53B0  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 809E53B4  D0 1E 00 60 */	stfs f0, 0x60(r30)
/* 809E53B8  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 809E53BC  38 7E 00 60 */	addi r3, r30, 0x60
/* 809E53C0  D0 03 00 04 */	stfs f0, 4(r3)
/* 809E53C4  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 809E53C8  D0 03 00 08 */	stfs f0, 8(r3)
/* 809E53CC  3C 80 80 9E */	lis r4, __dt__4cXyzFv@ha /* 0x809E7688@ha */
/* 809E53D0  38 84 76 88 */	addi r4, r4, __dt__4cXyzFv@l /* 0x809E7688@l */
/* 809E53D4  38 BE 00 50 */	addi r5, r30, 0x50
/* 809E53D8  4B FF EC 81 */	bl __register_global_object
/* 809E53DC  38 00 00 01 */	li r0, 1
/* 809E53E0  98 1E 00 5C */	stb r0, 0x5c(r30)
lbl_809E53E4:
/* 809E53E4  C3 FF 00 00 */	lfs f31, 0(r31)
/* 809E53E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809E53EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809E53F0  A8 9D 09 90 */	lha r4, 0x990(r29)
/* 809E53F4  4B 62 6F E9 */	bl mDoMtx_YrotS__FPA4_fs
/* 809E53F8  38 7D 09 84 */	addi r3, r29, 0x984
/* 809E53FC  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 809E5400  C0 5F 00 A0 */	lfs f2, 0xa0(r31)
/* 809E5404  C0 7F 00 A4 */	lfs f3, 0xa4(r31)
/* 809E5408  4B 88 A6 35 */	bl cLib_addCalc2__FPffff
/* 809E540C  38 7D 09 8C */	addi r3, r29, 0x98c
/* 809E5410  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 809E5414  C0 5F 00 A0 */	lfs f2, 0xa0(r31)
/* 809E5418  C0 7F 00 A4 */	lfs f3, 0xa4(r31)
/* 809E541C  4B 88 A6 21 */	bl cLib_addCalc2__FPffff
/* 809E5420  3B 00 00 00 */	li r24, 0
/* 809E5424  3B 80 00 00 */	li r28, 0
/* 809E5428  3B 60 00 00 */	li r27, 0
/* 809E542C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 809E5430  3B 23 9A 20 */	addi r25, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 809E5434  C3 DF 00 80 */	lfs f30, 0x80(r31)
/* 809E5438  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809E543C  3B 43 D4 70 */	addi r26, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
lbl_809E5440:
/* 809E5440  A8 1D 09 92 */	lha r0, 0x992(r29)
/* 809E5444  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 809E5448  7C 39 04 2E */	lfsx f1, r25, r0
/* 809E544C  38 1B 09 84 */	addi r0, r27, 0x984
/* 809E5450  7C 1D 04 2E */	lfsx f0, r29, r0
/* 809E5454  EC 00 00 72 */	fmuls f0, f0, f1
/* 809E5458  D3 C1 00 30 */	stfs f30, 0x30(r1)
/* 809E545C  D3 C1 00 34 */	stfs f30, 0x34(r1)
/* 809E5460  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 809E5464  7F 43 D3 78 */	mr r3, r26
/* 809E5468  38 81 00 30 */	addi r4, r1, 0x30
/* 809E546C  38 A1 00 24 */	addi r5, r1, 0x24
/* 809E5470  4B 96 18 FD */	bl PSMTXMultVec
/* 809E5474  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 809E5478  FC 00 00 50 */	fneg f0, f0
/* 809E547C  FC 00 00 1E */	fctiwz f0, f0
/* 809E5480  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 809E5484  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 809E5488  7C 7D E2 14 */	add r3, r29, r28
/* 809E548C  B0 03 09 08 */	sth r0, 0x908(r3)
/* 809E5490  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 809E5494  FC 00 00 50 */	fneg f0, f0
/* 809E5498  FC 00 00 1E */	fctiwz f0, f0
/* 809E549C  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 809E54A0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 809E54A4  B0 03 09 0C */	sth r0, 0x90c(r3)
/* 809E54A8  3B 18 00 01 */	addi r24, r24, 1
/* 809E54AC  2C 18 00 03 */	cmpwi r24, 3
/* 809E54B0  3B 9C 00 06 */	addi r28, r28, 6
/* 809E54B4  3B 7B 00 04 */	addi r27, r27, 4
/* 809E54B8  41 80 FF 88 */	blt lbl_809E5440
/* 809E54BC  38 7D 09 92 */	addi r3, r29, 0x992
/* 809E54C0  38 80 00 00 */	li r4, 0
/* 809E54C4  38 A0 05 55 */	li r5, 0x555
/* 809E54C8  4B 88 B2 09 */	bl cLib_chaseS__FPsss
/* 809E54CC  A8 1D 0E 10 */	lha r0, 0xe10(r29)
/* 809E54D0  2C 00 00 01 */	cmpwi r0, 1
/* 809E54D4  40 82 00 2C */	bne lbl_809E5500
/* 809E54D8  38 60 00 00 */	li r3, 0
/* 809E54DC  38 80 00 00 */	li r4, 0
/* 809E54E0  38 00 00 03 */	li r0, 3
/* 809E54E4  7C 09 03 A6 */	mtctr r0
lbl_809E54E8:
/* 809E54E8  7C BD 1A 14 */	add r5, r29, r3
/* 809E54EC  B0 85 09 1A */	sth r4, 0x91a(r5)
/* 809E54F0  B0 85 09 1C */	sth r4, 0x91c(r5)
/* 809E54F4  B0 85 09 1E */	sth r4, 0x91e(r5)
/* 809E54F8  38 63 00 06 */	addi r3, r3, 6
/* 809E54FC  42 00 FF EC */	bdnz lbl_809E54E8
lbl_809E5500:
/* 809E5500  7F A3 EB 78 */	mr r3, r29
/* 809E5504  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809E5508  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 809E550C  7D 89 03 A6 */	mtctr r12
/* 809E5510  4E 80 04 21 */	bctrl 
/* 809E5514  7F A3 EB 78 */	mr r3, r29
/* 809E5518  48 00 13 61 */	bl lookat__11daNpc_grS_cFv
/* 809E551C  7F A3 EB 78 */	mr r3, r29
/* 809E5520  48 00 1D E1 */	bl setPrtcl__11daNpc_grS_cFv
/* 809E5524  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 809E5528  80 63 00 04 */	lwz r3, 4(r3)
/* 809E552C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809E5530  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809E5534  38 63 00 C0 */	addi r3, r3, 0xc0
/* 809E5538  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809E553C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809E5540  4B 96 0F 71 */	bl PSMTXCopy
/* 809E5544  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809E5548  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809E554C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 809E5550  D0 1D 08 E4 */	stfs f0, 0x8e4(r29)
/* 809E5554  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 809E5558  D0 1D 08 E8 */	stfs f0, 0x8e8(r29)
/* 809E555C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 809E5560  D0 1D 08 EC */	stfs f0, 0x8ec(r29)
/* 809E5564  38 9E 00 60 */	addi r4, r30, 0x60
/* 809E5568  38 BD 05 38 */	addi r5, r29, 0x538
/* 809E556C  4B 96 18 01 */	bl PSMTXMultVec
/* 809E5570  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 809E5574  D0 1E 00 60 */	stfs f0, 0x60(r30)
/* 809E5578  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809E557C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809E5580  38 9E 00 60 */	addi r4, r30, 0x60
/* 809E5584  38 A1 00 30 */	addi r5, r1, 0x30
/* 809E5588  4B 96 17 E5 */	bl PSMTXMultVec
/* 809E558C  38 7D 08 E4 */	addi r3, r29, 0x8e4
/* 809E5590  38 81 00 30 */	addi r4, r1, 0x30
/* 809E5594  4B 88 B6 E1 */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 809E5598  B0 7D 09 02 */	sth r3, 0x902(r29)
/* 809E559C  38 7D 08 E4 */	addi r3, r29, 0x8e4
/* 809E55A0  38 81 00 30 */	addi r4, r1, 0x30
/* 809E55A4  4B 88 B6 61 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 809E55A8  B0 7D 09 04 */	sth r3, 0x904(r29)
/* 809E55AC  80 9D 0C 10 */	lwz r4, 0xc10(r29)
/* 809E55B0  28 04 00 00 */	cmplwi r4, 0
/* 809E55B4  41 82 01 74 */	beq lbl_809E5728
/* 809E55B8  38 61 00 18 */	addi r3, r1, 0x18
/* 809E55BC  38 BD 05 38 */	addi r5, r29, 0x538
/* 809E55C0  4B 88 15 75 */	bl __mi__4cXyzCFRC3Vec
/* 809E55C4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 809E55C8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 809E55CC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 809E55D0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 809E55D4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 809E55D8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 809E55DC  A8 7D 09 28 */	lha r3, 0x928(r29)
/* 809E55E0  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 809E55E4  7C 03 02 14 */	add r0, r3, r0
/* 809E55E8  7C 00 00 D0 */	neg r0, r0
/* 809E55EC  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 809E55F0  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 809E55F4  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 809E55F8  4B 88 20 7D */	bl cM_atan2s__Fff
/* 809E55FC  A8 1D 08 FE */	lha r0, 0x8fe(r29)
/* 809E5600  7C 00 1A 14 */	add r0, r0, r3
/* 809E5604  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 809E5608  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 809E560C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809E5610  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 809E5614  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809E5618  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 809E561C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809E5620  38 61 00 0C */	addi r3, r1, 0xc
/* 809E5624  4B 96 1B 15 */	bl PSVECSquareMag
/* 809E5628  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 809E562C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809E5630  40 81 00 58 */	ble lbl_809E5688
/* 809E5634  FC 00 08 34 */	frsqrte f0, f1
/* 809E5638  C8 9F 00 A8 */	lfd f4, 0xa8(r31)
/* 809E563C  FC 44 00 32 */	fmul f2, f4, f0
/* 809E5640  C8 7F 00 B0 */	lfd f3, 0xb0(r31)
/* 809E5644  FC 00 00 32 */	fmul f0, f0, f0
/* 809E5648  FC 01 00 32 */	fmul f0, f1, f0
/* 809E564C  FC 03 00 28 */	fsub f0, f3, f0
/* 809E5650  FC 02 00 32 */	fmul f0, f2, f0
/* 809E5654  FC 44 00 32 */	fmul f2, f4, f0
/* 809E5658  FC 00 00 32 */	fmul f0, f0, f0
/* 809E565C  FC 01 00 32 */	fmul f0, f1, f0
/* 809E5660  FC 03 00 28 */	fsub f0, f3, f0
/* 809E5664  FC 02 00 32 */	fmul f0, f2, f0
/* 809E5668  FC 44 00 32 */	fmul f2, f4, f0
/* 809E566C  FC 00 00 32 */	fmul f0, f0, f0
/* 809E5670  FC 01 00 32 */	fmul f0, f1, f0
/* 809E5674  FC 03 00 28 */	fsub f0, f3, f0
/* 809E5678  FC 02 00 32 */	fmul f0, f2, f0
/* 809E567C  FC 41 00 32 */	fmul f2, f1, f0
/* 809E5680  FC 40 10 18 */	frsp f2, f2
/* 809E5684  48 00 00 90 */	b lbl_809E5714
lbl_809E5688:
/* 809E5688  C8 1F 00 B8 */	lfd f0, 0xb8(r31)
/* 809E568C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809E5690  40 80 00 10 */	bge lbl_809E56A0
/* 809E5694  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 809E5698  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 809E569C  48 00 00 78 */	b lbl_809E5714
lbl_809E56A0:
/* 809E56A0  D0 21 00 08 */	stfs f1, 8(r1)
/* 809E56A4  80 81 00 08 */	lwz r4, 8(r1)
/* 809E56A8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 809E56AC  3C 00 7F 80 */	lis r0, 0x7f80
/* 809E56B0  7C 03 00 00 */	cmpw r3, r0
/* 809E56B4  41 82 00 14 */	beq lbl_809E56C8
/* 809E56B8  40 80 00 40 */	bge lbl_809E56F8
/* 809E56BC  2C 03 00 00 */	cmpwi r3, 0
/* 809E56C0  41 82 00 20 */	beq lbl_809E56E0
/* 809E56C4  48 00 00 34 */	b lbl_809E56F8
lbl_809E56C8:
/* 809E56C8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809E56CC  41 82 00 0C */	beq lbl_809E56D8
/* 809E56D0  38 00 00 01 */	li r0, 1
/* 809E56D4  48 00 00 28 */	b lbl_809E56FC
lbl_809E56D8:
/* 809E56D8  38 00 00 02 */	li r0, 2
/* 809E56DC  48 00 00 20 */	b lbl_809E56FC
lbl_809E56E0:
/* 809E56E0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809E56E4  41 82 00 0C */	beq lbl_809E56F0
/* 809E56E8  38 00 00 05 */	li r0, 5
/* 809E56EC  48 00 00 10 */	b lbl_809E56FC
lbl_809E56F0:
/* 809E56F0  38 00 00 03 */	li r0, 3
/* 809E56F4  48 00 00 08 */	b lbl_809E56FC
lbl_809E56F8:
/* 809E56F8  38 00 00 04 */	li r0, 4
lbl_809E56FC:
/* 809E56FC  2C 00 00 01 */	cmpwi r0, 1
/* 809E5700  40 82 00 10 */	bne lbl_809E5710
/* 809E5704  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 809E5708  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 809E570C  48 00 00 08 */	b lbl_809E5714
lbl_809E5710:
/* 809E5710  FC 40 08 90 */	fmr f2, f1
lbl_809E5714:
/* 809E5714  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 809E5718  4B 88 1F 5D */	bl cM_atan2s__Fff
/* 809E571C  7C 03 00 D0 */	neg r0, r3
/* 809E5720  B0 1D 08 FC */	sth r0, 0x8fc(r29)
/* 809E5724  48 00 00 10 */	b lbl_809E5734
lbl_809E5728:
/* 809E5728  38 00 00 00 */	li r0, 0
/* 809E572C  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 809E5730  B0 1D 08 FC */	sth r0, 0x8fc(r29)
lbl_809E5734:
/* 809E5734  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 809E5738  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 809E573C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 809E5740  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 809E5744  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 809E5748  4B 62 76 1D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 809E574C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809E5750  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809E5754  A8 9D 08 F0 */	lha r4, 0x8f0(r29)
/* 809E5758  A8 BD 08 F2 */	lha r5, 0x8f2(r29)
/* 809E575C  A8 DD 08 F4 */	lha r6, 0x8f4(r29)
/* 809E5760  4B 62 6B 41 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 809E5764  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809E5768  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809E576C  38 81 00 3C */	addi r4, r1, 0x3c
/* 809E5770  38 A1 00 48 */	addi r5, r1, 0x48
/* 809E5774  4B 96 15 F9 */	bl PSMTXMultVec
/* 809E5778  C0 41 00 50 */	lfs f2, 0x50(r1)
/* 809E577C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 809E5780  EC 20 F8 2A */	fadds f1, f0, f31
/* 809E5784  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 809E5788  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 809E578C  D0 3D 05 54 */	stfs f1, 0x554(r29)
/* 809E5790  D0 5D 05 58 */	stfs f2, 0x558(r29)
/* 809E5794  88 1D 09 F2 */	lbz r0, 0x9f2(r29)
/* 809E5798  28 00 00 00 */	cmplwi r0, 0
/* 809E579C  40 82 00 9C */	bne lbl_809E5838
/* 809E57A0  88 1D 09 F4 */	lbz r0, 0x9f4(r29)
/* 809E57A4  28 00 00 00 */	cmplwi r0, 0
/* 809E57A8  40 82 00 90 */	bne lbl_809E5838
/* 809E57AC  88 1D 09 F0 */	lbz r0, 0x9f0(r29)
/* 809E57B0  28 00 00 00 */	cmplwi r0, 0
/* 809E57B4  40 82 00 28 */	bne lbl_809E57DC
/* 809E57B8  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 809E57BC  38 03 FD FF */	addi r0, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 809E57C0  90 1D 0C B8 */	stw r0, 0xcb8(r29)
/* 809E57C4  38 00 00 1F */	li r0, 0x1f
/* 809E57C8  90 1D 0C A8 */	stw r0, 0xca8(r29)
/* 809E57CC  80 1D 0D 2C */	lwz r0, 0xd2c(r29)
/* 809E57D0  60 00 00 04 */	ori r0, r0, 4
/* 809E57D4  90 1D 0D 2C */	stw r0, 0xd2c(r29)
/* 809E57D8  48 00 00 10 */	b lbl_809E57E8
lbl_809E57DC:
/* 809E57DC  38 00 00 00 */	li r0, 0
/* 809E57E0  90 1D 0C B8 */	stw r0, 0xcb8(r29)
/* 809E57E4  90 1D 0C A8 */	stw r0, 0xca8(r29)
lbl_809E57E8:
/* 809E57E8  38 7D 0D B4 */	addi r3, r29, 0xdb4
/* 809E57EC  38 81 00 48 */	addi r4, r1, 0x48
/* 809E57F0  4B 88 99 ED */	bl SetC__8cM3dGCylFRC4cXyz
/* 809E57F4  38 7D 0D B4 */	addi r3, r29, 0xdb4
/* 809E57F8  38 9F 00 00 */	addi r4, r31, 0
/* 809E57FC  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 809E5800  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 809E5804  EC 21 00 2A */	fadds f1, f1, f0
/* 809E5808  4B 88 99 F1 */	bl SetH__8cM3dGCylFf
/* 809E580C  38 7D 0D B4 */	addi r3, r29, 0xdb4
/* 809E5810  38 9F 00 00 */	addi r4, r31, 0
/* 809E5814  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 809E5818  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 809E581C  EC 21 00 2A */	fadds f1, f1, f0
/* 809E5820  4B 88 99 E1 */	bl SetR__8cM3dGCylFf
/* 809E5824  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809E5828  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809E582C  38 63 23 3C */	addi r3, r3, 0x233c
/* 809E5830  38 9D 0C 90 */	addi r4, r29, 0xc90
/* 809E5834  4B 87 F3 75 */	bl Set__4cCcSFP8cCcD_Obj
lbl_809E5838:
/* 809E5838  38 7D 0C 90 */	addi r3, r29, 0xc90
/* 809E583C  81 9D 0C CC */	lwz r12, 0xccc(r29)
/* 809E5840  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 809E5844  7D 89 03 A6 */	mtctr r12
/* 809E5848  4E 80 04 21 */	bctrl 
/* 809E584C  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 809E5850  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 809E5854  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 809E5858  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 809E585C  39 61 00 90 */	addi r11, r1, 0x90
/* 809E5860  4B 97 C9 B5 */	bl _restgpr_24
/* 809E5864  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 809E5868  7C 08 03 A6 */	mtlr r0
/* 809E586C  38 21 00 B0 */	addi r1, r1, 0xb0
/* 809E5870  4E 80 00 20 */	blr 
