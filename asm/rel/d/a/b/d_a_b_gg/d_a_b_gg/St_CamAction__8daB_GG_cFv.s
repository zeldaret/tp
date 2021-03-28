lbl_805E029C:
/* 805E029C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 805E02A0  7C 08 02 A6 */	mflr r0
/* 805E02A4  90 01 00 84 */	stw r0, 0x84(r1)
/* 805E02A8  39 61 00 80 */	addi r11, r1, 0x80
/* 805E02AC  4B D8 1F 28 */	b _savegpr_27
/* 805E02B0  7C 7F 1B 78 */	mr r31, r3
/* 805E02B4  3C 80 80 5F */	lis r4, lit_1109@ha
/* 805E02B8  3B 84 D6 C0 */	addi r28, r4, lit_1109@l
/* 805E02BC  3C 80 80 5F */	lis r4, lit_3911@ha
/* 805E02C0  3B C4 D0 60 */	addi r30, r4, lit_3911@l
/* 805E02C4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 805E02C8  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l
/* 805E02CC  83 7D 5D AC */	lwz r27, 0x5dac(r29)
/* 805E02D0  80 9C 00 6C */	lwz r4, 0x6c(r28)
/* 805E02D4  C0 04 00 00 */	lfs f0, 0(r4)
/* 805E02D8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805E02DC  C0 64 00 04 */	lfs f3, 4(r4)
/* 805E02E0  D0 61 00 58 */	stfs f3, 0x58(r1)
/* 805E02E4  C0 04 00 08 */	lfs f0, 8(r4)
/* 805E02E8  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 805E02EC  C0 5E 00 04 */	lfs f2, 4(r30)
/* 805E02F0  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 805E02F4  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 805E02F8  C0 3E 01 88 */	lfs f1, 0x188(r30)
/* 805E02FC  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 805E0300  88 C3 05 CB */	lbz r6, 0x5cb(r3)
/* 805E0304  28 06 00 14 */	cmplwi r6, 0x14
/* 805E0308  41 81 0B D4 */	bgt lbl_805E0EDC
/* 805E030C  3C A0 80 5F */	lis r5, lit_5037@ha
/* 805E0310  38 A5 D4 28 */	addi r5, r5, lit_5037@l
/* 805E0314  54 C0 10 3A */	slwi r0, r6, 2
/* 805E0318  7C 05 00 2E */	lwzx r0, r5, r0
/* 805E031C  7C 09 03 A6 */	mtctr r0
/* 805E0320  4E 80 04 20 */	bctr 
lbl_805E0324:
/* 805E0324  C0 24 00 04 */	lfs f1, 4(r4)
/* 805E0328  C0 1E 01 8C */	lfs f0, 0x18c(r30)
/* 805E032C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E0330  40 80 0B AC */	bge lbl_805E0EDC
/* 805E0334  38 00 00 00 */	li r0, 0
/* 805E0338  B0 1F 05 D8 */	sth r0, 0x5d8(r31)
/* 805E033C  4B FF F9 1D */	bl CameraSet__8daB_GG_cFv
/* 805E0340  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805E0344  41 82 0B 98 */	beq lbl_805E0EDC
/* 805E0348  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805E034C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805E0350  80 63 00 00 */	lwz r3, 0(r3)
/* 805E0354  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805E0358  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000084@ha */
/* 805E035C  38 84 00 84 */	addi r4, r4, 0x0084 /* 0x01000084@l */
/* 805E0360  4B CC F1 3C */	b subBgmStart__8Z2SeqMgrFUl
/* 805E0364  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704B2@ha */
/* 805E0368  38 03 04 B2 */	addi r0, r3, 0x04B2 /* 0x000704B2@l */
/* 805E036C  90 01 00 08 */	stw r0, 8(r1)
/* 805E0370  38 7F 0E 4C */	addi r3, r31, 0xe4c
/* 805E0374  38 81 00 08 */	addi r4, r1, 8
/* 805E0378  38 A0 FF FF */	li r5, -1
/* 805E037C  81 9F 0E 4C */	lwz r12, 0xe4c(r31)
/* 805E0380  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805E0384  7D 89 03 A6 */	mtctr r12
/* 805E0388  4E 80 04 21 */	bctrl 
/* 805E038C  38 00 00 0C */	li r0, 0xc
/* 805E0390  98 1F 05 CB */	stb r0, 0x5cb(r31)
/* 805E0394  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805E0398  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 805E039C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 805E03A0  C0 1E 01 90 */	lfs f0, 0x190(r30)
/* 805E03A4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805E03A8  38 61 00 3C */	addi r3, r1, 0x3c
/* 805E03AC  38 81 00 48 */	addi r4, r1, 0x48
/* 805E03B0  4B C9 08 54 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 805E03B4  7C 65 1B 78 */	mr r5, r3
/* 805E03B8  7F 63 DB 78 */	mr r3, r27
/* 805E03BC  38 81 00 3C */	addi r4, r1, 0x3c
/* 805E03C0  38 C0 00 00 */	li r6, 0
/* 805E03C4  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 805E03C8  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 805E03CC  7D 89 03 A6 */	mtctr r12
/* 805E03D0  4E 80 04 21 */	bctrl 
/* 805E03D4  38 00 00 03 */	li r0, 3
/* 805E03D8  B0 1B 06 04 */	sth r0, 0x604(r27)
/* 805E03DC  38 60 00 00 */	li r3, 0
/* 805E03E0  90 7B 06 0C */	stw r3, 0x60c(r27)
/* 805E03E4  38 00 00 01 */	li r0, 1
/* 805E03E8  90 1B 06 14 */	stw r0, 0x614(r27)
/* 805E03EC  90 7B 06 0C */	stw r3, 0x60c(r27)
/* 805E03F0  90 7B 06 10 */	stw r3, 0x610(r27)
/* 805E03F4  B0 7B 06 0A */	sth r3, 0x60a(r27)
/* 805E03F8  48 00 0A E4 */	b lbl_805E0EDC
lbl_805E03FC:
/* 805E03FC  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 805E0400  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805E0404  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 805E0408  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 805E040C  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 805E0410  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 805E0414  C0 1E 00 00 */	lfs f0, 0(r30)
/* 805E0418  EC 01 00 2A */	fadds f0, f1, f0
/* 805E041C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805E0420  80 7D 5D B4 */	lwz r3, 0x5db4(r29)
/* 805E0424  80 03 05 74 */	lwz r0, 0x574(r3)
/* 805E0428  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 805E042C  41 82 00 50 */	beq lbl_805E047C
/* 805E0430  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 805E0434  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 805E0438  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 805E043C  38 80 00 06 */	li r4, 6
/* 805E0440  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805E0444  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 805E0448  7D 89 03 A6 */	mtctr r12
/* 805E044C  4E 80 04 21 */	bctrl 
/* 805E0450  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 805E0454  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 805E0458  80 84 00 00 */	lwz r4, 0(r4)
/* 805E045C  4B D6 60 54 */	b PSMTXCopy
/* 805E0460  38 61 00 54 */	addi r3, r1, 0x54
/* 805E0464  7C 64 1B 78 */	mr r4, r3
/* 805E0468  4B C9 0A 84 */	b MtxPosition__FP4cXyzP4cXyz
/* 805E046C  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 805E0470  C0 1E 01 40 */	lfs f0, 0x140(r30)
/* 805E0474  EC 01 00 2A */	fadds f0, f1, f0
/* 805E0478  D0 01 00 58 */	stfs f0, 0x58(r1)
lbl_805E047C:
/* 805E047C  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 805E0480  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805E0484  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 805E0488  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805E048C  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 805E0490  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805E0494  38 61 00 54 */	addi r3, r1, 0x54
/* 805E0498  38 81 00 48 */	addi r4, r1, 0x48
/* 805E049C  4B C9 07 68 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 805E04A0  38 03 20 00 */	addi r0, r3, 0x2000
/* 805E04A4  7C 05 07 34 */	extsh r5, r0
/* 805E04A8  7F E3 FB 78 */	mr r3, r31
/* 805E04AC  38 81 00 30 */	addi r4, r1, 0x30
/* 805E04B0  C0 3E 01 68 */	lfs f1, 0x168(r30)
/* 805E04B4  C0 5E 00 04 */	lfs f2, 4(r30)
/* 805E04B8  4B FF F9 45 */	bl SetStopCam__8daB_GG_cF4cXyzffs
/* 805E04BC  38 61 00 54 */	addi r3, r1, 0x54
/* 805E04C0  38 81 00 48 */	addi r4, r1, 0x48
/* 805E04C4  4B C9 07 40 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 805E04C8  38 03 20 00 */	addi r0, r3, 0x2000
/* 805E04CC  B0 1F 05 BA */	sth r0, 0x5ba(r31)
/* 805E04D0  38 00 00 1E */	li r0, 0x1e
/* 805E04D4  B0 1F 05 D8 */	sth r0, 0x5d8(r31)
/* 805E04D8  38 00 00 01 */	li r0, 1
/* 805E04DC  98 1F 05 CB */	stb r0, 0x5cb(r31)
/* 805E04E0  38 7C 00 4C */	addi r3, r28, 0x4c
/* 805E04E4  A8 03 00 16 */	lha r0, 0x16(r3)
/* 805E04E8  B0 1F 05 60 */	sth r0, 0x560(r31)
/* 805E04EC  A8 03 00 16 */	lha r0, 0x16(r3)
/* 805E04F0  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 805E04F4  C0 1E 01 68 */	lfs f0, 0x168(r30)
/* 805E04F8  D0 1F 06 48 */	stfs f0, 0x648(r31)
/* 805E04FC  48 00 09 E0 */	b lbl_805E0EDC
lbl_805E0500:
/* 805E0500  A8 1F 05 D8 */	lha r0, 0x5d8(r31)
/* 805E0504  2C 00 00 00 */	cmpwi r0, 0
/* 805E0508  40 82 09 D4 */	bne lbl_805E0EDC
/* 805E050C  38 00 00 14 */	li r0, 0x14
/* 805E0510  90 1B 06 14 */	stw r0, 0x614(r27)
/* 805E0514  38 00 00 00 */	li r0, 0
/* 805E0518  90 1B 06 0C */	stw r0, 0x60c(r27)
/* 805E051C  90 1B 06 10 */	stw r0, 0x610(r27)
/* 805E0520  B0 1B 06 0A */	sth r0, 0x60a(r27)
/* 805E0524  80 7C 00 6C */	lwz r3, 0x6c(r28)
/* 805E0528  38 81 00 48 */	addi r4, r1, 0x48
/* 805E052C  4B C9 06 D8 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 805E0530  B0 7B 06 06 */	sth r3, 0x606(r27)
/* 805E0534  38 00 00 A0 */	li r0, 0xa0
/* 805E0538  B0 1F 05 D8 */	sth r0, 0x5d8(r31)
/* 805E053C  88 7F 05 CB */	lbz r3, 0x5cb(r31)
/* 805E0540  38 03 00 01 */	addi r0, r3, 1
/* 805E0544  98 1F 05 CB */	stb r0, 0x5cb(r31)
/* 805E0548  C0 1E 01 68 */	lfs f0, 0x168(r30)
/* 805E054C  D0 1F 06 48 */	stfs f0, 0x648(r31)
/* 805E0550  48 00 09 8C */	b lbl_805E0EDC
lbl_805E0554:
/* 805E0554  C0 1E 00 00 */	lfs f0, 0(r30)
/* 805E0558  EC 23 00 2A */	fadds f1, f3, f0
/* 805E055C  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 805E0560  A8 1F 05 D8 */	lha r0, 0x5d8(r31)
/* 805E0564  2C 00 00 00 */	cmpwi r0, 0
/* 805E0568  40 82 00 38 */	bne lbl_805E05A0
/* 805E056C  C0 1E 01 40 */	lfs f0, 0x140(r30)
/* 805E0570  EC 01 00 2A */	fadds f0, f1, f0
/* 805E0574  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805E0578  38 00 00 01 */	li r0, 1
/* 805E057C  90 1B 06 14 */	stw r0, 0x614(r27)
/* 805E0580  38 00 00 00 */	li r0, 0
/* 805E0584  90 1B 06 0C */	stw r0, 0x60c(r27)
/* 805E0588  90 1B 06 10 */	stw r0, 0x610(r27)
/* 805E058C  B0 1B 06 0A */	sth r0, 0x60a(r27)
/* 805E0590  88 7F 05 CB */	lbz r3, 0x5cb(r31)
/* 805E0594  38 03 00 01 */	addi r0, r3, 1
/* 805E0598  98 1F 05 CB */	stb r0, 0x5cb(r31)
/* 805E059C  48 00 09 40 */	b lbl_805E0EDC
lbl_805E05A0:
/* 805E05A0  A8 7F 05 BA */	lha r3, 0x5ba(r31)
/* 805E05A4  38 03 FF E0 */	addi r0, r3, -32
/* 805E05A8  B0 1F 05 BA */	sth r0, 0x5ba(r31)
/* 805E05AC  80 7D 5D B4 */	lwz r3, 0x5db4(r29)
/* 805E05B0  80 03 05 74 */	lwz r0, 0x574(r3)
/* 805E05B4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 805E05B8  41 82 00 0C */	beq lbl_805E05C4
/* 805E05BC  C0 3E 01 94 */	lfs f1, 0x194(r30)
/* 805E05C0  48 00 00 08 */	b lbl_805E05C8
lbl_805E05C4:
/* 805E05C4  C0 3E 01 98 */	lfs f1, 0x198(r30)
lbl_805E05C8:
/* 805E05C8  38 7F 06 48 */	addi r3, r31, 0x648
/* 805E05CC  C0 5E 01 9C */	lfs f2, 0x19c(r30)
/* 805E05D0  4B C9 01 70 */	b cLib_chaseF__FPfff
/* 805E05D4  80 7D 5D B4 */	lwz r3, 0x5db4(r29)
/* 805E05D8  80 03 05 74 */	lwz r0, 0x574(r3)
/* 805E05DC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 805E05E0  40 82 00 10 */	bne lbl_805E05F0
/* 805E05E4  C0 3E 01 A0 */	lfs f1, 0x1a0(r30)
/* 805E05E8  C0 5E 01 58 */	lfs f2, 0x158(r30)
/* 805E05EC  48 00 00 0C */	b lbl_805E05F8
lbl_805E05F0:
/* 805E05F0  C0 3E 01 A4 */	lfs f1, 0x1a4(r30)
/* 805E05F4  C0 5E 01 A8 */	lfs f2, 0x1a8(r30)
lbl_805E05F8:
/* 805E05F8  38 7F 06 4C */	addi r3, r31, 0x64c
/* 805E05FC  4B C9 01 44 */	b cLib_chaseF__FPfff
/* 805E0600  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 805E0604  C0 1F 06 4C */	lfs f0, 0x64c(r31)
/* 805E0608  EC 01 00 2A */	fadds f0, f1, f0
/* 805E060C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805E0610  80 7D 5D B4 */	lwz r3, 0x5db4(r29)
/* 805E0614  80 03 05 74 */	lwz r0, 0x574(r3)
/* 805E0618  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 805E061C  40 82 00 10 */	bne lbl_805E062C
/* 805E0620  C0 3E 01 AC */	lfs f1, 0x1ac(r30)
/* 805E0624  C0 5E 01 58 */	lfs f2, 0x158(r30)
/* 805E0628  48 00 00 0C */	b lbl_805E0634
lbl_805E062C:
/* 805E062C  C0 3E 01 B0 */	lfs f1, 0x1b0(r30)
/* 805E0630  C0 5E 01 B4 */	lfs f2, 0x1b4(r30)
lbl_805E0634:
/* 805E0634  38 7F 06 50 */	addi r3, r31, 0x650
/* 805E0638  4B C9 01 08 */	b cLib_chaseF__FPfff
/* 805E063C  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 805E0640  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805E0644  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 805E0648  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805E064C  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 805E0650  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805E0654  7F E3 FB 78 */	mr r3, r31
/* 805E0658  38 81 00 24 */	addi r4, r1, 0x24
/* 805E065C  C0 3F 06 48 */	lfs f1, 0x648(r31)
/* 805E0660  C0 5F 06 50 */	lfs f2, 0x650(r31)
/* 805E0664  A8 BF 05 BA */	lha r5, 0x5ba(r31)
/* 805E0668  C0 7E 01 B8 */	lfs f3, 0x1b8(r30)
/* 805E066C  C0 9E 01 40 */	lfs f4, 0x140(r30)
/* 805E0670  4B FF F8 DD */	bl SetMoveCam__8daB_GG_cF4cXyzffsff
/* 805E0674  48 00 08 68 */	b lbl_805E0EDC
lbl_805E0678:
/* 805E0678  A8 1F 05 D8 */	lha r0, 0x5d8(r31)
/* 805E067C  2C 00 00 00 */	cmpwi r0, 0
/* 805E0680  40 82 08 5C */	bne lbl_805E0EDC
/* 805E0684  38 06 00 01 */	addi r0, r6, 1
/* 805E0688  98 1F 05 CB */	stb r0, 0x5cb(r31)
/* 805E068C  38 00 00 23 */	li r0, 0x23
/* 805E0690  B0 1F 05 D8 */	sth r0, 0x5d8(r31)
/* 805E0694  C0 1E 01 BC */	lfs f0, 0x1bc(r30)
/* 805E0698  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805E069C  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 805E06A0  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 805E06A4  80 7C 00 6C */	lwz r3, 0x6c(r28)
/* 805E06A8  38 81 00 48 */	addi r4, r1, 0x48
/* 805E06AC  4B C9 05 58 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 805E06B0  7C 65 1B 78 */	mr r5, r3
/* 805E06B4  38 7F 06 0C */	addi r3, r31, 0x60c
/* 805E06B8  7C 64 1B 78 */	mr r4, r3
/* 805E06BC  38 C1 00 54 */	addi r6, r1, 0x54
/* 805E06C0  4B C9 07 00 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 805E06C4  C0 1E 01 C0 */	lfs f0, 0x1c0(r30)
/* 805E06C8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805E06CC  C0 1E 01 C4 */	lfs f0, 0x1c4(r30)
/* 805E06D0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805E06D4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805E06D8  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 805E06DC  80 7C 00 6C */	lwz r3, 0x6c(r28)
/* 805E06E0  38 81 00 48 */	addi r4, r1, 0x48
/* 805E06E4  4B C9 05 20 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 805E06E8  7C 65 1B 78 */	mr r5, r3
/* 805E06EC  38 7F 06 18 */	addi r3, r31, 0x618
/* 805E06F0  7C 64 1B 78 */	mr r4, r3
/* 805E06F4  38 C1 00 54 */	addi r6, r1, 0x54
/* 805E06F8  4B C9 06 C8 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 805E06FC  38 00 00 00 */	li r0, 0
/* 805E0700  98 1F 05 C7 */	stb r0, 0x5c7(r31)
/* 805E0704  48 00 07 D8 */	b lbl_805E0EDC
lbl_805E0708:
/* 805E0708  A8 1F 05 D8 */	lha r0, 0x5d8(r31)
/* 805E070C  2C 00 00 00 */	cmpwi r0, 0
/* 805E0710  40 82 00 EC */	bne lbl_805E07FC
/* 805E0714  38 06 00 01 */	addi r0, r6, 1
/* 805E0718  98 1F 05 CB */	stb r0, 0x5cb(r31)
/* 805E071C  80 7D 5D B4 */	lwz r3, 0x5db4(r29)
/* 805E0720  80 03 05 74 */	lwz r0, 0x574(r3)
/* 805E0724  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 805E0728  40 82 00 1C */	bne lbl_805E0744
/* 805E072C  C0 1E 01 C8 */	lfs f0, 0x1c8(r30)
/* 805E0730  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805E0734  C0 1E 01 98 */	lfs f0, 0x198(r30)
/* 805E0738  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805E073C  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 805E0740  48 00 00 18 */	b lbl_805E0758
lbl_805E0744:
/* 805E0744  C0 1E 01 C8 */	lfs f0, 0x1c8(r30)
/* 805E0748  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805E074C  C0 1E 01 98 */	lfs f0, 0x198(r30)
/* 805E0750  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805E0754  D0 21 00 5C */	stfs f1, 0x5c(r1)
lbl_805E0758:
/* 805E0758  80 7C 00 6C */	lwz r3, 0x6c(r28)
/* 805E075C  38 81 00 48 */	addi r4, r1, 0x48
/* 805E0760  4B C9 04 A4 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 805E0764  7C 65 1B 78 */	mr r5, r3
/* 805E0768  38 7F 06 0C */	addi r3, r31, 0x60c
/* 805E076C  7C 64 1B 78 */	mr r4, r3
/* 805E0770  38 C1 00 54 */	addi r6, r1, 0x54
/* 805E0774  4B C9 06 4C */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 805E0778  80 7D 5D B4 */	lwz r3, 0x5db4(r29)
/* 805E077C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 805E0780  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 805E0784  40 82 00 20 */	bne lbl_805E07A4
/* 805E0788  C0 1E 01 CC */	lfs f0, 0x1cc(r30)
/* 805E078C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805E0790  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805E0794  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805E0798  C0 1E 01 D0 */	lfs f0, 0x1d0(r30)
/* 805E079C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 805E07A0  48 00 00 1C */	b lbl_805E07BC
lbl_805E07A4:
/* 805E07A4  C0 1E 01 CC */	lfs f0, 0x1cc(r30)
/* 805E07A8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805E07AC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805E07B0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805E07B4  C0 1E 01 D0 */	lfs f0, 0x1d0(r30)
/* 805E07B8  D0 01 00 5C */	stfs f0, 0x5c(r1)
lbl_805E07BC:
/* 805E07BC  80 7C 00 6C */	lwz r3, 0x6c(r28)
/* 805E07C0  38 81 00 48 */	addi r4, r1, 0x48
/* 805E07C4  4B C9 04 40 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 805E07C8  7C 65 1B 78 */	mr r5, r3
/* 805E07CC  38 7F 06 18 */	addi r3, r31, 0x618
/* 805E07D0  7C 64 1B 78 */	mr r4, r3
/* 805E07D4  38 C1 00 54 */	addi r6, r1, 0x54
/* 805E07D8  4B C9 05 E8 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 805E07DC  38 00 00 32 */	li r0, 0x32
/* 805E07E0  B0 1F 05 D8 */	sth r0, 0x5d8(r31)
/* 805E07E4  38 00 00 01 */	li r0, 1
/* 805E07E8  98 1F 05 C7 */	stb r0, 0x5c7(r31)
/* 805E07EC  38 00 D0 00 */	li r0, -12288
/* 805E07F0  B0 1B 06 06 */	sth r0, 0x606(r27)
/* 805E07F4  38 00 00 00 */	li r0, 0
/* 805E07F8  B0 1F 05 DA */	sth r0, 0x5da(r31)
lbl_805E07FC:
/* 805E07FC  C0 5E 01 64 */	lfs f2, 0x164(r30)
/* 805E0800  A8 1F 05 D8 */	lha r0, 0x5d8(r31)
/* 805E0804  C8 3E 01 48 */	lfd f1, 0x148(r30)
/* 805E0808  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805E080C  90 01 00 64 */	stw r0, 0x64(r1)
/* 805E0810  3C 00 43 30 */	lis r0, 0x4330
/* 805E0814  90 01 00 60 */	stw r0, 0x60(r1)
/* 805E0818  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 805E081C  EC 00 08 28 */	fsubs f0, f0, f1
/* 805E0820  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 805E0824  40 82 00 28 */	bne lbl_805E084C
/* 805E0828  38 00 00 17 */	li r0, 0x17
/* 805E082C  90 1B 06 14 */	stw r0, 0x614(r27)
/* 805E0830  38 00 00 01 */	li r0, 1
/* 805E0834  90 1B 06 0C */	stw r0, 0x60c(r27)
/* 805E0838  38 00 00 00 */	li r0, 0
/* 805E083C  90 1B 06 10 */	stw r0, 0x610(r27)
/* 805E0840  B0 1B 06 0A */	sth r0, 0x60a(r27)
/* 805E0844  38 00 30 00 */	li r0, 0x3000
/* 805E0848  B0 1B 06 06 */	sth r0, 0x606(r27)
lbl_805E084C:
/* 805E084C  C0 5E 01 D4 */	lfs f2, 0x1d4(r30)
/* 805E0850  A8 1F 05 D8 */	lha r0, 0x5d8(r31)
/* 805E0854  C8 3E 01 48 */	lfd f1, 0x148(r30)
/* 805E0858  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805E085C  90 01 00 64 */	stw r0, 0x64(r1)
/* 805E0860  3C 00 43 30 */	lis r0, 0x4330
/* 805E0864  90 01 00 60 */	stw r0, 0x60(r1)
/* 805E0868  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 805E086C  EC 00 08 28 */	fsubs f0, f0, f1
/* 805E0870  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 805E0874  40 82 00 38 */	bne lbl_805E08AC
/* 805E0878  C0 1E 01 AC */	lfs f0, 0x1ac(r30)
/* 805E087C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805E0880  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805E0884  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805E0888  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 805E088C  80 7C 00 6C */	lwz r3, 0x6c(r28)
/* 805E0890  38 81 00 48 */	addi r4, r1, 0x48
/* 805E0894  4B C9 03 70 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 805E0898  7C 65 1B 78 */	mr r5, r3
/* 805E089C  38 7F 06 0C */	addi r3, r31, 0x60c
/* 805E08A0  7C 64 1B 78 */	mr r4, r3
/* 805E08A4  38 C1 00 54 */	addi r6, r1, 0x54
/* 805E08A8  4B C9 05 18 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
lbl_805E08AC:
/* 805E08AC  7F E3 FB 78 */	mr r3, r31
/* 805E08B0  C0 3E 01 D8 */	lfs f1, 0x1d8(r30)
/* 805E08B4  C0 5E 01 A4 */	lfs f2, 0x1a4(r30)
/* 805E08B8  4B FF F8 1D */	bl SetMoveCam1__8daB_GG_cFff
/* 805E08BC  38 7C 00 FC */	addi r3, r28, 0xfc
/* 805E08C0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805E08C4  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 805E08C8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805E08CC  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 805E08D0  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 805E08D4  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 805E08D8  C0 3F 05 58 */	lfs f1, 0x558(r31)
/* 805E08DC  C0 1E 01 DC */	lfs f0, 0x1dc(r30)
/* 805E08E0  EC 01 00 2A */	fadds f0, f1, f0
/* 805E08E4  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 805E08E8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805E08EC  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 805E08F0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805E08F4  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 805E08F8  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 805E08FC  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 805E0900  48 00 05 DC */	b lbl_805E0EDC
lbl_805E0904:
/* 805E0904  C0 3E 01 B8 */	lfs f1, 0x1b8(r30)
/* 805E0908  C0 5E 01 40 */	lfs f2, 0x140(r30)
/* 805E090C  4B FF F7 C9 */	bl SetMoveCam1__8daB_GG_cFff
/* 805E0910  A8 1F 05 D8 */	lha r0, 0x5d8(r31)
/* 805E0914  2C 00 00 2D */	cmpwi r0, 0x2d
/* 805E0918  40 80 00 4C */	bge lbl_805E0964
/* 805E091C  C0 1C 00 FC */	lfs f0, 0xfc(r28)
/* 805E0920  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 805E0924  38 7C 00 FC */	addi r3, r28, 0xfc
/* 805E0928  C0 03 00 04 */	lfs f0, 4(r3)
/* 805E092C  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 805E0930  C0 03 00 08 */	lfs f0, 8(r3)
/* 805E0934  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 805E0938  C0 3F 05 58 */	lfs f1, 0x558(r31)
/* 805E093C  C0 1E 01 DC */	lfs f0, 0x1dc(r30)
/* 805E0940  EC 01 00 2A */	fadds f0, f1, f0
/* 805E0944  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 805E0948  C0 1C 00 FC */	lfs f0, 0xfc(r28)
/* 805E094C  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 805E0950  C0 03 00 04 */	lfs f0, 4(r3)
/* 805E0954  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 805E0958  C0 03 00 08 */	lfs f0, 8(r3)
/* 805E095C  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 805E0960  48 00 00 48 */	b lbl_805E09A8
lbl_805E0964:
/* 805E0964  38 7C 00 FC */	addi r3, r28, 0xfc
/* 805E0968  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805E096C  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 805E0970  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805E0974  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 805E0978  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 805E097C  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 805E0980  C0 3F 05 58 */	lfs f1, 0x558(r31)
/* 805E0984  C0 1E 01 DC */	lfs f0, 0x1dc(r30)
/* 805E0988  EC 01 00 2A */	fadds f0, f1, f0
/* 805E098C  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 805E0990  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805E0994  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 805E0998  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805E099C  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 805E09A0  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 805E09A4  D0 1F 05 40 */	stfs f0, 0x540(r31)
lbl_805E09A8:
/* 805E09A8  A8 1F 05 D8 */	lha r0, 0x5d8(r31)
/* 805E09AC  2C 00 00 2D */	cmpwi r0, 0x2d
/* 805E09B0  40 82 00 28 */	bne lbl_805E09D8
/* 805E09B4  38 00 00 19 */	li r0, 0x19
/* 805E09B8  90 1B 06 14 */	stw r0, 0x614(r27)
/* 805E09BC  38 00 00 01 */	li r0, 1
/* 805E09C0  90 1B 06 0C */	stw r0, 0x60c(r27)
/* 805E09C4  38 00 00 00 */	li r0, 0
/* 805E09C8  90 1B 06 10 */	stw r0, 0x610(r27)
/* 805E09CC  B0 1B 06 0A */	sth r0, 0x60a(r27)
/* 805E09D0  38 00 30 00 */	li r0, 0x3000
/* 805E09D4  B0 1B 06 06 */	sth r0, 0x606(r27)
lbl_805E09D8:
/* 805E09D8  C0 5E 01 A4 */	lfs f2, 0x1a4(r30)
/* 805E09DC  A8 1F 05 D8 */	lha r0, 0x5d8(r31)
/* 805E09E0  C8 3E 01 48 */	lfd f1, 0x148(r30)
/* 805E09E4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805E09E8  90 01 00 64 */	stw r0, 0x64(r1)
/* 805E09EC  3C 00 43 30 */	lis r0, 0x4330
/* 805E09F0  90 01 00 60 */	stw r0, 0x60(r1)
/* 805E09F4  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 805E09F8  EC 00 08 28 */	fsubs f0, f0, f1
/* 805E09FC  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 805E0A00  40 82 00 38 */	bne lbl_805E0A38
/* 805E0A04  C0 1E 01 E0 */	lfs f0, 0x1e0(r30)
/* 805E0A08  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805E0A0C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805E0A10  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805E0A14  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 805E0A18  80 7C 00 6C */	lwz r3, 0x6c(r28)
/* 805E0A1C  38 81 00 48 */	addi r4, r1, 0x48
/* 805E0A20  4B C9 01 E4 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 805E0A24  7C 65 1B 78 */	mr r5, r3
/* 805E0A28  38 7F 06 0C */	addi r3, r31, 0x60c
/* 805E0A2C  7C 64 1B 78 */	mr r4, r3
/* 805E0A30  38 C1 00 54 */	addi r6, r1, 0x54
/* 805E0A34  4B C9 03 8C */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
lbl_805E0A38:
/* 805E0A38  C0 5E 00 04 */	lfs f2, 4(r30)
/* 805E0A3C  A8 1F 05 D8 */	lha r0, 0x5d8(r31)
/* 805E0A40  C8 3E 01 48 */	lfd f1, 0x148(r30)
/* 805E0A44  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805E0A48  90 01 00 64 */	stw r0, 0x64(r1)
/* 805E0A4C  3C 00 43 30 */	lis r0, 0x4330
/* 805E0A50  90 01 00 60 */	stw r0, 0x60(r1)
/* 805E0A54  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 805E0A58  EC 00 08 28 */	fsubs f0, f0, f1
/* 805E0A5C  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 805E0A60  40 82 04 7C */	bne lbl_805E0EDC
/* 805E0A64  38 00 00 14 */	li r0, 0x14
/* 805E0A68  98 1F 05 CB */	stb r0, 0x5cb(r31)
/* 805E0A6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805E0A70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805E0A74  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 805E0A78  80 03 05 74 */	lwz r0, 0x574(r3)
/* 805E0A7C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 805E0A80  40 82 00 1C */	bne lbl_805E0A9C
/* 805E0A84  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 805E0A88  C0 1E 01 E4 */	lfs f0, 0x1e4(r30)
/* 805E0A8C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805E0A90  C0 1E 00 00 */	lfs f0, 0(r30)
/* 805E0A94  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 805E0A98  48 00 00 14 */	b lbl_805E0AAC
lbl_805E0A9C:
/* 805E0A9C  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 805E0AA0  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 805E0AA4  C0 1E 00 00 */	lfs f0, 0(r30)
/* 805E0AA8  D0 01 00 5C */	stfs f0, 0x5c(r1)
lbl_805E0AAC:
/* 805E0AAC  80 7C 00 6C */	lwz r3, 0x6c(r28)
/* 805E0AB0  38 81 00 48 */	addi r4, r1, 0x48
/* 805E0AB4  4B C9 01 50 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 805E0AB8  7C 65 1B 78 */	mr r5, r3
/* 805E0ABC  38 7F 06 18 */	addi r3, r31, 0x618
/* 805E0AC0  7C 64 1B 78 */	mr r4, r3
/* 805E0AC4  38 C1 00 54 */	addi r6, r1, 0x54
/* 805E0AC8  4B C9 02 F8 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 805E0ACC  80 7C 00 6C */	lwz r3, 0x6c(r28)
/* 805E0AD0  C0 03 00 00 */	lfs f0, 0(r3)
/* 805E0AD4  D0 1F 06 0C */	stfs f0, 0x60c(r31)
/* 805E0AD8  C0 3E 01 40 */	lfs f1, 0x140(r30)
/* 805E0ADC  80 7C 00 6C */	lwz r3, 0x6c(r28)
/* 805E0AE0  C0 03 00 04 */	lfs f0, 4(r3)
/* 805E0AE4  EC 01 00 2A */	fadds f0, f1, f0
/* 805E0AE8  D0 1F 06 10 */	stfs f0, 0x610(r31)
/* 805E0AEC  80 7C 00 6C */	lwz r3, 0x6c(r28)
/* 805E0AF0  C0 03 00 08 */	lfs f0, 8(r3)
/* 805E0AF4  D0 1F 06 14 */	stfs f0, 0x614(r31)
/* 805E0AF8  38 00 00 46 */	li r0, 0x46
/* 805E0AFC  B0 1F 05 D8 */	sth r0, 0x5d8(r31)
/* 805E0B00  48 00 03 DC */	b lbl_805E0EDC
lbl_805E0B04:
/* 805E0B04  C0 7F 04 D0 */	lfs f3, 0x4d0(r31)
/* 805E0B08  D0 61 00 54 */	stfs f3, 0x54(r1)
/* 805E0B0C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 805E0B10  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 805E0B14  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 805E0B18  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 805E0B1C  C0 1E 01 E8 */	lfs f0, 0x1e8(r30)
/* 805E0B20  EC 02 00 2A */	fadds f0, f2, f0
/* 805E0B24  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805E0B28  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 805E0B2C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805E0B30  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 805E0B34  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 805E0B38  4B C9 00 CC */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 805E0B3C  7C 65 1B 78 */	mr r5, r3
/* 805E0B40  7F E3 FB 78 */	mr r3, r31
/* 805E0B44  38 81 00 18 */	addi r4, r1, 0x18
/* 805E0B48  C0 3E 01 E8 */	lfs f1, 0x1e8(r30)
/* 805E0B4C  C0 5E 01 EC */	lfs f2, 0x1ec(r30)
/* 805E0B50  C0 7E 01 D8 */	lfs f3, 0x1d8(r30)
/* 805E0B54  C0 9E 00 08 */	lfs f4, 8(r30)
/* 805E0B58  4B FF F3 F5 */	bl SetMoveCam__8daB_GG_cF4cXyzffsff
/* 805E0B5C  48 00 03 80 */	b lbl_805E0EDC
lbl_805E0B60:
/* 805E0B60  C0 7F 04 D0 */	lfs f3, 0x4d0(r31)
/* 805E0B64  D0 61 00 54 */	stfs f3, 0x54(r1)
/* 805E0B68  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 805E0B6C  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 805E0B70  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 805E0B74  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 805E0B78  C0 1E 01 E8 */	lfs f0, 0x1e8(r30)
/* 805E0B7C  EC 02 00 2A */	fadds f0, f2, f0
/* 805E0B80  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805E0B84  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 805E0B88  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805E0B8C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 805E0B90  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 805E0B94  4B C9 00 70 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 805E0B98  38 03 FB 00 */	addi r0, r3, -1280
/* 805E0B9C  7C 05 07 34 */	extsh r5, r0
/* 805E0BA0  7F E3 FB 78 */	mr r3, r31
/* 805E0BA4  38 81 00 0C */	addi r4, r1, 0xc
/* 805E0BA8  C0 3E 01 DC */	lfs f1, 0x1dc(r30)
/* 805E0BAC  C0 5E 01 EC */	lfs f2, 0x1ec(r30)
/* 805E0BB0  C0 7E 01 D8 */	lfs f3, 0x1d8(r30)
/* 805E0BB4  C0 9E 00 08 */	lfs f4, 8(r30)
/* 805E0BB8  4B FF F3 95 */	bl SetMoveCam__8daB_GG_cF4cXyzffsff
/* 805E0BBC  48 00 03 20 */	b lbl_805E0EDC
lbl_805E0BC0:
/* 805E0BC0  80 7D 5D B4 */	lwz r3, 0x5db4(r29)
/* 805E0BC4  80 03 05 74 */	lwz r0, 0x574(r3)
/* 805E0BC8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 805E0BCC  40 82 00 98 */	bne lbl_805E0C64
/* 805E0BD0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805E0BD4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 805E0BD8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805E0BDC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 805E0BE0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805E0BE4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 805E0BE8  38 61 00 48 */	addi r3, r1, 0x48
/* 805E0BEC  7C 65 1B 78 */	mr r5, r3
/* 805E0BF0  4B D6 64 A0 */	b PSVECAdd
/* 805E0BF4  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805E0BF8  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 805E0BFC  EC 82 00 32 */	fmuls f4, f2, f0
/* 805E0C00  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805E0C04  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 805E0C08  EC 02 00 32 */	fmuls f0, f2, f0
/* 805E0C0C  EC 61 00 2A */	fadds f3, f1, f0
/* 805E0C10  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 805E0C14  EC 02 00 32 */	fmuls f0, f2, f0
/* 805E0C18  EC 01 00 2A */	fadds f0, f1, f0
/* 805E0C1C  D0 1F 06 0C */	stfs f0, 0x60c(r31)
/* 805E0C20  D0 7F 06 10 */	stfs f3, 0x610(r31)
/* 805E0C24  D0 9F 06 14 */	stfs f4, 0x614(r31)
/* 805E0C28  C0 1E 01 50 */	lfs f0, 0x150(r30)
/* 805E0C2C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805E0C30  C0 1E 01 F0 */	lfs f0, 0x1f0(r30)
/* 805E0C34  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805E0C38  C0 1E 01 F4 */	lfs f0, 0x1f4(r30)
/* 805E0C3C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 805E0C40  80 7C 00 6C */	lwz r3, 0x6c(r28)
/* 805E0C44  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805E0C48  4B C8 FF BC */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 805E0C4C  7C 65 1B 78 */	mr r5, r3
/* 805E0C50  38 7F 06 18 */	addi r3, r31, 0x618
/* 805E0C54  80 9C 00 6C */	lwz r4, 0x6c(r28)
/* 805E0C58  38 C1 00 54 */	addi r6, r1, 0x54
/* 805E0C5C  4B C9 01 64 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 805E0C60  48 00 00 98 */	b lbl_805E0CF8
lbl_805E0C64:
/* 805E0C64  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805E0C68  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 805E0C6C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805E0C70  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 805E0C74  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805E0C78  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 805E0C7C  38 61 00 48 */	addi r3, r1, 0x48
/* 805E0C80  7C 65 1B 78 */	mr r5, r3
/* 805E0C84  4B D6 64 0C */	b PSVECAdd
/* 805E0C88  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805E0C8C  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 805E0C90  EC 82 00 32 */	fmuls f4, f2, f0
/* 805E0C94  C0 3E 01 E0 */	lfs f1, 0x1e0(r30)
/* 805E0C98  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 805E0C9C  EC 02 00 32 */	fmuls f0, f2, f0
/* 805E0CA0  EC 61 00 2A */	fadds f3, f1, f0
/* 805E0CA4  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805E0CA8  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 805E0CAC  EC 02 00 32 */	fmuls f0, f2, f0
/* 805E0CB0  EC 01 00 2A */	fadds f0, f1, f0
/* 805E0CB4  D0 1F 06 0C */	stfs f0, 0x60c(r31)
/* 805E0CB8  D0 7F 06 10 */	stfs f3, 0x610(r31)
/* 805E0CBC  D0 9F 06 14 */	stfs f4, 0x614(r31)
/* 805E0CC0  C0 1E 01 50 */	lfs f0, 0x150(r30)
/* 805E0CC4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805E0CC8  C0 1E 01 F0 */	lfs f0, 0x1f0(r30)
/* 805E0CCC  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805E0CD0  C0 1E 01 F4 */	lfs f0, 0x1f4(r30)
/* 805E0CD4  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 805E0CD8  80 7C 00 6C */	lwz r3, 0x6c(r28)
/* 805E0CDC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805E0CE0  4B C8 FF 24 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 805E0CE4  7C 65 1B 78 */	mr r5, r3
/* 805E0CE8  38 7F 06 18 */	addi r3, r31, 0x618
/* 805E0CEC  80 9C 00 6C */	lwz r4, 0x6c(r28)
/* 805E0CF0  38 C1 00 54 */	addi r6, r1, 0x54
/* 805E0CF4  4B C9 00 CC */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
lbl_805E0CF8:
/* 805E0CF8  7F E3 FB 78 */	mr r3, r31
/* 805E0CFC  C0 3E 01 B8 */	lfs f1, 0x1b8(r30)
/* 805E0D00  C0 5E 01 F8 */	lfs f2, 0x1f8(r30)
/* 805E0D04  4B FF F3 D1 */	bl SetMoveCam1__8daB_GG_cFff
/* 805E0D08  48 00 01 D4 */	b lbl_805E0EDC
lbl_805E0D0C:
/* 805E0D0C  C0 3E 01 B8 */	lfs f1, 0x1b8(r30)
/* 805E0D10  C0 5E 00 08 */	lfs f2, 8(r30)
/* 805E0D14  4B FF F3 C1 */	bl SetMoveCam1__8daB_GG_cFff
/* 805E0D18  48 00 01 C4 */	b lbl_805E0EDC
lbl_805E0D1C:
/* 805E0D1C  A8 1F 05 D8 */	lha r0, 0x5d8(r31)
/* 805E0D20  2C 00 00 00 */	cmpwi r0, 0
/* 805E0D24  40 82 01 00 */	bne lbl_805E0E24
/* 805E0D28  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 805E0D2C  C0 5E 01 50 */	lfs f2, 0x150(r30)
/* 805E0D30  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 805E0D34  C0 3E 01 FC */	lfs f1, 0x1fc(r30)
/* 805E0D38  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 805E0D3C  80 7D 5D B4 */	lwz r3, 0x5db4(r29)
/* 805E0D40  80 03 05 74 */	lwz r0, 0x574(r3)
/* 805E0D44  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 805E0D48  41 82 00 1C */	beq lbl_805E0D64
/* 805E0D4C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 805E0D50  EC 02 00 28 */	fsubs f0, f2, f0
/* 805E0D54  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805E0D58  C0 1E 01 40 */	lfs f0, 0x140(r30)
/* 805E0D5C  EC 01 00 28 */	fsubs f0, f1, f0
/* 805E0D60  D0 01 00 5C */	stfs f0, 0x5c(r1)
lbl_805E0D64:
/* 805E0D64  7C 83 23 78 */	mr r3, r4
/* 805E0D68  38 81 00 48 */	addi r4, r1, 0x48
/* 805E0D6C  4B C8 FE 98 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 805E0D70  7C 65 1B 78 */	mr r5, r3
/* 805E0D74  38 7F 06 18 */	addi r3, r31, 0x618
/* 805E0D78  80 9C 00 6C */	lwz r4, 0x6c(r28)
/* 805E0D7C  38 C1 00 54 */	addi r6, r1, 0x54
/* 805E0D80  4B C9 00 40 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 805E0D84  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805E0D88  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805E0D8C  C0 3E 02 00 */	lfs f1, 0x200(r30)
/* 805E0D90  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 805E0D94  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 805E0D98  80 7D 5D B4 */	lwz r3, 0x5db4(r29)
/* 805E0D9C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 805E0DA0  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 805E0DA4  41 82 00 10 */	beq lbl_805E0DB4
/* 805E0DA8  C0 1E 01 E0 */	lfs f0, 0x1e0(r30)
/* 805E0DAC  EC 01 00 28 */	fsubs f0, f1, f0
/* 805E0DB0  D0 01 00 58 */	stfs f0, 0x58(r1)
lbl_805E0DB4:
/* 805E0DB4  80 7C 00 6C */	lwz r3, 0x6c(r28)
/* 805E0DB8  38 81 00 48 */	addi r4, r1, 0x48
/* 805E0DBC  4B C8 FE 48 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 805E0DC0  7C 65 1B 78 */	mr r5, r3
/* 805E0DC4  38 7F 06 0C */	addi r3, r31, 0x60c
/* 805E0DC8  38 81 00 48 */	addi r4, r1, 0x48
/* 805E0DCC  38 C1 00 54 */	addi r6, r1, 0x54
/* 805E0DD0  4B C8 FF F0 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 805E0DD4  C0 1F 06 18 */	lfs f0, 0x618(r31)
/* 805E0DD8  D0 1F 06 00 */	stfs f0, 0x600(r31)
/* 805E0DDC  C0 1F 06 1C */	lfs f0, 0x61c(r31)
/* 805E0DE0  D0 1F 06 04 */	stfs f0, 0x604(r31)
/* 805E0DE4  C0 1F 06 20 */	lfs f0, 0x620(r31)
/* 805E0DE8  D0 1F 06 08 */	stfs f0, 0x608(r31)
/* 805E0DEC  C0 1F 06 0C */	lfs f0, 0x60c(r31)
/* 805E0DF0  D0 1F 05 F4 */	stfs f0, 0x5f4(r31)
/* 805E0DF4  C0 1F 06 10 */	lfs f0, 0x610(r31)
/* 805E0DF8  D0 1F 05 F8 */	stfs f0, 0x5f8(r31)
/* 805E0DFC  C0 1F 06 14 */	lfs f0, 0x614(r31)
/* 805E0E00  D0 1F 05 FC */	stfs f0, 0x5fc(r31)
/* 805E0E04  7F E3 FB 78 */	mr r3, r31
/* 805E0E08  4B FF EF 71 */	bl SetStopingCam__8daB_GG_cFv
/* 805E0E0C  38 00 00 02 */	li r0, 2
/* 805E0E10  98 1F 05 C7 */	stb r0, 0x5c7(r31)
/* 805E0E14  38 00 00 0B */	li r0, 0xb
/* 805E0E18  98 1F 05 CB */	stb r0, 0x5cb(r31)
/* 805E0E1C  7F E3 FB 78 */	mr r3, r31
/* 805E0E20  4B FF EC 29 */	bl SpeedClear__8daB_GG_cFv
lbl_805E0E24:
/* 805E0E24  7F E3 FB 78 */	mr r3, r31
/* 805E0E28  C0 3E 01 D8 */	lfs f1, 0x1d8(r30)
/* 805E0E2C  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 805E0E30  4B FF F2 A5 */	bl SetMoveCam1__8daB_GG_cFff
/* 805E0E34  C0 5E 01 64 */	lfs f2, 0x164(r30)
/* 805E0E38  A8 1F 05 D8 */	lha r0, 0x5d8(r31)
/* 805E0E3C  C8 3E 01 48 */	lfd f1, 0x148(r30)
/* 805E0E40  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805E0E44  90 01 00 64 */	stw r0, 0x64(r1)
/* 805E0E48  3C 00 43 30 */	lis r0, 0x4330
/* 805E0E4C  90 01 00 60 */	stw r0, 0x60(r1)
/* 805E0E50  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 805E0E54  EC 00 08 28 */	fsubs f0, f0, f1
/* 805E0E58  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 805E0E5C  40 82 00 20 */	bne lbl_805E0E7C
/* 805E0E60  38 00 00 17 */	li r0, 0x17
/* 805E0E64  90 1B 06 14 */	stw r0, 0x614(r27)
/* 805E0E68  38 00 00 01 */	li r0, 1
/* 805E0E6C  90 1B 06 0C */	stw r0, 0x60c(r27)
/* 805E0E70  38 00 00 00 */	li r0, 0
/* 805E0E74  90 1B 06 10 */	stw r0, 0x610(r27)
/* 805E0E78  B0 1B 06 0A */	sth r0, 0x60a(r27)
lbl_805E0E7C:
/* 805E0E7C  A8 1F 05 D8 */	lha r0, 0x5d8(r31)
/* 805E0E80  C8 3E 01 48 */	lfd f1, 0x148(r30)
/* 805E0E84  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805E0E88  90 01 00 64 */	stw r0, 0x64(r1)
/* 805E0E8C  3C 00 43 30 */	lis r0, 0x4330
/* 805E0E90  90 01 00 60 */	stw r0, 0x60(r1)
/* 805E0E94  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 805E0E98  EC 20 08 28 */	fsubs f1, f0, f1
/* 805E0E9C  C0 1E 01 64 */	lfs f0, 0x164(r30)
/* 805E0EA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E0EA4  41 81 00 38 */	bgt lbl_805E0EDC
/* 805E0EA8  38 7C 00 FC */	addi r3, r28, 0xfc
/* 805E0EAC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 805E0EB0  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 805E0EB4  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 805E0EB8  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 805E0EBC  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 805E0EC0  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 805E0EC4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 805E0EC8  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 805E0ECC  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 805E0ED0  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 805E0ED4  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 805E0ED8  D0 1F 05 40 */	stfs f0, 0x540(r31)
lbl_805E0EDC:
/* 805E0EDC  88 1F 05 CB */	lbz r0, 0x5cb(r31)
/* 805E0EE0  28 00 00 00 */	cmplwi r0, 0
/* 805E0EE4  41 82 00 30 */	beq lbl_805E0F14
/* 805E0EE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805E0EEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805E0EF0  3B 63 4E C8 */	addi r27, r3, 0x4ec8
/* 805E0EF4  7F 63 DB 78 */	mr r3, r27
/* 805E0EF8  4B A6 1A B0 */	b onSkipFade__14dEvt_control_cFv
/* 805E0EFC  7F 63 DB 78 */	mr r3, r27
/* 805E0F00  7F E4 FB 78 */	mr r4, r31
/* 805E0F04  3C A0 80 5E */	lis r5, DemoSkipCallBack__8daB_GG_cFPvi@ha
/* 805E0F08  38 A5 FC 24 */	addi r5, r5, DemoSkipCallBack__8daB_GG_cFPvi@l
/* 805E0F0C  38 C0 00 00 */	li r6, 0
/* 805E0F10  4B A6 1A 04 */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
lbl_805E0F14:
/* 805E0F14  39 61 00 80 */	addi r11, r1, 0x80
/* 805E0F18  4B D8 13 08 */	b _restgpr_27
/* 805E0F1C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 805E0F20  7C 08 03 A6 */	mtlr r0
/* 805E0F24  38 21 00 80 */	addi r1, r1, 0x80
/* 805E0F28  4E 80 00 20 */	blr 
