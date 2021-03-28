lbl_80AF0430:
/* 80AF0430  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80AF0434  7C 08 02 A6 */	mflr r0
/* 80AF0438  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80AF043C  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 80AF0440  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 80AF0444  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 80AF0448  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 80AF044C  39 61 00 90 */	addi r11, r1, 0x90
/* 80AF0450  4B 87 1D 78 */	b _savegpr_24
/* 80AF0454  7C 7D 1B 78 */	mr r29, r3
/* 80AF0458  3C 60 80 AF */	lis r3, lit_1109@ha
/* 80AF045C  3B C3 2A F0 */	addi r30, r3, lit_1109@l
/* 80AF0460  3C 60 80 AF */	lis r3, m__22daNpc_SoldierA_Param_c@ha
/* 80AF0464  3B E3 26 E8 */	addi r31, r3, m__22daNpc_SoldierA_Param_c@l
/* 80AF0468  88 1E 00 5C */	lbz r0, 0x5c(r30)
/* 80AF046C  7C 00 07 75 */	extsb. r0, r0
/* 80AF0470  40 82 00 34 */	bne lbl_80AF04A4
/* 80AF0474  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80AF0478  D0 3E 00 60 */	stfs f1, 0x60(r30)
/* 80AF047C  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80AF0480  38 7E 00 60 */	addi r3, r30, 0x60
/* 80AF0484  D0 03 00 04 */	stfs f0, 4(r3)
/* 80AF0488  D0 23 00 08 */	stfs f1, 8(r3)
/* 80AF048C  3C 80 80 AF */	lis r4, __dt__4cXyzFv@ha
/* 80AF0490  38 84 1F 74 */	addi r4, r4, __dt__4cXyzFv@l
/* 80AF0494  38 BE 00 50 */	addi r5, r30, 0x50
/* 80AF0498  4B FF F0 81 */	bl __register_global_object
/* 80AF049C  38 00 00 01 */	li r0, 1
/* 80AF04A0  98 1E 00 5C */	stb r0, 0x5c(r30)
lbl_80AF04A4:
/* 80AF04A4  C3 FF 00 00 */	lfs f31, 0(r31)
/* 80AF04A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AF04AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AF04B0  A8 9D 09 90 */	lha r4, 0x990(r29)
/* 80AF04B4  4B 51 BF 28 */	b mDoMtx_YrotS__FPA4_fs
/* 80AF04B8  38 7D 09 84 */	addi r3, r29, 0x984
/* 80AF04BC  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80AF04C0  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 80AF04C4  C0 7F 00 98 */	lfs f3, 0x98(r31)
/* 80AF04C8  4B 77 F5 74 */	b cLib_addCalc2__FPffff
/* 80AF04CC  38 7D 09 8C */	addi r3, r29, 0x98c
/* 80AF04D0  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80AF04D4  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 80AF04D8  C0 7F 00 98 */	lfs f3, 0x98(r31)
/* 80AF04DC  4B 77 F5 60 */	b cLib_addCalc2__FPffff
/* 80AF04E0  3B 00 00 00 */	li r24, 0
/* 80AF04E4  3B 80 00 00 */	li r28, 0
/* 80AF04E8  3B 60 00 00 */	li r27, 0
/* 80AF04EC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80AF04F0  3B 23 9A 20 */	addi r25, r3, sincosTable___5JMath@l
/* 80AF04F4  C3 DF 00 80 */	lfs f30, 0x80(r31)
/* 80AF04F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AF04FC  3B 43 D4 70 */	addi r26, r3, now__14mDoMtx_stack_c@l
lbl_80AF0500:
/* 80AF0500  A8 1D 09 92 */	lha r0, 0x992(r29)
/* 80AF0504  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80AF0508  7C 39 04 2E */	lfsx f1, r25, r0
/* 80AF050C  38 1B 09 84 */	addi r0, r27, 0x984
/* 80AF0510  7C 1D 04 2E */	lfsx f0, r29, r0
/* 80AF0514  EC 00 00 72 */	fmuls f0, f0, f1
/* 80AF0518  D3 C1 00 30 */	stfs f30, 0x30(r1)
/* 80AF051C  D3 C1 00 34 */	stfs f30, 0x34(r1)
/* 80AF0520  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80AF0524  7F 43 D3 78 */	mr r3, r26
/* 80AF0528  38 81 00 30 */	addi r4, r1, 0x30
/* 80AF052C  38 A1 00 24 */	addi r5, r1, 0x24
/* 80AF0530  4B 85 68 3C */	b PSMTXMultVec
/* 80AF0534  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80AF0538  FC 00 00 50 */	fneg f0, f0
/* 80AF053C  FC 00 00 1E */	fctiwz f0, f0
/* 80AF0540  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 80AF0544  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 80AF0548  7C 7D E2 14 */	add r3, r29, r28
/* 80AF054C  B0 03 09 08 */	sth r0, 0x908(r3)
/* 80AF0550  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80AF0554  FC 00 00 50 */	fneg f0, f0
/* 80AF0558  FC 00 00 1E */	fctiwz f0, f0
/* 80AF055C  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 80AF0560  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80AF0564  B0 03 09 0C */	sth r0, 0x90c(r3)
/* 80AF0568  3B 18 00 01 */	addi r24, r24, 1
/* 80AF056C  2C 18 00 03 */	cmpwi r24, 3
/* 80AF0570  3B 9C 00 06 */	addi r28, r28, 6
/* 80AF0574  3B 7B 00 04 */	addi r27, r27, 4
/* 80AF0578  41 80 FF 88 */	blt lbl_80AF0500
/* 80AF057C  38 7D 09 92 */	addi r3, r29, 0x992
/* 80AF0580  38 80 00 00 */	li r4, 0
/* 80AF0584  38 A0 05 55 */	li r5, 0x555
/* 80AF0588  4B 78 01 48 */	b cLib_chaseS__FPsss
/* 80AF058C  A8 1D 0E 14 */	lha r0, 0xe14(r29)
/* 80AF0590  2C 00 00 01 */	cmpwi r0, 1
/* 80AF0594  40 82 00 2C */	bne lbl_80AF05C0
/* 80AF0598  38 60 00 00 */	li r3, 0
/* 80AF059C  38 80 00 00 */	li r4, 0
/* 80AF05A0  38 00 00 03 */	li r0, 3
/* 80AF05A4  7C 09 03 A6 */	mtctr r0
lbl_80AF05A8:
/* 80AF05A8  7C BD 1A 14 */	add r5, r29, r3
/* 80AF05AC  B0 85 09 1A */	sth r4, 0x91a(r5)
/* 80AF05B0  B0 85 09 1C */	sth r4, 0x91c(r5)
/* 80AF05B4  B0 85 09 1E */	sth r4, 0x91e(r5)
/* 80AF05B8  38 63 00 06 */	addi r3, r3, 6
/* 80AF05BC  42 00 FF EC */	bdnz lbl_80AF05A8
lbl_80AF05C0:
/* 80AF05C0  7F A3 EB 78 */	mr r3, r29
/* 80AF05C4  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80AF05C8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80AF05CC  7D 89 03 A6 */	mtctr r12
/* 80AF05D0  4E 80 04 21 */	bctrl 
/* 80AF05D4  7F A3 EB 78 */	mr r3, r29
/* 80AF05D8  48 00 0E D5 */	bl lookat__16daNpc_SoldierA_cFv
/* 80AF05DC  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80AF05E0  80 63 00 04 */	lwz r3, 4(r3)
/* 80AF05E4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80AF05E8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80AF05EC  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80AF05F0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80AF05F4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80AF05F8  4B 85 5E B8 */	b PSMTXCopy
/* 80AF05FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AF0600  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AF0604  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80AF0608  D0 1D 08 E4 */	stfs f0, 0x8e4(r29)
/* 80AF060C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80AF0610  D0 1D 08 E8 */	stfs f0, 0x8e8(r29)
/* 80AF0614  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80AF0618  D0 1D 08 EC */	stfs f0, 0x8ec(r29)
/* 80AF061C  38 9E 00 60 */	addi r4, r30, 0x60
/* 80AF0620  38 BD 05 38 */	addi r5, r29, 0x538
/* 80AF0624  4B 85 67 48 */	b PSMTXMultVec
/* 80AF0628  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AF062C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AF0630  38 9E 00 60 */	addi r4, r30, 0x60
/* 80AF0634  38 A1 00 30 */	addi r5, r1, 0x30
/* 80AF0638  4B 85 67 34 */	b PSMTXMultVec
/* 80AF063C  38 7D 08 E4 */	addi r3, r29, 0x8e4
/* 80AF0640  38 81 00 30 */	addi r4, r1, 0x30
/* 80AF0644  4B 78 06 30 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80AF0648  B0 7D 09 02 */	sth r3, 0x902(r29)
/* 80AF064C  38 7D 08 E4 */	addi r3, r29, 0x8e4
/* 80AF0650  38 81 00 30 */	addi r4, r1, 0x30
/* 80AF0654  4B 78 05 B0 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80AF0658  B0 7D 09 04 */	sth r3, 0x904(r29)
/* 80AF065C  80 9D 0C 0C */	lwz r4, 0xc0c(r29)
/* 80AF0660  28 04 00 00 */	cmplwi r4, 0
/* 80AF0664  41 82 01 84 */	beq lbl_80AF07E8
/* 80AF0668  38 61 00 18 */	addi r3, r1, 0x18
/* 80AF066C  38 BD 05 38 */	addi r5, r29, 0x538
/* 80AF0670  4B 77 64 C4 */	b __mi__4cXyzCFRC3Vec
/* 80AF0674  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80AF0678  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80AF067C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80AF0680  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80AF0684  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80AF0688  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80AF068C  A8 7D 09 28 */	lha r3, 0x928(r29)
/* 80AF0690  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80AF0694  7C 03 02 14 */	add r0, r3, r0
/* 80AF0698  7C 00 00 D0 */	neg r0, r0
/* 80AF069C  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 80AF06A0  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 80AF06A4  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 80AF06A8  4B 77 6F CC */	b cM_atan2s__Fff
/* 80AF06AC  A8 1D 08 FE */	lha r0, 0x8fe(r29)
/* 80AF06B0  7C 00 1A 14 */	add r0, r0, r3
/* 80AF06B4  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 80AF06B8  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80AF06BC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80AF06C0  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80AF06C4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80AF06C8  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80AF06CC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80AF06D0  38 61 00 0C */	addi r3, r1, 0xc
/* 80AF06D4  4B 85 6A 64 */	b PSVECSquareMag
/* 80AF06D8  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80AF06DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AF06E0  40 81 00 58 */	ble lbl_80AF0738
/* 80AF06E4  FC 00 08 34 */	frsqrte f0, f1
/* 80AF06E8  C8 9F 00 A0 */	lfd f4, 0xa0(r31)
/* 80AF06EC  FC 44 00 32 */	fmul f2, f4, f0
/* 80AF06F0  C8 7F 00 A8 */	lfd f3, 0xa8(r31)
/* 80AF06F4  FC 00 00 32 */	fmul f0, f0, f0
/* 80AF06F8  FC 01 00 32 */	fmul f0, f1, f0
/* 80AF06FC  FC 03 00 28 */	fsub f0, f3, f0
/* 80AF0700  FC 02 00 32 */	fmul f0, f2, f0
/* 80AF0704  FC 44 00 32 */	fmul f2, f4, f0
/* 80AF0708  FC 00 00 32 */	fmul f0, f0, f0
/* 80AF070C  FC 01 00 32 */	fmul f0, f1, f0
/* 80AF0710  FC 03 00 28 */	fsub f0, f3, f0
/* 80AF0714  FC 02 00 32 */	fmul f0, f2, f0
/* 80AF0718  FC 44 00 32 */	fmul f2, f4, f0
/* 80AF071C  FC 00 00 32 */	fmul f0, f0, f0
/* 80AF0720  FC 01 00 32 */	fmul f0, f1, f0
/* 80AF0724  FC 03 00 28 */	fsub f0, f3, f0
/* 80AF0728  FC 02 00 32 */	fmul f0, f2, f0
/* 80AF072C  FC 41 00 32 */	fmul f2, f1, f0
/* 80AF0730  FC 40 10 18 */	frsp f2, f2
/* 80AF0734  48 00 00 90 */	b lbl_80AF07C4
lbl_80AF0738:
/* 80AF0738  C8 1F 00 B0 */	lfd f0, 0xb0(r31)
/* 80AF073C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AF0740  40 80 00 10 */	bge lbl_80AF0750
/* 80AF0744  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80AF0748  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80AF074C  48 00 00 78 */	b lbl_80AF07C4
lbl_80AF0750:
/* 80AF0750  D0 21 00 08 */	stfs f1, 8(r1)
/* 80AF0754  80 81 00 08 */	lwz r4, 8(r1)
/* 80AF0758  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80AF075C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80AF0760  7C 03 00 00 */	cmpw r3, r0
/* 80AF0764  41 82 00 14 */	beq lbl_80AF0778
/* 80AF0768  40 80 00 40 */	bge lbl_80AF07A8
/* 80AF076C  2C 03 00 00 */	cmpwi r3, 0
/* 80AF0770  41 82 00 20 */	beq lbl_80AF0790
/* 80AF0774  48 00 00 34 */	b lbl_80AF07A8
lbl_80AF0778:
/* 80AF0778  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80AF077C  41 82 00 0C */	beq lbl_80AF0788
/* 80AF0780  38 00 00 01 */	li r0, 1
/* 80AF0784  48 00 00 28 */	b lbl_80AF07AC
lbl_80AF0788:
/* 80AF0788  38 00 00 02 */	li r0, 2
/* 80AF078C  48 00 00 20 */	b lbl_80AF07AC
lbl_80AF0790:
/* 80AF0790  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80AF0794  41 82 00 0C */	beq lbl_80AF07A0
/* 80AF0798  38 00 00 05 */	li r0, 5
/* 80AF079C  48 00 00 10 */	b lbl_80AF07AC
lbl_80AF07A0:
/* 80AF07A0  38 00 00 03 */	li r0, 3
/* 80AF07A4  48 00 00 08 */	b lbl_80AF07AC
lbl_80AF07A8:
/* 80AF07A8  38 00 00 04 */	li r0, 4
lbl_80AF07AC:
/* 80AF07AC  2C 00 00 01 */	cmpwi r0, 1
/* 80AF07B0  40 82 00 10 */	bne lbl_80AF07C0
/* 80AF07B4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80AF07B8  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80AF07BC  48 00 00 08 */	b lbl_80AF07C4
lbl_80AF07C0:
/* 80AF07C0  FC 40 08 90 */	fmr f2, f1
lbl_80AF07C4:
/* 80AF07C4  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 80AF07C8  4B 77 6E AC */	b cM_atan2s__Fff
/* 80AF07CC  7C 03 00 D0 */	neg r0, r3
/* 80AF07D0  B0 1D 08 FC */	sth r0, 0x8fc(r29)
/* 80AF07D4  A8 7D 08 FC */	lha r3, 0x8fc(r29)
/* 80AF07D8  A8 1D 09 02 */	lha r0, 0x902(r29)
/* 80AF07DC  7C 03 02 14 */	add r0, r3, r0
/* 80AF07E0  B0 1D 08 FC */	sth r0, 0x8fc(r29)
/* 80AF07E4  48 00 00 10 */	b lbl_80AF07F4
lbl_80AF07E8:
/* 80AF07E8  38 00 00 00 */	li r0, 0
/* 80AF07EC  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 80AF07F0  B0 1D 08 FC */	sth r0, 0x8fc(r29)
lbl_80AF07F4:
/* 80AF07F4  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80AF07F8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80AF07FC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80AF0800  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80AF0804  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80AF0808  4B 51 C5 5C */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80AF080C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AF0810  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AF0814  A8 9D 08 F0 */	lha r4, 0x8f0(r29)
/* 80AF0818  A8 BD 08 F2 */	lha r5, 0x8f2(r29)
/* 80AF081C  A8 DD 08 F4 */	lha r6, 0x8f4(r29)
/* 80AF0820  4B 51 BA 80 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80AF0824  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AF0828  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AF082C  38 81 00 3C */	addi r4, r1, 0x3c
/* 80AF0830  38 A1 00 48 */	addi r5, r1, 0x48
/* 80AF0834  4B 85 65 38 */	b PSMTXMultVec
/* 80AF0838  C0 5D 08 EC */	lfs f2, 0x8ec(r29)
/* 80AF083C  C0 1D 08 E8 */	lfs f0, 0x8e8(r29)
/* 80AF0840  EC 20 F8 2A */	fadds f1, f0, f31
/* 80AF0844  C0 1D 08 E4 */	lfs f0, 0x8e4(r29)
/* 80AF0848  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 80AF084C  D0 3D 05 54 */	stfs f1, 0x554(r29)
/* 80AF0850  D0 5D 05 58 */	stfs f2, 0x558(r29)
/* 80AF0854  88 1D 09 F2 */	lbz r0, 0x9f2(r29)
/* 80AF0858  28 00 00 00 */	cmplwi r0, 0
/* 80AF085C  40 82 00 90 */	bne lbl_80AF08EC
/* 80AF0860  88 1D 09 F0 */	lbz r0, 0x9f0(r29)
/* 80AF0864  28 00 00 00 */	cmplwi r0, 0
/* 80AF0868  40 82 00 28 */	bne lbl_80AF0890
/* 80AF086C  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80AF0870  38 03 FD FF */	addi r0, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80AF0874  90 1D 0C BC */	stw r0, 0xcbc(r29)
/* 80AF0878  38 00 00 1F */	li r0, 0x1f
/* 80AF087C  90 1D 0C AC */	stw r0, 0xcac(r29)
/* 80AF0880  80 1D 0D 30 */	lwz r0, 0xd30(r29)
/* 80AF0884  60 00 00 04 */	ori r0, r0, 4
/* 80AF0888  90 1D 0D 30 */	stw r0, 0xd30(r29)
/* 80AF088C  48 00 00 10 */	b lbl_80AF089C
lbl_80AF0890:
/* 80AF0890  38 00 00 00 */	li r0, 0
/* 80AF0894  90 1D 0C BC */	stw r0, 0xcbc(r29)
/* 80AF0898  90 1D 0C AC */	stw r0, 0xcac(r29)
lbl_80AF089C:
/* 80AF089C  38 7D 0D B8 */	addi r3, r29, 0xdb8
/* 80AF08A0  38 81 00 48 */	addi r4, r1, 0x48
/* 80AF08A4  4B 77 E9 38 */	b SetC__8cM3dGCylFRC4cXyz
/* 80AF08A8  38 7D 0D B8 */	addi r3, r29, 0xdb8
/* 80AF08AC  38 9F 00 00 */	addi r4, r31, 0
/* 80AF08B0  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 80AF08B4  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80AF08B8  EC 21 00 2A */	fadds f1, f1, f0
/* 80AF08BC  4B 77 E9 3C */	b SetH__8cM3dGCylFf
/* 80AF08C0  38 7D 0D B8 */	addi r3, r29, 0xdb8
/* 80AF08C4  38 9F 00 00 */	addi r4, r31, 0
/* 80AF08C8  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 80AF08CC  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80AF08D0  EC 21 00 2A */	fadds f1, f1, f0
/* 80AF08D4  4B 77 E9 2C */	b SetR__8cM3dGCylFf
/* 80AF08D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AF08DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AF08E0  38 63 23 3C */	addi r3, r3, 0x233c
/* 80AF08E4  38 9D 0C 94 */	addi r4, r29, 0xc94
/* 80AF08E8  4B 77 42 C0 */	b Set__4cCcSFP8cCcD_Obj
lbl_80AF08EC:
/* 80AF08EC  38 7D 0C 94 */	addi r3, r29, 0xc94
/* 80AF08F0  81 9D 0C D0 */	lwz r12, 0xcd0(r29)
/* 80AF08F4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80AF08F8  7D 89 03 A6 */	mtctr r12
/* 80AF08FC  4E 80 04 21 */	bctrl 
/* 80AF0900  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 80AF0904  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 80AF0908  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 80AF090C  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 80AF0910  39 61 00 90 */	addi r11, r1, 0x90
/* 80AF0914  4B 87 19 00 */	b _restgpr_24
/* 80AF0918  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80AF091C  7C 08 03 A6 */	mtlr r0
/* 80AF0920  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80AF0924  4E 80 00 20 */	blr 
