lbl_807BF358:
/* 807BF358  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 807BF35C  7C 08 02 A6 */	mflr r0
/* 807BF360  90 01 00 64 */	stw r0, 0x64(r1)
/* 807BF364  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 807BF368  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 807BF36C  39 61 00 50 */	addi r11, r1, 0x50
/* 807BF370  4B BA 2E 6D */	bl _savegpr_29
/* 807BF374  7C 7D 1B 78 */	mr r29, r3
/* 807BF378  3C 80 80 7C */	lis r4, lit_3908@ha /* 0x807C1FB8@ha */
/* 807BF37C  3B C4 1F B8 */	addi r30, r4, lit_3908@l /* 0x807C1FB8@l */
/* 807BF380  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807BF384  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807BF388  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807BF38C  4B 85 B4 55 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807BF390  FF E0 08 90 */	fmr f31, f1
/* 807BF394  80 1D 06 BC */	lwz r0, 0x6bc(r29)
/* 807BF398  28 00 00 0A */	cmplwi r0, 0xa
/* 807BF39C  41 81 05 58 */	bgt lbl_807BF8F4
/* 807BF3A0  3C 60 80 7C */	lis r3, lit_4941@ha /* 0x807C220C@ha */
/* 807BF3A4  38 63 22 0C */	addi r3, r3, lit_4941@l /* 0x807C220C@l */
/* 807BF3A8  54 00 10 3A */	slwi r0, r0, 2
/* 807BF3AC  7C 03 00 2E */	lwzx r0, r3, r0
/* 807BF3B0  7C 09 03 A6 */	mtctr r0
/* 807BF3B4  4E 80 04 20 */	bctr 
lbl_807BF3B8:
/* 807BF3B8  38 00 00 1E */	li r0, 0x1e
/* 807BF3BC  98 1D 06 EA */	stb r0, 0x6ea(r29)
lbl_807BF3C0:
/* 807BF3C0  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 807BF3C4  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 807BF3C8  7F A3 EB 78 */	mr r3, r29
/* 807BF3CC  38 80 00 10 */	li r4, 0x10
/* 807BF3D0  38 A0 00 02 */	li r5, 2
/* 807BF3D4  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 807BF3D8  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807BF3DC  4B FF E7 05 */	bl setBck__8daE_TT_cFiUcff
/* 807BF3E0  38 00 00 01 */	li r0, 1
/* 807BF3E4  90 1D 06 BC */	stw r0, 0x6bc(r29)
lbl_807BF3E8:
/* 807BF3E8  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 807BF3EC  38 63 00 0C */	addi r3, r3, 0xc
/* 807BF3F0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807BF3F4  4B B6 90 39 */	bl checkPass__12J3DFrameCtrlFf
/* 807BF3F8  2C 03 00 00 */	cmpwi r3, 0
/* 807BF3FC  41 82 00 58 */	beq lbl_807BF454
/* 807BF400  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070255@ha */
/* 807BF404  38 03 02 55 */	addi r0, r3, 0x0255 /* 0x00070255@l */
/* 807BF408  90 01 00 14 */	stw r0, 0x14(r1)
/* 807BF40C  38 7D 05 C0 */	addi r3, r29, 0x5c0
/* 807BF410  38 81 00 14 */	addi r4, r1, 0x14
/* 807BF414  38 A0 FF FF */	li r5, -1
/* 807BF418  81 9D 05 C0 */	lwz r12, 0x5c0(r29)
/* 807BF41C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807BF420  7D 89 03 A6 */	mtctr r12
/* 807BF424  4E 80 04 21 */	bctrl 
/* 807BF428  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070253@ha */
/* 807BF42C  38 03 02 53 */	addi r0, r3, 0x0253 /* 0x00070253@l */
/* 807BF430  90 01 00 10 */	stw r0, 0x10(r1)
/* 807BF434  38 7D 05 C0 */	addi r3, r29, 0x5c0
/* 807BF438  38 81 00 10 */	addi r4, r1, 0x10
/* 807BF43C  38 A0 00 00 */	li r5, 0
/* 807BF440  38 C0 FF FF */	li r6, -1
/* 807BF444  81 9D 05 C0 */	lwz r12, 0x5c0(r29)
/* 807BF448  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807BF44C  7D 89 03 A6 */	mtctr r12
/* 807BF450  4E 80 04 21 */	bctrl 
lbl_807BF454:
/* 807BF454  88 1D 06 EA */	lbz r0, 0x6ea(r29)
/* 807BF458  28 00 00 00 */	cmplwi r0, 0
/* 807BF45C  40 82 01 4C */	bne lbl_807BF5A8
/* 807BF460  C0 1D 06 D4 */	lfs f0, 0x6d4(r29)
/* 807BF464  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807BF468  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 807BF46C  41 82 01 3C */	beq lbl_807BF5A8
/* 807BF470  C0 5D 04 B0 */	lfs f2, 0x4b0(r29)
/* 807BF474  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 807BF478  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807BF47C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 807BF480  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 807BF484  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 807BF488  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807BF48C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807BF490  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 807BF494  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 807BF498  38 61 00 18 */	addi r3, r1, 0x18
/* 807BF49C  38 81 00 24 */	addi r4, r1, 0x24
/* 807BF4A0  4B B8 7E FD */	bl PSVECSquareDistance
/* 807BF4A4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807BF4A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807BF4AC  40 81 00 58 */	ble lbl_807BF504
/* 807BF4B0  FC 00 08 34 */	frsqrte f0, f1
/* 807BF4B4  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 807BF4B8  FC 44 00 32 */	fmul f2, f4, f0
/* 807BF4BC  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 807BF4C0  FC 00 00 32 */	fmul f0, f0, f0
/* 807BF4C4  FC 01 00 32 */	fmul f0, f1, f0
/* 807BF4C8  FC 03 00 28 */	fsub f0, f3, f0
/* 807BF4CC  FC 02 00 32 */	fmul f0, f2, f0
/* 807BF4D0  FC 44 00 32 */	fmul f2, f4, f0
/* 807BF4D4  FC 00 00 32 */	fmul f0, f0, f0
/* 807BF4D8  FC 01 00 32 */	fmul f0, f1, f0
/* 807BF4DC  FC 03 00 28 */	fsub f0, f3, f0
/* 807BF4E0  FC 02 00 32 */	fmul f0, f2, f0
/* 807BF4E4  FC 44 00 32 */	fmul f2, f4, f0
/* 807BF4E8  FC 00 00 32 */	fmul f0, f0, f0
/* 807BF4EC  FC 01 00 32 */	fmul f0, f1, f0
/* 807BF4F0  FC 03 00 28 */	fsub f0, f3, f0
/* 807BF4F4  FC 02 00 32 */	fmul f0, f2, f0
/* 807BF4F8  FC 21 00 32 */	fmul f1, f1, f0
/* 807BF4FC  FC 20 08 18 */	frsp f1, f1
/* 807BF500  48 00 00 88 */	b lbl_807BF588
lbl_807BF504:
/* 807BF504  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 807BF508  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807BF50C  40 80 00 10 */	bge lbl_807BF51C
/* 807BF510  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807BF514  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807BF518  48 00 00 70 */	b lbl_807BF588
lbl_807BF51C:
/* 807BF51C  D0 21 00 08 */	stfs f1, 8(r1)
/* 807BF520  80 81 00 08 */	lwz r4, 8(r1)
/* 807BF524  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807BF528  3C 00 7F 80 */	lis r0, 0x7f80
/* 807BF52C  7C 03 00 00 */	cmpw r3, r0
/* 807BF530  41 82 00 14 */	beq lbl_807BF544
/* 807BF534  40 80 00 40 */	bge lbl_807BF574
/* 807BF538  2C 03 00 00 */	cmpwi r3, 0
/* 807BF53C  41 82 00 20 */	beq lbl_807BF55C
/* 807BF540  48 00 00 34 */	b lbl_807BF574
lbl_807BF544:
/* 807BF544  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807BF548  41 82 00 0C */	beq lbl_807BF554
/* 807BF54C  38 00 00 01 */	li r0, 1
/* 807BF550  48 00 00 28 */	b lbl_807BF578
lbl_807BF554:
/* 807BF554  38 00 00 02 */	li r0, 2
/* 807BF558  48 00 00 20 */	b lbl_807BF578
lbl_807BF55C:
/* 807BF55C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807BF560  41 82 00 0C */	beq lbl_807BF56C
/* 807BF564  38 00 00 05 */	li r0, 5
/* 807BF568  48 00 00 10 */	b lbl_807BF578
lbl_807BF56C:
/* 807BF56C  38 00 00 03 */	li r0, 3
/* 807BF570  48 00 00 08 */	b lbl_807BF578
lbl_807BF574:
/* 807BF574  38 00 00 04 */	li r0, 4
lbl_807BF578:
/* 807BF578  2C 00 00 01 */	cmpwi r0, 1
/* 807BF57C  40 82 00 0C */	bne lbl_807BF588
/* 807BF580  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807BF584  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807BF588:
/* 807BF588  C0 1D 06 D4 */	lfs f0, 0x6d4(r29)
/* 807BF58C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807BF590  40 81 00 18 */	ble lbl_807BF5A8
/* 807BF594  7F A3 EB 78 */	mr r3, r29
/* 807BF598  38 80 00 05 */	li r4, 5
/* 807BF59C  38 A0 00 00 */	li r5, 0
/* 807BF5A0  4B FF E6 45 */	bl setActionMode__8daE_TT_cFii
/* 807BF5A4  48 00 03 50 */	b lbl_807BF8F4
lbl_807BF5A8:
/* 807BF5A8  7F A3 EB 78 */	mr r3, r29
/* 807BF5AC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807BF5B0  4B 85 B1 61 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807BF5B4  7C 64 1B 78 */	mr r4, r3
/* 807BF5B8  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 807BF5BC  38 A0 00 08 */	li r5, 8
/* 807BF5C0  38 C0 08 00 */	li r6, 0x800
/* 807BF5C4  38 E0 01 00 */	li r7, 0x100
/* 807BF5C8  4B AB 0F 79 */	bl cLib_addCalcAngleS__FPsssss
/* 807BF5CC  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 807BF5D0  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 807BF5D4  3C 60 80 7C */	lis r3, l_HIO@ha /* 0x807C23EC@ha */
/* 807BF5D8  38 63 23 EC */	addi r3, r3, l_HIO@l /* 0x807C23EC@l */
/* 807BF5DC  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 807BF5E0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 807BF5E4  40 81 00 28 */	ble lbl_807BF60C
/* 807BF5E8  38 00 00 05 */	li r0, 5
/* 807BF5EC  90 1D 06 BC */	stw r0, 0x6bc(r29)
/* 807BF5F0  7F A3 EB 78 */	mr r3, r29
/* 807BF5F4  38 80 00 0B */	li r4, 0xb
/* 807BF5F8  38 A0 00 00 */	li r5, 0
/* 807BF5FC  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 807BF600  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807BF604  4B FF E4 DD */	bl setBck__8daE_TT_cFiUcff
/* 807BF608  48 00 02 EC */	b lbl_807BF8F4
lbl_807BF60C:
/* 807BF60C  7F A3 EB 78 */	mr r3, r29
/* 807BF610  4B FF F5 9D */	bl checkPlayerSearch__8daE_TT_cFv
/* 807BF614  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807BF618  40 82 00 14 */	bne lbl_807BF62C
/* 807BF61C  7F A3 EB 78 */	mr r3, r29
/* 807BF620  38 80 00 00 */	li r4, 0
/* 807BF624  38 A0 00 00 */	li r5, 0
/* 807BF628  4B FF E5 BD */	bl setActionMode__8daE_TT_cFii
lbl_807BF62C:
/* 807BF62C  80 1D 06 EC */	lwz r0, 0x6ec(r29)
/* 807BF630  2C 00 00 00 */	cmpwi r0, 0
/* 807BF634  40 82 02 C0 */	bne lbl_807BF8F4
/* 807BF638  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 807BF63C  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 807BF640  40 82 02 B4 */	bne lbl_807BF8F4
/* 807BF644  7F A3 EB 78 */	mr r3, r29
/* 807BF648  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807BF64C  4B 85 B0 C5 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807BF650  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807BF654  A8 04 04 E6 */	lha r0, 0x4e6(r4)
/* 807BF658  7C 03 00 50 */	subf r0, r3, r0
/* 807BF65C  7C 03 07 34 */	extsh r3, r0
/* 807BF660  4B BA 5A 71 */	bl abs
/* 807BF664  7C 60 07 34 */	extsh r0, r3
/* 807BF668  C8 3E 00 B0 */	lfd f1, 0xb0(r30)
/* 807BF66C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807BF670  90 01 00 34 */	stw r0, 0x34(r1)
/* 807BF674  3C 00 43 30 */	lis r0, 0x4330
/* 807BF678  90 01 00 30 */	stw r0, 0x30(r1)
/* 807BF67C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 807BF680  EC 20 08 28 */	fsubs f1, f0, f1
/* 807BF684  3C 60 80 7C */	lis r3, l_HIO@ha /* 0x807C23EC@ha */
/* 807BF688  38 63 23 EC */	addi r3, r3, l_HIO@l /* 0x807C23EC@l */
/* 807BF68C  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 807BF690  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807BF694  40 81 02 60 */	ble lbl_807BF8F4
/* 807BF698  3C 60 80 7C */	lis r3, m_attack_tt@ha /* 0x807C2404@ha */
/* 807BF69C  80 03 24 04 */	lwz r0, m_attack_tt@l(r3)  /* 0x807C2404@l */
/* 807BF6A0  28 00 00 00 */	cmplwi r0, 0
/* 807BF6A4  40 82 02 50 */	bne lbl_807BF8F4
/* 807BF6A8  7F A3 EB 78 */	mr r3, r29
/* 807BF6AC  38 80 00 02 */	li r4, 2
/* 807BF6B0  38 A0 00 00 */	li r5, 0
/* 807BF6B4  4B FF E5 31 */	bl setActionMode__8daE_TT_cFii
/* 807BF6B8  3C 60 80 7C */	lis r3, m_attack_tt@ha /* 0x807C2404@ha */
/* 807BF6BC  93 A3 24 04 */	stw r29, m_attack_tt@l(r3)  /* 0x807C2404@l */
/* 807BF6C0  48 00 02 34 */	b lbl_807BF8F4
lbl_807BF6C4:
/* 807BF6C4  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 807BF6C8  38 63 00 0C */	addi r3, r3, 0xc
/* 807BF6CC  C0 3E 00 94 */	lfs f1, 0x94(r30)
/* 807BF6D0  4B B6 8D 5D */	bl checkPass__12J3DFrameCtrlFf
/* 807BF6D4  2C 03 00 00 */	cmpwi r3, 0
/* 807BF6D8  41 82 00 30 */	beq lbl_807BF708
/* 807BF6DC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007024E@ha */
/* 807BF6E0  38 03 02 4E */	addi r0, r3, 0x024E /* 0x0007024E@l */
/* 807BF6E4  90 01 00 0C */	stw r0, 0xc(r1)
/* 807BF6E8  38 7D 05 C0 */	addi r3, r29, 0x5c0
/* 807BF6EC  38 81 00 0C */	addi r4, r1, 0xc
/* 807BF6F0  38 A0 00 00 */	li r5, 0
/* 807BF6F4  38 C0 FF FF */	li r6, -1
/* 807BF6F8  81 9D 05 C0 */	lwz r12, 0x5c0(r29)
/* 807BF6FC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807BF700  7D 89 03 A6 */	mtctr r12
/* 807BF704  4E 80 04 21 */	bctrl 
lbl_807BF708:
/* 807BF708  7F A3 EB 78 */	mr r3, r29
/* 807BF70C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807BF710  4B 85 B0 01 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807BF714  7C 64 1B 78 */	mr r4, r3
/* 807BF718  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 807BF71C  38 A0 00 08 */	li r5, 8
/* 807BF720  38 C0 08 00 */	li r6, 0x800
/* 807BF724  38 E0 01 00 */	li r7, 0x100
/* 807BF728  4B AB 0E 19 */	bl cLib_addCalcAngleS__FPsssss
/* 807BF72C  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 807BF730  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 807BF734  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 807BF738  38 80 00 01 */	li r4, 1
/* 807BF73C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807BF740  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807BF744  40 82 00 18 */	bne lbl_807BF75C
/* 807BF748  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807BF74C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807BF750  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807BF754  41 82 00 08 */	beq lbl_807BF75C
/* 807BF758  38 80 00 00 */	li r4, 0
lbl_807BF75C:
/* 807BF75C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807BF760  41 82 01 94 */	beq lbl_807BF8F4
/* 807BF764  7F A3 EB 78 */	mr r3, r29
/* 807BF768  38 80 00 0C */	li r4, 0xc
/* 807BF76C  38 A0 00 00 */	li r5, 0
/* 807BF770  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 807BF774  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807BF778  4B FF E3 69 */	bl setBck__8daE_TT_cFiUcff
/* 807BF77C  38 00 00 06 */	li r0, 6
/* 807BF780  90 1D 06 BC */	stw r0, 0x6bc(r29)
/* 807BF784  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 807BF788  3C 60 80 7C */	lis r3, l_HIO@ha /* 0x807C23EC@ha */
/* 807BF78C  38 63 23 EC */	addi r3, r3, l_HIO@l /* 0x807C23EC@l */
/* 807BF790  C0 43 00 10 */	lfs f2, 0x10(r3)
/* 807BF794  EC 01 10 2A */	fadds f0, f1, f2
/* 807BF798  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 807BF79C  40 80 00 4C */	bge lbl_807BF7E8
/* 807BF7A0  EC 7F 10 28 */	fsubs f3, f31, f2
/* 807BF7A4  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 807BF7A8  40 81 00 08 */	ble lbl_807BF7B0
/* 807BF7AC  FC 60 08 90 */	fmr f3, f1
lbl_807BF7B0:
/* 807BF7B0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807BF7B4  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 807BF7B8  40 80 00 08 */	bge lbl_807BF7C0
/* 807BF7BC  FC 60 00 90 */	fmr f3, f0
lbl_807BF7C0:
/* 807BF7C0  C0 5E 00 A0 */	lfs f2, 0xa0(r30)
/* 807BF7C4  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 807BF7C8  EC 20 00 F2 */	fmuls f1, f0, f3
/* 807BF7CC  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 807BF7D0  EC 01 00 24 */	fdivs f0, f1, f0
/* 807BF7D4  EC 02 00 2A */	fadds f0, f2, f0
/* 807BF7D8  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 807BF7DC  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 807BF7E0  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 807BF7E4  48 00 01 10 */	b lbl_807BF8F4
lbl_807BF7E8:
/* 807BF7E8  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 807BF7EC  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 807BF7F0  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 807BF7F4  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 807BF7F8  48 00 00 FC */	b lbl_807BF8F4
lbl_807BF7FC:
/* 807BF7FC  80 1D 09 50 */	lwz r0, 0x950(r29)
/* 807BF800  60 00 00 01 */	ori r0, r0, 1
/* 807BF804  90 1D 09 50 */	stw r0, 0x950(r29)
/* 807BF808  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 807BF80C  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 807BF810  41 82 00 0C */	beq lbl_807BF81C
/* 807BF814  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807BF818  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
lbl_807BF81C:
/* 807BF81C  C0 1D 04 FC */	lfs f0, 0x4fc(r29)
/* 807BF820  C0 5E 00 04 */	lfs f2, 4(r30)
/* 807BF824  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 807BF828  4C 40 13 82 */	cror 2, 0, 2
/* 807BF82C  40 82 00 C8 */	bne lbl_807BF8F4
/* 807BF830  7F A3 EB 78 */	mr r3, r29
/* 807BF834  38 80 00 0D */	li r4, 0xd
/* 807BF838  38 A0 00 00 */	li r5, 0
/* 807BF83C  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 807BF840  4B FF E2 A1 */	bl setBck__8daE_TT_cFiUcff
/* 807BF844  38 00 00 07 */	li r0, 7
/* 807BF848  90 1D 06 BC */	stw r0, 0x6bc(r29)
/* 807BF84C  48 00 00 A8 */	b lbl_807BF8F4
lbl_807BF850:
/* 807BF850  80 1D 09 50 */	lwz r0, 0x950(r29)
/* 807BF854  60 00 00 01 */	ori r0, r0, 1
/* 807BF858  90 1D 09 50 */	stw r0, 0x950(r29)
/* 807BF85C  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 807BF860  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807BF864  41 82 00 90 */	beq lbl_807BF8F4
/* 807BF868  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 807BF86C  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 807BF870  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 807BF874  38 00 00 08 */	li r0, 8
/* 807BF878  90 1D 06 BC */	stw r0, 0x6bc(r29)
/* 807BF87C  7F A3 EB 78 */	mr r3, r29
/* 807BF880  4B FF EB B9 */	bl setWaterEffect__8daE_TT_cFv
/* 807BF884  38 00 00 05 */	li r0, 5
/* 807BF888  98 1D 06 EA */	stb r0, 0x6ea(r29)
/* 807BF88C  48 00 00 68 */	b lbl_807BF8F4
lbl_807BF890:
/* 807BF890  88 1D 06 EA */	lbz r0, 0x6ea(r29)
/* 807BF894  28 00 00 00 */	cmplwi r0, 0
/* 807BF898  41 82 00 10 */	beq lbl_807BF8A8
/* 807BF89C  80 1D 09 50 */	lwz r0, 0x950(r29)
/* 807BF8A0  60 00 00 01 */	ori r0, r0, 1
/* 807BF8A4  90 1D 09 50 */	stw r0, 0x950(r29)
lbl_807BF8A8:
/* 807BF8A8  7F A3 EB 78 */	mr r3, r29
/* 807BF8AC  4B FF E2 D9 */	bl calcHitGroundSpeed__8daE_TT_cFv
/* 807BF8B0  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 807BF8B4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807BF8B8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 807BF8BC  40 82 00 38 */	bne lbl_807BF8F4
/* 807BF8C0  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 807BF8C4  38 80 00 01 */	li r4, 1
/* 807BF8C8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807BF8CC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807BF8D0  40 82 00 14 */	bne lbl_807BF8E4
/* 807BF8D4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807BF8D8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807BF8DC  41 82 00 08 */	beq lbl_807BF8E4
/* 807BF8E0  38 80 00 00 */	li r4, 0
lbl_807BF8E4:
/* 807BF8E4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807BF8E8  41 82 00 0C */	beq lbl_807BF8F4
/* 807BF8EC  38 00 00 0A */	li r0, 0xa
/* 807BF8F0  90 1D 06 BC */	stw r0, 0x6bc(r29)
lbl_807BF8F4:
/* 807BF8F4  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 807BF8F8  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 807BF8FC  39 61 00 50 */	addi r11, r1, 0x50
/* 807BF900  4B BA 29 29 */	bl _restgpr_29
/* 807BF904  80 01 00 64 */	lwz r0, 0x64(r1)
/* 807BF908  7C 08 03 A6 */	mtlr r0
/* 807BF90C  38 21 00 60 */	addi r1, r1, 0x60
/* 807BF910  4E 80 00 20 */	blr 
