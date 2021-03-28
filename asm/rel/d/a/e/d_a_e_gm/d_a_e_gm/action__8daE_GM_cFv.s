lbl_806D136C:
/* 806D136C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806D1370  7C 08 02 A6 */	mflr r0
/* 806D1374  90 01 00 34 */	stw r0, 0x34(r1)
/* 806D1378  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 806D137C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 806D1380  7C 7E 1B 78 */	mr r30, r3
/* 806D1384  3C 60 80 6D */	lis r3, lit_3906@ha
/* 806D1388  3B E3 79 A0 */	addi r31, r3, lit_3906@l
/* 806D138C  88 1E 0A 76 */	lbz r0, 0xa76(r30)
/* 806D1390  28 00 00 00 */	cmplwi r0, 0
/* 806D1394  41 82 01 24 */	beq lbl_806D14B8
/* 806D1398  3C 60 80 6D */	lis r3, lit_4075@ha
/* 806D139C  38 83 7B 7C */	addi r4, r3, lit_4075@l
/* 806D13A0  80 64 00 00 */	lwz r3, 0(r4)
/* 806D13A4  80 04 00 04 */	lwz r0, 4(r4)
/* 806D13A8  90 61 00 18 */	stw r3, 0x18(r1)
/* 806D13AC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 806D13B0  80 04 00 08 */	lwz r0, 8(r4)
/* 806D13B4  90 01 00 20 */	stw r0, 0x20(r1)
/* 806D13B8  38 7E 0A 24 */	addi r3, r30, 0xa24
/* 806D13BC  38 81 00 18 */	addi r4, r1, 0x18
/* 806D13C0  4B C9 0C 88 */	b __ptmf_cmpr
/* 806D13C4  2C 03 00 00 */	cmpwi r3, 0
/* 806D13C8  41 82 00 38 */	beq lbl_806D1400
/* 806D13CC  3C 60 80 6D */	lis r3, lit_4077@ha
/* 806D13D0  38 83 7B 88 */	addi r4, r3, lit_4077@l
/* 806D13D4  80 64 00 00 */	lwz r3, 0(r4)
/* 806D13D8  80 04 00 04 */	lwz r0, 4(r4)
/* 806D13DC  90 61 00 0C */	stw r3, 0xc(r1)
/* 806D13E0  90 01 00 10 */	stw r0, 0x10(r1)
/* 806D13E4  80 04 00 08 */	lwz r0, 8(r4)
/* 806D13E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806D13EC  38 7E 0A 24 */	addi r3, r30, 0xa24
/* 806D13F0  38 81 00 0C */	addi r4, r1, 0xc
/* 806D13F4  4B C9 0C 54 */	b __ptmf_cmpr
/* 806D13F8  2C 03 00 00 */	cmpwi r3, 0
/* 806D13FC  40 82 00 BC */	bne lbl_806D14B8
lbl_806D1400:
/* 806D1400  38 00 00 00 */	li r0, 0
/* 806D1404  90 1E 08 18 */	stw r0, 0x818(r30)
/* 806D1408  90 1E 08 30 */	stw r0, 0x830(r30)
/* 806D140C  38 7E 0A 48 */	addi r3, r30, 0xa48
/* 806D1410  C0 3F 00 00 */	lfs f1, 0(r31)
/* 806D1414  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806D1418  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 806D141C  4B B9 E6 20 */	b cLib_addCalc2__FPffff
/* 806D1420  C0 3E 0A 48 */	lfs f1, 0xa48(r30)
/* 806D1424  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806D1428  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806D142C  4C 40 13 82 */	cror 2, 0, 2
/* 806D1430  40 82 00 88 */	bne lbl_806D14B8
/* 806D1434  3C 60 80 6D */	lis r3, struct_806D7F1C+0x2@ha
/* 806D1438  88 03 7F 1E */	lbz r0, struct_806D7F1C+0x2@l(r3)
/* 806D143C  28 00 00 00 */	cmplwi r0, 0
/* 806D1440  40 82 00 78 */	bne lbl_806D14B8
/* 806D1444  7F C3 F3 78 */	mr r3, r30
/* 806D1448  48 00 14 55 */	bl setDeathLightEffect__8daE_GM_cFv
/* 806D144C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806D1450  7C 03 07 74 */	extsb r3, r0
/* 806D1454  4B 95 BC 18 */	b dComIfGp_getReverb__Fi
/* 806D1458  7C 67 1B 78 */	mr r7, r3
/* 806D145C  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006000A@ha */
/* 806D1460  38 03 00 0A */	addi r0, r3, 0x000A /* 0x0006000A@l */
/* 806D1464  90 01 00 08 */	stw r0, 8(r1)
/* 806D1468  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806D146C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806D1470  80 63 00 00 */	lwz r3, 0(r3)
/* 806D1474  38 81 00 08 */	addi r4, r1, 8
/* 806D1478  38 BE 05 38 */	addi r5, r30, 0x538
/* 806D147C  38 C0 00 00 */	li r6, 0
/* 806D1480  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806D1484  FC 40 08 90 */	fmr f2, f1
/* 806D1488  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 806D148C  FC 80 18 90 */	fmr f4, f3
/* 806D1490  39 00 00 00 */	li r8, 0
/* 806D1494  4B BD A4 F0 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 806D1498  7F C3 F3 78 */	mr r3, r30
/* 806D149C  4B 94 87 E0 */	b fopAcM_delete__FP10fopAc_ac_c
/* 806D14A0  3C 60 80 6D */	lis r3, struct_806D7F1C+0x2@ha
/* 806D14A4  38 83 7F 1E */	addi r4, r3, struct_806D7F1C+0x2@l
/* 806D14A8  88 64 00 00 */	lbz r3, 0(r4)
/* 806D14AC  38 03 00 01 */	addi r0, r3, 1
/* 806D14B0  98 04 00 00 */	stb r0, 0(r4)
/* 806D14B4  48 00 00 14 */	b lbl_806D14C8
lbl_806D14B8:
/* 806D14B8  7F C3 F3 78 */	mr r3, r30
/* 806D14BC  39 9E 0A 24 */	addi r12, r30, 0xa24
/* 806D14C0  4B C9 0B C4 */	b __ptmf_scall
/* 806D14C4  60 00 00 00 */	nop 
lbl_806D14C8:
/* 806D14C8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 806D14CC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 806D14D0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806D14D4  7C 08 03 A6 */	mtlr r0
/* 806D14D8  38 21 00 30 */	addi r1, r1, 0x30
/* 806D14DC  4E 80 00 20 */	blr 
