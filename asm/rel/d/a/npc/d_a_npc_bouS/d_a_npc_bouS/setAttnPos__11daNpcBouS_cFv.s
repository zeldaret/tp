lbl_80977444:
/* 80977444  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80977448  7C 08 02 A6 */	mflr r0
/* 8097744C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80977450  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 80977454  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 80977458  39 61 00 90 */	addi r11, r1, 0x90
/* 8097745C  4B 9E AD 71 */	bl _savegpr_25
/* 80977460  7C 7E 1B 78 */	mr r30, r3
/* 80977464  3C 60 80 98 */	lis r3, m__17daNpcBouS_Param_c@ha /* 0x80978410@ha */
/* 80977468  3B E3 84 10 */	addi r31, r3, m__17daNpcBouS_Param_c@l /* 0x80978410@l */
/* 8097746C  3C 60 80 98 */	lis r3, data_80978C50@ha /* 0x80978C50@ha */
/* 80977470  88 03 8C 50 */	lbz r0, data_80978C50@l(r3)  /* 0x80978C50@l */
/* 80977474  7C 00 07 75 */	extsb. r0, r0
/* 80977478  40 82 00 40 */	bne lbl_809774B8
/* 8097747C  C0 1F 03 0C */	lfs f0, 0x30c(r31)
/* 80977480  3C 60 80 98 */	lis r3, data_80978C54@ha /* 0x80978C54@ha */
/* 80977484  D4 03 8C 54 */	stfsu f0, data_80978C54@l(r3)  /* 0x80978C54@l */
/* 80977488  C0 1F 03 10 */	lfs f0, 0x310(r31)
/* 8097748C  D0 03 00 04 */	stfs f0, 4(r3)
/* 80977490  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80977494  D0 03 00 08 */	stfs f0, 8(r3)
/* 80977498  3C 80 80 97 */	lis r4, __dt__4cXyzFv@ha /* 0x80977D54@ha */
/* 8097749C  38 84 7D 54 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80977D54@l */
/* 809774A0  3C A0 80 98 */	lis r5, lit_4616@ha /* 0x80978BE0@ha */
/* 809774A4  38 A5 8B E0 */	addi r5, r5, lit_4616@l /* 0x80978BE0@l */
/* 809774A8  4B FF C0 31 */	bl __register_global_object
/* 809774AC  38 00 00 01 */	li r0, 1
/* 809774B0  3C 60 80 98 */	lis r3, data_80978C50@ha /* 0x80978C50@ha */
/* 809774B4  98 03 8C 50 */	stb r0, data_80978C50@l(r3)  /* 0x80978C50@l */
lbl_809774B8:
/* 809774B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809774BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809774C0  A8 9E 09 90 */	lha r4, 0x990(r30)
/* 809774C4  4B 69 4F 19 */	bl mDoMtx_YrotS__FPA4_fs
/* 809774C8  38 7E 09 84 */	addi r3, r30, 0x984
/* 809774CC  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 809774D0  C0 5F 03 14 */	lfs f2, 0x314(r31)
/* 809774D4  C0 7F 03 18 */	lfs f3, 0x318(r31)
/* 809774D8  4B 8F 85 65 */	bl cLib_addCalc2__FPffff
/* 809774DC  38 7E 09 8C */	addi r3, r30, 0x98c
/* 809774E0  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 809774E4  C0 5F 03 14 */	lfs f2, 0x314(r31)
/* 809774E8  C0 7F 03 18 */	lfs f3, 0x318(r31)
/* 809774EC  4B 8F 85 51 */	bl cLib_addCalc2__FPffff
/* 809774F0  3B 20 00 00 */	li r25, 0
/* 809774F4  3B A0 00 00 */	li r29, 0
/* 809774F8  3B 80 00 00 */	li r28, 0
/* 809774FC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80977500  3B 43 9A 20 */	addi r26, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80977504  C3 FF 00 A0 */	lfs f31, 0xa0(r31)
/* 80977508  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8097750C  3B 63 D4 70 */	addi r27, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
lbl_80977510:
/* 80977510  7F 43 D3 78 */	mr r3, r26
/* 80977514  A8 9E 09 92 */	lha r4, 0x992(r30)
/* 80977518  48 00 05 AD */	bl func_80977AC4
/* 8097751C  38 1C 09 84 */	addi r0, r28, 0x984
/* 80977520  7C 1E 04 2E */	lfsx f0, r30, r0
/* 80977524  EC 00 00 72 */	fmuls f0, f0, f1
/* 80977528  D3 E1 00 3C */	stfs f31, 0x3c(r1)
/* 8097752C  D3 E1 00 40 */	stfs f31, 0x40(r1)
/* 80977530  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80977534  7F 63 DB 78 */	mr r3, r27
/* 80977538  38 81 00 3C */	addi r4, r1, 0x3c
/* 8097753C  38 A1 00 30 */	addi r5, r1, 0x30
/* 80977540  4B 9C F8 2D */	bl PSMTXMultVec
/* 80977544  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80977548  FC 00 00 50 */	fneg f0, f0
/* 8097754C  FC 00 00 1E */	fctiwz f0, f0
/* 80977550  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 80977554  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 80977558  7C 7E EA 14 */	add r3, r30, r29
/* 8097755C  B0 03 09 08 */	sth r0, 0x908(r3)
/* 80977560  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80977564  FC 00 00 50 */	fneg f0, f0
/* 80977568  FC 00 00 1E */	fctiwz f0, f0
/* 8097756C  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 80977570  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80977574  B0 03 09 0C */	sth r0, 0x90c(r3)
/* 80977578  3B 39 00 01 */	addi r25, r25, 1
/* 8097757C  2C 19 00 03 */	cmpwi r25, 3
/* 80977580  3B BD 00 06 */	addi r29, r29, 6
/* 80977584  3B 9C 00 04 */	addi r28, r28, 4
/* 80977588  41 80 FF 88 */	blt lbl_80977510
/* 8097758C  38 7E 09 92 */	addi r3, r30, 0x992
/* 80977590  38 80 00 00 */	li r4, 0
/* 80977594  38 A0 05 55 */	li r5, 0x555
/* 80977598  4B 8F 91 39 */	bl cLib_chaseS__FPsss
/* 8097759C  A8 1E 0D F8 */	lha r0, 0xdf8(r30)
/* 809775A0  2C 00 00 01 */	cmpwi r0, 1
/* 809775A4  40 82 00 2C */	bne lbl_809775D0
/* 809775A8  38 60 00 00 */	li r3, 0
/* 809775AC  38 80 00 00 */	li r4, 0
/* 809775B0  38 00 00 03 */	li r0, 3
/* 809775B4  7C 09 03 A6 */	mtctr r0
lbl_809775B8:
/* 809775B8  7C BE 1A 14 */	add r5, r30, r3
/* 809775BC  B0 85 09 1A */	sth r4, 0x91a(r5)
/* 809775C0  B0 85 09 1C */	sth r4, 0x91c(r5)
/* 809775C4  B0 85 09 1E */	sth r4, 0x91e(r5)
/* 809775C8  38 63 00 06 */	addi r3, r3, 6
/* 809775CC  42 00 FF EC */	bdnz lbl_809775B8
lbl_809775D0:
/* 809775D0  7F C3 F3 78 */	mr r3, r30
/* 809775D4  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809775D8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 809775DC  7D 89 03 A6 */	mtctr r12
/* 809775E0  4E 80 04 21 */	bctrl 
/* 809775E4  7F C3 F3 78 */	mr r3, r30
/* 809775E8  48 00 02 F1 */	bl lookat__11daNpcBouS_cFv
/* 809775EC  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 809775F0  80 63 00 04 */	lwz r3, 4(r3)
/* 809775F4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809775F8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809775FC  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80977600  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80977604  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80977608  4B 9C EE A9 */	bl PSMTXCopy
/* 8097760C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80977610  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80977614  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80977618  D0 1E 08 E4 */	stfs f0, 0x8e4(r30)
/* 8097761C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80977620  D0 1E 08 E8 */	stfs f0, 0x8e8(r30)
/* 80977624  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80977628  D0 1E 08 EC */	stfs f0, 0x8ec(r30)
/* 8097762C  3C 80 80 98 */	lis r4, data_80978C54@ha /* 0x80978C54@ha */
/* 80977630  38 84 8C 54 */	addi r4, r4, data_80978C54@l /* 0x80978C54@l */
/* 80977634  38 BE 05 38 */	addi r5, r30, 0x538
/* 80977638  4B 9C F7 35 */	bl PSMTXMultVec
/* 8097763C  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80977640  3C 60 80 98 */	lis r3, data_80978C54@ha /* 0x80978C54@ha */
/* 80977644  38 83 8C 54 */	addi r4, r3, data_80978C54@l /* 0x80978C54@l */
/* 80977648  D0 04 00 04 */	stfs f0, 4(r4)
/* 8097764C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80977650  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80977654  38 A1 00 3C */	addi r5, r1, 0x3c
/* 80977658  4B 9C F7 15 */	bl PSMTXMultVec
/* 8097765C  38 7E 08 E4 */	addi r3, r30, 0x8e4
/* 80977660  38 81 00 3C */	addi r4, r1, 0x3c
/* 80977664  4B 8F 96 11 */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80977668  B0 7E 09 02 */	sth r3, 0x902(r30)
/* 8097766C  38 7E 08 E4 */	addi r3, r30, 0x8e4
/* 80977670  38 81 00 3C */	addi r4, r1, 0x3c
/* 80977674  4B 8F 95 91 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80977678  B0 7E 09 04 */	sth r3, 0x904(r30)
/* 8097767C  80 9E 0C 0C */	lwz r4, 0xc0c(r30)
/* 80977680  28 04 00 00 */	cmplwi r4, 0
/* 80977684  41 82 01 78 */	beq lbl_809777FC
/* 80977688  38 61 00 18 */	addi r3, r1, 0x18
/* 8097768C  38 BE 05 38 */	addi r5, r30, 0x538
/* 80977690  4B 8E F4 A5 */	bl __mi__4cXyzCFRC3Vec
/* 80977694  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80977698  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8097769C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 809776A0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 809776A4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 809776A8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 809776AC  A8 7E 09 28 */	lha r3, 0x928(r30)
/* 809776B0  A8 1E 08 F2 */	lha r0, 0x8f2(r30)
/* 809776B4  7C 03 02 14 */	add r0, r3, r0
/* 809776B8  7C 00 00 D0 */	neg r0, r0
/* 809776BC  B0 1E 08 FE */	sth r0, 0x8fe(r30)
/* 809776C0  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 809776C4  C0 41 00 50 */	lfs f2, 0x50(r1)
/* 809776C8  4B 8E FF AD */	bl cM_atan2s__Fff
/* 809776CC  A8 1E 08 FE */	lha r0, 0x8fe(r30)
/* 809776D0  7C 00 1A 14 */	add r0, r0, r3
/* 809776D4  B0 1E 08 FE */	sth r0, 0x8fe(r30)
/* 809776D8  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 809776DC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809776E0  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 809776E4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809776E8  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 809776EC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809776F0  38 61 00 0C */	addi r3, r1, 0xc
/* 809776F4  4B 9C FA 45 */	bl PSVECSquareMag
/* 809776F8  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 809776FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80977700  40 81 00 58 */	ble lbl_80977758
/* 80977704  FC 00 08 34 */	frsqrte f0, f1
/* 80977708  C8 9F 03 20 */	lfd f4, 0x320(r31)
/* 8097770C  FC 44 00 32 */	fmul f2, f4, f0
/* 80977710  C8 7F 03 28 */	lfd f3, 0x328(r31)
/* 80977714  FC 00 00 32 */	fmul f0, f0, f0
/* 80977718  FC 01 00 32 */	fmul f0, f1, f0
/* 8097771C  FC 03 00 28 */	fsub f0, f3, f0
/* 80977720  FC 02 00 32 */	fmul f0, f2, f0
/* 80977724  FC 44 00 32 */	fmul f2, f4, f0
/* 80977728  FC 00 00 32 */	fmul f0, f0, f0
/* 8097772C  FC 01 00 32 */	fmul f0, f1, f0
/* 80977730  FC 03 00 28 */	fsub f0, f3, f0
/* 80977734  FC 02 00 32 */	fmul f0, f2, f0
/* 80977738  FC 44 00 32 */	fmul f2, f4, f0
/* 8097773C  FC 00 00 32 */	fmul f0, f0, f0
/* 80977740  FC 01 00 32 */	fmul f0, f1, f0
/* 80977744  FC 03 00 28 */	fsub f0, f3, f0
/* 80977748  FC 02 00 32 */	fmul f0, f2, f0
/* 8097774C  FC 41 00 32 */	fmul f2, f1, f0
/* 80977750  FC 40 10 18 */	frsp f2, f2
/* 80977754  48 00 00 90 */	b lbl_809777E4
lbl_80977758:
/* 80977758  C8 1F 03 30 */	lfd f0, 0x330(r31)
/* 8097775C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80977760  40 80 00 10 */	bge lbl_80977770
/* 80977764  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80977768  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8097776C  48 00 00 78 */	b lbl_809777E4
lbl_80977770:
/* 80977770  D0 21 00 08 */	stfs f1, 8(r1)
/* 80977774  80 81 00 08 */	lwz r4, 8(r1)
/* 80977778  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8097777C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80977780  7C 03 00 00 */	cmpw r3, r0
/* 80977784  41 82 00 14 */	beq lbl_80977798
/* 80977788  40 80 00 40 */	bge lbl_809777C8
/* 8097778C  2C 03 00 00 */	cmpwi r3, 0
/* 80977790  41 82 00 20 */	beq lbl_809777B0
/* 80977794  48 00 00 34 */	b lbl_809777C8
lbl_80977798:
/* 80977798  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8097779C  41 82 00 0C */	beq lbl_809777A8
/* 809777A0  38 00 00 01 */	li r0, 1
/* 809777A4  48 00 00 28 */	b lbl_809777CC
lbl_809777A8:
/* 809777A8  38 00 00 02 */	li r0, 2
/* 809777AC  48 00 00 20 */	b lbl_809777CC
lbl_809777B0:
/* 809777B0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809777B4  41 82 00 0C */	beq lbl_809777C0
/* 809777B8  38 00 00 05 */	li r0, 5
/* 809777BC  48 00 00 10 */	b lbl_809777CC
lbl_809777C0:
/* 809777C0  38 00 00 03 */	li r0, 3
/* 809777C4  48 00 00 08 */	b lbl_809777CC
lbl_809777C8:
/* 809777C8  38 00 00 04 */	li r0, 4
lbl_809777CC:
/* 809777CC  2C 00 00 01 */	cmpwi r0, 1
/* 809777D0  40 82 00 10 */	bne lbl_809777E0
/* 809777D4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 809777D8  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 809777DC  48 00 00 08 */	b lbl_809777E4
lbl_809777E0:
/* 809777E0  FC 40 08 90 */	fmr f2, f1
lbl_809777E4:
/* 809777E4  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 809777E8  4B 8E FE 8D */	bl cM_atan2s__Fff
/* 809777EC  A8 1E 09 02 */	lha r0, 0x902(r30)
/* 809777F0  7C 03 00 50 */	subf r0, r3, r0
/* 809777F4  B0 1E 08 FC */	sth r0, 0x8fc(r30)
/* 809777F8  48 00 00 10 */	b lbl_80977808
lbl_809777FC:
/* 809777FC  38 00 00 00 */	li r0, 0
/* 80977800  B0 1E 08 FE */	sth r0, 0x8fe(r30)
/* 80977804  B0 1E 08 FC */	sth r0, 0x8fc(r30)
lbl_80977808:
/* 80977808  C3 FF 00 00 */	lfs f31, 0(r31)
/* 8097780C  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80977810  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80977814  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80977818  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8097781C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80977820  4B 69 55 45 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80977824  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80977828  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8097782C  A8 9E 08 F0 */	lha r4, 0x8f0(r30)
/* 80977830  A8 BE 08 F2 */	lha r5, 0x8f2(r30)
/* 80977834  A8 DE 08 F4 */	lha r6, 0x8f4(r30)
/* 80977838  4B 69 4A 69 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 8097783C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80977840  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80977844  38 81 00 48 */	addi r4, r1, 0x48
/* 80977848  38 A1 00 24 */	addi r5, r1, 0x24
/* 8097784C  4B 9C F5 21 */	bl PSMTXMultVec
/* 80977850  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 80977854  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80977858  EC 20 F8 2A */	fadds f1, f0, f31
/* 8097785C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80977860  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80977864  D0 3E 05 54 */	stfs f1, 0x554(r30)
/* 80977868  D0 5E 05 58 */	stfs f2, 0x558(r30)
/* 8097786C  38 00 00 00 */	li r0, 0
/* 80977870  90 1E 0C AC */	stw r0, 0xcac(r30)
/* 80977874  90 1E 0C 9C */	stw r0, 0xc9c(r30)
/* 80977878  38 7E 0D A8 */	addi r3, r30, 0xda8
/* 8097787C  38 81 00 24 */	addi r4, r1, 0x24
/* 80977880  4B 8F 79 5D */	bl SetC__8cM3dGCylFRC4cXyz
/* 80977884  38 7E 0D A8 */	addi r3, r30, 0xda8
/* 80977888  38 9F 00 00 */	addi r4, r31, 0
/* 8097788C  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 80977890  4B 8F 79 69 */	bl SetH__8cM3dGCylFf
/* 80977894  38 7E 0D A8 */	addi r3, r30, 0xda8
/* 80977898  38 9F 00 00 */	addi r4, r31, 0
/* 8097789C  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 809778A0  4B 8F 79 61 */	bl SetR__8cM3dGCylFf
/* 809778A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809778A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809778AC  38 63 23 3C */	addi r3, r3, 0x233c
/* 809778B0  38 9E 0C 84 */	addi r4, r30, 0xc84
/* 809778B4  4B 8E D2 F5 */	bl Set__4cCcSFP8cCcD_Obj
/* 809778B8  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 809778BC  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 809778C0  39 61 00 90 */	addi r11, r1, 0x90
/* 809778C4  4B 9E A9 55 */	bl _restgpr_25
/* 809778C8  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 809778CC  7C 08 03 A6 */	mtlr r0
/* 809778D0  38 21 00 A0 */	addi r1, r1, 0xa0
/* 809778D4  4E 80 00 20 */	blr 
