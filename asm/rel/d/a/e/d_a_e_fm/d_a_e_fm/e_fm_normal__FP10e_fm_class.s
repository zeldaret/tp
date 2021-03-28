lbl_804F00E4:
/* 804F00E4  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 804F00E8  7C 08 02 A6 */	mflr r0
/* 804F00EC  90 01 00 84 */	stw r0, 0x84(r1)
/* 804F00F0  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 804F00F4  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 804F00F8  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 804F00FC  93 C1 00 68 */	stw r30, 0x68(r1)
/* 804F0100  7C 7E 1B 78 */	mr r30, r3
/* 804F0104  3C 80 80 50 */	lis r4, lit_3777@ha
/* 804F0108  3B E4 A6 BC */	addi r31, r4, lit_3777@l
/* 804F010C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 804F0110  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 804F0114  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 804F0118  A8 03 07 A4 */	lha r0, 0x7a4(r3)
/* 804F011C  2C 00 00 00 */	cmpwi r0, 0
/* 804F0120  41 80 00 4C */	blt lbl_804F016C
/* 804F0124  4B B2 CC D8 */	b fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 804F0128  2C 03 00 00 */	cmpwi r3, 0
/* 804F012C  40 82 00 40 */	bne lbl_804F016C
/* 804F0130  38 00 00 01 */	li r0, 1
/* 804F0134  B0 1E 07 A2 */	sth r0, 0x7a2(r30)
/* 804F0138  38 00 00 00 */	li r0, 0
/* 804F013C  B0 1E 07 A4 */	sth r0, 0x7a4(r30)
/* 804F0140  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070299@ha */
/* 804F0144  38 03 02 99 */	addi r0, r3, 0x0299 /* 0x00070299@l */
/* 804F0148  90 01 00 2C */	stw r0, 0x2c(r1)
/* 804F014C  38 7E 06 3C */	addi r3, r30, 0x63c
/* 804F0150  38 81 00 2C */	addi r4, r1, 0x2c
/* 804F0154  38 A0 FF FF */	li r5, -1
/* 804F0158  81 9E 06 3C */	lwz r12, 0x63c(r30)
/* 804F015C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804F0160  7D 89 03 A6 */	mtctr r12
/* 804F0164  4E 80 04 21 */	bctrl 
/* 804F0168  48 00 03 A8 */	b lbl_804F0510
lbl_804F016C:
/* 804F016C  C3 FF 00 3C */	lfs f31, 0x3c(r31)
/* 804F0170  38 00 00 01 */	li r0, 1
/* 804F0174  98 1E 07 C0 */	stb r0, 0x7c0(r30)
/* 804F0178  A8 1E 07 A4 */	lha r0, 0x7a4(r30)
/* 804F017C  2C 00 00 00 */	cmpwi r0, 0
/* 804F0180  41 82 00 60 */	beq lbl_804F01E0
/* 804F0184  40 80 00 10 */	bge lbl_804F0194
/* 804F0188  2C 00 FF F6 */	cmpwi r0, -10
/* 804F018C  41 82 00 18 */	beq lbl_804F01A4
/* 804F0190  48 00 03 7C */	b lbl_804F050C
lbl_804F0194:
/* 804F0194  2C 00 00 02 */	cmpwi r0, 2
/* 804F0198  41 82 03 74 */	beq lbl_804F050C
/* 804F019C  40 80 03 70 */	bge lbl_804F050C
/* 804F01A0  48 00 01 24 */	b lbl_804F02C4
lbl_804F01A4:
/* 804F01A4  3C 60 80 4F */	lis r3, s_fmobj_del__FPvPv@ha
/* 804F01A8  38 63 F2 50 */	addi r3, r3, s_fmobj_del__FPvPv@l
/* 804F01AC  38 80 00 00 */	li r4, 0
/* 804F01B0  4B B3 11 88 */	b fpcEx_Search__FPFPvPv_PvPv
/* 804F01B4  A8 1E 07 AC */	lha r0, 0x7ac(r30)
/* 804F01B8  2C 00 00 00 */	cmpwi r0, 0
/* 804F01BC  40 82 03 50 */	bne lbl_804F050C
/* 804F01C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804F01C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804F01C8  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 804F01CC  28 00 00 00 */	cmplwi r0, 0
/* 804F01D0  40 82 03 3C */	bne lbl_804F050C
/* 804F01D4  38 00 00 00 */	li r0, 0
/* 804F01D8  B0 1E 07 A4 */	sth r0, 0x7a4(r30)
/* 804F01DC  48 00 03 30 */	b lbl_804F050C
lbl_804F01E0:
/* 804F01E0  A8 1E 07 AC */	lha r0, 0x7ac(r30)
/* 804F01E4  2C 00 00 00 */	cmpwi r0, 0
/* 804F01E8  40 82 03 24 */	bne lbl_804F050C
/* 804F01EC  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 804F01F0  4B D7 77 9C */	b cM_rndFX__Ff
/* 804F01F4  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 804F01F8  EC 00 08 2A */	fadds f0, f0, f1
/* 804F01FC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 804F0200  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 804F0204  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 804F0208  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 804F020C  4B D7 77 80 */	b cM_rndFX__Ff
/* 804F0210  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 804F0214  EC 00 08 2A */	fadds f0, f0, f1
/* 804F0218  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 804F021C  38 61 00 3C */	addi r3, r1, 0x3c
/* 804F0220  38 81 00 48 */	addi r4, r1, 0x48
/* 804F0224  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 804F0228  4B D7 69 0C */	b __mi__4cXyzCFRC3Vec
/* 804F022C  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 804F0230  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 804F0234  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 804F0238  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 804F023C  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 804F0240  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 804F0244  4B D7 74 30 */	b cM_atan2s__Fff
/* 804F0248  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 804F024C  7C 04 18 50 */	subf r0, r4, r3
/* 804F0250  7C 00 07 34 */	extsh r0, r0
/* 804F0254  2C 00 40 00 */	cmpwi r0, 0x4000
/* 804F0258  40 81 00 0C */	ble lbl_804F0264
/* 804F025C  38 00 40 00 */	li r0, 0x4000
/* 804F0260  48 00 00 10 */	b lbl_804F0270
lbl_804F0264:
/* 804F0264  2C 00 C0 00 */	cmpwi r0, -16384
/* 804F0268  40 80 00 08 */	bge lbl_804F0270
/* 804F026C  38 00 C0 00 */	li r0, -16384
lbl_804F0270:
/* 804F0270  7C 04 02 14 */	add r0, r4, r0
/* 804F0274  B0 1E 05 C4 */	sth r0, 0x5c4(r30)
/* 804F0278  7F C3 F3 78 */	mr r3, r30
/* 804F027C  38 80 00 23 */	li r4, 0x23
/* 804F0280  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 804F0284  38 A0 00 02 */	li r5, 2
/* 804F0288  3C C0 80 50 */	lis r6, l_HIO@ha
/* 804F028C  38 C6 AE A4 */	addi r6, r6, l_HIO@l
/* 804F0290  C0 46 00 0C */	lfs f2, 0xc(r6)
/* 804F0294  4B FF F5 75 */	bl anm_init__FP10e_fm_classifUcf
/* 804F0298  38 00 00 01 */	li r0, 1
/* 804F029C  B0 1E 07 A4 */	sth r0, 0x7a4(r30)
/* 804F02A0  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 804F02A4  4B D7 76 B0 */	b cM_rndF__Ff
/* 804F02A8  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 804F02AC  EC 00 08 2A */	fadds f0, f0, f1
/* 804F02B0  FC 00 00 1E */	fctiwz f0, f0
/* 804F02B4  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 804F02B8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804F02BC  B0 1E 07 AC */	sth r0, 0x7ac(r30)
/* 804F02C0  48 00 02 4C */	b lbl_804F050C
lbl_804F02C4:
/* 804F02C4  3C 60 80 50 */	lis r3, l_HIO@ha
/* 804F02C8  38 A3 AE A4 */	addi r5, r3, l_HIO@l
/* 804F02CC  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 804F02D0  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 804F02D4  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 804F02D8  38 C0 00 00 */	li r6, 0
/* 804F02DC  38 60 00 00 */	li r3, 0
/* 804F02E0  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 804F02E4  38 00 00 02 */	li r0, 2
/* 804F02E8  7C 09 03 A6 */	mtctr r0
lbl_804F02EC:
/* 804F02EC  20 E6 00 01 */	subfic r7, r6, 1
/* 804F02F0  38 03 07 CC */	addi r0, r3, 0x7cc
/* 804F02F4  7C 1E 04 2E */	lfsx f0, r30, r0
/* 804F02F8  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 804F02FC  EC 00 10 28 */	fsubs f0, f0, f2
/* 804F0300  FC 00 02 10 */	fabs f0, f0
/* 804F0304  FC 00 00 18 */	frsp f0, f0
/* 804F0308  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804F030C  40 80 00 30 */	bge lbl_804F033C
/* 804F0310  1C 87 00 0C */	mulli r4, r7, 0xc
/* 804F0314  38 04 07 CC */	addi r0, r4, 0x7cc
/* 804F0318  7C 1E 04 2E */	lfsx f0, r30, r0
/* 804F031C  EC 00 10 28 */	fsubs f0, f0, f2
/* 804F0320  FC 00 02 10 */	fabs f0, f0
/* 804F0324  FC 00 00 18 */	frsp f0, f0
/* 804F0328  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804F032C  4C 41 13 82 */	cror 2, 1, 2
/* 804F0330  40 82 00 0C */	bne lbl_804F033C
/* 804F0334  C3 E5 00 10 */	lfs f31, 0x10(r5)
/* 804F0338  90 FE 07 E0 */	stw r7, 0x7e0(r30)
lbl_804F033C:
/* 804F033C  38 C6 00 01 */	addi r6, r6, 1
/* 804F0340  38 63 00 0C */	addi r3, r3, 0xc
/* 804F0344  42 00 FF A8 */	bdnz lbl_804F02EC
/* 804F0348  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 804F034C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 804F0350  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F0354  40 80 00 38 */	bge lbl_804F038C
/* 804F0358  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804F035C  40 81 00 30 */	ble lbl_804F038C
/* 804F0360  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070004@ha */
/* 804F0364  38 03 00 04 */	addi r0, r3, 0x0004 /* 0x00070004@l */
/* 804F0368  90 01 00 28 */	stw r0, 0x28(r1)
/* 804F036C  38 7E 06 3C */	addi r3, r30, 0x63c
/* 804F0370  38 81 00 28 */	addi r4, r1, 0x28
/* 804F0374  38 A0 00 00 */	li r5, 0
/* 804F0378  38 C0 FF FF */	li r6, -1
/* 804F037C  81 9E 06 3C */	lwz r12, 0x63c(r30)
/* 804F0380  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804F0384  7D 89 03 A6 */	mtctr r12
/* 804F0388  4E 80 04 21 */	bctrl 
lbl_804F038C:
/* 804F038C  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 804F0390  C0 3F 00 00 */	lfs f1, 0(r31)
/* 804F0394  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804F0398  40 81 00 F4 */	ble lbl_804F048C
/* 804F039C  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 804F03A0  40 80 00 EC */	bge lbl_804F048C
/* 804F03A4  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804F03A8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804F03AC  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 804F03B0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804F03B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804F03B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804F03BC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 804F03C0  38 80 00 05 */	li r4, 5
/* 804F03C4  38 A0 00 0F */	li r5, 0xf
/* 804F03C8  38 C1 00 30 */	addi r6, r1, 0x30
/* 804F03CC  4B B7 F6 58 */	b StartShock__12dVibration_cFii4cXyz
/* 804F03D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804F03D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804F03D8  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 804F03DC  38 80 00 00 */	li r4, 0
/* 804F03E0  90 81 00 08 */	stw r4, 8(r1)
/* 804F03E4  38 00 FF FF */	li r0, -1
/* 804F03E8  90 01 00 0C */	stw r0, 0xc(r1)
/* 804F03EC  90 81 00 10 */	stw r4, 0x10(r1)
/* 804F03F0  90 81 00 14 */	stw r4, 0x14(r1)
/* 804F03F4  90 81 00 18 */	stw r4, 0x18(r1)
/* 804F03F8  38 80 00 00 */	li r4, 0
/* 804F03FC  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008150@ha */
/* 804F0400  38 A5 81 50 */	addi r5, r5, 0x8150 /* 0x00008150@l */
/* 804F0404  38 DE 04 A8 */	addi r6, r30, 0x4a8
/* 804F0408  38 E0 00 00 */	li r7, 0
/* 804F040C  39 00 00 00 */	li r8, 0
/* 804F0410  39 20 00 00 */	li r9, 0
/* 804F0414  39 40 00 FF */	li r10, 0xff
/* 804F0418  C0 3F 00 00 */	lfs f1, 0(r31)
/* 804F041C  4B B5 C6 74 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804F0420  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080163@ha */
/* 804F0424  38 03 01 63 */	addi r0, r3, 0x0163 /* 0x00080163@l */
/* 804F0428  90 01 00 20 */	stw r0, 0x20(r1)
/* 804F042C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 804F0430  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 804F0434  80 63 00 00 */	lwz r3, 0(r3)
/* 804F0438  38 81 00 20 */	addi r4, r1, 0x20
/* 804F043C  38 A0 00 00 */	li r5, 0
/* 804F0440  38 C0 00 00 */	li r6, 0
/* 804F0444  38 E0 00 00 */	li r7, 0
/* 804F0448  C0 3F 00 00 */	lfs f1, 0(r31)
/* 804F044C  FC 40 08 90 */	fmr f2, f1
/* 804F0450  C0 7F 00 88 */	lfs f3, 0x88(r31)
/* 804F0454  FC 80 18 90 */	fmr f4, f3
/* 804F0458  39 00 00 00 */	li r8, 0
/* 804F045C  4B DB B5 28 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 804F0460  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070001@ha */
/* 804F0464  38 03 00 01 */	addi r0, r3, 0x0001 /* 0x00070001@l */
/* 804F0468  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F046C  38 7E 06 3C */	addi r3, r30, 0x63c
/* 804F0470  38 81 00 24 */	addi r4, r1, 0x24
/* 804F0474  38 A0 00 00 */	li r5, 0
/* 804F0478  38 C0 FF FF */	li r6, -1
/* 804F047C  81 9E 06 3C */	lwz r12, 0x63c(r30)
/* 804F0480  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804F0484  7D 89 03 A6 */	mtctr r12
/* 804F0488  4E 80 04 21 */	bctrl 
lbl_804F048C:
/* 804F048C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 804F0490  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804F0494  40 81 00 18 */	ble lbl_804F04AC
/* 804F0498  38 7E 04 DE */	addi r3, r30, 0x4de
/* 804F049C  A8 9E 05 C4 */	lha r4, 0x5c4(r30)
/* 804F04A0  38 A0 00 08 */	li r5, 8
/* 804F04A4  38 C0 01 00 */	li r6, 0x100
/* 804F04A8  4B D8 01 60 */	b cLib_addCalcAngleS2__FPssss
lbl_804F04AC:
/* 804F04AC  A8 1E 07 AC */	lha r0, 0x7ac(r30)
/* 804F04B0  2C 00 00 00 */	cmpwi r0, 0
/* 804F04B4  40 82 00 4C */	bne lbl_804F0500
/* 804F04B8  38 00 00 00 */	li r0, 0
/* 804F04BC  B0 1E 07 A4 */	sth r0, 0x7a4(r30)
/* 804F04C0  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 804F04C4  4B D7 74 90 */	b cM_rndF__Ff
/* 804F04C8  C0 5F 00 BC */	lfs f2, 0xbc(r31)
/* 804F04CC  EC 02 08 2A */	fadds f0, f2, f1
/* 804F04D0  FC 00 00 1E */	fctiwz f0, f0
/* 804F04D4  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 804F04D8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804F04DC  B0 1E 07 AC */	sth r0, 0x7ac(r30)
/* 804F04E0  7F C3 F3 78 */	mr r3, r30
/* 804F04E4  38 80 00 1E */	li r4, 0x1e
/* 804F04E8  FC 20 10 90 */	fmr f1, f2
/* 804F04EC  38 A0 00 02 */	li r5, 2
/* 804F04F0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 804F04F4  4B FF F3 15 */	bl anm_init__FP10e_fm_classifUcf
/* 804F04F8  C3 FF 00 3C */	lfs f31, 0x3c(r31)
/* 804F04FC  48 00 00 10 */	b lbl_804F050C
lbl_804F0500:
/* 804F0500  38 00 00 02 */	li r0, 2
/* 804F0504  7C 09 03 A6 */	mtctr r0
lbl_804F0508:
/* 804F0508  42 00 00 00 */	bdnz lbl_804F0508
lbl_804F050C:
/* 804F050C  D3 FE 05 2C */	stfs f31, 0x52c(r30)
lbl_804F0510:
/* 804F0510  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 804F0514  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 804F0518  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 804F051C  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 804F0520  80 01 00 84 */	lwz r0, 0x84(r1)
/* 804F0524  7C 08 03 A6 */	mtlr r0
/* 804F0528  38 21 00 80 */	addi r1, r1, 0x80
/* 804F052C  4E 80 00 20 */	blr 
