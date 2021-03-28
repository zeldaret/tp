lbl_8065A0E8:
/* 8065A0E8  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8065A0EC  7C 08 02 A6 */	mflr r0
/* 8065A0F0  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8065A0F4  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 8065A0F8  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 8065A0FC  39 61 00 90 */	addi r11, r1, 0x90
/* 8065A100  4B D0 80 DC */	b _savegpr_29
/* 8065A104  7C 7D 1B 78 */	mr r29, r3
/* 8065A108  3C 60 80 66 */	lis r3, cNullVec__6Z2Calc@ha
/* 8065A10C  3B C3 2F 58 */	addi r30, r3, cNullVec__6Z2Calc@l
/* 8065A110  3C 60 80 66 */	lis r3, lit_3987@ha
/* 8065A114  3B E3 2D B0 */	addi r31, r3, lit_3987@l
/* 8065A118  A0 1D 0C 5C */	lhz r0, 0xc5c(r29)
/* 8065A11C  2C 00 00 02 */	cmpwi r0, 2
/* 8065A120  41 82 00 E8 */	beq lbl_8065A208
/* 8065A124  40 80 04 50 */	bge lbl_8065A574
/* 8065A128  2C 00 00 00 */	cmpwi r0, 0
/* 8065A12C  41 82 00 10 */	beq lbl_8065A13C
/* 8065A130  40 80 00 88 */	bge lbl_8065A1B8
/* 8065A134  48 00 04 40 */	b lbl_8065A574
/* 8065A138  48 00 04 3C */	b lbl_8065A574
lbl_8065A13C:
/* 8065A13C  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 8065A140  4B C0 D8 14 */	b cM_rndF__Ff
/* 8065A144  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 8065A148  EC 00 08 2A */	fadds f0, f0, f1
/* 8065A14C  FC 00 00 1E */	fctiwz f0, f0
/* 8065A150  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 8065A154  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8065A158  90 1D 0C 58 */	stw r0, 0xc58(r29)
/* 8065A15C  38 00 00 00 */	li r0, 0
/* 8065A160  90 1D 0C 90 */	stw r0, 0xc90(r29)
/* 8065A164  88 1D 0C AA */	lbz r0, 0xcaa(r29)
/* 8065A168  28 00 00 00 */	cmplwi r0, 0
/* 8065A16C  40 82 00 28 */	bne lbl_8065A194
/* 8065A170  7F A3 EB 78 */	mr r3, r29
/* 8065A174  38 80 00 09 */	li r4, 9
/* 8065A178  38 A0 00 02 */	li r5, 2
/* 8065A17C  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8065A180  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8065A184  4B FF E5 AD */	bl setBck__7daCow_cFiUcff
/* 8065A188  38 00 00 02 */	li r0, 2
/* 8065A18C  B0 1D 0C 5C */	sth r0, 0xc5c(r29)
/* 8065A190  48 00 03 E4 */	b lbl_8065A574
lbl_8065A194:
/* 8065A194  7F A3 EB 78 */	mr r3, r29
/* 8065A198  38 80 00 06 */	li r4, 6
/* 8065A19C  38 A0 00 00 */	li r5, 0
/* 8065A1A0  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8065A1A4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8065A1A8  4B FF E5 89 */	bl setBck__7daCow_cFiUcff
/* 8065A1AC  38 00 00 01 */	li r0, 1
/* 8065A1B0  B0 1D 0C 5C */	sth r0, 0xc5c(r29)
/* 8065A1B4  48 00 03 C0 */	b lbl_8065A574
lbl_8065A1B8:
/* 8065A1B8  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 8065A1BC  38 80 00 01 */	li r4, 1
/* 8065A1C0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8065A1C4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8065A1C8  40 82 00 18 */	bne lbl_8065A1E0
/* 8065A1CC  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8065A1D0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8065A1D4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8065A1D8  41 82 00 08 */	beq lbl_8065A1E0
/* 8065A1DC  38 80 00 00 */	li r4, 0
lbl_8065A1E0:
/* 8065A1E0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8065A1E4  41 82 00 24 */	beq lbl_8065A208
/* 8065A1E8  7F A3 EB 78 */	mr r3, r29
/* 8065A1EC  38 80 00 09 */	li r4, 9
/* 8065A1F0  38 A0 00 02 */	li r5, 2
/* 8065A1F4  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8065A1F8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8065A1FC  4B FF E5 35 */	bl setBck__7daCow_cFiUcff
/* 8065A200  38 00 00 02 */	li r0, 2
/* 8065A204  B0 1D 0C 5C */	sth r0, 0xc5c(r29)
lbl_8065A208:
/* 8065A208  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 8065A20C  38 63 00 0C */	addi r3, r3, 0xc
/* 8065A210  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8065A214  4B CC E2 18 */	b checkPass__12J3DFrameCtrlFf
/* 8065A218  2C 03 00 00 */	cmpwi r3, 0
/* 8065A21C  40 82 00 4C */	bne lbl_8065A268
/* 8065A220  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 8065A224  38 63 00 0C */	addi r3, r3, 0xc
/* 8065A228  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 8065A22C  4B CC E2 00 */	b checkPass__12J3DFrameCtrlFf
/* 8065A230  2C 03 00 00 */	cmpwi r3, 0
/* 8065A234  40 82 00 34 */	bne lbl_8065A268
/* 8065A238  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 8065A23C  38 63 00 0C */	addi r3, r3, 0xc
/* 8065A240  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 8065A244  4B CC E1 E8 */	b checkPass__12J3DFrameCtrlFf
/* 8065A248  2C 03 00 00 */	cmpwi r3, 0
/* 8065A24C  40 82 00 1C */	bne lbl_8065A268
/* 8065A250  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 8065A254  38 63 00 0C */	addi r3, r3, 0xc
/* 8065A258  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 8065A25C  4B CC E1 D0 */	b checkPass__12J3DFrameCtrlFf
/* 8065A260  2C 03 00 00 */	cmpwi r3, 0
/* 8065A264  41 82 00 2C */	beq lbl_8065A290
lbl_8065A268:
/* 8065A268  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050022@ha */
/* 8065A26C  38 03 00 22 */	addi r0, r3, 0x0022 /* 0x00050022@l */
/* 8065A270  90 01 00 0C */	stw r0, 0xc(r1)
/* 8065A274  38 7D 05 7C */	addi r3, r29, 0x57c
/* 8065A278  38 81 00 0C */	addi r4, r1, 0xc
/* 8065A27C  38 A0 FF FF */	li r5, -1
/* 8065A280  81 9D 05 7C */	lwz r12, 0x57c(r29)
/* 8065A284  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8065A288  7D 89 03 A6 */	mtctr r12
/* 8065A28C  4E 80 04 21 */	bctrl 
lbl_8065A290:
/* 8065A290  88 1D 0C A5 */	lbz r0, 0xca5(r29)
/* 8065A294  28 00 00 00 */	cmplwi r0, 0
/* 8065A298  40 82 00 AC */	bne lbl_8065A344
/* 8065A29C  7F A3 EB 78 */	mr r3, r29
/* 8065A2A0  4B FF F7 21 */	bl checkNearCowRun__7daCow_cFv
/* 8065A2A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8065A2A8  40 82 00 14 */	bne lbl_8065A2BC
/* 8065A2AC  7F A3 EB 78 */	mr r3, r29
/* 8065A2B0  48 00 0A 7D */	bl checkPlayerWait__7daCow_cFv
/* 8065A2B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8065A2B8  41 82 00 30 */	beq lbl_8065A2E8
lbl_8065A2BC:
/* 8065A2BC  80 7E 01 B4 */	lwz r3, 0x1b4(r30)
/* 8065A2C0  80 1E 01 B8 */	lwz r0, 0x1b8(r30)
/* 8065A2C4  90 61 00 64 */	stw r3, 0x64(r1)
/* 8065A2C8  90 01 00 68 */	stw r0, 0x68(r1)
/* 8065A2CC  80 1E 01 BC */	lwz r0, 0x1bc(r30)
/* 8065A2D0  90 01 00 6C */	stw r0, 0x6c(r1)
/* 8065A2D4  7F A3 EB 78 */	mr r3, r29
/* 8065A2D8  38 81 00 64 */	addi r4, r1, 0x64
/* 8065A2DC  38 A0 00 00 */	li r5, 0
/* 8065A2E0  4B FF EE 35 */	bl setProcess__7daCow_cFM7daCow_cFPCvPv_vi
/* 8065A2E4  48 00 02 90 */	b lbl_8065A574
lbl_8065A2E8:
/* 8065A2E8  7F A3 EB 78 */	mr r3, r29
/* 8065A2EC  4B FF E8 25 */	bl setCarryStatus__7daCow_cFv
/* 8065A2F0  7F A3 EB 78 */	mr r3, r29
/* 8065A2F4  4B FF EA C5 */	bl checkThrow__7daCow_cFv
/* 8065A2F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8065A2FC  40 82 02 78 */	bne lbl_8065A574
/* 8065A300  7F A3 EB 78 */	mr r3, r29
/* 8065A304  4B FF E9 15 */	bl setActetcStatus__7daCow_cFv
/* 8065A308  7F A3 EB 78 */	mr r3, r29
/* 8065A30C  4B FF E9 99 */	bl checkNadeNade__7daCow_cFv
/* 8065A310  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8065A314  41 82 00 30 */	beq lbl_8065A344
/* 8065A318  80 7E 01 C0 */	lwz r3, 0x1c0(r30)
/* 8065A31C  80 1E 01 C4 */	lwz r0, 0x1c4(r30)
/* 8065A320  90 61 00 58 */	stw r3, 0x58(r1)
/* 8065A324  90 01 00 5C */	stw r0, 0x5c(r1)
/* 8065A328  80 1E 01 C8 */	lwz r0, 0x1c8(r30)
/* 8065A32C  90 01 00 60 */	stw r0, 0x60(r1)
/* 8065A330  7F A3 EB 78 */	mr r3, r29
/* 8065A334  38 81 00 58 */	addi r4, r1, 0x58
/* 8065A338  38 A0 00 01 */	li r5, 1
/* 8065A33C  4B FF ED D9 */	bl setProcess__7daCow_cFM7daCow_cFPCvPv_vi
/* 8065A340  48 00 02 34 */	b lbl_8065A574
lbl_8065A344:
/* 8065A344  38 7D 0C 58 */	addi r3, r29, 0xc58
/* 8065A348  48 00 89 69 */	bl func_80662CB0
/* 8065A34C  2C 03 00 00 */	cmpwi r3, 0
/* 8065A350  40 82 02 24 */	bne lbl_8065A574
/* 8065A354  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 8065A358  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8065A35C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8065A360  41 82 02 14 */	beq lbl_8065A574
/* 8065A364  7F A3 EB 78 */	mr r3, r29
/* 8065A368  48 00 09 61 */	bl checkNearWolf__7daCow_cFv
/* 8065A36C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8065A370  41 82 00 30 */	beq lbl_8065A3A0
/* 8065A374  80 7E 01 CC */	lwz r3, 0x1cc(r30)
/* 8065A378  80 1E 01 D0 */	lwz r0, 0x1d0(r30)
/* 8065A37C  90 61 00 4C */	stw r3, 0x4c(r1)
/* 8065A380  90 01 00 50 */	stw r0, 0x50(r1)
/* 8065A384  80 1E 01 D4 */	lwz r0, 0x1d4(r30)
/* 8065A388  90 01 00 54 */	stw r0, 0x54(r1)
/* 8065A38C  7F A3 EB 78 */	mr r3, r29
/* 8065A390  38 81 00 4C */	addi r4, r1, 0x4c
/* 8065A394  38 A0 00 00 */	li r5, 0
/* 8065A398  4B FF ED 7D */	bl setProcess__7daCow_cFM7daCow_cFPCvPv_vi
/* 8065A39C  48 00 01 D8 */	b lbl_8065A574
lbl_8065A3A0:
/* 8065A3A0  4B C0 D4 CC */	b cM_rnd__Fv
/* 8065A3A4  FF E0 08 90 */	fmr f31, f1
/* 8065A3A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8065A3AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8065A3B0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8065A3B4  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 8065A3B8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8065A3BC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8065A3C0  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8065A3C4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8065A3C8  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8065A3CC  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 8065A3D0  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8065A3D4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8065A3D8  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8065A3DC  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 8065A3E0  38 61 00 10 */	addi r3, r1, 0x10
/* 8065A3E4  38 81 00 1C */	addi r4, r1, 0x1c
/* 8065A3E8  4B CE CF B4 */	b PSVECSquareDistance
/* 8065A3EC  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8065A3F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065A3F4  40 81 00 58 */	ble lbl_8065A44C
/* 8065A3F8  FC 00 08 34 */	frsqrte f0, f1
/* 8065A3FC  C8 9F 00 68 */	lfd f4, 0x68(r31)
/* 8065A400  FC 44 00 32 */	fmul f2, f4, f0
/* 8065A404  C8 7F 00 70 */	lfd f3, 0x70(r31)
/* 8065A408  FC 00 00 32 */	fmul f0, f0, f0
/* 8065A40C  FC 01 00 32 */	fmul f0, f1, f0
/* 8065A410  FC 03 00 28 */	fsub f0, f3, f0
/* 8065A414  FC 02 00 32 */	fmul f0, f2, f0
/* 8065A418  FC 44 00 32 */	fmul f2, f4, f0
/* 8065A41C  FC 00 00 32 */	fmul f0, f0, f0
/* 8065A420  FC 01 00 32 */	fmul f0, f1, f0
/* 8065A424  FC 03 00 28 */	fsub f0, f3, f0
/* 8065A428  FC 02 00 32 */	fmul f0, f2, f0
/* 8065A42C  FC 44 00 32 */	fmul f2, f4, f0
/* 8065A430  FC 00 00 32 */	fmul f0, f0, f0
/* 8065A434  FC 01 00 32 */	fmul f0, f1, f0
/* 8065A438  FC 03 00 28 */	fsub f0, f3, f0
/* 8065A43C  FC 02 00 32 */	fmul f0, f2, f0
/* 8065A440  FC 21 00 32 */	fmul f1, f1, f0
/* 8065A444  FC 20 08 18 */	frsp f1, f1
/* 8065A448  48 00 00 88 */	b lbl_8065A4D0
lbl_8065A44C:
/* 8065A44C  C8 1F 00 78 */	lfd f0, 0x78(r31)
/* 8065A450  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065A454  40 80 00 10 */	bge lbl_8065A464
/* 8065A458  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8065A45C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8065A460  48 00 00 70 */	b lbl_8065A4D0
lbl_8065A464:
/* 8065A464  D0 21 00 08 */	stfs f1, 8(r1)
/* 8065A468  80 81 00 08 */	lwz r4, 8(r1)
/* 8065A46C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8065A470  3C 00 7F 80 */	lis r0, 0x7f80
/* 8065A474  7C 03 00 00 */	cmpw r3, r0
/* 8065A478  41 82 00 14 */	beq lbl_8065A48C
/* 8065A47C  40 80 00 40 */	bge lbl_8065A4BC
/* 8065A480  2C 03 00 00 */	cmpwi r3, 0
/* 8065A484  41 82 00 20 */	beq lbl_8065A4A4
/* 8065A488  48 00 00 34 */	b lbl_8065A4BC
lbl_8065A48C:
/* 8065A48C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8065A490  41 82 00 0C */	beq lbl_8065A49C
/* 8065A494  38 00 00 01 */	li r0, 1
/* 8065A498  48 00 00 28 */	b lbl_8065A4C0
lbl_8065A49C:
/* 8065A49C  38 00 00 02 */	li r0, 2
/* 8065A4A0  48 00 00 20 */	b lbl_8065A4C0
lbl_8065A4A4:
/* 8065A4A4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8065A4A8  41 82 00 0C */	beq lbl_8065A4B4
/* 8065A4AC  38 00 00 05 */	li r0, 5
/* 8065A4B0  48 00 00 10 */	b lbl_8065A4C0
lbl_8065A4B4:
/* 8065A4B4  38 00 00 03 */	li r0, 3
/* 8065A4B8  48 00 00 08 */	b lbl_8065A4C0
lbl_8065A4BC:
/* 8065A4BC  38 00 00 04 */	li r0, 4
lbl_8065A4C0:
/* 8065A4C0  2C 00 00 01 */	cmpwi r0, 1
/* 8065A4C4  40 82 00 0C */	bne lbl_8065A4D0
/* 8065A4C8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8065A4CC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8065A4D0:
/* 8065A4D0  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8065A4D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065A4D8  40 81 00 3C */	ble lbl_8065A514
/* 8065A4DC  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 8065A4E0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8065A4E4  40 80 00 30 */	bge lbl_8065A514
/* 8065A4E8  80 7E 01 D8 */	lwz r3, 0x1d8(r30)
/* 8065A4EC  80 1E 01 DC */	lwz r0, 0x1dc(r30)
/* 8065A4F0  90 61 00 40 */	stw r3, 0x40(r1)
/* 8065A4F4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8065A4F8  80 1E 01 E0 */	lwz r0, 0x1e0(r30)
/* 8065A4FC  90 01 00 48 */	stw r0, 0x48(r1)
/* 8065A500  7F A3 EB 78 */	mr r3, r29
/* 8065A504  38 81 00 40 */	addi r4, r1, 0x40
/* 8065A508  38 A0 00 00 */	li r5, 0
/* 8065A50C  4B FF EC 09 */	bl setProcess__7daCow_cFM7daCow_cFPCvPv_vi
/* 8065A510  48 00 00 64 */	b lbl_8065A574
lbl_8065A514:
/* 8065A514  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 8065A518  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8065A51C  40 80 00 30 */	bge lbl_8065A54C
/* 8065A520  80 7E 01 E4 */	lwz r3, 0x1e4(r30)
/* 8065A524  80 1E 01 E8 */	lwz r0, 0x1e8(r30)
/* 8065A528  90 61 00 34 */	stw r3, 0x34(r1)
/* 8065A52C  90 01 00 38 */	stw r0, 0x38(r1)
/* 8065A530  80 1E 01 EC */	lwz r0, 0x1ec(r30)
/* 8065A534  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8065A538  7F A3 EB 78 */	mr r3, r29
/* 8065A53C  38 81 00 34 */	addi r4, r1, 0x34
/* 8065A540  38 A0 00 00 */	li r5, 0
/* 8065A544  4B FF EB D1 */	bl setProcess__7daCow_cFM7daCow_cFPCvPv_vi
/* 8065A548  48 00 00 2C */	b lbl_8065A574
lbl_8065A54C:
/* 8065A54C  80 7E 01 F0 */	lwz r3, 0x1f0(r30)
/* 8065A550  80 1E 01 F4 */	lwz r0, 0x1f4(r30)
/* 8065A554  90 61 00 28 */	stw r3, 0x28(r1)
/* 8065A558  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8065A55C  80 1E 01 F8 */	lwz r0, 0x1f8(r30)
/* 8065A560  90 01 00 30 */	stw r0, 0x30(r1)
/* 8065A564  7F A3 EB 78 */	mr r3, r29
/* 8065A568  38 81 00 28 */	addi r4, r1, 0x28
/* 8065A56C  38 A0 00 01 */	li r5, 1
/* 8065A570  4B FF EB A5 */	bl setProcess__7daCow_cFM7daCow_cFPCvPv_vi
lbl_8065A574:
/* 8065A574  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 8065A578  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 8065A57C  39 61 00 90 */	addi r11, r1, 0x90
/* 8065A580  4B D0 7C A8 */	b _restgpr_29
/* 8065A584  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8065A588  7C 08 03 A6 */	mtlr r0
/* 8065A58C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8065A590  4E 80 00 20 */	blr 
