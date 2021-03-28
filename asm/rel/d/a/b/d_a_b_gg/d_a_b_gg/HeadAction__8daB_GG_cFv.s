lbl_805E9418:
/* 805E9418  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 805E941C  7C 08 02 A6 */	mflr r0
/* 805E9420  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 805E9424  93 E1 00 DC */	stw r31, 0xdc(r1)
/* 805E9428  93 C1 00 D8 */	stw r30, 0xd8(r1)
/* 805E942C  7C 7E 1B 78 */	mr r30, r3
/* 805E9430  3C 60 80 5F */	lis r3, lit_3911@ha
/* 805E9434  3B E3 D0 60 */	addi r31, r3, lit_3911@l
/* 805E9438  38 61 00 5C */	addi r3, r1, 0x5c
/* 805E943C  4B A8 E8 2C */	b __ct__11dBgS_LinChkFv
/* 805E9440  88 1E 05 C4 */	lbz r0, 0x5c4(r30)
/* 805E9444  2C 00 00 01 */	cmpwi r0, 1
/* 805E9448  41 82 00 50 */	beq lbl_805E9498
/* 805E944C  40 80 00 10 */	bge lbl_805E945C
/* 805E9450  2C 00 00 00 */	cmpwi r0, 0
/* 805E9454  40 80 00 14 */	bge lbl_805E9468
/* 805E9458  48 00 05 AC */	b lbl_805E9A04
lbl_805E945C:
/* 805E945C  2C 00 00 03 */	cmpwi r0, 3
/* 805E9460  40 80 05 A4 */	bge lbl_805E9A04
/* 805E9464  48 00 01 74 */	b lbl_805E95D8
lbl_805E9468:
/* 805E9468  C0 3F 02 0C */	lfs f1, 0x20c(r31)
/* 805E946C  D0 3E 06 A8 */	stfs f1, 0x6a8(r30)
/* 805E9470  C0 1F 01 40 */	lfs f0, 0x140(r31)
/* 805E9474  D0 1E 06 AC */	stfs f0, 0x6ac(r30)
/* 805E9478  D0 3E 06 B0 */	stfs f1, 0x6b0(r30)
/* 805E947C  38 00 05 00 */	li r0, 0x500
/* 805E9480  B0 1E 06 B4 */	sth r0, 0x6b4(r30)
/* 805E9484  B0 1E 06 B8 */	sth r0, 0x6b8(r30)
/* 805E9488  88 7E 05 C4 */	lbz r3, 0x5c4(r30)
/* 805E948C  38 03 00 01 */	addi r0, r3, 1
/* 805E9490  98 1E 05 C4 */	stb r0, 0x5c4(r30)
/* 805E9494  48 00 05 70 */	b lbl_805E9A04
lbl_805E9498:
/* 805E9498  C0 1E 06 94 */	lfs f0, 0x694(r30)
/* 805E949C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805E94A0  C0 1E 06 98 */	lfs f0, 0x698(r30)
/* 805E94A4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 805E94A8  C0 1E 06 9C */	lfs f0, 0x69c(r30)
/* 805E94AC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 805E94B0  C0 3E 06 AC */	lfs f1, 0x6ac(r30)
/* 805E94B4  C0 1F 02 F0 */	lfs f0, 0x2f0(r31)
/* 805E94B8  EC 01 00 2A */	fadds f0, f1, f0
/* 805E94BC  D0 1E 06 AC */	stfs f0, 0x6ac(r30)
/* 805E94C0  38 7E 06 94 */	addi r3, r30, 0x694
/* 805E94C4  38 9E 06 A8 */	addi r4, r30, 0x6a8
/* 805E94C8  7C 65 1B 78 */	mr r5, r3
/* 805E94CC  4B D5 DB C4 */	b PSVECAdd
/* 805E94D0  38 7E 06 A0 */	addi r3, r30, 0x6a0
/* 805E94D4  38 9E 06 B4 */	addi r4, r30, 0x6b4
/* 805E94D8  4B C7 DF 84 */	b __apl__5csXyzFR5csXyz
/* 805E94DC  38 61 00 5C */	addi r3, r1, 0x5c
/* 805E94E0  38 81 00 44 */	addi r4, r1, 0x44
/* 805E94E4  38 BE 06 94 */	addi r5, r30, 0x694
/* 805E94E8  38 C0 00 00 */	li r6, 0
/* 805E94EC  4B A8 E8 78 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 805E94F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805E94F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805E94F8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 805E94FC  38 81 00 5C */	addi r4, r1, 0x5c
/* 805E9500  4B A8 AE B4 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 805E9504  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805E9508  41 82 00 AC */	beq lbl_805E95B4
/* 805E950C  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 805E9510  D0 1E 06 94 */	stfs f0, 0x694(r30)
/* 805E9514  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 805E9518  D0 1E 06 98 */	stfs f0, 0x698(r30)
/* 805E951C  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 805E9520  D0 1E 06 9C */	stfs f0, 0x69c(r30)
/* 805E9524  3C 60 00 07 */	lis r3, 0x0007 /* 0x000705B6@ha */
/* 805E9528  38 03 05 B6 */	addi r0, r3, 0x05B6 /* 0x000705B6@l */
/* 805E952C  90 01 00 10 */	stw r0, 0x10(r1)
/* 805E9530  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805E9534  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805E9538  80 63 00 00 */	lwz r3, 0(r3)
/* 805E953C  38 81 00 10 */	addi r4, r1, 0x10
/* 805E9540  38 BE 06 94 */	addi r5, r30, 0x694
/* 805E9544  38 C0 00 00 */	li r6, 0
/* 805E9548  38 E0 00 00 */	li r7, 0
/* 805E954C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 805E9550  FC 40 08 90 */	fmr f2, f1
/* 805E9554  C0 7F 01 60 */	lfs f3, 0x160(r31)
/* 805E9558  FC 80 18 90 */	fmr f4, f3
/* 805E955C  39 00 00 00 */	li r8, 0
/* 805E9560  4B CC 24 24 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 805E9564  C0 3F 02 F4 */	lfs f1, 0x2f4(r31)
/* 805E9568  C0 1E 06 AC */	lfs f0, 0x6ac(r30)
/* 805E956C  EC 01 00 32 */	fmuls f0, f1, f0
/* 805E9570  D0 1E 06 AC */	stfs f0, 0x6ac(r30)
/* 805E9574  C0 3E 06 AC */	lfs f1, 0x6ac(r30)
/* 805E9578  C0 1F 02 FC */	lfs f0, 0x2fc(r31)
/* 805E957C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E9580  40 80 00 34 */	bge lbl_805E95B4
/* 805E9584  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805E9588  D0 1E 06 A8 */	stfs f0, 0x6a8(r30)
/* 805E958C  D0 1E 06 AC */	stfs f0, 0x6ac(r30)
/* 805E9590  D0 1E 06 B0 */	stfs f0, 0x6b0(r30)
/* 805E9594  7F C3 F3 78 */	mr r3, r30
/* 805E9598  38 9E 06 94 */	addi r4, r30, 0x694
/* 805E959C  38 A0 00 03 */	li r5, 3
/* 805E95A0  38 C0 00 00 */	li r6, 0
/* 805E95A4  38 E0 00 FF */	li r7, 0xff
/* 805E95A8  4B A3 35 30 */	b fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 805E95AC  38 00 00 02 */	li r0, 2
/* 805E95B0  98 1E 05 B1 */	stb r0, 0x5b1(r30)
lbl_805E95B4:
/* 805E95B4  38 7E 06 B4 */	addi r3, r30, 0x6b4
/* 805E95B8  38 80 00 00 */	li r4, 0
/* 805E95BC  38 A0 00 05 */	li r5, 5
/* 805E95C0  4B C8 75 D0 */	b cLib_chaseAngleS__FPsss
/* 805E95C4  38 7E 06 B8 */	addi r3, r30, 0x6b8
/* 805E95C8  38 80 00 00 */	li r4, 0
/* 805E95CC  38 A0 00 05 */	li r5, 5
/* 805E95D0  4B C8 75 C0 */	b cLib_chaseAngleS__FPsss
/* 805E95D4  48 00 04 30 */	b lbl_805E9A04
lbl_805E95D8:
/* 805E95D8  C0 5E 06 9C */	lfs f2, 0x69c(r30)
/* 805E95DC  C0 1E 06 94 */	lfs f0, 0x694(r30)
/* 805E95E0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805E95E4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805E95E8  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 805E95EC  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 805E95F0  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 805E95F4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805E95F8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805E95FC  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 805E9600  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 805E9604  38 61 00 2C */	addi r3, r1, 0x2c
/* 805E9608  38 81 00 38 */	addi r4, r1, 0x38
/* 805E960C  4B D5 DD 90 */	b PSVECSquareDistance
/* 805E9610  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805E9614  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E9618  40 81 00 58 */	ble lbl_805E9670
/* 805E961C  FC 00 08 34 */	frsqrte f0, f1
/* 805E9620  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 805E9624  FC 44 00 32 */	fmul f2, f4, f0
/* 805E9628  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 805E962C  FC 00 00 32 */	fmul f0, f0, f0
/* 805E9630  FC 01 00 32 */	fmul f0, f1, f0
/* 805E9634  FC 03 00 28 */	fsub f0, f3, f0
/* 805E9638  FC 02 00 32 */	fmul f0, f2, f0
/* 805E963C  FC 44 00 32 */	fmul f2, f4, f0
/* 805E9640  FC 00 00 32 */	fmul f0, f0, f0
/* 805E9644  FC 01 00 32 */	fmul f0, f1, f0
/* 805E9648  FC 03 00 28 */	fsub f0, f3, f0
/* 805E964C  FC 02 00 32 */	fmul f0, f2, f0
/* 805E9650  FC 44 00 32 */	fmul f2, f4, f0
/* 805E9654  FC 00 00 32 */	fmul f0, f0, f0
/* 805E9658  FC 01 00 32 */	fmul f0, f1, f0
/* 805E965C  FC 03 00 28 */	fsub f0, f3, f0
/* 805E9660  FC 02 00 32 */	fmul f0, f2, f0
/* 805E9664  FC 21 00 32 */	fmul f1, f1, f0
/* 805E9668  FC 20 08 18 */	frsp f1, f1
/* 805E966C  48 00 00 88 */	b lbl_805E96F4
lbl_805E9670:
/* 805E9670  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 805E9674  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E9678  40 80 00 10 */	bge lbl_805E9688
/* 805E967C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805E9680  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 805E9684  48 00 00 70 */	b lbl_805E96F4
lbl_805E9688:
/* 805E9688  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805E968C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 805E9690  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805E9694  3C 00 7F 80 */	lis r0, 0x7f80
/* 805E9698  7C 03 00 00 */	cmpw r3, r0
/* 805E969C  41 82 00 14 */	beq lbl_805E96B0
/* 805E96A0  40 80 00 40 */	bge lbl_805E96E0
/* 805E96A4  2C 03 00 00 */	cmpwi r3, 0
/* 805E96A8  41 82 00 20 */	beq lbl_805E96C8
/* 805E96AC  48 00 00 34 */	b lbl_805E96E0
lbl_805E96B0:
/* 805E96B0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805E96B4  41 82 00 0C */	beq lbl_805E96C0
/* 805E96B8  38 00 00 01 */	li r0, 1
/* 805E96BC  48 00 00 28 */	b lbl_805E96E4
lbl_805E96C0:
/* 805E96C0  38 00 00 02 */	li r0, 2
/* 805E96C4  48 00 00 20 */	b lbl_805E96E4
lbl_805E96C8:
/* 805E96C8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805E96CC  41 82 00 0C */	beq lbl_805E96D8
/* 805E96D0  38 00 00 05 */	li r0, 5
/* 805E96D4  48 00 00 10 */	b lbl_805E96E4
lbl_805E96D8:
/* 805E96D8  38 00 00 03 */	li r0, 3
/* 805E96DC  48 00 00 08 */	b lbl_805E96E4
lbl_805E96E0:
/* 805E96E0  38 00 00 04 */	li r0, 4
lbl_805E96E4:
/* 805E96E4  2C 00 00 01 */	cmpwi r0, 1
/* 805E96E8  40 82 00 0C */	bne lbl_805E96F4
/* 805E96EC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805E96F0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_805E96F4:
/* 805E96F4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 805E96F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E96FC  40 80 00 88 */	bge lbl_805E9784
/* 805E9700  A8 1E 05 DE */	lha r0, 0x5de(r30)
/* 805E9704  2C 00 00 00 */	cmpwi r0, 0
/* 805E9708  40 82 00 7C */	bne lbl_805E9784
/* 805E970C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805E9710  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 805E9714  C0 1F 02 94 */	lfs f0, 0x294(r31)
/* 805E9718  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805E971C  C0 1F 02 70 */	lfs f0, 0x270(r31)
/* 805E9720  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805E9724  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 805E9728  38 9E 06 94 */	addi r4, r30, 0x694
/* 805E972C  4B C8 74 D8 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 805E9730  7C 64 1B 78 */	mr r4, r3
/* 805E9734  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805E9738  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805E973C  4B A2 2C A0 */	b mDoMtx_YrotS__FPA4_fs
/* 805E9740  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805E9744  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805E9748  38 81 00 50 */	addi r4, r1, 0x50
/* 805E974C  7C 85 23 78 */	mr r5, r4
/* 805E9750  4B D5 D6 1C */	b PSMTXMultVec
/* 805E9754  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 805E9758  D0 1E 06 A8 */	stfs f0, 0x6a8(r30)
/* 805E975C  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 805E9760  D0 1E 06 AC */	stfs f0, 0x6ac(r30)
/* 805E9764  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 805E9768  D0 1E 06 B0 */	stfs f0, 0x6b0(r30)
/* 805E976C  38 00 00 32 */	li r0, 0x32
/* 805E9770  B0 1E 05 DE */	sth r0, 0x5de(r30)
/* 805E9774  38 00 05 00 */	li r0, 0x500
/* 805E9778  B0 1E 06 B4 */	sth r0, 0x6b4(r30)
/* 805E977C  B0 1E 06 B8 */	sth r0, 0x6b8(r30)
/* 805E9780  48 00 01 C0 */	b lbl_805E9940
lbl_805E9784:
/* 805E9784  C0 5E 06 9C */	lfs f2, 0x69c(r30)
/* 805E9788  C0 1E 06 94 */	lfs f0, 0x694(r30)
/* 805E978C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805E9790  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805E9794  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 805E9798  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 805E979C  3C 60 80 5F */	lis r3, data_805ED72C@ha
/* 805E97A0  38 63 D7 2C */	addi r3, r3, data_805ED72C@l
/* 805E97A4  80 63 00 00 */	lwz r3, 0(r3)
/* 805E97A8  C0 43 00 08 */	lfs f2, 8(r3)
/* 805E97AC  C0 03 00 00 */	lfs f0, 0(r3)
/* 805E97B0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805E97B4  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 805E97B8  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 805E97BC  38 61 00 14 */	addi r3, r1, 0x14
/* 805E97C0  38 81 00 20 */	addi r4, r1, 0x20
/* 805E97C4  4B D5 DB D8 */	b PSVECSquareDistance
/* 805E97C8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805E97CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E97D0  40 81 00 58 */	ble lbl_805E9828
/* 805E97D4  FC 00 08 34 */	frsqrte f0, f1
/* 805E97D8  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 805E97DC  FC 44 00 32 */	fmul f2, f4, f0
/* 805E97E0  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 805E97E4  FC 00 00 32 */	fmul f0, f0, f0
/* 805E97E8  FC 01 00 32 */	fmul f0, f1, f0
/* 805E97EC  FC 03 00 28 */	fsub f0, f3, f0
/* 805E97F0  FC 02 00 32 */	fmul f0, f2, f0
/* 805E97F4  FC 44 00 32 */	fmul f2, f4, f0
/* 805E97F8  FC 00 00 32 */	fmul f0, f0, f0
/* 805E97FC  FC 01 00 32 */	fmul f0, f1, f0
/* 805E9800  FC 03 00 28 */	fsub f0, f3, f0
/* 805E9804  FC 02 00 32 */	fmul f0, f2, f0
/* 805E9808  FC 44 00 32 */	fmul f2, f4, f0
/* 805E980C  FC 00 00 32 */	fmul f0, f0, f0
/* 805E9810  FC 01 00 32 */	fmul f0, f1, f0
/* 805E9814  FC 03 00 28 */	fsub f0, f3, f0
/* 805E9818  FC 02 00 32 */	fmul f0, f2, f0
/* 805E981C  FC 21 00 32 */	fmul f1, f1, f0
/* 805E9820  FC 20 08 18 */	frsp f1, f1
/* 805E9824  48 00 00 88 */	b lbl_805E98AC
lbl_805E9828:
/* 805E9828  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 805E982C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E9830  40 80 00 10 */	bge lbl_805E9840
/* 805E9834  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805E9838  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 805E983C  48 00 00 70 */	b lbl_805E98AC
lbl_805E9840:
/* 805E9840  D0 21 00 08 */	stfs f1, 8(r1)
/* 805E9844  80 81 00 08 */	lwz r4, 8(r1)
/* 805E9848  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805E984C  3C 00 7F 80 */	lis r0, 0x7f80
/* 805E9850  7C 03 00 00 */	cmpw r3, r0
/* 805E9854  41 82 00 14 */	beq lbl_805E9868
/* 805E9858  40 80 00 40 */	bge lbl_805E9898
/* 805E985C  2C 03 00 00 */	cmpwi r3, 0
/* 805E9860  41 82 00 20 */	beq lbl_805E9880
/* 805E9864  48 00 00 34 */	b lbl_805E9898
lbl_805E9868:
/* 805E9868  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805E986C  41 82 00 0C */	beq lbl_805E9878
/* 805E9870  38 00 00 01 */	li r0, 1
/* 805E9874  48 00 00 28 */	b lbl_805E989C
lbl_805E9878:
/* 805E9878  38 00 00 02 */	li r0, 2
/* 805E987C  48 00 00 20 */	b lbl_805E989C
lbl_805E9880:
/* 805E9880  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805E9884  41 82 00 0C */	beq lbl_805E9890
/* 805E9888  38 00 00 05 */	li r0, 5
/* 805E988C  48 00 00 10 */	b lbl_805E989C
lbl_805E9890:
/* 805E9890  38 00 00 03 */	li r0, 3
/* 805E9894  48 00 00 08 */	b lbl_805E989C
lbl_805E9898:
/* 805E9898  38 00 00 04 */	li r0, 4
lbl_805E989C:
/* 805E989C  2C 00 00 01 */	cmpwi r0, 1
/* 805E98A0  40 82 00 0C */	bne lbl_805E98AC
/* 805E98A4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805E98A8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_805E98AC:
/* 805E98AC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 805E98B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E98B4  40 80 00 8C */	bge lbl_805E9940
/* 805E98B8  A8 1E 05 DE */	lha r0, 0x5de(r30)
/* 805E98BC  2C 00 00 00 */	cmpwi r0, 0
/* 805E98C0  40 82 00 80 */	bne lbl_805E9940
/* 805E98C4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805E98C8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 805E98CC  C0 1F 02 94 */	lfs f0, 0x294(r31)
/* 805E98D0  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805E98D4  C0 1F 02 70 */	lfs f0, 0x270(r31)
/* 805E98D8  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805E98DC  3C 60 80 5F */	lis r3, data_805ED72C@ha
/* 805E98E0  38 63 D7 2C */	addi r3, r3, data_805ED72C@l
/* 805E98E4  80 63 00 00 */	lwz r3, 0(r3)
/* 805E98E8  38 9E 06 94 */	addi r4, r30, 0x694
/* 805E98EC  4B C8 73 18 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 805E98F0  7C 64 1B 78 */	mr r4, r3
/* 805E98F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805E98F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805E98FC  4B A2 2A E0 */	b mDoMtx_YrotS__FPA4_fs
/* 805E9900  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805E9904  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805E9908  38 81 00 50 */	addi r4, r1, 0x50
/* 805E990C  7C 85 23 78 */	mr r5, r4
/* 805E9910  4B D5 D4 5C */	b PSMTXMultVec
/* 805E9914  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 805E9918  D0 1E 06 A8 */	stfs f0, 0x6a8(r30)
/* 805E991C  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 805E9920  D0 1E 06 AC */	stfs f0, 0x6ac(r30)
/* 805E9924  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 805E9928  D0 1E 06 B0 */	stfs f0, 0x6b0(r30)
/* 805E992C  38 00 00 32 */	li r0, 0x32
/* 805E9930  B0 1E 05 DE */	sth r0, 0x5de(r30)
/* 805E9934  38 00 05 00 */	li r0, 0x500
/* 805E9938  B0 1E 06 B4 */	sth r0, 0x6b4(r30)
/* 805E993C  B0 1E 06 B8 */	sth r0, 0x6b8(r30)
lbl_805E9940:
/* 805E9940  C0 3E 06 AC */	lfs f1, 0x6ac(r30)
/* 805E9944  C0 1F 02 20 */	lfs f0, 0x220(r31)
/* 805E9948  EC 01 00 2A */	fadds f0, f1, f0
/* 805E994C  D0 1E 06 AC */	stfs f0, 0x6ac(r30)
/* 805E9950  38 7E 06 94 */	addi r3, r30, 0x694
/* 805E9954  38 9E 06 A8 */	addi r4, r30, 0x6a8
/* 805E9958  7C 65 1B 78 */	mr r5, r3
/* 805E995C  4B D5 D7 34 */	b PSVECAdd
/* 805E9960  A8 7E 06 A0 */	lha r3, 0x6a0(r30)
/* 805E9964  A8 1E 06 B4 */	lha r0, 0x6b4(r30)
/* 805E9968  7C 03 02 14 */	add r0, r3, r0
/* 805E996C  B0 1E 06 A0 */	sth r0, 0x6a0(r30)
/* 805E9970  A8 7E 06 A2 */	lha r3, 0x6a2(r30)
/* 805E9974  A8 1E 06 B6 */	lha r0, 0x6b6(r30)
/* 805E9978  7C 03 02 14 */	add r0, r3, r0
/* 805E997C  B0 1E 06 A2 */	sth r0, 0x6a2(r30)
/* 805E9980  A8 7E 06 A4 */	lha r3, 0x6a4(r30)
/* 805E9984  A8 1E 06 B8 */	lha r0, 0x6b8(r30)
/* 805E9988  7C 03 02 14 */	add r0, r3, r0
/* 805E998C  B0 1E 06 A4 */	sth r0, 0x6a4(r30)
/* 805E9990  C0 3E 06 98 */	lfs f1, 0x698(r30)
/* 805E9994  C0 1F 02 88 */	lfs f0, 0x288(r31)
/* 805E9998  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E999C  40 80 00 48 */	bge lbl_805E99E4
/* 805E99A0  D0 1E 06 98 */	stfs f0, 0x698(r30)
/* 805E99A4  C0 3F 03 00 */	lfs f1, 0x300(r31)
/* 805E99A8  C0 1E 06 AC */	lfs f0, 0x6ac(r30)
/* 805E99AC  EC 01 00 32 */	fmuls f0, f1, f0
/* 805E99B0  D0 1E 06 AC */	stfs f0, 0x6ac(r30)
/* 805E99B4  C0 3E 06 AC */	lfs f1, 0x6ac(r30)
/* 805E99B8  C0 1F 02 D4 */	lfs f0, 0x2d4(r31)
/* 805E99BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E99C0  40 80 00 24 */	bge lbl_805E99E4
/* 805E99C4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805E99C8  D0 1E 06 A8 */	stfs f0, 0x6a8(r30)
/* 805E99CC  D0 1E 06 AC */	stfs f0, 0x6ac(r30)
/* 805E99D0  D0 1E 06 B0 */	stfs f0, 0x6b0(r30)
/* 805E99D4  38 00 00 00 */	li r0, 0
/* 805E99D8  B0 1E 06 B4 */	sth r0, 0x6b4(r30)
/* 805E99DC  B0 1E 06 B8 */	sth r0, 0x6b8(r30)
/* 805E99E0  B0 1E 05 DE */	sth r0, 0x5de(r30)
lbl_805E99E4:
/* 805E99E4  38 7E 06 B4 */	addi r3, r30, 0x6b4
/* 805E99E8  38 80 00 00 */	li r4, 0
/* 805E99EC  38 A0 00 05 */	li r5, 5
/* 805E99F0  4B C8 71 A0 */	b cLib_chaseAngleS__FPsss
/* 805E99F4  38 7E 06 B8 */	addi r3, r30, 0x6b8
/* 805E99F8  38 80 00 00 */	li r4, 0
/* 805E99FC  38 A0 00 05 */	li r5, 5
/* 805E9A00  4B C8 71 90 */	b cLib_chaseAngleS__FPsss
lbl_805E9A04:
/* 805E9A04  38 61 00 5C */	addi r3, r1, 0x5c
/* 805E9A08  38 80 FF FF */	li r4, -1
/* 805E9A0C  4B A8 E2 D0 */	b __dt__11dBgS_LinChkFv
/* 805E9A10  83 E1 00 DC */	lwz r31, 0xdc(r1)
/* 805E9A14  83 C1 00 D8 */	lwz r30, 0xd8(r1)
/* 805E9A18  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 805E9A1C  7C 08 03 A6 */	mtlr r0
/* 805E9A20  38 21 00 E0 */	addi r1, r1, 0xe0
/* 805E9A24  4E 80 00 20 */	blr 
