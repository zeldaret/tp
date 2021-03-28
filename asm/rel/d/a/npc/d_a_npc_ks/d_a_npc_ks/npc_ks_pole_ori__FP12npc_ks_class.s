lbl_80A4A1B0:
/* 80A4A1B0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A4A1B4  7C 08 02 A6 */	mflr r0
/* 80A4A1B8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A4A1BC  39 61 00 40 */	addi r11, r1, 0x40
/* 80A4A1C0  4B 91 80 1C */	b _savegpr_29
/* 80A4A1C4  7C 7D 1B 78 */	mr r29, r3
/* 80A4A1C8  3C 60 80 A6 */	lis r3, lit_4030@ha
/* 80A4A1CC  3B C3 DE FC */	addi r30, r3, lit_4030@l
/* 80A4A1D0  3C 60 80 A6 */	lis r3, leader@ha
/* 80A4A1D4  80 03 FE A0 */	lwz r0, leader@l(r3)
/* 80A4A1D8  28 00 00 00 */	cmplwi r0, 0
/* 80A4A1DC  41 82 03 50 */	beq lbl_80A4A52C
/* 80A4A1E0  A8 1D 05 EA */	lha r0, 0x5ea(r29)
/* 80A4A1E4  2C 00 00 00 */	cmpwi r0, 0
/* 80A4A1E8  40 82 00 64 */	bne lbl_80A4A24C
/* 80A4A1EC  3C 60 80 A5 */	lis r3, s_ori_sub__FPvPv@ha
/* 80A4A1F0  38 63 A1 64 */	addi r3, r3, s_ori_sub__FPvPv@l
/* 80A4A1F4  7F A4 EB 78 */	mr r4, r29
/* 80A4A1F8  4B 5D 71 40 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80A4A1FC  28 03 00 00 */	cmplwi r3, 0
/* 80A4A200  41 82 03 2C */	beq lbl_80A4A52C
/* 80A4A204  41 82 00 0C */	beq lbl_80A4A210
/* 80A4A208  80 03 00 04 */	lwz r0, 4(r3)
/* 80A4A20C  48 00 00 08 */	b lbl_80A4A214
lbl_80A4A210:
/* 80A4A210  38 00 FF FF */	li r0, -1
lbl_80A4A214:
/* 80A4A214  90 1D 04 A4 */	stw r0, 0x4a4(r29)
/* 80A4A218  7F A3 EB 78 */	mr r3, r29
/* 80A4A21C  38 80 00 14 */	li r4, 0x14
/* 80A4A220  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80A4A224  38 A0 00 02 */	li r5, 2
/* 80A4A228  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A4A22C  4B FF EF 79 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4A230  A8 7D 05 EA */	lha r3, 0x5ea(r29)
/* 80A4A234  38 03 00 01 */	addi r0, r3, 1
/* 80A4A238  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A4A23C  38 00 00 01 */	li r0, 1
/* 80A4A240  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A4A244  48 00 00 08 */	b lbl_80A4A24C
/* 80A4A248  48 00 02 E4 */	b lbl_80A4A52C
lbl_80A4A24C:
/* 80A4A24C  80 1D 04 A4 */	lwz r0, 0x4a4(r29)
/* 80A4A250  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A4A254  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80A4A258  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80A4A25C  38 81 00 0C */	addi r4, r1, 0xc
/* 80A4A260  4B 5C F5 98 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80A4A264  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A4A268  41 82 02 C4 */	beq lbl_80A4A52C
/* 80A4A26C  A8 1F 05 62 */	lha r0, 0x562(r31)
/* 80A4A270  2C 00 00 00 */	cmpwi r0, 0
/* 80A4A274  40 82 00 2C */	bne lbl_80A4A2A0
/* 80A4A278  38 00 00 C9 */	li r0, 0xc9
/* 80A4A27C  B0 1D 05 E8 */	sth r0, 0x5e8(r29)
/* 80A4A280  38 00 00 0A */	li r0, 0xa
/* 80A4A284  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A4A288  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A4A28C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A4A290  38 63 09 58 */	addi r3, r3, 0x958
/* 80A4A294  80 9D 05 BC */	lwz r4, 0x5bc(r29)
/* 80A4A298  4B 5E A5 08 */	b onTbox__12dSv_memBit_cFi
/* 80A4A29C  48 00 02 90 */	b lbl_80A4A52C
lbl_80A4A2A0:
/* 80A4A2A0  A8 1D 05 EA */	lha r0, 0x5ea(r29)
/* 80A4A2A4  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A4A2A8  40 80 00 24 */	bge lbl_80A4A2CC
/* 80A4A2AC  A8 1F 0D AE */	lha r0, 0xdae(r31)
/* 80A4A2B0  2C 00 00 00 */	cmpwi r0, 0
/* 80A4A2B4  41 82 00 18 */	beq lbl_80A4A2CC
/* 80A4A2B8  38 00 00 0A */	li r0, 0xa
/* 80A4A2BC  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A4A2C0  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A4A2C4  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 80A4A2C8  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_80A4A2CC:
/* 80A4A2CC  A8 1D 05 EA */	lha r0, 0x5ea(r29)
/* 80A4A2D0  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A4A2D4  41 82 00 B0 */	beq lbl_80A4A384
/* 80A4A2D8  40 80 00 AC */	bge lbl_80A4A384
/* 80A4A2DC  2C 00 00 01 */	cmpwi r0, 1
/* 80A4A2E0  41 82 00 08 */	beq lbl_80A4A2E8
/* 80A4A2E4  48 00 00 A0 */	b lbl_80A4A384
lbl_80A4A2E8:
/* 80A4A2E8  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 80A4A2EC  38 63 00 0C */	addi r3, r3, 0xc
/* 80A4A2F0  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80A4A2F4  4B 8D E1 38 */	b checkPass__12J3DFrameCtrlFf
/* 80A4A2F8  2C 03 00 00 */	cmpwi r3, 0
/* 80A4A2FC  40 82 00 1C */	bne lbl_80A4A318
/* 80A4A300  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 80A4A304  38 63 00 0C */	addi r3, r3, 0xc
/* 80A4A308  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 80A4A30C  4B 8D E1 20 */	b checkPass__12J3DFrameCtrlFf
/* 80A4A310  2C 03 00 00 */	cmpwi r3, 0
/* 80A4A314  41 82 00 70 */	beq lbl_80A4A384
lbl_80A4A318:
/* 80A4A318  C0 3F 0D C8 */	lfs f1, 0xdc8(r31)
/* 80A4A31C  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 80A4A320  EC 01 00 2A */	fadds f0, f1, f0
/* 80A4A324  D0 1F 0D C8 */	stfs f0, 0xdc8(r31)
/* 80A4A328  38 00 00 00 */	li r0, 0
/* 80A4A32C  B0 1F 0D AC */	sth r0, 0xdac(r31)
/* 80A4A330  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800B0@ha */
/* 80A4A334  38 03 00 B0 */	addi r0, r3, 0x00B0 /* 0x000800B0@l */
/* 80A4A338  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A4A33C  38 7D 08 60 */	addi r3, r29, 0x860
/* 80A4A340  38 81 00 14 */	addi r4, r1, 0x14
/* 80A4A344  38 A0 00 00 */	li r5, 0
/* 80A4A348  38 C0 FF FF */	li r6, -1
/* 80A4A34C  81 9D 08 60 */	lwz r12, 0x860(r29)
/* 80A4A350  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A4A354  7D 89 03 A6 */	mtctr r12
/* 80A4A358  4E 80 04 21 */	bctrl 
/* 80A4A35C  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005001A@ha */
/* 80A4A360  38 03 00 1A */	addi r0, r3, 0x001A /* 0x0005001A@l */
/* 80A4A364  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A4A368  38 7D 08 60 */	addi r3, r29, 0x860
/* 80A4A36C  38 81 00 10 */	addi r4, r1, 0x10
/* 80A4A370  38 A0 FF FF */	li r5, -1
/* 80A4A374  81 9D 08 60 */	lwz r12, 0x860(r29)
/* 80A4A378  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A4A37C  7D 89 03 A6 */	mtctr r12
/* 80A4A380  4E 80 04 21 */	bctrl 
lbl_80A4A384:
/* 80A4A384  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80A4A388  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80A4A38C  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80A4A390  B0 1D 04 DC */	sth r0, 0x4dc(r29)
/* 80A4A394  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80A4A398  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80A4A39C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80A4A3A0  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80A4A3A4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80A4A3A8  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80A4A3AC  3C 60 80 A6 */	lis r3, leader@ha
/* 80A4A3B0  38 63 FE A0 */	addi r3, r3, leader@l
/* 80A4A3B4  80 63 00 00 */	lwz r3, 0(r3)
/* 80A4A3B8  A8 03 0B 42 */	lha r0, 0xb42(r3)
/* 80A4A3BC  2C 00 00 00 */	cmpwi r0, 0
/* 80A4A3C0  40 82 01 6C */	bne lbl_80A4A52C
/* 80A4A3C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A4A3C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A4A3CC  38 80 00 14 */	li r4, 0x14
/* 80A4A3D0  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80A4A3D4  7C 05 07 74 */	extsb r5, r0
/* 80A4A3D8  4B 5E AF 88 */	b isSwitch__10dSv_info_cCFii
/* 80A4A3DC  2C 03 00 00 */	cmpwi r3, 0
/* 80A4A3E0  40 82 01 4C */	bne lbl_80A4A52C
/* 80A4A3E4  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 80A4A3E8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A4A3EC  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 80A4A3F0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A4A3F4  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 80A4A3F8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A4A3FC  38 61 00 18 */	addi r3, r1, 0x18
/* 80A4A400  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A4A404  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A4A408  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A4A40C  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80A4A410  7C 65 1B 78 */	mr r5, r3
/* 80A4A414  4B 8F CC A0 */	b PSVECSubtract
/* 80A4A418  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A4A41C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A4A420  38 61 00 18 */	addi r3, r1, 0x18
/* 80A4A424  4B 8F CD 14 */	b PSVECSquareMag
/* 80A4A428  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A4A42C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4A430  40 81 00 58 */	ble lbl_80A4A488
/* 80A4A434  FC 00 08 34 */	frsqrte f0, f1
/* 80A4A438  C8 9E 00 50 */	lfd f4, 0x50(r30)
/* 80A4A43C  FC 44 00 32 */	fmul f2, f4, f0
/* 80A4A440  C8 7E 00 58 */	lfd f3, 0x58(r30)
/* 80A4A444  FC 00 00 32 */	fmul f0, f0, f0
/* 80A4A448  FC 01 00 32 */	fmul f0, f1, f0
/* 80A4A44C  FC 03 00 28 */	fsub f0, f3, f0
/* 80A4A450  FC 02 00 32 */	fmul f0, f2, f0
/* 80A4A454  FC 44 00 32 */	fmul f2, f4, f0
/* 80A4A458  FC 00 00 32 */	fmul f0, f0, f0
/* 80A4A45C  FC 01 00 32 */	fmul f0, f1, f0
/* 80A4A460  FC 03 00 28 */	fsub f0, f3, f0
/* 80A4A464  FC 02 00 32 */	fmul f0, f2, f0
/* 80A4A468  FC 44 00 32 */	fmul f2, f4, f0
/* 80A4A46C  FC 00 00 32 */	fmul f0, f0, f0
/* 80A4A470  FC 01 00 32 */	fmul f0, f1, f0
/* 80A4A474  FC 03 00 28 */	fsub f0, f3, f0
/* 80A4A478  FC 02 00 32 */	fmul f0, f2, f0
/* 80A4A47C  FC 21 00 32 */	fmul f1, f1, f0
/* 80A4A480  FC 20 08 18 */	frsp f1, f1
/* 80A4A484  48 00 00 88 */	b lbl_80A4A50C
lbl_80A4A488:
/* 80A4A488  C8 1E 00 60 */	lfd f0, 0x60(r30)
/* 80A4A48C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4A490  40 80 00 10 */	bge lbl_80A4A4A0
/* 80A4A494  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A4A498  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80A4A49C  48 00 00 70 */	b lbl_80A4A50C
lbl_80A4A4A0:
/* 80A4A4A0  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A4A4A4  80 81 00 08 */	lwz r4, 8(r1)
/* 80A4A4A8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A4A4AC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A4A4B0  7C 03 00 00 */	cmpw r3, r0
/* 80A4A4B4  41 82 00 14 */	beq lbl_80A4A4C8
/* 80A4A4B8  40 80 00 40 */	bge lbl_80A4A4F8
/* 80A4A4BC  2C 03 00 00 */	cmpwi r3, 0
/* 80A4A4C0  41 82 00 20 */	beq lbl_80A4A4E0
/* 80A4A4C4  48 00 00 34 */	b lbl_80A4A4F8
lbl_80A4A4C8:
/* 80A4A4C8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A4A4CC  41 82 00 0C */	beq lbl_80A4A4D8
/* 80A4A4D0  38 00 00 01 */	li r0, 1
/* 80A4A4D4  48 00 00 28 */	b lbl_80A4A4FC
lbl_80A4A4D8:
/* 80A4A4D8  38 00 00 02 */	li r0, 2
/* 80A4A4DC  48 00 00 20 */	b lbl_80A4A4FC
lbl_80A4A4E0:
/* 80A4A4E0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A4A4E4  41 82 00 0C */	beq lbl_80A4A4F0
/* 80A4A4E8  38 00 00 05 */	li r0, 5
/* 80A4A4EC  48 00 00 10 */	b lbl_80A4A4FC
lbl_80A4A4F0:
/* 80A4A4F0  38 00 00 03 */	li r0, 3
/* 80A4A4F4  48 00 00 08 */	b lbl_80A4A4FC
lbl_80A4A4F8:
/* 80A4A4F8  38 00 00 04 */	li r0, 4
lbl_80A4A4FC:
/* 80A4A4FC  2C 00 00 01 */	cmpwi r0, 1
/* 80A4A500  40 82 00 0C */	bne lbl_80A4A50C
/* 80A4A504  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A4A508  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80A4A50C:
/* 80A4A50C  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80A4A510  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4A514  40 80 00 18 */	bge lbl_80A4A52C
/* 80A4A518  38 00 00 6E */	li r0, 0x6e
/* 80A4A51C  3C 60 80 A6 */	lis r3, leader@ha
/* 80A4A520  38 63 FE A0 */	addi r3, r3, leader@l
/* 80A4A524  80 63 00 00 */	lwz r3, 0(r3)
/* 80A4A528  B0 03 0B 42 */	sth r0, 0xb42(r3)
lbl_80A4A52C:
/* 80A4A52C  39 61 00 40 */	addi r11, r1, 0x40
/* 80A4A530  4B 91 7C F8 */	b _restgpr_29
/* 80A4A534  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A4A538  7C 08 03 A6 */	mtlr r0
/* 80A4A53C  38 21 00 40 */	addi r1, r1, 0x40
/* 80A4A540  4E 80 00 20 */	blr 
