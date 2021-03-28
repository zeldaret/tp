lbl_800E9434:
/* 800E9434  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800E9438  7C 08 02 A6 */	mflr r0
/* 800E943C  90 01 00 44 */	stw r0, 0x44(r1)
/* 800E9440  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 800E9444  93 C1 00 38 */	stw r30, 0x38(r1)
/* 800E9448  7C 7E 1B 78 */	mr r30, r3
/* 800E944C  A8 03 30 0C */	lha r0, 0x300c(r3)
/* 800E9450  2C 00 00 00 */	cmpwi r0, 0
/* 800E9454  40 82 00 30 */	bne lbl_800E9484
/* 800E9458  38 7E 1F D0 */	addi r3, r30, 0x1fd0
/* 800E945C  48 07 50 71 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800E9460  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E9464  41 82 00 18 */	beq lbl_800E947C
/* 800E9468  7F C3 F3 78 */	mr r3, r30
/* 800E946C  38 80 01 21 */	li r4, 0x121
/* 800E9470  4B FC 3B 11 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800E9474  38 00 00 01 */	li r0, 1
/* 800E9478  B0 1E 30 0C */	sth r0, 0x300c(r30)
lbl_800E947C:
/* 800E947C  38 60 00 01 */	li r3, 1
/* 800E9480  48 00 03 FC */	b lbl_800E987C
lbl_800E9484:
/* 800E9484  83 FE 28 10 */	lwz r31, 0x2810(r30)
/* 800E9488  28 1F 00 00 */	cmplwi r31, 0
/* 800E948C  40 82 00 14 */	bne lbl_800E94A0
/* 800E9490  4B FF EE 09 */	bl offGoatStopGame__9daAlink_cFv
/* 800E9494  7F C3 F3 78 */	mr r3, r30
/* 800E9498  4B FD 9F 21 */	bl procWaitInit__9daAlink_cFv
/* 800E949C  48 00 03 E0 */	b lbl_800E987C
lbl_800E94A0:
/* 800E94A0  38 61 00 14 */	addi r3, r1, 0x14
/* 800E94A4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 800E94A8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 800E94AC  48 17 D6 89 */	bl __mi__4cXyzCFRC3Vec
/* 800E94B0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 800E94B4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 800E94B8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 800E94BC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 800E94C0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 800E94C4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 800E94C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 800E94CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 800E94D0  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800E94D4  7C 00 00 D0 */	neg r0, r0
/* 800E94D8  7C 04 07 34 */	extsh r4, r0
/* 800E94DC  4B F2 2F 01 */	bl mDoMtx_YrotS__FPA4_fs
/* 800E94E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 800E94E4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 800E94E8  38 81 00 2C */	addi r4, r1, 0x2c
/* 800E94EC  7C 85 23 78 */	mr r5, r4
/* 800E94F0  48 25 D9 5D */	bl PSMTXMultVecSR
/* 800E94F4  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 800E94F8  C0 02 94 98 */	lfs f0, lit_16566(r2)
/* 800E94FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E9500  40 80 00 94 */	bge lbl_800E9594
/* 800E9504  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E9508  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E950C  40 81 00 68 */	ble lbl_800E9574
/* 800E9510  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 800E9514  FC 00 02 10 */	fabs f0, f0
/* 800E9518  FC 20 00 18 */	frsp f1, f0
/* 800E951C  C0 02 93 10 */	lfs f0, lit_7306(r2)
/* 800E9520  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E9524  40 80 00 70 */	bge lbl_800E9594
/* 800E9528  88 1E 2F 8D */	lbz r0, 0x2f8d(r30)
/* 800E952C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800E9530  40 82 00 10 */	bne lbl_800E9540
/* 800E9534  88 1E 2F 8E */	lbz r0, 0x2f8e(r30)
/* 800E9538  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800E953C  41 82 00 18 */	beq lbl_800E9554
lbl_800E9540:
/* 800E9540  38 00 00 01 */	li r0, 1
/* 800E9544  B0 1E 30 0E */	sth r0, 0x300e(r30)
/* 800E9548  A0 1F 05 68 */	lhz r0, 0x568(r31)
/* 800E954C  60 00 00 01 */	ori r0, r0, 1
/* 800E9550  B0 1F 05 68 */	sth r0, 0x568(r31)
lbl_800E9554:
/* 800E9554  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 800E9558  C0 02 94 9C */	lfs f0, lit_16567(r2)
/* 800E955C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E9560  40 80 00 34 */	bge lbl_800E9594
/* 800E9564  7F C3 F3 78 */	mr r3, r30
/* 800E9568  38 80 00 15 */	li r4, 0x15
/* 800E956C  4B FC 9C FD */	bl setDoStatusEmphasys__9daAlink_cFUc
/* 800E9570  48 00 00 24 */	b lbl_800E9594
lbl_800E9574:
/* 800E9574  C0 02 94 A0 */	lfs f0, lit_16568(r2)
/* 800E9578  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E957C  40 80 00 18 */	bge lbl_800E9594
/* 800E9580  7F C3 F3 78 */	mr r3, r30
/* 800E9584  4B FF ED 15 */	bl offGoatStopGame__9daAlink_cFv
/* 800E9588  7F C3 F3 78 */	mr r3, r30
/* 800E958C  4B FD 9E 2D */	bl procWaitInit__9daAlink_cFv
/* 800E9590  48 00 02 EC */	b lbl_800E987C
lbl_800E9594:
/* 800E9594  88 1E 2F 8E */	lbz r0, 0x2f8e(r30)
/* 800E9598  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800E959C  40 82 00 0C */	bne lbl_800E95A8
/* 800E95A0  38 00 00 00 */	li r0, 0
/* 800E95A4  B0 1E 30 0E */	sth r0, 0x300e(r30)
lbl_800E95A8:
/* 800E95A8  38 61 00 08 */	addi r3, r1, 8
/* 800E95AC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 800E95B0  38 BE 37 C8 */	addi r5, r30, 0x37c8
/* 800E95B4  48 17 D5 81 */	bl __mi__4cXyzCFRC3Vec
/* 800E95B8  C0 01 00 08 */	lfs f0, 8(r1)
/* 800E95BC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 800E95C0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 800E95C4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800E95C8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800E95CC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 800E95D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 800E95D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 800E95D8  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800E95DC  7C 00 00 D0 */	neg r0, r0
/* 800E95E0  7C 04 07 34 */	extsh r4, r0
/* 800E95E4  4B F2 2D F9 */	bl mDoMtx_YrotS__FPA4_fs
/* 800E95E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 800E95EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 800E95F0  38 81 00 20 */	addi r4, r1, 0x20
/* 800E95F4  7C 85 23 78 */	mr r5, r4
/* 800E95F8  48 25 D8 55 */	bl PSMTXMultVecSR
/* 800E95FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800E9600  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800E9604  88 03 5E 24 */	lbz r0, 0x5e24(r3)
/* 800E9608  28 00 00 15 */	cmplwi r0, 0x15
/* 800E960C  40 82 00 34 */	bne lbl_800E9640
/* 800E9610  A8 1E 30 0E */	lha r0, 0x300e(r30)
/* 800E9614  2C 00 00 00 */	cmpwi r0, 0
/* 800E9618  41 82 00 28 */	beq lbl_800E9640
/* 800E961C  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 800E9620  C0 02 94 A4 */	lfs f0, lit_16569(r2)
/* 800E9624  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E9628  40 80 00 5C */	bge lbl_800E9684
/* 800E962C  7F C3 F3 78 */	mr r3, r30
/* 800E9630  7F E4 FB 78 */	mr r4, r31
/* 800E9634  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 800E9638  48 00 02 5D */	bl procGoatCatchInit__9daAlink_cFP10fopAc_ac_cf
/* 800E963C  48 00 02 40 */	b lbl_800E987C
lbl_800E9640:
/* 800E9640  38 7E 08 50 */	addi r3, r30, 0x850
/* 800E9644  4B F9 B0 15 */	bl ChkCoHit__12dCcD_GObjInfFv
/* 800E9648  28 03 00 00 */	cmplwi r3, 0
/* 800E964C  41 82 00 38 */	beq lbl_800E9684
/* 800E9650  38 7E 09 38 */	addi r3, r30, 0x938
/* 800E9654  4B F9 A0 35 */	bl GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 800E9658  7C 03 F8 40 */	cmplw r3, r31
/* 800E965C  40 82 00 28 */	bne lbl_800E9684
/* 800E9660  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 800E9664  C0 02 93 CC */	lfs f0, lit_10532(r2)
/* 800E9668  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E966C  40 81 00 18 */	ble lbl_800E9684
/* 800E9670  7F C3 F3 78 */	mr r3, r30
/* 800E9674  7F E4 FB 78 */	mr r4, r31
/* 800E9678  4B FF FB 99 */	bl setGoatStopGameFail__9daAlink_cFP10fopAc_ac_c
/* 800E967C  38 60 00 01 */	li r3, 1
/* 800E9680  48 00 01 FC */	b lbl_800E987C
lbl_800E9684:
/* 800E9684  A8 7E 2F E2 */	lha r3, 0x2fe2(r30)
/* 800E9688  48 27 BA 49 */	bl abs
/* 800E968C  C0 3E 33 AC */	lfs f1, 0x33ac(r30)
/* 800E9690  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800E9694  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E9698  40 81 01 04 */	ble lbl_800E979C
/* 800E969C  2C 03 08 00 */	cmpwi r3, 0x800
/* 800E96A0  40 81 00 FC */	ble lbl_800E979C
/* 800E96A4  2C 03 78 00 */	cmpwi r3, 0x7800
/* 800E96A8  40 80 00 F4 */	bge lbl_800E979C
/* 800E96AC  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 800E96B0  FC 00 0A 10 */	fabs f0, f1
/* 800E96B4  FC 40 00 18 */	frsp f2, f0
/* 800E96B8  C0 02 94 A4 */	lfs f0, lit_16569(r2)
/* 800E96BC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800E96C0  41 80 00 34 */	blt lbl_800E96F4
/* 800E96C4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E96C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E96CC  40 81 00 10 */	ble lbl_800E96DC
/* 800E96D0  A8 1E 2F E2 */	lha r0, 0x2fe2(r30)
/* 800E96D4  2C 00 00 00 */	cmpwi r0, 0
/* 800E96D8  41 80 00 1C */	blt lbl_800E96F4
lbl_800E96DC:
/* 800E96DC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E96E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E96E4  40 80 00 B8 */	bge lbl_800E979C
/* 800E96E8  A8 1E 2F E2 */	lha r0, 0x2fe2(r30)
/* 800E96EC  2C 00 00 00 */	cmpwi r0, 0
/* 800E96F0  40 81 00 AC */	ble lbl_800E979C
lbl_800E96F4:
/* 800E96F4  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 800E96F8  A8 1E 2F E2 */	lha r0, 0x2fe2(r30)
/* 800E96FC  7C 03 00 50 */	subf r0, r3, r0
/* 800E9700  7C 03 07 34 */	extsh r3, r0
/* 800E9704  48 27 B9 CD */	bl abs
/* 800E9708  2C 03 40 00 */	cmpwi r3, 0x4000
/* 800E970C  40 81 00 44 */	ble lbl_800E9750
/* 800E9710  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 800E9714  3C 63 00 01 */	addis r3, r3, 1
/* 800E9718  38 03 80 00 */	addi r0, r3, -32768
/* 800E971C  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 800E9720  C0 3E 33 98 */	lfs f1, 0x3398(r30)
/* 800E9724  C0 02 92 BC */	lfs f0, lit_6041(r2)
/* 800E9728  EC 01 00 32 */	fmuls f0, f1, f0
/* 800E972C  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 800E9730  88 1E 2F 98 */	lbz r0, 0x2f98(r30)
/* 800E9734  28 00 00 03 */	cmplwi r0, 3
/* 800E9738  40 82 00 10 */	bne lbl_800E9748
/* 800E973C  38 00 00 02 */	li r0, 2
/* 800E9740  98 1E 2F 98 */	stb r0, 0x2f98(r30)
/* 800E9744  48 00 00 0C */	b lbl_800E9750
lbl_800E9748:
/* 800E9748  38 00 00 03 */	li r0, 3
/* 800E974C  98 1E 2F 98 */	stb r0, 0x2f98(r30)
lbl_800E9750:
/* 800E9750  C0 3E 33 98 */	lfs f1, 0x3398(r30)
/* 800E9754  C0 1E 05 94 */	lfs f0, 0x594(r30)
/* 800E9758  EC 01 00 24 */	fdivs f0, f1, f0
/* 800E975C  FC 00 02 10 */	fabs f0, f0
/* 800E9760  FC 40 00 18 */	frsp f2, f0
/* 800E9764  C0 7E 33 A8 */	lfs f3, 0x33a8(r30)
/* 800E9768  C0 22 94 A8 */	lfs f1, lit_16570(r2)
/* 800E976C  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800E9770  EC 00 10 28 */	fsubs f0, f0, f2
/* 800E9774  EC 01 00 32 */	fmuls f0, f1, f0
/* 800E9778  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 800E977C  40 81 00 18 */	ble lbl_800E9794
/* 800E9780  3C 60 80 39 */	lis r3, m__21daAlinkHIO_atnMove_c0@ha
/* 800E9784  38 63 D7 14 */	addi r3, r3, m__21daAlinkHIO_atnMove_c0@l
/* 800E9788  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 800E978C  EC 20 00 F2 */	fmuls f1, f0, f3
/* 800E9790  48 00 00 10 */	b lbl_800E97A0
lbl_800E9794:
/* 800E9794  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800E9798  48 00 00 08 */	b lbl_800E97A0
lbl_800E979C:
/* 800E979C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
lbl_800E97A0:
/* 800E97A0  7F C3 F3 78 */	mr r3, r30
/* 800E97A4  3C 80 80 39 */	lis r4, m__21daAlinkHIO_atnMove_c0@ha
/* 800E97A8  38 84 D7 14 */	addi r4, r4, m__21daAlinkHIO_atnMove_c0@l
/* 800E97AC  C0 44 00 24 */	lfs f2, 0x24(r4)
/* 800E97B0  4B FC A1 75 */	bl setNormalSpeedF__9daAlink_cFff
/* 800E97B4  7F C3 F3 78 */	mr r3, r30
/* 800E97B8  4B FC A1 4D */	bl checkZeroSpeedF__9daAlink_cCFv
/* 800E97BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E97C0  41 82 00 48 */	beq lbl_800E9808
/* 800E97C4  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800E97C8  60 00 00 01 */	ori r0, r0, 1
/* 800E97CC  90 1E 31 A0 */	stw r0, 0x31a0(r30)
/* 800E97D0  38 00 00 03 */	li r0, 3
/* 800E97D4  98 1E 2F 98 */	stb r0, 0x2f98(r30)
/* 800E97D8  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 800E97DC  38 03 C0 00 */	addi r0, r3, -16384
/* 800E97E0  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 800E97E4  7F C3 F3 78 */	mr r3, r30
/* 800E97E8  38 80 01 21 */	li r4, 0x121
/* 800E97EC  4B FC 2D 6D */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800E97F0  2C 03 00 00 */	cmpwi r3, 0
/* 800E97F4  40 82 00 84 */	bne lbl_800E9878
/* 800E97F8  7F C3 F3 78 */	mr r3, r30
/* 800E97FC  38 80 01 21 */	li r4, 0x121
/* 800E9800  4B FC 37 81 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800E9804  48 00 00 74 */	b lbl_800E9878
lbl_800E9808:
/* 800E9808  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800E980C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 800E9810  90 1E 31 A0 */	stw r0, 0x31a0(r30)
/* 800E9814  7F C3 F3 78 */	mr r3, r30
/* 800E9818  38 80 01 22 */	li r4, 0x122
/* 800E981C  4B FC 2D 3D */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800E9820  2C 03 00 00 */	cmpwi r3, 0
/* 800E9824  40 82 00 10 */	bne lbl_800E9834
/* 800E9828  7F C3 F3 78 */	mr r3, r30
/* 800E982C  38 80 01 22 */	li r4, 0x122
/* 800E9830  4B FC 37 51 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
lbl_800E9834:
/* 800E9834  88 1E 2F 98 */	lbz r0, 0x2f98(r30)
/* 800E9838  28 00 00 03 */	cmplwi r0, 3
/* 800E983C  40 82 00 14 */	bne lbl_800E9850
/* 800E9840  C0 42 92 BC */	lfs f2, lit_6041(r2)
/* 800E9844  A8 1E 1F D8 */	lha r0, 0x1fd8(r30)
/* 800E9848  B0 1E 1F DA */	sth r0, 0x1fda(r30)
/* 800E984C  48 00 00 10 */	b lbl_800E985C
lbl_800E9850:
/* 800E9850  C0 42 92 B8 */	lfs f2, lit_6040(r2)
/* 800E9854  A8 1E 1F D6 */	lha r0, 0x1fd6(r30)
/* 800E9858  B0 1E 1F DA */	sth r0, 0x1fda(r30)
lbl_800E985C:
/* 800E985C  C0 3E 33 98 */	lfs f1, 0x3398(r30)
/* 800E9860  C0 1E 05 94 */	lfs f0, 0x594(r30)
/* 800E9864  EC 01 00 24 */	fdivs f0, f1, f0
/* 800E9868  EC 02 00 32 */	fmuls f0, f2, f0
/* 800E986C  D0 1E 1F DC */	stfs f0, 0x1fdc(r30)
/* 800E9870  7F C3 F3 78 */	mr r3, r30
/* 800E9874  4B FD 5B 09 */	bl initBasAnime__9daAlink_cFv
lbl_800E9878:
/* 800E9878  38 60 00 01 */	li r3, 1
lbl_800E987C:
/* 800E987C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 800E9880  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 800E9884  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800E9888  7C 08 03 A6 */	mtlr r0
/* 800E988C  38 21 00 40 */	addi r1, r1, 0x40
/* 800E9890  4E 80 00 20 */	blr 
