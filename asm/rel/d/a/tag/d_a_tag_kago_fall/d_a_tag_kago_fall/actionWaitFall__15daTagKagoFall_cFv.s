lbl_80D5A218:
/* 80D5A218  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80D5A21C  7C 08 02 A6 */	mflr r0
/* 80D5A220  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80D5A224  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80D5A228  4B 60 7F B0 */	b _savegpr_28
/* 80D5A22C  7C 7D 1B 78 */	mr r29, r3
/* 80D5A230  3C 80 80 D6 */	lis r4, lit_3907@ha
/* 80D5A234  3B E4 A6 EC */	addi r31, r4, lit_3907@l
/* 80D5A238  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80D5A23C  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l
/* 80D5A240  83 DC 5D AC */	lwz r30, 0x5dac(r28)
/* 80D5A244  88 03 05 F6 */	lbz r0, 0x5f6(r3)
/* 80D5A248  2C 00 00 03 */	cmpwi r0, 3
/* 80D5A24C  41 82 03 54 */	beq lbl_80D5A5A0
/* 80D5A250  40 80 00 1C */	bge lbl_80D5A26C
/* 80D5A254  2C 00 00 01 */	cmpwi r0, 1
/* 80D5A258  41 82 00 FC */	beq lbl_80D5A354
/* 80D5A25C  40 80 02 64 */	bge lbl_80D5A4C0
/* 80D5A260  2C 00 00 00 */	cmpwi r0, 0
/* 80D5A264  40 80 00 14 */	bge lbl_80D5A278
/* 80D5A268  48 00 03 FC */	b lbl_80D5A664
lbl_80D5A26C:
/* 80D5A26C  2C 00 00 0A */	cmpwi r0, 0xa
/* 80D5A270  41 82 03 F4 */	beq lbl_80D5A664
/* 80D5A274  48 00 03 F0 */	b lbl_80D5A664
lbl_80D5A278:
/* 80D5A278  38 7D 05 B4 */	addi r3, r29, 0x5b4
/* 80D5A27C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80D5A280  38 A1 00 18 */	addi r5, r1, 0x18
/* 80D5A284  4B 5E CA E8 */	b PSMTXMultVec
/* 80D5A288  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80D5A28C  C0 1D 04 F0 */	lfs f0, 0x4f0(r29)
/* 80D5A290  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D5A294  4C 40 13 82 */	cror 2, 0, 2
/* 80D5A298  40 82 00 54 */	bne lbl_80D5A2EC
/* 80D5A29C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80D5A2A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D5A2A4  4C 41 13 82 */	cror 2, 1, 2
/* 80D5A2A8  40 82 00 44 */	bne lbl_80D5A2EC
/* 80D5A2AC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80D5A2B0  FC 00 02 10 */	fabs f0, f0
/* 80D5A2B4  FC 20 00 18 */	frsp f1, f0
/* 80D5A2B8  C0 1D 04 EC */	lfs f0, 0x4ec(r29)
/* 80D5A2BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D5A2C0  4C 40 13 82 */	cror 2, 0, 2
/* 80D5A2C4  40 82 00 28 */	bne lbl_80D5A2EC
/* 80D5A2C8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80D5A2CC  FC 00 02 10 */	fabs f0, f0
/* 80D5A2D0  FC 20 00 18 */	frsp f1, f0
/* 80D5A2D4  C0 1D 04 F4 */	lfs f0, 0x4f4(r29)
/* 80D5A2D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D5A2DC  4C 40 13 82 */	cror 2, 0, 2
/* 80D5A2E0  40 82 00 0C */	bne lbl_80D5A2EC
/* 80D5A2E4  38 00 00 01 */	li r0, 1
/* 80D5A2E8  98 1D 05 F6 */	stb r0, 0x5f6(r29)
lbl_80D5A2EC:
/* 80D5A2EC  3C 60 80 D6 */	lis r3, m_master_id@ha
/* 80D5A2F0  38 63 A7 10 */	addi r3, r3, m_master_id@l
/* 80D5A2F4  80 63 00 00 */	lwz r3, 0(r3)
/* 80D5A2F8  28 1D 00 00 */	cmplwi r29, 0
/* 80D5A2FC  41 82 00 0C */	beq lbl_80D5A308
/* 80D5A300  80 1D 00 04 */	lwz r0, 4(r29)
/* 80D5A304  48 00 00 08 */	b lbl_80D5A30C
lbl_80D5A308:
/* 80D5A308  38 00 FF FF */	li r0, -1
lbl_80D5A30C:
/* 80D5A30C  7C 03 00 40 */	cmplw r3, r0
/* 80D5A310  40 82 03 54 */	bne lbl_80D5A664
/* 80D5A314  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 80D5A318  88 03 05 6A */	lbz r0, 0x56a(r3)
/* 80D5A31C  28 00 00 2C */	cmplwi r0, 0x2c
/* 80D5A320  41 82 00 28 */	beq lbl_80D5A348
/* 80D5A324  A8 7D 05 F2 */	lha r3, 0x5f2(r29)
/* 80D5A328  38 03 FF FF */	addi r0, r3, -1
/* 80D5A32C  B0 1D 05 F2 */	sth r0, 0x5f2(r29)
/* 80D5A330  A8 1D 05 F2 */	lha r0, 0x5f2(r29)
/* 80D5A334  2C 00 00 00 */	cmpwi r0, 0
/* 80D5A338  40 82 03 2C */	bne lbl_80D5A664
/* 80D5A33C  38 00 00 01 */	li r0, 1
/* 80D5A340  98 1D 05 F6 */	stb r0, 0x5f6(r29)
/* 80D5A344  48 00 03 20 */	b lbl_80D5A664
lbl_80D5A348:
/* 80D5A348  38 00 00 96 */	li r0, 0x96
/* 80D5A34C  B0 1D 05 F2 */	sth r0, 0x5f2(r29)
/* 80D5A350  48 00 03 14 */	b lbl_80D5A664
lbl_80D5A354:
/* 80D5A354  A0 1C 00 02 */	lhz r0, 2(r28)
/* 80D5A358  28 00 00 00 */	cmplwi r0, 0
/* 80D5A35C  40 82 00 A0 */	bne lbl_80D5A3FC
/* 80D5A360  7F C3 F3 78 */	mr r3, r30
/* 80D5A364  88 9D 05 F7 */	lbz r4, 0x5f7(r29)
/* 80D5A368  38 A0 00 FF */	li r5, 0xff
/* 80D5A36C  38 C0 00 00 */	li r6, 0
/* 80D5A370  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80D5A374  81 8C 01 80 */	lwz r12, 0x180(r12)
/* 80D5A378  7D 89 03 A6 */	mtctr r12
/* 80D5A37C  4E 80 04 21 */	bctrl 
/* 80D5A380  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 80D5A384  54 00 04 21 */	rlwinm. r0, r0, 0, 0x10, 0x10
/* 80D5A388  41 82 02 DC */	beq lbl_80D5A664
/* 80D5A38C  88 1D 05 F9 */	lbz r0, 0x5f9(r29)
/* 80D5A390  28 00 00 00 */	cmplwi r0, 0
/* 80D5A394  40 82 02 D0 */	bne lbl_80D5A664
/* 80D5A398  38 00 00 33 */	li r0, 0x33
/* 80D5A39C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5A3A0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D5A3A4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D5A3A8  80 63 00 00 */	lwz r3, 0(r3)
/* 80D5A3AC  38 81 00 14 */	addi r4, r1, 0x14
/* 80D5A3B0  38 A0 00 00 */	li r5, 0
/* 80D5A3B4  38 C0 00 00 */	li r6, 0
/* 80D5A3B8  38 E0 00 00 */	li r7, 0
/* 80D5A3BC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80D5A3C0  FC 40 08 90 */	fmr f2, f1
/* 80D5A3C4  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 80D5A3C8  FC 80 18 90 */	fmr f4, f3
/* 80D5A3CC  39 00 00 00 */	li r8, 0
/* 80D5A3D0  4B 55 15 B4 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D5A3D4  7F C3 F3 78 */	mr r3, r30
/* 80D5A3D8  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010041@ha */
/* 80D5A3DC  38 84 00 41 */	addi r4, r4, 0x0041 /* 0x00010041@l */
/* 80D5A3E0  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80D5A3E4  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 80D5A3E8  7D 89 03 A6 */	mtctr r12
/* 80D5A3EC  4E 80 04 21 */	bctrl 
/* 80D5A3F0  38 00 00 01 */	li r0, 1
/* 80D5A3F4  98 1D 05 F9 */	stb r0, 0x5f9(r29)
/* 80D5A3F8  48 00 02 6C */	b lbl_80D5A664
lbl_80D5A3FC:
/* 80D5A3FC  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 80D5A400  28 00 00 02 */	cmplwi r0, 2
/* 80D5A404  41 82 00 40 */	beq lbl_80D5A444
/* 80D5A408  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80D5A40C  D0 1D 05 E4 */	stfs f0, 0x5e4(r29)
/* 80D5A410  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80D5A414  D0 1D 05 E8 */	stfs f0, 0x5e8(r29)
/* 80D5A418  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80D5A41C  D0 1D 05 EC */	stfs f0, 0x5ec(r29)
/* 80D5A420  38 80 00 01 */	li r4, 1
/* 80D5A424  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80D5A428  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80D5A42C  38 C0 00 00 */	li r6, 0
/* 80D5A430  4B 2C 14 D8 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80D5A434  A0 1D 00 FA */	lhz r0, 0xfa(r29)
/* 80D5A438  60 00 00 02 */	ori r0, r0, 2
/* 80D5A43C  B0 1D 00 FA */	sth r0, 0xfa(r29)
/* 80D5A440  48 00 02 24 */	b lbl_80D5A664
lbl_80D5A444:
/* 80D5A444  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80D5A448  3C 60 80 45 */	lis r3, g_blackColor@ha
/* 80D5A44C  38 63 06 04 */	addi r3, r3, g_blackColor@l
/* 80D5A450  4B 2A DB 88 */	b fadeOut__13mDoGph_gInf_cFfR8_GXColor
/* 80D5A454  38 00 00 3C */	li r0, 0x3c
/* 80D5A458  B0 1D 05 F0 */	sth r0, 0x5f0(r29)
/* 80D5A45C  38 00 00 02 */	li r0, 2
/* 80D5A460  98 1D 05 F6 */	stb r0, 0x5f6(r29)
/* 80D5A464  38 00 00 33 */	li r0, 0x33
/* 80D5A468  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D5A46C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D5A470  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D5A474  80 63 00 00 */	lwz r3, 0(r3)
/* 80D5A478  38 81 00 10 */	addi r4, r1, 0x10
/* 80D5A47C  38 A0 00 00 */	li r5, 0
/* 80D5A480  38 C0 00 00 */	li r6, 0
/* 80D5A484  38 E0 00 00 */	li r7, 0
/* 80D5A488  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80D5A48C  FC 40 08 90 */	fmr f2, f1
/* 80D5A490  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 80D5A494  FC 80 18 90 */	fmr f4, f3
/* 80D5A498  39 00 00 00 */	li r8, 0
/* 80D5A49C  4B 55 14 E8 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D5A4A0  7F C3 F3 78 */	mr r3, r30
/* 80D5A4A4  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010041@ha */
/* 80D5A4A8  38 84 00 41 */	addi r4, r4, 0x0041 /* 0x00010041@l */
/* 80D5A4AC  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80D5A4B0  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 80D5A4B4  7D 89 03 A6 */	mtctr r12
/* 80D5A4B8  4E 80 04 21 */	bctrl 
/* 80D5A4BC  48 00 01 A8 */	b lbl_80D5A664
lbl_80D5A4C0:
/* 80D5A4C0  A8 7D 05 F0 */	lha r3, 0x5f0(r29)
/* 80D5A4C4  2C 03 00 00 */	cmpwi r3, 0
/* 80D5A4C8  41 82 00 0C */	beq lbl_80D5A4D4
/* 80D5A4CC  38 03 FF FF */	addi r0, r3, -1
/* 80D5A4D0  B0 1D 05 F0 */	sth r0, 0x5f0(r29)
lbl_80D5A4D4:
/* 80D5A4D4  A8 1D 05 F0 */	lha r0, 0x5f0(r29)
/* 80D5A4D8  2C 00 00 2D */	cmpwi r0, 0x2d
/* 80D5A4DC  41 81 00 24 */	bgt lbl_80D5A500
/* 80D5A4E0  7F C3 F3 78 */	mr r3, r30
/* 80D5A4E4  38 9D 05 E4 */	addi r4, r29, 0x5e4
/* 80D5A4E8  38 A0 00 00 */	li r5, 0
/* 80D5A4EC  38 C0 00 00 */	li r6, 0
/* 80D5A4F0  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80D5A4F4  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80D5A4F8  7D 89 03 A6 */	mtctr r12
/* 80D5A4FC  4E 80 04 21 */	bctrl 
lbl_80D5A500:
/* 80D5A500  A8 1D 05 F0 */	lha r0, 0x5f0(r29)
/* 80D5A504  2C 00 00 00 */	cmpwi r0, 0
/* 80D5A508  40 82 01 5C */	bne lbl_80D5A664
/* 80D5A50C  4B 42 71 34 */	b dCam_getBody__Fv
/* 80D5A510  4B 40 6F C0 */	b Stop__9dCamera_cFv
/* 80D5A514  4B 42 71 2C */	b dCam_getBody__Fv
/* 80D5A518  38 80 00 03 */	li r4, 3
/* 80D5A51C  4B 40 8A F0 */	b SetTrimSize__9dCamera_cFl
/* 80D5A520  38 7D 05 68 */	addi r3, r29, 0x568
/* 80D5A524  7F A4 EB 78 */	mr r4, r29
/* 80D5A528  38 A0 07 D4 */	li r5, 0x7d4
/* 80D5A52C  38 C0 00 00 */	li r6, 0
/* 80D5A530  38 E0 00 00 */	li r7, 0
/* 80D5A534  4B 4E FA 5C */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80D5A538  38 00 00 03 */	li r0, 3
/* 80D5A53C  98 1D 05 F6 */	stb r0, 0x5f6(r29)
/* 80D5A540  38 61 00 24 */	addi r3, r1, 0x24
/* 80D5A544  4B 31 D7 24 */	b __ct__11dBgS_LinChkFv
/* 80D5A548  C0 3D 05 E8 */	lfs f1, 0x5e8(r29)
/* 80D5A54C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80D5A550  EC 01 00 2A */	fadds f0, f1, f0
/* 80D5A554  D0 1D 05 E8 */	stfs f0, 0x5e8(r29)
/* 80D5A558  38 61 00 24 */	addi r3, r1, 0x24
/* 80D5A55C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80D5A560  38 BD 05 E4 */	addi r5, r29, 0x5e4
/* 80D5A564  38 C0 00 00 */	li r6, 0
/* 80D5A568  4B 31 D7 FC */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80D5A56C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D5A570  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D5A574  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D5A578  38 81 00 24 */	addi r4, r1, 0x24
/* 80D5A57C  4B 31 9E 38 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80D5A580  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D5A584  41 82 00 0C */	beq lbl_80D5A590
/* 80D5A588  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80D5A58C  D0 1D 05 E8 */	stfs f0, 0x5e8(r29)
lbl_80D5A590:
/* 80D5A590  38 61 00 24 */	addi r3, r1, 0x24
/* 80D5A594  38 80 FF FF */	li r4, -1
/* 80D5A598  4B 31 D7 44 */	b __dt__11dBgS_LinChkFv
/* 80D5A59C  48 00 00 C8 */	b lbl_80D5A664
lbl_80D5A5A0:
/* 80D5A5A0  7F C3 F3 78 */	mr r3, r30
/* 80D5A5A4  38 9D 05 E4 */	addi r4, r29, 0x5e4
/* 80D5A5A8  38 A0 00 00 */	li r5, 0
/* 80D5A5AC  38 C0 00 00 */	li r6, 0
/* 80D5A5B0  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80D5A5B4  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80D5A5B8  7D 89 03 A6 */	mtctr r12
/* 80D5A5BC  4E 80 04 21 */	bctrl 
/* 80D5A5C0  38 7D 05 68 */	addi r3, r29, 0x568
/* 80D5A5C4  7F A4 EB 78 */	mr r4, r29
/* 80D5A5C8  38 A0 00 00 */	li r5, 0
/* 80D5A5CC  38 C0 00 00 */	li r6, 0
/* 80D5A5D0  4B 4E FD 08 */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80D5A5D4  2C 03 00 00 */	cmpwi r3, 0
/* 80D5A5D8  41 82 00 8C */	beq lbl_80D5A664
/* 80D5A5DC  4B 4D DE 64 */	b getSelectCursorPos__12dMsgObject_cFv
/* 80D5A5E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D5A5E4  41 82 00 28 */	beq lbl_80D5A60C
/* 80D5A5E8  88 7D 05 F7 */	lbz r3, 0x5f7(r29)
/* 80D5A5EC  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80D5A5F0  38 80 00 00 */	li r4, 0
/* 80D5A5F4  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80D5A5F8  7C 05 07 74 */	extsb r5, r0
/* 80D5A5FC  38 C0 00 00 */	li r6, 0
/* 80D5A600  38 E0 FF FF */	li r7, -1
/* 80D5A604  4B 2C CB 6C */	b dStage_changeScene__FifUlScsi
/* 80D5A608  48 00 00 54 */	b lbl_80D5A65C
lbl_80D5A60C:
/* 80D5A60C  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha
/* 80D5A610  8B 83 0D 64 */	lbz r28, struct_80450D64+0x0@l(r3)
/* 80D5A614  7F 9C 07 74 */	extsb r28, r28
/* 80D5A618  38 60 00 00 */	li r3, 0
/* 80D5A61C  4B 2D 23 60 */	b getLayerNo__14dComIfG_play_cFi
/* 80D5A620  7C 66 07 74 */	extsb r6, r3
/* 80D5A624  38 00 00 01 */	li r0, 1
/* 80D5A628  90 01 00 08 */	stw r0, 8(r1)
/* 80D5A62C  38 00 00 00 */	li r0, 0
/* 80D5A630  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D5A634  3C 60 80 D6 */	lis r3, stringBase0@ha
/* 80D5A638  38 63 A7 08 */	addi r3, r3, stringBase0@l
/* 80D5A63C  88 9D 05 F8 */	lbz r4, 0x5f8(r29)
/* 80D5A640  7F 85 E3 78 */	mr r5, r28
/* 80D5A644  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80D5A648  38 E0 00 0A */	li r7, 0xa
/* 80D5A64C  39 00 00 01 */	li r8, 1
/* 80D5A650  39 20 00 00 */	li r9, 0
/* 80D5A654  39 40 00 00 */	li r10, 0
/* 80D5A658  4B 2D 2C A4 */	b dComIfGp_setNextStage__FPCcsScScfUliScsii
lbl_80D5A65C:
/* 80D5A65C  38 00 00 0A */	li r0, 0xa
/* 80D5A660  98 1D 05 F6 */	stb r0, 0x5f6(r29)
lbl_80D5A664:
/* 80D5A664  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80D5A668  4B 60 7B BC */	b _restgpr_28
/* 80D5A66C  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80D5A670  7C 08 03 A6 */	mtlr r0
/* 80D5A674  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80D5A678  4E 80 00 20 */	blr 
