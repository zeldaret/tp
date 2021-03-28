lbl_80B331CC:
/* 80B331CC  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80B331D0  7C 08 02 A6 */	mflr r0
/* 80B331D4  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80B331D8  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 80B331DC  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 80B331E0  39 61 00 90 */	addi r11, r1, 0x90
/* 80B331E4  4B 82 EF F0 */	b _savegpr_27
/* 80B331E8  7C 7C 1B 78 */	mr r28, r3
/* 80B331EC  3C 60 80 B4 */	lis r3, m__21daNpcWrestler_Param_c@ha
/* 80B331F0  3B A3 16 DC */	addi r29, r3, m__21daNpcWrestler_Param_c@l
/* 80B331F4  3C 60 80 B4 */	lis r3, cNullVec__6Z2Calc@ha
/* 80B331F8  3B C3 1D F8 */	addi r30, r3, cNullVec__6Z2Calc@l
/* 80B331FC  A0 1C 0E 96 */	lhz r0, 0xe96(r28)
/* 80B33200  2C 00 00 02 */	cmpwi r0, 2
/* 80B33204  41 82 01 80 */	beq lbl_80B33384
/* 80B33208  40 80 07 C0 */	bge lbl_80B339C8
/* 80B3320C  2C 00 00 00 */	cmpwi r0, 0
/* 80B33210  41 82 00 0C */	beq lbl_80B3321C
/* 80B33214  48 00 07 B4 */	b lbl_80B339C8
/* 80B33218  48 00 07 B0 */	b lbl_80B339C8
lbl_80B3321C:
/* 80B3321C  80 7C 0B DC */	lwz r3, 0xbdc(r28)
/* 80B33220  A8 03 00 26 */	lha r0, 0x26(r3)
/* 80B33224  90 1C 0E 80 */	stw r0, 0xe80(r28)
/* 80B33228  38 80 00 00 */	li r4, 0
/* 80B3322C  98 9C 0E 98 */	stb r4, 0xe98(r28)
/* 80B33230  88 1C 0E 9B */	lbz r0, 0xe9b(r28)
/* 80B33234  28 00 00 01 */	cmplwi r0, 1
/* 80B33238  40 82 00 24 */	bne lbl_80B3325C
/* 80B3323C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B33240  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B33244  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B33248  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80B3324C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80B33250  40 82 00 0C */	bne lbl_80B3325C
/* 80B33254  90 9C 0E 74 */	stw r4, 0xe74(r28)
/* 80B33258  48 00 00 DC */	b lbl_80B33334
lbl_80B3325C:
/* 80B3325C  80 7C 0B D8 */	lwz r3, 0xbd8(r28)
/* 80B33260  A8 63 00 6C */	lha r3, 0x6c(r3)
/* 80B33264  7C 60 07 35 */	extsh. r0, r3
/* 80B33268  41 82 00 0C */	beq lbl_80B33274
/* 80B3326C  90 7C 0E 74 */	stw r3, 0xe74(r28)
/* 80B33270  48 00 00 C4 */	b lbl_80B33334
lbl_80B33274:
/* 80B33274  4B 73 45 F8 */	b cM_rnd__Fv
/* 80B33278  C0 1D 01 DC */	lfs f0, 0x1dc(r29)
/* 80B3327C  EF E0 00 72 */	fmuls f31, f0, f1
/* 80B33280  38 60 00 E9 */	li r3, 0xe9
/* 80B33284  4B 62 23 B0 */	b daNpcF_chkEvtBit__FUl
/* 80B33288  30 03 FF FF */	addic r0, r3, -1
/* 80B3328C  7C 00 19 10 */	subfe r0, r0, r3
/* 80B33290  80 7C 0B DC */	lwz r3, 0xbdc(r28)
/* 80B33294  54 00 20 36 */	slwi r0, r0, 4
/* 80B33298  7C 63 02 14 */	add r3, r3, r0
/* 80B3329C  C0 63 00 2C */	lfs f3, 0x2c(r3)
/* 80B332A0  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 80B332A4  EC 43 00 2A */	fadds f2, f3, f0
/* 80B332A8  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 80B332AC  EC 22 00 2A */	fadds f1, f2, f0
/* 80B332B0  C0 1D 01 B8 */	lfs f0, 0x1b8(r29)
/* 80B332B4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80B332B8  4C 41 13 82 */	cror 2, 1, 2
/* 80B332BC  40 82 00 18 */	bne lbl_80B332D4
/* 80B332C0  FC 1F 18 40 */	fcmpo cr0, f31, f3
/* 80B332C4  40 80 00 10 */	bge lbl_80B332D4
/* 80B332C8  38 00 00 01 */	li r0, 1
/* 80B332CC  90 1C 0E 74 */	stw r0, 0xe74(r28)
/* 80B332D0  48 00 00 64 */	b lbl_80B33334
lbl_80B332D4:
/* 80B332D4  FC 1F 18 40 */	fcmpo cr0, f31, f3
/* 80B332D8  4C 41 13 82 */	cror 2, 1, 2
/* 80B332DC  40 82 00 18 */	bne lbl_80B332F4
/* 80B332E0  FC 1F 10 40 */	fcmpo cr0, f31, f2
/* 80B332E4  40 80 00 10 */	bge lbl_80B332F4
/* 80B332E8  38 00 00 02 */	li r0, 2
/* 80B332EC  90 1C 0E 74 */	stw r0, 0xe74(r28)
/* 80B332F0  48 00 00 44 */	b lbl_80B33334
lbl_80B332F4:
/* 80B332F4  FC 1F 10 40 */	fcmpo cr0, f31, f2
/* 80B332F8  4C 41 13 82 */	cror 2, 1, 2
/* 80B332FC  40 82 00 18 */	bne lbl_80B33314
/* 80B33300  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80B33304  40 80 00 10 */	bge lbl_80B33314
/* 80B33308  38 00 00 03 */	li r0, 3
/* 80B3330C  90 1C 0E 74 */	stw r0, 0xe74(r28)
/* 80B33310  48 00 00 24 */	b lbl_80B33334
lbl_80B33314:
/* 80B33314  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80B33318  4C 41 13 82 */	cror 2, 1, 2
/* 80B3331C  40 82 00 18 */	bne lbl_80B33334
/* 80B33320  C0 1D 01 DC */	lfs f0, 0x1dc(r29)
/* 80B33324  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80B33328  40 80 00 0C */	bge lbl_80B33334
/* 80B3332C  38 00 00 04 */	li r0, 4
/* 80B33330  90 1C 0E 74 */	stw r0, 0xe74(r28)
lbl_80B33334:
/* 80B33334  7F 83 E3 78 */	mr r3, r28
/* 80B33338  38 80 00 03 */	li r4, 3
/* 80B3333C  C0 3D 01 C8 */	lfs f1, 0x1c8(r29)
/* 80B33340  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80B33344  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B33348  7D 89 03 A6 */	mtctr r12
/* 80B3334C  4E 80 04 21 */	bctrl 
/* 80B33350  7F 83 E3 78 */	mr r3, r28
/* 80B33354  38 80 00 08 */	li r4, 8
/* 80B33358  C0 3C 0E 8C */	lfs f1, 0xe8c(r28)
/* 80B3335C  38 A0 00 00 */	li r5, 0
/* 80B33360  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80B33364  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B33368  7D 89 03 A6 */	mtctr r12
/* 80B3336C  4E 80 04 21 */	bctrl 
/* 80B33370  C0 1D 01 C8 */	lfs f0, 0x1c8(r29)
/* 80B33374  D0 1C 0E 8C */	stfs f0, 0xe8c(r28)
/* 80B33378  38 00 00 02 */	li r0, 2
/* 80B3337C  B0 1C 0E 96 */	sth r0, 0xe96(r28)
/* 80B33380  48 00 06 48 */	b lbl_80B339C8
lbl_80B33384:
/* 80B33384  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B33388  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80B3338C  83 7F 5D AC */	lwz r27, 0x5dac(r31)
/* 80B33390  80 7C 0B DC */	lwz r3, 0xbdc(r28)
/* 80B33394  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 80B33398  C0 1D 01 B8 */	lfs f0, 0x1b8(r29)
/* 80B3339C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B333A0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B333A4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80B333A8  38 7B 05 F8 */	addi r3, r27, 0x5f8
/* 80B333AC  4B 4D 99 B8 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80B333B0  38 7B 05 F8 */	addi r3, r27, 0x5f8
/* 80B333B4  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80B333B8  4B 73 D8 4C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B333BC  A8 1C 0E 94 */	lha r0, 0xe94(r28)
/* 80B333C0  7C 00 1A 14 */	add r0, r0, r3
/* 80B333C4  7C 04 07 34 */	extsh r4, r0
/* 80B333C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B333CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B333D0  4B 4D 90 64 */	b mDoMtx_YrotM__FPA4_fs
/* 80B333D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B333D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B333DC  38 81 00 08 */	addi r4, r1, 8
/* 80B333E0  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80B333E4  4B 81 39 88 */	b PSMTXMultVec
/* 80B333E8  7F 83 E3 78 */	mr r3, r28
/* 80B333EC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B333F0  4B 4E 73 20 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B333F4  7C 64 1B 78 */	mr r4, r3
/* 80B333F8  38 7C 08 F2 */	addi r3, r28, 0x8f2
/* 80B333FC  80 BC 0B D8 */	lwz r5, 0xbd8(r28)
/* 80B33400  A8 A5 00 78 */	lha r5, 0x78(r5)
/* 80B33404  38 C0 40 00 */	li r6, 0x4000
/* 80B33408  38 E0 00 40 */	li r7, 0x40
/* 80B3340C  4B 73 D1 34 */	b cLib_addCalcAngleS__FPsssss
/* 80B33410  7F 83 E3 78 */	mr r3, r28
/* 80B33414  A8 9C 08 F2 */	lha r4, 0x8f2(r28)
/* 80B33418  4B 62 0E 38 */	b setAngle__8daNpcF_cFs
/* 80B3341C  7F 83 E3 78 */	mr r3, r28
/* 80B33420  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B33424  4B 4E 72 EC */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B33428  7C 64 1B 78 */	mr r4, r3
/* 80B3342C  A8 7C 08 F2 */	lha r3, 0x8f2(r28)
/* 80B33430  4B 73 D9 F4 */	b cLib_distanceAngleS__Fss
/* 80B33434  2C 03 06 00 */	cmpwi r3, 0x600
/* 80B33438  40 80 00 28 */	bge lbl_80B33460
/* 80B3343C  7F 83 E3 78 */	mr r3, r28
/* 80B33440  38 80 00 08 */	li r4, 8
/* 80B33444  C0 3D 05 B8 */	lfs f1, 0x5b8(r29)
/* 80B33448  38 A0 00 00 */	li r5, 0
/* 80B3344C  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80B33450  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B33454  7D 89 03 A6 */	mtctr r12
/* 80B33458  4E 80 04 21 */	bctrl 
/* 80B3345C  48 00 00 24 */	b lbl_80B33480
lbl_80B33460:
/* 80B33460  7F 83 E3 78 */	mr r3, r28
/* 80B33464  38 80 00 09 */	li r4, 9
/* 80B33468  C0 3D 05 B8 */	lfs f1, 0x5b8(r29)
/* 80B3346C  38 A0 00 00 */	li r5, 0
/* 80B33470  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80B33474  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B33478  7D 89 03 A6 */	mtctr r12
/* 80B3347C  4E 80 04 21 */	bctrl 
lbl_80B33480:
/* 80B33480  7F 83 E3 78 */	mr r3, r28
/* 80B33484  48 00 06 B9 */	bl setNextAction__15daNpcWrestler_cFv
/* 80B33488  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B3348C  40 82 04 A4 */	bne lbl_80B33930
/* 80B33490  80 7C 0E 80 */	lwz r3, 0xe80(r28)
/* 80B33494  38 03 FF FF */	addi r0, r3, -1
/* 80B33498  90 1C 0E 80 */	stw r0, 0xe80(r28)
/* 80B3349C  2C 03 00 00 */	cmpwi r3, 0
/* 80B334A0  40 80 04 90 */	bge lbl_80B33930
/* 80B334A4  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80B334A8  88 1C 0E 9B */	lbz r0, 0xe9b(r28)
/* 80B334AC  28 00 00 01 */	cmplwi r0, 1
/* 80B334B0  40 82 00 C0 */	bne lbl_80B33570
/* 80B334B4  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80B334B8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80B334BC  40 82 00 B4 */	bne lbl_80B33570
/* 80B334C0  80 7E 0B 30 */	lwz r3, 0xb30(r30)
/* 80B334C4  80 1E 0B 34 */	lwz r0, 0xb34(r30)
/* 80B334C8  90 61 00 68 */	stw r3, 0x68(r1)
/* 80B334CC  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80B334D0  80 1E 0B 38 */	lwz r0, 0xb38(r30)
/* 80B334D4  90 01 00 70 */	stw r0, 0x70(r1)
/* 80B334D8  38 00 00 03 */	li r0, 3
/* 80B334DC  B0 1C 0E 96 */	sth r0, 0xe96(r28)
/* 80B334E0  38 7C 0D CC */	addi r3, r28, 0xdcc
/* 80B334E4  4B 82 EB 34 */	b __ptmf_test
/* 80B334E8  2C 03 00 00 */	cmpwi r3, 0
/* 80B334EC  41 82 00 18 */	beq lbl_80B33504
/* 80B334F0  7F 83 E3 78 */	mr r3, r28
/* 80B334F4  38 80 00 00 */	li r4, 0
/* 80B334F8  39 9C 0D CC */	addi r12, r28, 0xdcc
/* 80B334FC  4B 82 EB 88 */	b __ptmf_scall
/* 80B33500  60 00 00 00 */	nop 
lbl_80B33504:
/* 80B33504  38 00 00 00 */	li r0, 0
/* 80B33508  B0 1C 0E 96 */	sth r0, 0xe96(r28)
/* 80B3350C  80 61 00 68 */	lwz r3, 0x68(r1)
/* 80B33510  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 80B33514  90 7C 0D CC */	stw r3, 0xdcc(r28)
/* 80B33518  90 1C 0D D0 */	stw r0, 0xdd0(r28)
/* 80B3351C  80 01 00 70 */	lwz r0, 0x70(r1)
/* 80B33520  90 1C 0D D4 */	stw r0, 0xdd4(r28)
/* 80B33524  38 7C 0D CC */	addi r3, r28, 0xdcc
/* 80B33528  4B 82 EA F0 */	b __ptmf_test
/* 80B3352C  2C 03 00 00 */	cmpwi r3, 0
/* 80B33530  41 82 00 18 */	beq lbl_80B33548
/* 80B33534  7F 83 E3 78 */	mr r3, r28
/* 80B33538  38 80 00 00 */	li r4, 0
/* 80B3353C  39 9C 0D CC */	addi r12, r28, 0xdcc
/* 80B33540  4B 82 EB 44 */	b __ptmf_scall
/* 80B33544  60 00 00 00 */	nop 
lbl_80B33548:
/* 80B33548  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80B3354C  88 03 05 6A */	lbz r0, 0x56a(r3)
/* 80B33550  28 00 00 1F */	cmplwi r0, 0x1f
/* 80B33554  40 82 00 10 */	bne lbl_80B33564
/* 80B33558  38 00 00 21 */	li r0, 0x21
/* 80B3355C  98 03 05 6A */	stb r0, 0x56a(r3)
/* 80B33560  48 00 03 D0 */	b lbl_80B33930
lbl_80B33564:
/* 80B33564  38 00 00 1C */	li r0, 0x1c
/* 80B33568  98 03 05 6A */	stb r0, 0x56a(r3)
/* 80B3356C  48 00 03 C4 */	b lbl_80B33930
lbl_80B33570:
/* 80B33570  80 1C 0E 74 */	lwz r0, 0xe74(r28)
/* 80B33574  2C 00 00 03 */	cmpwi r0, 3
/* 80B33578  41 82 01 64 */	beq lbl_80B336DC
/* 80B3357C  40 80 00 14 */	bge lbl_80B33590
/* 80B33580  2C 00 00 01 */	cmpwi r0, 1
/* 80B33584  41 82 00 1C */	beq lbl_80B335A0
/* 80B33588  40 80 00 A4 */	bge lbl_80B3362C
/* 80B3358C  48 00 03 A4 */	b lbl_80B33930
lbl_80B33590:
/* 80B33590  2C 00 00 05 */	cmpwi r0, 5
/* 80B33594  41 82 03 14 */	beq lbl_80B338A8
/* 80B33598  40 80 03 98 */	bge lbl_80B33930
/* 80B3359C  48 00 02 80 */	b lbl_80B3381C
lbl_80B335A0:
/* 80B335A0  80 7E 0B 3C */	lwz r3, 0xb3c(r30)
/* 80B335A4  80 1E 0B 40 */	lwz r0, 0xb40(r30)
/* 80B335A8  90 61 00 5C */	stw r3, 0x5c(r1)
/* 80B335AC  90 01 00 60 */	stw r0, 0x60(r1)
/* 80B335B0  80 1E 0B 44 */	lwz r0, 0xb44(r30)
/* 80B335B4  90 01 00 64 */	stw r0, 0x64(r1)
/* 80B335B8  38 00 00 03 */	li r0, 3
/* 80B335BC  B0 1C 0E 96 */	sth r0, 0xe96(r28)
/* 80B335C0  38 7C 0D CC */	addi r3, r28, 0xdcc
/* 80B335C4  4B 82 EA 54 */	b __ptmf_test
/* 80B335C8  2C 03 00 00 */	cmpwi r3, 0
/* 80B335CC  41 82 00 18 */	beq lbl_80B335E4
/* 80B335D0  7F 83 E3 78 */	mr r3, r28
/* 80B335D4  38 80 00 00 */	li r4, 0
/* 80B335D8  39 9C 0D CC */	addi r12, r28, 0xdcc
/* 80B335DC  4B 82 EA A8 */	b __ptmf_scall
/* 80B335E0  60 00 00 00 */	nop 
lbl_80B335E4:
/* 80B335E4  38 00 00 00 */	li r0, 0
/* 80B335E8  B0 1C 0E 96 */	sth r0, 0xe96(r28)
/* 80B335EC  80 61 00 5C */	lwz r3, 0x5c(r1)
/* 80B335F0  80 01 00 60 */	lwz r0, 0x60(r1)
/* 80B335F4  90 7C 0D CC */	stw r3, 0xdcc(r28)
/* 80B335F8  90 1C 0D D0 */	stw r0, 0xdd0(r28)
/* 80B335FC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80B33600  90 1C 0D D4 */	stw r0, 0xdd4(r28)
/* 80B33604  38 7C 0D CC */	addi r3, r28, 0xdcc
/* 80B33608  4B 82 EA 10 */	b __ptmf_test
/* 80B3360C  2C 03 00 00 */	cmpwi r3, 0
/* 80B33610  41 82 03 20 */	beq lbl_80B33930
/* 80B33614  7F 83 E3 78 */	mr r3, r28
/* 80B33618  38 80 00 00 */	li r4, 0
/* 80B3361C  39 9C 0D CC */	addi r12, r28, 0xdcc
/* 80B33620  4B 82 EA 64 */	b __ptmf_scall
/* 80B33624  60 00 00 00 */	nop 
/* 80B33628  48 00 03 08 */	b lbl_80B33930
lbl_80B3362C:
/* 80B3362C  80 7E 0B 48 */	lwz r3, 0xb48(r30)
/* 80B33630  80 1E 0B 4C */	lwz r0, 0xb4c(r30)
/* 80B33634  90 61 00 50 */	stw r3, 0x50(r1)
/* 80B33638  90 01 00 54 */	stw r0, 0x54(r1)
/* 80B3363C  80 1E 0B 50 */	lwz r0, 0xb50(r30)
/* 80B33640  90 01 00 58 */	stw r0, 0x58(r1)
/* 80B33644  38 00 00 03 */	li r0, 3
/* 80B33648  B0 1C 0E 96 */	sth r0, 0xe96(r28)
/* 80B3364C  38 7C 0D CC */	addi r3, r28, 0xdcc
/* 80B33650  4B 82 E9 C8 */	b __ptmf_test
/* 80B33654  2C 03 00 00 */	cmpwi r3, 0
/* 80B33658  41 82 00 18 */	beq lbl_80B33670
/* 80B3365C  7F 83 E3 78 */	mr r3, r28
/* 80B33660  38 80 00 00 */	li r4, 0
/* 80B33664  39 9C 0D CC */	addi r12, r28, 0xdcc
/* 80B33668  4B 82 EA 1C */	b __ptmf_scall
/* 80B3366C  60 00 00 00 */	nop 
lbl_80B33670:
/* 80B33670  38 00 00 00 */	li r0, 0
/* 80B33674  B0 1C 0E 96 */	sth r0, 0xe96(r28)
/* 80B33678  80 61 00 50 */	lwz r3, 0x50(r1)
/* 80B3367C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80B33680  90 7C 0D CC */	stw r3, 0xdcc(r28)
/* 80B33684  90 1C 0D D0 */	stw r0, 0xdd0(r28)
/* 80B33688  80 01 00 58 */	lwz r0, 0x58(r1)
/* 80B3368C  90 1C 0D D4 */	stw r0, 0xdd4(r28)
/* 80B33690  38 7C 0D CC */	addi r3, r28, 0xdcc
/* 80B33694  4B 82 E9 84 */	b __ptmf_test
/* 80B33698  2C 03 00 00 */	cmpwi r3, 0
/* 80B3369C  41 82 00 18 */	beq lbl_80B336B4
/* 80B336A0  7F 83 E3 78 */	mr r3, r28
/* 80B336A4  38 80 00 00 */	li r4, 0
/* 80B336A8  39 9C 0D CC */	addi r12, r28, 0xdcc
/* 80B336AC  4B 82 E9 D8 */	b __ptmf_scall
/* 80B336B0  60 00 00 00 */	nop 
lbl_80B336B4:
/* 80B336B4  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80B336B8  88 03 05 6A */	lbz r0, 0x56a(r3)
/* 80B336BC  28 00 00 1F */	cmplwi r0, 0x1f
/* 80B336C0  40 82 00 10 */	bne lbl_80B336D0
/* 80B336C4  38 00 00 21 */	li r0, 0x21
/* 80B336C8  98 03 05 6A */	stb r0, 0x56a(r3)
/* 80B336CC  48 00 02 64 */	b lbl_80B33930
lbl_80B336D0:
/* 80B336D0  38 00 00 1C */	li r0, 0x1c
/* 80B336D4  98 03 05 6A */	stb r0, 0x56a(r3)
/* 80B336D8  48 00 02 58 */	b lbl_80B33930
lbl_80B336DC:
/* 80B336DC  88 03 05 6A */	lbz r0, 0x56a(r3)
/* 80B336E0  28 00 00 16 */	cmplwi r0, 0x16
/* 80B336E4  40 82 00 9C */	bne lbl_80B33780
/* 80B336E8  80 7E 0B 54 */	lwz r3, 0xb54(r30)
/* 80B336EC  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80B336F0  90 61 00 44 */	stw r3, 0x44(r1)
/* 80B336F4  90 01 00 48 */	stw r0, 0x48(r1)
/* 80B336F8  80 1E 0B 5C */	lwz r0, 0xb5c(r30)
/* 80B336FC  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80B33700  38 00 00 03 */	li r0, 3
/* 80B33704  B0 1C 0E 96 */	sth r0, 0xe96(r28)
/* 80B33708  38 7C 0D CC */	addi r3, r28, 0xdcc
/* 80B3370C  4B 82 E9 0C */	b __ptmf_test
/* 80B33710  2C 03 00 00 */	cmpwi r3, 0
/* 80B33714  41 82 00 18 */	beq lbl_80B3372C
/* 80B33718  7F 83 E3 78 */	mr r3, r28
/* 80B3371C  38 80 00 00 */	li r4, 0
/* 80B33720  39 9C 0D CC */	addi r12, r28, 0xdcc
/* 80B33724  4B 82 E9 60 */	b __ptmf_scall
/* 80B33728  60 00 00 00 */	nop 
lbl_80B3372C:
/* 80B3372C  38 00 00 00 */	li r0, 0
/* 80B33730  B0 1C 0E 96 */	sth r0, 0xe96(r28)
/* 80B33734  80 61 00 44 */	lwz r3, 0x44(r1)
/* 80B33738  80 01 00 48 */	lwz r0, 0x48(r1)
/* 80B3373C  90 7C 0D CC */	stw r3, 0xdcc(r28)
/* 80B33740  90 1C 0D D0 */	stw r0, 0xdd0(r28)
/* 80B33744  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80B33748  90 1C 0D D4 */	stw r0, 0xdd4(r28)
/* 80B3374C  38 7C 0D CC */	addi r3, r28, 0xdcc
/* 80B33750  4B 82 E8 C8 */	b __ptmf_test
/* 80B33754  2C 03 00 00 */	cmpwi r3, 0
/* 80B33758  41 82 00 18 */	beq lbl_80B33770
/* 80B3375C  7F 83 E3 78 */	mr r3, r28
/* 80B33760  38 80 00 00 */	li r4, 0
/* 80B33764  39 9C 0D CC */	addi r12, r28, 0xdcc
/* 80B33768  4B 82 E9 1C */	b __ptmf_scall
/* 80B3376C  60 00 00 00 */	nop 
lbl_80B33770:
/* 80B33770  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80B33774  38 00 00 1B */	li r0, 0x1b
/* 80B33778  98 03 05 6A */	stb r0, 0x56a(r3)
/* 80B3377C  48 00 01 B4 */	b lbl_80B33930
lbl_80B33780:
/* 80B33780  28 00 00 17 */	cmplwi r0, 0x17
/* 80B33784  41 82 00 0C */	beq lbl_80B33790
/* 80B33788  28 00 00 18 */	cmplwi r0, 0x18
/* 80B3378C  40 82 01 A4 */	bne lbl_80B33930
lbl_80B33790:
/* 80B33790  80 7E 0B 60 */	lwz r3, 0xb60(r30)
/* 80B33794  80 1E 0B 64 */	lwz r0, 0xb64(r30)
/* 80B33798  90 61 00 38 */	stw r3, 0x38(r1)
/* 80B3379C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80B337A0  80 1E 0B 68 */	lwz r0, 0xb68(r30)
/* 80B337A4  90 01 00 40 */	stw r0, 0x40(r1)
/* 80B337A8  38 00 00 03 */	li r0, 3
/* 80B337AC  B0 1C 0E 96 */	sth r0, 0xe96(r28)
/* 80B337B0  38 7C 0D CC */	addi r3, r28, 0xdcc
/* 80B337B4  4B 82 E8 64 */	b __ptmf_test
/* 80B337B8  2C 03 00 00 */	cmpwi r3, 0
/* 80B337BC  41 82 00 18 */	beq lbl_80B337D4
/* 80B337C0  7F 83 E3 78 */	mr r3, r28
/* 80B337C4  38 80 00 00 */	li r4, 0
/* 80B337C8  39 9C 0D CC */	addi r12, r28, 0xdcc
/* 80B337CC  4B 82 E8 B8 */	b __ptmf_scall
/* 80B337D0  60 00 00 00 */	nop 
lbl_80B337D4:
/* 80B337D4  38 00 00 00 */	li r0, 0
/* 80B337D8  B0 1C 0E 96 */	sth r0, 0xe96(r28)
/* 80B337DC  80 61 00 38 */	lwz r3, 0x38(r1)
/* 80B337E0  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80B337E4  90 7C 0D CC */	stw r3, 0xdcc(r28)
/* 80B337E8  90 1C 0D D0 */	stw r0, 0xdd0(r28)
/* 80B337EC  80 01 00 40 */	lwz r0, 0x40(r1)
/* 80B337F0  90 1C 0D D4 */	stw r0, 0xdd4(r28)
/* 80B337F4  38 7C 0D CC */	addi r3, r28, 0xdcc
/* 80B337F8  4B 82 E8 20 */	b __ptmf_test
/* 80B337FC  2C 03 00 00 */	cmpwi r3, 0
/* 80B33800  41 82 01 30 */	beq lbl_80B33930
/* 80B33804  7F 83 E3 78 */	mr r3, r28
/* 80B33808  38 80 00 00 */	li r4, 0
/* 80B3380C  39 9C 0D CC */	addi r12, r28, 0xdcc
/* 80B33810  4B 82 E8 74 */	b __ptmf_scall
/* 80B33814  60 00 00 00 */	nop 
/* 80B33818  48 00 01 18 */	b lbl_80B33930
lbl_80B3381C:
/* 80B3381C  80 7E 0B 6C */	lwz r3, 0xb6c(r30)
/* 80B33820  80 1E 0B 70 */	lwz r0, 0xb70(r30)
/* 80B33824  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80B33828  90 01 00 30 */	stw r0, 0x30(r1)
/* 80B3382C  80 1E 0B 74 */	lwz r0, 0xb74(r30)
/* 80B33830  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B33834  38 00 00 03 */	li r0, 3
/* 80B33838  B0 1C 0E 96 */	sth r0, 0xe96(r28)
/* 80B3383C  38 7C 0D CC */	addi r3, r28, 0xdcc
/* 80B33840  4B 82 E7 D8 */	b __ptmf_test
/* 80B33844  2C 03 00 00 */	cmpwi r3, 0
/* 80B33848  41 82 00 18 */	beq lbl_80B33860
/* 80B3384C  7F 83 E3 78 */	mr r3, r28
/* 80B33850  38 80 00 00 */	li r4, 0
/* 80B33854  39 9C 0D CC */	addi r12, r28, 0xdcc
/* 80B33858  4B 82 E8 2C */	b __ptmf_scall
/* 80B3385C  60 00 00 00 */	nop 
lbl_80B33860:
/* 80B33860  38 00 00 00 */	li r0, 0
/* 80B33864  B0 1C 0E 96 */	sth r0, 0xe96(r28)
/* 80B33868  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 80B3386C  80 01 00 30 */	lwz r0, 0x30(r1)
/* 80B33870  90 7C 0D CC */	stw r3, 0xdcc(r28)
/* 80B33874  90 1C 0D D0 */	stw r0, 0xdd0(r28)
/* 80B33878  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B3387C  90 1C 0D D4 */	stw r0, 0xdd4(r28)
/* 80B33880  38 7C 0D CC */	addi r3, r28, 0xdcc
/* 80B33884  4B 82 E7 94 */	b __ptmf_test
/* 80B33888  2C 03 00 00 */	cmpwi r3, 0
/* 80B3388C  41 82 00 A4 */	beq lbl_80B33930
/* 80B33890  7F 83 E3 78 */	mr r3, r28
/* 80B33894  38 80 00 00 */	li r4, 0
/* 80B33898  39 9C 0D CC */	addi r12, r28, 0xdcc
/* 80B3389C  4B 82 E7 E8 */	b __ptmf_scall
/* 80B338A0  60 00 00 00 */	nop 
/* 80B338A4  48 00 00 8C */	b lbl_80B33930
lbl_80B338A8:
/* 80B338A8  80 7E 0B 78 */	lwz r3, 0xb78(r30)
/* 80B338AC  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80B338B0  90 61 00 20 */	stw r3, 0x20(r1)
/* 80B338B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B338B8  80 1E 0B 80 */	lwz r0, 0xb80(r30)
/* 80B338BC  90 01 00 28 */	stw r0, 0x28(r1)
/* 80B338C0  38 00 00 03 */	li r0, 3
/* 80B338C4  B0 1C 0E 96 */	sth r0, 0xe96(r28)
/* 80B338C8  38 7C 0D CC */	addi r3, r28, 0xdcc
/* 80B338CC  4B 82 E7 4C */	b __ptmf_test
/* 80B338D0  2C 03 00 00 */	cmpwi r3, 0
/* 80B338D4  41 82 00 18 */	beq lbl_80B338EC
/* 80B338D8  7F 83 E3 78 */	mr r3, r28
/* 80B338DC  38 80 00 00 */	li r4, 0
/* 80B338E0  39 9C 0D CC */	addi r12, r28, 0xdcc
/* 80B338E4  4B 82 E7 A0 */	b __ptmf_scall
/* 80B338E8  60 00 00 00 */	nop 
lbl_80B338EC:
/* 80B338EC  38 00 00 00 */	li r0, 0
/* 80B338F0  B0 1C 0E 96 */	sth r0, 0xe96(r28)
/* 80B338F4  80 61 00 20 */	lwz r3, 0x20(r1)
/* 80B338F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B338FC  90 7C 0D CC */	stw r3, 0xdcc(r28)
/* 80B33900  90 1C 0D D0 */	stw r0, 0xdd0(r28)
/* 80B33904  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80B33908  90 1C 0D D4 */	stw r0, 0xdd4(r28)
/* 80B3390C  38 7C 0D CC */	addi r3, r28, 0xdcc
/* 80B33910  4B 82 E7 08 */	b __ptmf_test
/* 80B33914  2C 03 00 00 */	cmpwi r3, 0
/* 80B33918  41 82 00 18 */	beq lbl_80B33930
/* 80B3391C  7F 83 E3 78 */	mr r3, r28
/* 80B33920  38 80 00 00 */	li r4, 0
/* 80B33924  39 9C 0D CC */	addi r12, r28, 0xdcc
/* 80B33928  4B 82 E7 5C */	b __ptmf_scall
/* 80B3392C  60 00 00 00 */	nop 
lbl_80B33930:
/* 80B33930  7F 83 E3 78 */	mr r3, r28
/* 80B33934  48 00 00 B9 */	bl checkOutOfArenaP__15daNpcWrestler_cFv
/* 80B33938  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B3393C  41 82 00 8C */	beq lbl_80B339C8
/* 80B33940  80 7E 0B 84 */	lwz r3, 0xb84(r30)
/* 80B33944  80 1E 0B 88 */	lwz r0, 0xb88(r30)
/* 80B33948  90 61 00 14 */	stw r3, 0x14(r1)
/* 80B3394C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B33950  80 1E 0B 8C */	lwz r0, 0xb8c(r30)
/* 80B33954  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B33958  38 00 00 03 */	li r0, 3
/* 80B3395C  B0 1C 0E 96 */	sth r0, 0xe96(r28)
/* 80B33960  38 7C 0D CC */	addi r3, r28, 0xdcc
/* 80B33964  4B 82 E6 B4 */	b __ptmf_test
/* 80B33968  2C 03 00 00 */	cmpwi r3, 0
/* 80B3396C  41 82 00 18 */	beq lbl_80B33984
/* 80B33970  7F 83 E3 78 */	mr r3, r28
/* 80B33974  38 80 00 00 */	li r4, 0
/* 80B33978  39 9C 0D CC */	addi r12, r28, 0xdcc
/* 80B3397C  4B 82 E7 08 */	b __ptmf_scall
/* 80B33980  60 00 00 00 */	nop 
lbl_80B33984:
/* 80B33984  38 00 00 00 */	li r0, 0
/* 80B33988  B0 1C 0E 96 */	sth r0, 0xe96(r28)
/* 80B3398C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80B33990  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80B33994  90 7C 0D CC */	stw r3, 0xdcc(r28)
/* 80B33998  90 1C 0D D0 */	stw r0, 0xdd0(r28)
/* 80B3399C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80B339A0  90 1C 0D D4 */	stw r0, 0xdd4(r28)
/* 80B339A4  38 7C 0D CC */	addi r3, r28, 0xdcc
/* 80B339A8  4B 82 E6 70 */	b __ptmf_test
/* 80B339AC  2C 03 00 00 */	cmpwi r3, 0
/* 80B339B0  41 82 00 18 */	beq lbl_80B339C8
/* 80B339B4  7F 83 E3 78 */	mr r3, r28
/* 80B339B8  38 80 00 00 */	li r4, 0
/* 80B339BC  39 9C 0D CC */	addi r12, r28, 0xdcc
/* 80B339C0  4B 82 E6 C4 */	b __ptmf_scall
/* 80B339C4  60 00 00 00 */	nop 
lbl_80B339C8:
/* 80B339C8  38 60 00 01 */	li r3, 1
/* 80B339CC  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 80B339D0  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 80B339D4  39 61 00 90 */	addi r11, r1, 0x90
/* 80B339D8  4B 82 E8 48 */	b _restgpr_27
/* 80B339DC  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80B339E0  7C 08 03 A6 */	mtlr r0
/* 80B339E4  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80B339E8  4E 80 00 20 */	blr 
