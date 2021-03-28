lbl_8050D260:
/* 8050D260  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8050D264  7C 08 02 A6 */	mflr r0
/* 8050D268  90 01 00 34 */	stw r0, 0x34(r1)
/* 8050D26C  39 61 00 30 */	addi r11, r1, 0x30
/* 8050D270  4B E5 4F 68 */	b _savegpr_28
/* 8050D274  7C 7C 1B 78 */	mr r28, r3
/* 8050D278  3C 60 80 52 */	lis r3, lit_4208@ha
/* 8050D27C  3B E3 85 84 */	addi r31, r3, lit_4208@l
/* 8050D280  3B C0 00 00 */	li r30, 0
/* 8050D284  3B A0 00 00 */	li r29, 0
/* 8050D288  3C 60 80 52 */	lis r3, boss@ha
/* 8050D28C  93 83 91 80 */	stw r28, boss@l(r3)
/* 8050D290  A8 1C 09 94 */	lha r0, 0x994(r28)
/* 8050D294  2C 00 00 00 */	cmpwi r0, 0
/* 8050D298  40 82 00 30 */	bne lbl_8050D2C8
/* 8050D29C  3C 60 80 51 */	lis r3, s_command4_sub__FPvPv@ha
/* 8050D2A0  38 63 D1 F4 */	addi r3, r3, s_command4_sub__FPvPv@l
/* 8050D2A4  7F 84 E3 78 */	mr r4, r28
/* 8050D2A8  4B B1 40 90 */	b fpcEx_Search__FPFPvPv_PvPv
/* 8050D2AC  28 03 00 00 */	cmplwi r3, 0
/* 8050D2B0  40 82 00 18 */	bne lbl_8050D2C8
/* 8050D2B4  38 00 00 07 */	li r0, 7
/* 8050D2B8  B0 1C 09 72 */	sth r0, 0x972(r28)
/* 8050D2BC  38 00 00 00 */	li r0, 0
/* 8050D2C0  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8050D2C4  48 00 03 D8 */	b lbl_8050D69C
lbl_8050D2C8:
/* 8050D2C8  A8 1C 05 B4 */	lha r0, 0x5b4(r28)
/* 8050D2CC  28 00 00 0B */	cmplwi r0, 0xb
/* 8050D2D0  41 81 03 68 */	bgt lbl_8050D638
/* 8050D2D4  3C 60 80 52 */	lis r3, lit_7812@ha
/* 8050D2D8  38 63 8C 70 */	addi r3, r3, lit_7812@l
/* 8050D2DC  54 00 10 3A */	slwi r0, r0, 2
/* 8050D2E0  7C 03 00 2E */	lwzx r0, r3, r0
/* 8050D2E4  7C 09 03 A6 */	mtctr r0
/* 8050D2E8  4E 80 04 20 */	bctr 
lbl_8050D2EC:
/* 8050D2EC  38 00 00 01 */	li r0, 1
/* 8050D2F0  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8050D2F4  48 00 03 44 */	b lbl_8050D638
lbl_8050D2F8:
/* 8050D2F8  3B C0 00 01 */	li r30, 1
/* 8050D2FC  A8 1C 09 90 */	lha r0, 0x990(r28)
/* 8050D300  2C 00 00 00 */	cmpwi r0, 0
/* 8050D304  40 82 03 34 */	bne lbl_8050D638
/* 8050D308  7F 83 E3 78 */	mr r3, r28
/* 8050D30C  38 80 00 1D */	li r4, 0x1d
/* 8050D310  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8050D314  38 A0 00 02 */	li r5, 2
/* 8050D318  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050D31C  4B FF 78 B9 */	bl anm_init__FP10e_rd_classifUcf
/* 8050D320  38 00 00 02 */	li r0, 2
/* 8050D324  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8050D328  C0 3F 00 E8 */	lfs f1, 0xe8(r31)
/* 8050D32C  4B D5 A6 28 */	b cM_rndF__Ff
/* 8050D330  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8050D334  EC 00 08 2A */	fadds f0, f0, f1
/* 8050D338  FC 00 00 1E */	fctiwz f0, f0
/* 8050D33C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8050D340  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050D344  B0 1C 09 90 */	sth r0, 0x990(r28)
/* 8050D348  48 00 02 F0 */	b lbl_8050D638
lbl_8050D34C:
/* 8050D34C  3B C0 00 01 */	li r30, 1
/* 8050D350  A8 1C 09 90 */	lha r0, 0x990(r28)
/* 8050D354  2C 00 00 00 */	cmpwi r0, 0
/* 8050D358  40 82 02 E0 */	bne lbl_8050D638
/* 8050D35C  7F 83 E3 78 */	mr r3, r28
/* 8050D360  38 80 00 40 */	li r4, 0x40
/* 8050D364  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8050D368  38 A0 00 02 */	li r5, 2
/* 8050D36C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050D370  4B FF 78 65 */	bl anm_init__FP10e_rd_classifUcf
/* 8050D374  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8050D378  4B D5 A5 DC */	b cM_rndF__Ff
/* 8050D37C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8050D380  EC 00 08 2A */	fadds f0, f0, f1
/* 8050D384  FC 00 00 1E */	fctiwz f0, f0
/* 8050D388  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8050D38C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050D390  B0 1C 09 90 */	sth r0, 0x990(r28)
/* 8050D394  38 00 00 01 */	li r0, 1
/* 8050D398  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8050D39C  48 00 02 9C */	b lbl_8050D638
lbl_8050D3A0:
/* 8050D3A0  7F 83 E3 78 */	mr r3, r28
/* 8050D3A4  38 80 00 40 */	li r4, 0x40
/* 8050D3A8  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8050D3AC  38 A0 00 02 */	li r5, 2
/* 8050D3B0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050D3B4  4B FF 78 21 */	bl anm_init__FP10e_rd_classifUcf
/* 8050D3B8  38 00 00 1E */	li r0, 0x1e
/* 8050D3BC  B0 1C 09 90 */	sth r0, 0x990(r28)
/* 8050D3C0  38 00 00 06 */	li r0, 6
/* 8050D3C4  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8050D3C8  48 00 02 70 */	b lbl_8050D638
lbl_8050D3CC:
/* 8050D3CC  3B A0 00 01 */	li r29, 1
/* 8050D3D0  A8 1C 09 90 */	lha r0, 0x990(r28)
/* 8050D3D4  2C 00 00 00 */	cmpwi r0, 0
/* 8050D3D8  40 82 02 60 */	bne lbl_8050D638
/* 8050D3DC  7F 83 E3 78 */	mr r3, r28
/* 8050D3E0  38 80 00 17 */	li r4, 0x17
/* 8050D3E4  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 8050D3E8  38 A0 00 00 */	li r5, 0
/* 8050D3EC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050D3F0  4B FF 77 E5 */	bl anm_init__FP10e_rd_classifUcf
/* 8050D3F4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007001B@ha */
/* 8050D3F8  38 03 00 1B */	addi r0, r3, 0x001B /* 0x0007001B@l */
/* 8050D3FC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8050D400  38 7C 05 D4 */	addi r3, r28, 0x5d4
/* 8050D404  38 81 00 0C */	addi r4, r1, 0xc
/* 8050D408  38 A0 FF FF */	li r5, -1
/* 8050D40C  81 9C 05 D4 */	lwz r12, 0x5d4(r28)
/* 8050D410  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8050D414  7D 89 03 A6 */	mtctr r12
/* 8050D418  4E 80 04 21 */	bctrl 
/* 8050D41C  38 00 00 07 */	li r0, 7
/* 8050D420  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8050D424  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8050D428  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8050D42C  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8050D430  28 00 00 00 */	cmplwi r0, 0
/* 8050D434  41 82 00 1C */	beq lbl_8050D450
/* 8050D438  3C 60 80 52 */	lis r3, l_HIO@ha
/* 8050D43C  38 63 91 94 */	addi r3, r3, l_HIO@l
/* 8050D440  A8 63 00 24 */	lha r3, 0x24(r3)
/* 8050D444  38 03 00 02 */	addi r0, r3, 2
/* 8050D448  B0 1C 09 90 */	sth r0, 0x990(r28)
/* 8050D44C  48 00 01 EC */	b lbl_8050D638
lbl_8050D450:
/* 8050D450  38 00 00 0A */	li r0, 0xa
/* 8050D454  B0 1C 09 90 */	sth r0, 0x990(r28)
/* 8050D458  48 00 01 E0 */	b lbl_8050D638
lbl_8050D45C:
/* 8050D45C  3B A0 00 01 */	li r29, 1
/* 8050D460  A8 1C 09 90 */	lha r0, 0x990(r28)
/* 8050D464  2C 00 00 01 */	cmpwi r0, 1
/* 8050D468  40 82 00 14 */	bne lbl_8050D47C
/* 8050D46C  3C 60 80 51 */	lis r3, s_command2_sub__FPvPv@ha
/* 8050D470  38 63 D1 68 */	addi r3, r3, s_command2_sub__FPvPv@l
/* 8050D474  7F 84 E3 78 */	mr r4, r28
/* 8050D478  4B B1 3E C0 */	b fpcEx_Search__FPFPvPv_PvPv
lbl_8050D47C:
/* 8050D47C  A8 1C 09 90 */	lha r0, 0x990(r28)
/* 8050D480  2C 00 00 00 */	cmpwi r0, 0
/* 8050D484  40 82 01 B4 */	bne lbl_8050D638
/* 8050D488  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 8050D48C  38 80 00 01 */	li r4, 1
/* 8050D490  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8050D494  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8050D498  40 82 00 18 */	bne lbl_8050D4B0
/* 8050D49C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8050D4A0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8050D4A4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8050D4A8  41 82 00 08 */	beq lbl_8050D4B0
/* 8050D4AC  38 80 00 00 */	li r4, 0
lbl_8050D4B0:
/* 8050D4B0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8050D4B4  41 82 01 84 */	beq lbl_8050D638
/* 8050D4B8  7F 83 E3 78 */	mr r3, r28
/* 8050D4BC  38 80 00 40 */	li r4, 0x40
/* 8050D4C0  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8050D4C4  38 A0 00 02 */	li r5, 2
/* 8050D4C8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050D4CC  4B FF 77 09 */	bl anm_init__FP10e_rd_classifUcf
/* 8050D4D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8050D4D4  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 8050D4D8  88 1F 4F AD */	lbz r0, 0x4fad(r31)
/* 8050D4DC  28 00 00 00 */	cmplwi r0, 0
/* 8050D4E0  40 82 00 30 */	bne lbl_8050D510
/* 8050D4E4  7F 83 E3 78 */	mr r3, r28
/* 8050D4E8  C0 3C 09 80 */	lfs f1, 0x980(r28)
/* 8050D4EC  38 80 40 00 */	li r4, 0x4000
/* 8050D4F0  4B FF 90 E5 */	bl pl_check__FP10e_rd_classfs
/* 8050D4F4  2C 03 00 00 */	cmpwi r3, 0
/* 8050D4F8  40 82 00 18 */	bne lbl_8050D510
/* 8050D4FC  38 00 00 0A */	li r0, 0xa
/* 8050D500  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8050D504  38 00 01 5E */	li r0, 0x15e
/* 8050D508  B0 1C 09 92 */	sth r0, 0x992(r28)
/* 8050D50C  48 00 01 2C */	b lbl_8050D638
lbl_8050D510:
/* 8050D510  88 1F 4F AD */	lbz r0, 0x4fad(r31)
/* 8050D514  28 00 00 00 */	cmplwi r0, 0
/* 8050D518  41 82 00 10 */	beq lbl_8050D528
/* 8050D51C  38 00 00 50 */	li r0, 0x50
/* 8050D520  B0 1C 09 90 */	sth r0, 0x990(r28)
/* 8050D524  48 00 00 0C */	b lbl_8050D530
lbl_8050D528:
/* 8050D528  38 00 00 00 */	li r0, 0
/* 8050D52C  B0 1C 09 90 */	sth r0, 0x990(r28)
lbl_8050D530:
/* 8050D530  38 00 00 06 */	li r0, 6
/* 8050D534  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8050D538  48 00 01 00 */	b lbl_8050D638
lbl_8050D53C:
/* 8050D53C  7F 83 E3 78 */	mr r3, r28
/* 8050D540  38 80 00 17 */	li r4, 0x17
/* 8050D544  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 8050D548  38 A0 00 00 */	li r5, 0
/* 8050D54C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050D550  4B FF 76 85 */	bl anm_init__FP10e_rd_classifUcf
/* 8050D554  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070037@ha */
/* 8050D558  38 03 00 37 */	addi r0, r3, 0x0037 /* 0x00070037@l */
/* 8050D55C  90 01 00 08 */	stw r0, 8(r1)
/* 8050D560  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8050D564  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8050D568  80 63 00 00 */	lwz r3, 0(r3)
/* 8050D56C  38 81 00 08 */	addi r4, r1, 8
/* 8050D570  38 A0 00 00 */	li r5, 0
/* 8050D574  38 C0 00 00 */	li r6, 0
/* 8050D578  38 E0 00 00 */	li r7, 0
/* 8050D57C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8050D580  FC 40 08 90 */	fmr f2, f1
/* 8050D584  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 8050D588  FC 80 18 90 */	fmr f4, f3
/* 8050D58C  39 00 00 00 */	li r8, 0
/* 8050D590  4B D9 E3 F4 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8050D594  3C 60 80 51 */	lis r3, s_command2_sub__FPvPv@ha
/* 8050D598  38 63 D1 68 */	addi r3, r3, s_command2_sub__FPvPv@l
/* 8050D59C  7F 84 E3 78 */	mr r4, r28
/* 8050D5A0  4B B1 3D 98 */	b fpcEx_Search__FPFPvPv_PvPv
/* 8050D5A4  38 00 00 0B */	li r0, 0xb
/* 8050D5A8  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8050D5AC  48 00 00 8C */	b lbl_8050D638
lbl_8050D5B0:
/* 8050D5B0  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 8050D5B4  38 80 00 01 */	li r4, 1
/* 8050D5B8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8050D5BC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8050D5C0  40 82 00 18 */	bne lbl_8050D5D8
/* 8050D5C4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8050D5C8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8050D5CC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8050D5D0  41 82 00 08 */	beq lbl_8050D5D8
/* 8050D5D4  38 80 00 00 */	li r4, 0
lbl_8050D5D8:
/* 8050D5D8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8050D5DC  41 82 00 5C */	beq lbl_8050D638
/* 8050D5E0  A8 1C 09 92 */	lha r0, 0x992(r28)
/* 8050D5E4  2C 00 00 00 */	cmpwi r0, 0
/* 8050D5E8  40 82 00 48 */	bne lbl_8050D630
/* 8050D5EC  7F 83 E3 78 */	mr r3, r28
/* 8050D5F0  38 80 00 40 */	li r4, 0x40
/* 8050D5F4  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8050D5F8  38 A0 00 02 */	li r5, 2
/* 8050D5FC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050D600  4B FF 75 D5 */	bl anm_init__FP10e_rd_classifUcf
/* 8050D604  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 8050D608  4B D5 A3 4C */	b cM_rndF__Ff
/* 8050D60C  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 8050D610  EC 00 08 2A */	fadds f0, f0, f1
/* 8050D614  FC 00 00 1E */	fctiwz f0, f0
/* 8050D618  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8050D61C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050D620  B0 1C 09 90 */	sth r0, 0x990(r28)
/* 8050D624  38 00 00 01 */	li r0, 1
/* 8050D628  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8050D62C  48 00 00 0C */	b lbl_8050D638
lbl_8050D630:
/* 8050D630  38 00 00 0A */	li r0, 0xa
/* 8050D634  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
lbl_8050D638:
/* 8050D638  7F C0 07 75 */	extsb. r0, r30
/* 8050D63C  41 82 00 44 */	beq lbl_8050D680
/* 8050D640  7F 83 E3 78 */	mr r3, r28
/* 8050D644  C0 3C 09 80 */	lfs f1, 0x980(r28)
/* 8050D648  38 80 40 00 */	li r4, 0x4000
/* 8050D64C  4B FF 8F 89 */	bl pl_check__FP10e_rd_classfs
/* 8050D650  2C 03 00 00 */	cmpwi r3, 0
/* 8050D654  41 82 00 2C */	beq lbl_8050D680
/* 8050D658  38 00 00 05 */	li r0, 5
/* 8050D65C  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8050D660  80 9C 12 A0 */	lwz r4, 0x12a0(r28)
/* 8050D664  2C 04 00 00 */	cmpwi r4, 0
/* 8050D668  41 82 00 18 */	beq lbl_8050D680
/* 8050D66C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8050D670  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8050D674  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 8050D678  7C 05 07 74 */	extsb r5, r0
/* 8050D67C  4B B2 7B 84 */	b onSwitch__10dSv_info_cFii
lbl_8050D680:
/* 8050D680  7F A0 07 75 */	extsb. r0, r29
/* 8050D684  41 82 00 18 */	beq lbl_8050D69C
/* 8050D688  38 7C 04 DE */	addi r3, r28, 0x4de
/* 8050D68C  A8 9C 09 7C */	lha r4, 0x97c(r28)
/* 8050D690  38 A0 00 02 */	li r5, 2
/* 8050D694  38 C0 08 00 */	li r6, 0x800
/* 8050D698  4B D6 2F 70 */	b cLib_addCalcAngleS2__FPssss
lbl_8050D69C:
/* 8050D69C  39 61 00 30 */	addi r11, r1, 0x30
/* 8050D6A0  4B E5 4B 84 */	b _restgpr_28
/* 8050D6A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8050D6A8  7C 08 03 A6 */	mtlr r0
/* 8050D6AC  38 21 00 30 */	addi r1, r1, 0x30
/* 8050D6B0  4E 80 00 20 */	blr 
