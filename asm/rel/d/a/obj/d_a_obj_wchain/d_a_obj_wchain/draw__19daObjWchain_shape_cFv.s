lbl_80D31418:
/* 80D31418  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80D3141C  7C 08 02 A6 */	mflr r0
/* 80D31420  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80D31424  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 80D31428  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 80D3142C  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 80D31430  F3 C1 00 88 */	psq_st f30, 136(r1), 0, 0 /* qr0 */
/* 80D31434  39 61 00 80 */	addi r11, r1, 0x80
/* 80D31438  4B 63 0D 81 */	bl _savegpr_20
/* 80D3143C  3C 80 80 D3 */	lis r4, l_arcName@ha /* 0x80D31924@ha */
/* 80D31440  3B E4 19 24 */	addi r31, r4, l_arcName@l /* 0x80D31924@l */
/* 80D31444  83 A3 00 0C */	lwz r29, 0xc(r3)
/* 80D31448  3B 9D 05 94 */	addi r28, r29, 0x594
/* 80D3144C  3B 7D 07 14 */	addi r27, r29, 0x714
/* 80D31450  3B 5D 07 80 */	addi r26, r29, 0x780
/* 80D31454  80 9D 05 74 */	lwz r4, 0x574(r29)
/* 80D31458  80 64 00 60 */	lwz r3, 0x60(r4)
/* 80D3145C  83 C3 00 00 */	lwz r30, 0(r3)
/* 80D31460  3B 3D 01 0C */	addi r25, r29, 0x10c
/* 80D31464  80 04 00 A0 */	lwz r0, 0xa0(r4)
/* 80D31468  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80D3146C  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80D31470  90 03 01 0C */	stw r0, 0x10c(r3)
/* 80D31474  80 04 00 A4 */	lwz r0, 0xa4(r4)
/* 80D31478  90 03 01 10 */	stw r0, 0x110(r3)
/* 80D3147C  80 04 00 AC */	lwz r0, 0xac(r4)
/* 80D31480  90 03 01 14 */	stw r0, 0x114(r3)
/* 80D31484  38 00 00 00 */	li r0, 0
/* 80D31488  3C 60 80 45 */	lis r3, sOldVcdVatCmd__8J3DShape@ha /* 0x804515D0@ha */
/* 80D3148C  90 03 15 D0 */	stw r0, sOldVcdVatCmd__8J3DShape@l(r3)  /* 0x804515D0@l */
/* 80D31490  7F C3 F3 78 */	mr r3, r30
/* 80D31494  81 9E 00 00 */	lwz r12, 0(r30)
/* 80D31498  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80D3149C  7D 89 03 A6 */	mtctr r12
/* 80D314A0  4E 80 04 21 */	bctrl 
/* 80D314A4  80 7E 00 08 */	lwz r3, 8(r30)
/* 80D314A8  4B 5E 3E 59 */	bl loadPreDrawSetting__8J3DShapeCFv
/* 80D314AC  A8 19 03 48 */	lha r0, 0x348(r25)
/* 80D314B0  98 01 00 14 */	stb r0, 0x14(r1)
/* 80D314B4  A8 19 03 4A */	lha r0, 0x34a(r25)
/* 80D314B8  98 01 00 15 */	stb r0, 0x15(r1)
/* 80D314BC  A8 19 03 4C */	lha r0, 0x34c(r25)
/* 80D314C0  98 01 00 16 */	stb r0, 0x16(r1)
/* 80D314C4  A8 19 03 4E */	lha r0, 0x34e(r25)
/* 80D314C8  98 01 00 17 */	stb r0, 0x17(r1)
/* 80D314CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D314D0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D314D4  38 60 00 04 */	li r3, 4
/* 80D314D8  38 81 00 10 */	addi r4, r1, 0x10
/* 80D314DC  4B 62 C4 85 */	bl GXSetChanAmbColor
/* 80D314E0  3C 60 80 45 */	lis r3, g_whiteColor@ha /* 0x80450608@ha */
/* 80D314E4  80 03 06 08 */	lwz r0, g_whiteColor@l(r3)  /* 0x80450608@l */
/* 80D314E8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D314EC  38 60 00 04 */	li r3, 4
/* 80D314F0  38 81 00 0C */	addi r4, r1, 0xc
/* 80D314F4  4B 62 C5 55 */	bl GXSetChanMatColor
/* 80D314F8  4B 47 60 C9 */	bl dKy_setLight_again__Fv
/* 80D314FC  7F 23 CB 78 */	mr r3, r25
/* 80D31500  4B 47 71 51 */	bl dKy_GxFog_tevstr_set__FP12dKy_tevstr_c
/* 80D31504  38 79 00 34 */	addi r3, r25, 0x34
/* 80D31508  38 80 00 01 */	li r4, 1
/* 80D3150C  4B 62 C3 D9 */	bl GXLoadLightObjImm
/* 80D31510  3A 80 00 00 */	li r20, 0
/* 80D31514  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80D31518  3A A3 4A C8 */	addi r21, r3, j3dSys@l /* 0x80434AC8@l */
/* 80D3151C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D31520  3A C3 D4 70 */	addi r22, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D31524  7E D7 B3 78 */	mr r23, r22
/* 80D31528  7E D8 B3 78 */	mr r24, r22
/* 80D3152C  7E D9 B3 78 */	mr r25, r22
lbl_80D31530:
/* 80D31530  7E A3 AB 78 */	mr r3, r21
/* 80D31534  7E C4 B3 78 */	mr r4, r22
/* 80D31538  4B 61 4F 79 */	bl PSMTXCopy
/* 80D3153C  7F 83 E3 78 */	mr r3, r28
/* 80D31540  4B 2D B8 95 */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 80D31544  7E C3 B3 78 */	mr r3, r22
/* 80D31548  A8 9A 00 00 */	lha r4, 0(r26)
/* 80D3154C  4B 2D AF 81 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80D31550  7E E3 BB 78 */	mr r3, r23
/* 80D31554  A8 9B 00 00 */	lha r4, 0(r27)
/* 80D31558  A8 BD 04 E6 */	lha r5, 0x4e6(r29)
/* 80D3155C  A8 DB 00 04 */	lha r6, 4(r27)
/* 80D31560  4B 2D AD 41 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80D31564  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80D31568  FC 40 08 90 */	fmr f2, f1
/* 80D3156C  C0 7F 00 BC */	lfs f3, 0xbc(r31)
/* 80D31570  4B 2D B8 2D */	bl transM__14mDoMtx_stack_cFfff
/* 80D31574  7F 03 C3 78 */	mr r3, r24
/* 80D31578  38 80 00 00 */	li r4, 0
/* 80D3157C  4B 62 EC D1 */	bl GXLoadPosMtxImm
/* 80D31580  7F 23 CB 78 */	mr r3, r25
/* 80D31584  38 80 00 00 */	li r4, 0
/* 80D31588  4B 62 ED 15 */	bl GXLoadNrmMtxImm
/* 80D3158C  80 7E 00 08 */	lwz r3, 8(r30)
/* 80D31590  81 83 00 00 */	lwz r12, 0(r3)
/* 80D31594  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80D31598  7D 89 03 A6 */	mtctr r12
/* 80D3159C  4E 80 04 21 */	bctrl 
/* 80D315A0  3A 94 00 01 */	addi r20, r20, 1
/* 80D315A4  2C 14 00 10 */	cmpwi r20, 0x10
/* 80D315A8  3B 9C 00 0C */	addi r28, r28, 0xc
/* 80D315AC  3B 7B 00 06 */	addi r27, r27, 6
/* 80D315B0  3B 5A 00 02 */	addi r26, r26, 2
/* 80D315B4  41 80 FF 7C */	blt lbl_80D31530
/* 80D315B8  C0 3D 07 B8 */	lfs f1, 0x7b8(r29)
/* 80D315BC  C0 5D 07 AC */	lfs f2, 0x7ac(r29)
/* 80D315C0  C0 1D 07 B0 */	lfs f0, 0x7b0(r29)
/* 80D315C4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80D315C8  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 80D315CC  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80D315D0  38 61 00 20 */	addi r3, r1, 0x20
/* 80D315D4  38 81 00 44 */	addi r4, r1, 0x44
/* 80D315D8  38 BD 05 94 */	addi r5, r29, 0x594
/* 80D315DC  4B 53 55 59 */	bl __mi__4cXyzCFRC3Vec
/* 80D315E0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80D315E4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80D315E8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80D315EC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80D315F0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80D315F4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80D315F8  38 61 00 38 */	addi r3, r1, 0x38
/* 80D315FC  4B 61 5B 3D */	bl PSVECSquareMag
/* 80D31600  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80D31604  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D31608  40 81 00 58 */	ble lbl_80D31660
/* 80D3160C  FC 00 08 34 */	frsqrte f0, f1
/* 80D31610  C8 9F 00 58 */	lfd f4, 0x58(r31)
/* 80D31614  FC 44 00 32 */	fmul f2, f4, f0
/* 80D31618  C8 7F 00 60 */	lfd f3, 0x60(r31)
/* 80D3161C  FC 00 00 32 */	fmul f0, f0, f0
/* 80D31620  FC 01 00 32 */	fmul f0, f1, f0
/* 80D31624  FC 03 00 28 */	fsub f0, f3, f0
/* 80D31628  FC 02 00 32 */	fmul f0, f2, f0
/* 80D3162C  FC 44 00 32 */	fmul f2, f4, f0
/* 80D31630  FC 00 00 32 */	fmul f0, f0, f0
/* 80D31634  FC 01 00 32 */	fmul f0, f1, f0
/* 80D31638  FC 03 00 28 */	fsub f0, f3, f0
/* 80D3163C  FC 02 00 32 */	fmul f0, f2, f0
/* 80D31640  FC 44 00 32 */	fmul f2, f4, f0
/* 80D31644  FC 00 00 32 */	fmul f0, f0, f0
/* 80D31648  FC 01 00 32 */	fmul f0, f1, f0
/* 80D3164C  FC 03 00 28 */	fsub f0, f3, f0
/* 80D31650  FC 02 00 32 */	fmul f0, f2, f0
/* 80D31654  FF E1 00 32 */	fmul f31, f1, f0
/* 80D31658  FF E0 F8 18 */	frsp f31, f31
/* 80D3165C  48 00 00 90 */	b lbl_80D316EC
lbl_80D31660:
/* 80D31660  C8 1F 00 68 */	lfd f0, 0x68(r31)
/* 80D31664  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D31668  40 80 00 10 */	bge lbl_80D31678
/* 80D3166C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D31670  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80D31674  48 00 00 78 */	b lbl_80D316EC
lbl_80D31678:
/* 80D31678  D0 21 00 08 */	stfs f1, 8(r1)
/* 80D3167C  80 81 00 08 */	lwz r4, 8(r1)
/* 80D31680  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D31684  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D31688  7C 03 00 00 */	cmpw r3, r0
/* 80D3168C  41 82 00 14 */	beq lbl_80D316A0
/* 80D31690  40 80 00 40 */	bge lbl_80D316D0
/* 80D31694  2C 03 00 00 */	cmpwi r3, 0
/* 80D31698  41 82 00 20 */	beq lbl_80D316B8
/* 80D3169C  48 00 00 34 */	b lbl_80D316D0
lbl_80D316A0:
/* 80D316A0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D316A4  41 82 00 0C */	beq lbl_80D316B0
/* 80D316A8  38 00 00 01 */	li r0, 1
/* 80D316AC  48 00 00 28 */	b lbl_80D316D4
lbl_80D316B0:
/* 80D316B0  38 00 00 02 */	li r0, 2
/* 80D316B4  48 00 00 20 */	b lbl_80D316D4
lbl_80D316B8:
/* 80D316B8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D316BC  41 82 00 0C */	beq lbl_80D316C8
/* 80D316C0  38 00 00 05 */	li r0, 5
/* 80D316C4  48 00 00 10 */	b lbl_80D316D4
lbl_80D316C8:
/* 80D316C8  38 00 00 03 */	li r0, 3
/* 80D316CC  48 00 00 08 */	b lbl_80D316D4
lbl_80D316D0:
/* 80D316D0  38 00 00 04 */	li r0, 4
lbl_80D316D4:
/* 80D316D4  2C 00 00 01 */	cmpwi r0, 1
/* 80D316D8  40 82 00 10 */	bne lbl_80D316E8
/* 80D316DC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D316E0  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80D316E4  48 00 00 08 */	b lbl_80D316EC
lbl_80D316E8:
/* 80D316E8  FF E0 08 90 */	fmr f31, f1
lbl_80D316EC:
/* 80D316EC  FF C0 F8 90 */	fmr f30, f31
/* 80D316F0  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80D316F4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80D316F8  40 81 00 F0 */	ble lbl_80D317E8
/* 80D316FC  C0 1D 05 94 */	lfs f0, 0x594(r29)
/* 80D31700  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80D31704  C0 1D 05 98 */	lfs f0, 0x598(r29)
/* 80D31708  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80D3170C  C0 1D 05 9C */	lfs f0, 0x59c(r29)
/* 80D31710  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80D31714  38 61 00 38 */	addi r3, r1, 0x38
/* 80D31718  4B 53 5A 39 */	bl atan2sY_XZ__4cXyzCFv
/* 80D3171C  7C 64 1B 78 */	mr r4, r3
/* 80D31720  38 61 00 18 */	addi r3, r1, 0x18
/* 80D31724  A8 BD 07 16 */	lha r5, 0x716(r29)
/* 80D31728  A8 DD 07 18 */	lha r6, 0x718(r29)
/* 80D3172C  38 06 30 00 */	addi r0, r6, 0x3000
/* 80D31730  7C 06 07 34 */	extsh r6, r0
/* 80D31734  4B 53 5C C1 */	bl __ct__5csXyzFsss
/* 80D31738  38 61 00 38 */	addi r3, r1, 0x38
/* 80D3173C  7C 64 1B 78 */	mr r4, r3
/* 80D31740  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80D31744  EC 20 F8 24 */	fdivs f1, f0, f31
/* 80D31748  4B 61 59 91 */	bl PSVECScale
/* 80D3174C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80D31750  3B 63 4A C8 */	addi r27, r3, j3dSys@l /* 0x80434AC8@l */
/* 80D31754  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D31758  3B 43 D4 70 */	addi r26, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D3175C  7F 59 D3 78 */	mr r25, r26
/* 80D31760  C3 FF 00 3C */	lfs f31, 0x3c(r31)
/* 80D31764  48 00 00 7C */	b lbl_80D317E0
lbl_80D31768:
/* 80D31768  7F 63 DB 78 */	mr r3, r27
/* 80D3176C  7F 44 D3 78 */	mr r4, r26
/* 80D31770  4B 61 4D 41 */	bl PSMTXCopy
/* 80D31774  38 61 00 2C */	addi r3, r1, 0x2c
/* 80D31778  4B 2D B6 5D */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 80D3177C  38 61 00 18 */	addi r3, r1, 0x18
/* 80D31780  4B 2D B7 C5 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80D31784  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80D31788  FC 40 08 90 */	fmr f2, f1
/* 80D3178C  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 80D31790  4B 2D B6 0D */	bl transM__14mDoMtx_stack_cFfff
/* 80D31794  7F 43 D3 78 */	mr r3, r26
/* 80D31798  38 80 00 00 */	li r4, 0
/* 80D3179C  4B 62 EA B1 */	bl GXLoadPosMtxImm
/* 80D317A0  7F 23 CB 78 */	mr r3, r25
/* 80D317A4  38 80 00 00 */	li r4, 0
/* 80D317A8  4B 62 EA F5 */	bl GXLoadNrmMtxImm
/* 80D317AC  80 7E 00 08 */	lwz r3, 8(r30)
/* 80D317B0  81 83 00 00 */	lwz r12, 0(r3)
/* 80D317B4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80D317B8  7D 89 03 A6 */	mtctr r12
/* 80D317BC  4E 80 04 21 */	bctrl 
/* 80D317C0  EF DE F8 28 */	fsubs f30, f30, f31
/* 80D317C4  38 61 00 2C */	addi r3, r1, 0x2c
/* 80D317C8  38 81 00 38 */	addi r4, r1, 0x38
/* 80D317CC  7C 65 1B 78 */	mr r5, r3
/* 80D317D0  4B 61 58 C1 */	bl PSVECAdd
/* 80D317D4  A8 61 00 1C */	lha r3, 0x1c(r1)
/* 80D317D8  38 03 30 00 */	addi r0, r3, 0x3000
/* 80D317DC  B0 01 00 1C */	sth r0, 0x1c(r1)
lbl_80D317E0:
/* 80D317E0  FC 1E F8 40 */	fcmpo cr0, f30, f31
/* 80D317E4  41 81 FF 84 */	bgt lbl_80D31768
lbl_80D317E8:
/* 80D317E8  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 80D317EC  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 80D317F0  E3 C1 00 88 */	psq_l f30, 136(r1), 0, 0 /* qr0 */
/* 80D317F4  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 80D317F8  39 61 00 80 */	addi r11, r1, 0x80
/* 80D317FC  4B 63 0A 09 */	bl _restgpr_20
/* 80D31800  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80D31804  7C 08 03 A6 */	mtlr r0
/* 80D31808  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80D3180C  4E 80 00 20 */	blr 
