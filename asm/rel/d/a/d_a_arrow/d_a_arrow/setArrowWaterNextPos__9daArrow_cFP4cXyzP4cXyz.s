lbl_8049A370:
/* 8049A370  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8049A374  7C 08 02 A6 */	mflr r0
/* 8049A378  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8049A37C  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 8049A380  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 8049A384  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8049A388  4B EC 7E 4C */	b _savegpr_27
/* 8049A38C  7C 7B 1B 78 */	mr r27, r3
/* 8049A390  7C 9C 23 78 */	mr r28, r4
/* 8049A394  7C BD 2B 78 */	mr r29, r5
/* 8049A398  3C 60 80 4A */	lis r3, lit_3768@ha
/* 8049A39C  3B E3 DC 84 */	addi r31, r3, lit_3768@l
/* 8049A3A0  38 7B 05 DC */	addi r3, r27, 0x5dc
/* 8049A3A4  7F 66 DB 78 */	mr r6, r27
/* 8049A3A8  4B BD D9 BC */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8049A3AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8049A3B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8049A3B4  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 8049A3B8  7F C3 F3 78 */	mr r3, r30
/* 8049A3BC  38 9B 05 DC */	addi r4, r27, 0x5dc
/* 8049A3C0  4B BD 9F F4 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 8049A3C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8049A3C8  41 82 02 BC */	beq lbl_8049A684
/* 8049A3CC  7F C3 F3 78 */	mr r3, r30
/* 8049A3D0  38 9B 05 F0 */	addi r4, r27, 0x5f0
/* 8049A3D4  4B BD AA 7C */	b GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 8049A3D8  2C 03 00 06 */	cmpwi r3, 6
/* 8049A3DC  40 82 00 24 */	bne lbl_8049A400
/* 8049A3E0  C0 1B 06 0C */	lfs f0, 0x60c(r27)
/* 8049A3E4  D0 1D 00 00 */	stfs f0, 0(r29)
/* 8049A3E8  C0 1B 06 10 */	lfs f0, 0x610(r27)
/* 8049A3EC  D0 1D 00 04 */	stfs f0, 4(r29)
/* 8049A3F0  C0 1B 06 14 */	lfs f0, 0x614(r27)
/* 8049A3F4  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8049A3F8  38 60 00 02 */	li r3, 2
/* 8049A3FC  48 00 03 50 */	b lbl_8049A74C
lbl_8049A400:
/* 8049A400  38 61 00 70 */	addi r3, r1, 0x70
/* 8049A404  7F A4 EB 78 */	mr r4, r29
/* 8049A408  3B DB 06 0C */	addi r30, r27, 0x60c
/* 8049A40C  7F C5 F3 78 */	mr r5, r30
/* 8049A410  4B DC C7 24 */	b __mi__4cXyzCFRC3Vec
/* 8049A414  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8049A418  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8049A41C  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8049A420  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8049A424  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 8049A428  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8049A42C  7F A3 EB 78 */	mr r3, r29
/* 8049A430  7F 84 E3 78 */	mr r4, r28
/* 8049A434  4B EA CF 68 */	b PSVECSquareDistance
/* 8049A438  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 8049A43C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8049A440  40 81 00 58 */	ble lbl_8049A498
/* 8049A444  FC 00 08 34 */	frsqrte f0, f1
/* 8049A448  C8 9F 00 A0 */	lfd f4, 0xa0(r31)
/* 8049A44C  FC 44 00 32 */	fmul f2, f4, f0
/* 8049A450  C8 7F 00 A8 */	lfd f3, 0xa8(r31)
/* 8049A454  FC 00 00 32 */	fmul f0, f0, f0
/* 8049A458  FC 01 00 32 */	fmul f0, f1, f0
/* 8049A45C  FC 03 00 28 */	fsub f0, f3, f0
/* 8049A460  FC 02 00 32 */	fmul f0, f2, f0
/* 8049A464  FC 44 00 32 */	fmul f2, f4, f0
/* 8049A468  FC 00 00 32 */	fmul f0, f0, f0
/* 8049A46C  FC 01 00 32 */	fmul f0, f1, f0
/* 8049A470  FC 03 00 28 */	fsub f0, f3, f0
/* 8049A474  FC 02 00 32 */	fmul f0, f2, f0
/* 8049A478  FC 44 00 32 */	fmul f2, f4, f0
/* 8049A47C  FC 00 00 32 */	fmul f0, f0, f0
/* 8049A480  FC 01 00 32 */	fmul f0, f1, f0
/* 8049A484  FC 03 00 28 */	fsub f0, f3, f0
/* 8049A488  FC 02 00 32 */	fmul f0, f2, f0
/* 8049A48C  FF E1 00 32 */	fmul f31, f1, f0
/* 8049A490  FF E0 F8 18 */	frsp f31, f31
/* 8049A494  48 00 00 90 */	b lbl_8049A524
lbl_8049A498:
/* 8049A498  C8 1F 00 B0 */	lfd f0, 0xb0(r31)
/* 8049A49C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8049A4A0  40 80 00 10 */	bge lbl_8049A4B0
/* 8049A4A4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8049A4A8  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 8049A4AC  48 00 00 78 */	b lbl_8049A524
lbl_8049A4B0:
/* 8049A4B0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8049A4B4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8049A4B8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8049A4BC  3C 00 7F 80 */	lis r0, 0x7f80
/* 8049A4C0  7C 03 00 00 */	cmpw r3, r0
/* 8049A4C4  41 82 00 14 */	beq lbl_8049A4D8
/* 8049A4C8  40 80 00 40 */	bge lbl_8049A508
/* 8049A4CC  2C 03 00 00 */	cmpwi r3, 0
/* 8049A4D0  41 82 00 20 */	beq lbl_8049A4F0
/* 8049A4D4  48 00 00 34 */	b lbl_8049A508
lbl_8049A4D8:
/* 8049A4D8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8049A4DC  41 82 00 0C */	beq lbl_8049A4E8
/* 8049A4E0  38 00 00 01 */	li r0, 1
/* 8049A4E4  48 00 00 28 */	b lbl_8049A50C
lbl_8049A4E8:
/* 8049A4E8  38 00 00 02 */	li r0, 2
/* 8049A4EC  48 00 00 20 */	b lbl_8049A50C
lbl_8049A4F0:
/* 8049A4F0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8049A4F4  41 82 00 0C */	beq lbl_8049A500
/* 8049A4F8  38 00 00 05 */	li r0, 5
/* 8049A4FC  48 00 00 10 */	b lbl_8049A50C
lbl_8049A500:
/* 8049A500  38 00 00 03 */	li r0, 3
/* 8049A504  48 00 00 08 */	b lbl_8049A50C
lbl_8049A508:
/* 8049A508  38 00 00 04 */	li r0, 4
lbl_8049A50C:
/* 8049A50C  2C 00 00 01 */	cmpwi r0, 1
/* 8049A510  40 82 00 10 */	bne lbl_8049A520
/* 8049A514  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8049A518  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 8049A51C  48 00 00 08 */	b lbl_8049A524
lbl_8049A520:
/* 8049A520  FF E0 08 90 */	fmr f31, f1
lbl_8049A524:
/* 8049A524  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 8049A528  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8049A52C  40 81 00 F8 */	ble lbl_8049A624
/* 8049A530  38 61 00 88 */	addi r3, r1, 0x88
/* 8049A534  4B EA CC 04 */	b PSVECSquareMag
/* 8049A538  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 8049A53C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8049A540  40 81 00 58 */	ble lbl_8049A598
/* 8049A544  FC 00 08 34 */	frsqrte f0, f1
/* 8049A548  C8 9F 00 A0 */	lfd f4, 0xa0(r31)
/* 8049A54C  FC 44 00 32 */	fmul f2, f4, f0
/* 8049A550  C8 7F 00 A8 */	lfd f3, 0xa8(r31)
/* 8049A554  FC 00 00 32 */	fmul f0, f0, f0
/* 8049A558  FC 01 00 32 */	fmul f0, f1, f0
/* 8049A55C  FC 03 00 28 */	fsub f0, f3, f0
/* 8049A560  FC 02 00 32 */	fmul f0, f2, f0
/* 8049A564  FC 44 00 32 */	fmul f2, f4, f0
/* 8049A568  FC 00 00 32 */	fmul f0, f0, f0
/* 8049A56C  FC 01 00 32 */	fmul f0, f1, f0
/* 8049A570  FC 03 00 28 */	fsub f0, f3, f0
/* 8049A574  FC 02 00 32 */	fmul f0, f2, f0
/* 8049A578  FC 44 00 32 */	fmul f2, f4, f0
/* 8049A57C  FC 00 00 32 */	fmul f0, f0, f0
/* 8049A580  FC 01 00 32 */	fmul f0, f1, f0
/* 8049A584  FC 03 00 28 */	fsub f0, f3, f0
/* 8049A588  FC 02 00 32 */	fmul f0, f2, f0
/* 8049A58C  FC 21 00 32 */	fmul f1, f1, f0
/* 8049A590  FC 20 08 18 */	frsp f1, f1
/* 8049A594  48 00 00 88 */	b lbl_8049A61C
lbl_8049A598:
/* 8049A598  C8 1F 00 B0 */	lfd f0, 0xb0(r31)
/* 8049A59C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8049A5A0  40 80 00 10 */	bge lbl_8049A5B0
/* 8049A5A4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8049A5A8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8049A5AC  48 00 00 70 */	b lbl_8049A61C
lbl_8049A5B0:
/* 8049A5B0  D0 21 00 08 */	stfs f1, 8(r1)
/* 8049A5B4  80 81 00 08 */	lwz r4, 8(r1)
/* 8049A5B8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8049A5BC  3C 00 7F 80 */	lis r0, 0x7f80
/* 8049A5C0  7C 03 00 00 */	cmpw r3, r0
/* 8049A5C4  41 82 00 14 */	beq lbl_8049A5D8
/* 8049A5C8  40 80 00 40 */	bge lbl_8049A608
/* 8049A5CC  2C 03 00 00 */	cmpwi r3, 0
/* 8049A5D0  41 82 00 20 */	beq lbl_8049A5F0
/* 8049A5D4  48 00 00 34 */	b lbl_8049A608
lbl_8049A5D8:
/* 8049A5D8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8049A5DC  41 82 00 0C */	beq lbl_8049A5E8
/* 8049A5E0  38 00 00 01 */	li r0, 1
/* 8049A5E4  48 00 00 28 */	b lbl_8049A60C
lbl_8049A5E8:
/* 8049A5E8  38 00 00 02 */	li r0, 2
/* 8049A5EC  48 00 00 20 */	b lbl_8049A60C
lbl_8049A5F0:
/* 8049A5F0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8049A5F4  41 82 00 0C */	beq lbl_8049A600
/* 8049A5F8  38 00 00 05 */	li r0, 5
/* 8049A5FC  48 00 00 10 */	b lbl_8049A60C
lbl_8049A600:
/* 8049A600  38 00 00 03 */	li r0, 3
/* 8049A604  48 00 00 08 */	b lbl_8049A60C
lbl_8049A608:
/* 8049A608  38 00 00 04 */	li r0, 4
lbl_8049A60C:
/* 8049A60C  2C 00 00 01 */	cmpwi r0, 1
/* 8049A610  40 82 00 0C */	bne lbl_8049A61C
/* 8049A614  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8049A618  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8049A61C:
/* 8049A61C  EF E1 F8 24 */	fdivs f31, f1, f31
/* 8049A620  48 00 00 08 */	b lbl_8049A628
lbl_8049A624:
/* 8049A624  C3 FF 00 B8 */	lfs f31, 0xb8(r31)
lbl_8049A628:
/* 8049A628  38 61 00 64 */	addi r3, r1, 0x64
/* 8049A62C  38 81 00 88 */	addi r4, r1, 0x88
/* 8049A630  4B DC C9 18 */	b normalizeZP__4cXyzFv
/* 8049A634  38 61 00 58 */	addi r3, r1, 0x58
/* 8049A638  38 81 00 88 */	addi r4, r1, 0x88
/* 8049A63C  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 8049A640  4B DC C5 44 */	b __ml__4cXyzCFf
/* 8049A644  38 61 00 4C */	addi r3, r1, 0x4c
/* 8049A648  38 81 00 58 */	addi r4, r1, 0x58
/* 8049A64C  FC 20 F8 90 */	fmr f1, f31
/* 8049A650  4B DC C5 34 */	b __ml__4cXyzCFf
/* 8049A654  38 61 00 40 */	addi r3, r1, 0x40
/* 8049A658  7F C4 F3 78 */	mr r4, r30
/* 8049A65C  38 A1 00 4C */	addi r5, r1, 0x4c
/* 8049A660  4B DC C4 84 */	b __pl__4cXyzCFRC3Vec
/* 8049A664  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8049A668  D0 1D 00 00 */	stfs f0, 0(r29)
/* 8049A66C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8049A670  D0 1D 00 04 */	stfs f0, 4(r29)
/* 8049A674  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8049A678  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8049A67C  38 60 00 01 */	li r3, 1
/* 8049A680  48 00 00 CC */	b lbl_8049A74C
lbl_8049A684:
/* 8049A684  7F 83 E3 78 */	mr r3, r28
/* 8049A688  4B B8 36 FC */	b waterCheck__11fopAcM_wt_cFPC4cXyz
/* 8049A68C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8049A690  41 82 00 B8 */	beq lbl_8049A748
/* 8049A694  3C 60 80 45 */	lis r3, mWaterY__11fopAcM_wt_c@ha
/* 8049A698  C0 23 0C D8 */	lfs f1, mWaterY__11fopAcM_wt_c@l(r3)
/* 8049A69C  C0 1C 00 04 */	lfs f0, 4(r28)
/* 8049A6A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8049A6A4  40 81 00 A4 */	ble lbl_8049A748
/* 8049A6A8  7F C3 F3 78 */	mr r3, r30
/* 8049A6AC  3C 80 80 3F */	lis r4, mWaterCheck__11fopAcM_wt_c@ha
/* 8049A6B0  38 84 1D 80 */	addi r4, r4, mWaterCheck__11fopAcM_wt_c@l
/* 8049A6B4  4B BD A7 9C */	b GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 8049A6B8  2C 03 00 06 */	cmpwi r3, 6
/* 8049A6BC  40 82 00 18 */	bne lbl_8049A6D4
/* 8049A6C0  3C 60 80 45 */	lis r3, mWaterY__11fopAcM_wt_c@ha
/* 8049A6C4  C0 03 0C D8 */	lfs f0, mWaterY__11fopAcM_wt_c@l(r3)
/* 8049A6C8  D0 1D 00 04 */	stfs f0, 4(r29)
/* 8049A6CC  38 60 00 04 */	li r3, 4
/* 8049A6D0  48 00 00 7C */	b lbl_8049A74C
lbl_8049A6D4:
/* 8049A6D4  38 61 00 34 */	addi r3, r1, 0x34
/* 8049A6D8  7F A4 EB 78 */	mr r4, r29
/* 8049A6DC  7F 85 E3 78 */	mr r5, r28
/* 8049A6E0  4B DC C4 54 */	b __mi__4cXyzCFRC3Vec
/* 8049A6E4  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8049A6E8  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8049A6EC  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8049A6F0  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8049A6F4  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8049A6F8  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8049A6FC  38 61 00 28 */	addi r3, r1, 0x28
/* 8049A700  38 81 00 7C */	addi r4, r1, 0x7c
/* 8049A704  4B DC C8 44 */	b normalizeZP__4cXyzFv
/* 8049A708  38 61 00 1C */	addi r3, r1, 0x1c
/* 8049A70C  38 81 00 7C */	addi r4, r1, 0x7c
/* 8049A710  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 8049A714  4B DC C4 70 */	b __ml__4cXyzCFf
/* 8049A718  38 61 00 10 */	addi r3, r1, 0x10
/* 8049A71C  7F 84 E3 78 */	mr r4, r28
/* 8049A720  38 A1 00 1C */	addi r5, r1, 0x1c
/* 8049A724  4B DC C3 C0 */	b __pl__4cXyzCFRC3Vec
/* 8049A728  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8049A72C  D0 1D 00 00 */	stfs f0, 0(r29)
/* 8049A730  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8049A734  D0 1D 00 04 */	stfs f0, 4(r29)
/* 8049A738  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8049A73C  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8049A740  38 60 00 03 */	li r3, 3
/* 8049A744  48 00 00 08 */	b lbl_8049A74C
lbl_8049A748:
/* 8049A748  38 60 00 00 */	li r3, 0
lbl_8049A74C:
/* 8049A74C  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 8049A750  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 8049A754  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8049A758  4B EC 7A C8 */	b _restgpr_27
/* 8049A75C  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8049A760  7C 08 03 A6 */	mtlr r0
/* 8049A764  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8049A768  4E 80 00 20 */	blr 
