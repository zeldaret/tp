lbl_80C4925C:
/* 80C4925C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C49260  7C 08 02 A6 */	mflr r0
/* 80C49264  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C49268  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80C4926C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80C49270  7C 7E 1B 78 */	mr r30, r3
/* 80C49274  3C 60 80 C5 */	lis r3, l_bmd@ha
/* 80C49278  3B E3 9C A8 */	addi r31, r3, l_bmd@l
/* 80C4927C  80 1E 06 14 */	lwz r0, 0x614(r30)
/* 80C49280  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C49284  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80C49288  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80C4928C  38 81 00 14 */	addi r4, r1, 0x14
/* 80C49290  4B 3D 05 68 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80C49294  88 1E 05 E9 */	lbz r0, 0x5e9(r30)
/* 80C49298  2C 00 00 02 */	cmpwi r0, 2
/* 80C4929C  41 82 00 C4 */	beq lbl_80C49360
/* 80C492A0  40 80 00 14 */	bge lbl_80C492B4
/* 80C492A4  2C 00 00 00 */	cmpwi r0, 0
/* 80C492A8  41 82 00 1C */	beq lbl_80C492C4
/* 80C492AC  40 80 00 94 */	bge lbl_80C49340
/* 80C492B0  48 00 01 DC */	b lbl_80C4948C
lbl_80C492B4:
/* 80C492B4  2C 00 00 04 */	cmpwi r0, 4
/* 80C492B8  41 82 01 D4 */	beq lbl_80C4948C
/* 80C492BC  40 80 01 D0 */	bge lbl_80C4948C
/* 80C492C0  48 00 01 38 */	b lbl_80C493F8
lbl_80C492C4:
/* 80C492C4  28 03 00 00 */	cmplwi r3, 0
/* 80C492C8  41 82 00 0C */	beq lbl_80C492D4
/* 80C492CC  38 00 00 01 */	li r0, 1
/* 80C492D0  98 03 2C A4 */	stb r0, 0x2ca4(r3)
lbl_80C492D4:
/* 80C492D4  38 00 00 01 */	li r0, 1
/* 80C492D8  98 1E 05 E9 */	stb r0, 0x5e9(r30)
/* 80C492DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C492E0  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80C492E4  A8 64 5D C8 */	lha r3, 0x5dc8(r4)
/* 80C492E8  38 03 FF FF */	addi r0, r3, -1
/* 80C492EC  B0 04 5D C8 */	sth r0, 0x5dc8(r4)
/* 80C492F0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C492F4  7C 03 07 74 */	extsb r3, r0
/* 80C492F8  4B 3E 3D 74 */	b dComIfGp_getReverb__Fi
/* 80C492FC  7C 67 1B 78 */	mr r7, r3
/* 80C49300  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800B6@ha */
/* 80C49304  38 03 00 B6 */	addi r0, r3, 0x00B6 /* 0x000800B6@l */
/* 80C49308  90 01 00 08 */	stw r0, 8(r1)
/* 80C4930C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C49310  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C49314  80 63 00 00 */	lwz r3, 0(r3)
/* 80C49318  38 81 00 08 */	addi r4, r1, 8
/* 80C4931C  38 BE 05 38 */	addi r5, r30, 0x538
/* 80C49320  38 C0 00 00 */	li r6, 0
/* 80C49324  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80C49328  FC 40 08 90 */	fmr f2, f1
/* 80C4932C  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 80C49330  FC 80 18 90 */	fmr f4, f3
/* 80C49334  39 00 00 00 */	li r8, 0
/* 80C49338  4B 66 26 4C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C4933C  48 00 01 50 */	b lbl_80C4948C
lbl_80C49340:
/* 80C49340  28 03 00 00 */	cmplwi r3, 0
/* 80C49344  41 82 01 48 */	beq lbl_80C4948C
/* 80C49348  88 03 2C A4 */	lbz r0, 0x2ca4(r3)
/* 80C4934C  28 00 00 03 */	cmplwi r0, 3
/* 80C49350  40 82 01 3C */	bne lbl_80C4948C
/* 80C49354  38 00 00 02 */	li r0, 2
/* 80C49358  98 1E 05 E9 */	stb r0, 0x5e9(r30)
/* 80C4935C  48 00 01 30 */	b lbl_80C4948C
lbl_80C49360:
/* 80C49360  7F C3 F3 78 */	mr r3, r30
/* 80C49364  48 00 03 6D */	bl anmInit__12daObjKshtr_cFv
/* 80C49368  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C4936C  7C 03 07 74 */	extsb r3, r0
/* 80C49370  4B 3E 3C FC */	b dComIfGp_getReverb__Fi
/* 80C49374  7C 67 1B 78 */	mr r7, r3
/* 80C49378  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800C7@ha */
/* 80C4937C  38 03 00 C7 */	addi r0, r3, 0x00C7 /* 0x000800C7@l */
/* 80C49380  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C49384  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C49388  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C4938C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C49390  38 81 00 10 */	addi r4, r1, 0x10
/* 80C49394  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C49398  38 C0 00 00 */	li r6, 0
/* 80C4939C  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80C493A0  FC 40 08 90 */	fmr f2, f1
/* 80C493A4  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 80C493A8  FC 80 18 90 */	fmr f4, f3
/* 80C493AC  39 00 00 00 */	li r8, 0
/* 80C493B0  4B 66 25 D4 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C493B4  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80C493B8  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80C493BC  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80C493C0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C493C4  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80C493C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C493CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C493D0  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C493D4  38 80 00 04 */	li r4, 4
/* 80C493D8  38 A0 00 0F */	li r5, 0xf
/* 80C493DC  38 C1 00 24 */	addi r6, r1, 0x24
/* 80C493E0  4B 42 66 44 */	b StartShock__12dVibration_cFii4cXyz
/* 80C493E4  7F C3 F3 78 */	mr r3, r30
/* 80C493E8  4B FF EA 6D */	bl offDzb__12daObjKshtr_cFv
/* 80C493EC  38 00 00 03 */	li r0, 3
/* 80C493F0  98 1E 05 E9 */	stb r0, 0x5e9(r30)
/* 80C493F4  48 00 00 98 */	b lbl_80C4948C
lbl_80C493F8:
/* 80C493F8  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80C493FC  4B 3C 40 2C */	b play__14mDoExt_baseAnmFv
/* 80C49400  2C 03 00 00 */	cmpwi r3, 0
/* 80C49404  41 82 00 88 */	beq lbl_80C4948C
/* 80C49408  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80C4940C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80C49410  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80C49414  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C49418  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80C4941C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C49420  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C49424  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C49428  38 80 00 04 */	li r4, 4
/* 80C4942C  38 A0 00 1F */	li r5, 0x1f
/* 80C49430  38 C1 00 18 */	addi r6, r1, 0x18
/* 80C49434  4B 42 65 F0 */	b StartShock__12dVibration_cFii4cXyz
/* 80C49438  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C4943C  7C 03 07 74 */	extsb r3, r0
/* 80C49440  4B 3E 3C 2C */	b dComIfGp_getReverb__Fi
/* 80C49444  7C 67 1B 78 */	mr r7, r3
/* 80C49448  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800B4@ha */
/* 80C4944C  38 03 00 B4 */	addi r0, r3, 0x00B4 /* 0x000800B4@l */
/* 80C49450  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C49454  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C49458  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C4945C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C49460  38 81 00 0C */	addi r4, r1, 0xc
/* 80C49464  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C49468  38 C0 00 00 */	li r6, 0
/* 80C4946C  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80C49470  FC 40 08 90 */	fmr f2, f1
/* 80C49474  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 80C49478  FC 80 18 90 */	fmr f4, f3
/* 80C4947C  39 00 00 00 */	li r8, 0
/* 80C49480  4B 66 25 04 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C49484  38 00 00 04 */	li r0, 4
/* 80C49488  98 1E 05 E9 */	stb r0, 0x5e9(r30)
lbl_80C4948C:
/* 80C4948C  38 60 00 00 */	li r3, 0
/* 80C49490  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80C49494  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80C49498  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C4949C  7C 08 03 A6 */	mtlr r0
/* 80C494A0  38 21 00 40 */	addi r1, r1, 0x40
/* 80C494A4  4E 80 00 20 */	blr 
