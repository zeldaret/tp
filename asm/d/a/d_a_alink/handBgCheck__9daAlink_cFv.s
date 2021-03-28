lbl_800A39B8:
/* 800A39B8  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 800A39BC  7C 08 02 A6 */	mflr r0
/* 800A39C0  90 01 00 84 */	stw r0, 0x84(r1)
/* 800A39C4  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 800A39C8  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 800A39CC  39 61 00 70 */	addi r11, r1, 0x70
/* 800A39D0  48 2B E7 F5 */	bl _savegpr_23
/* 800A39D4  7C 7C 1B 78 */	mr r28, r3
/* 800A39D8  80 83 20 60 */	lwz r4, 0x2060(r3)
/* 800A39DC  88 04 00 00 */	lbz r0, 0(r4)
/* 800A39E0  28 00 00 00 */	cmplwi r0, 0
/* 800A39E4  41 82 02 88 */	beq lbl_800A3C6C
/* 800A39E8  80 1C 31 A0 */	lwz r0, 0x31a0(r28)
/* 800A39EC  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800A39F0  40 82 00 08 */	bne lbl_800A39F8
/* 800A39F4  48 00 02 78 */	b lbl_800A3C6C
lbl_800A39F8:
/* 800A39F8  A0 1C 2F E8 */	lhz r0, 0x2fe8(r28)
/* 800A39FC  28 00 00 5A */	cmplwi r0, 0x5a
/* 800A3A00  40 82 00 28 */	bne lbl_800A3A28
/* 800A3A04  C0 3C 1F E0 */	lfs f1, 0x1fe0(r28)
/* 800A3A08  C0 02 93 34 */	lfs f0, lit_7710(r2)
/* 800A3A0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A3A10  4C 41 13 82 */	cror 2, 1, 2
/* 800A3A14  40 82 00 14 */	bne lbl_800A3A28
/* 800A3A18  38 9C 2B A4 */	addi r4, r28, 0x2ba4
/* 800A3A1C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800A3A20  4B FF F2 05 */	bl setMatrixOffset__9daAlink_cFPff
/* 800A3A24  48 00 02 48 */	b lbl_800A3C6C
lbl_800A3A28:
/* 800A3A28  3B E1 00 24 */	addi r31, r1, 0x24
/* 800A3A2C  3B C1 00 0C */	addi r30, r1, 0xc
/* 800A3A30  3B A1 00 10 */	addi r29, r1, 0x10
/* 800A3A34  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 800A3A38  4B F6 93 2D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 800A3A3C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 800A3A40  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 800A3A44  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 800A3A48  4B F6 89 ED */	bl mDoMtx_YrotM__FPA4_fs
/* 800A3A4C  3A E0 00 00 */	li r23, 0
/* 800A3A50  3B 60 00 00 */	li r27, 0
/* 800A3A54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800A3A58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800A3A5C  3B 03 0F 38 */	addi r24, r3, 0xf38
/* 800A3A60  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 800A3A64  3B 23 D4 70 */	addi r25, r3, now__14mDoMtx_stack_c@l
/* 800A3A68  3C 60 80 39 */	lis r3, localHandPos@ha
/* 800A3A6C  3B 43 1F 2C */	addi r26, r3, localHandPos@l
/* 800A3A70  C3 E2 93 A4 */	lfs f31, lit_9138(r2)
lbl_800A3A74:
/* 800A3A74  7F 23 CB 78 */	mr r3, r25
/* 800A3A78  7C 9A DA 14 */	add r4, r26, r27
/* 800A3A7C  7F E5 FB 78 */	mr r5, r31
/* 800A3A80  48 2A 32 ED */	bl PSMTXMultVec
/* 800A3A84  C0 5F 00 08 */	lfs f2, 8(r31)
/* 800A3A88  C0 3F 00 04 */	lfs f1, 4(r31)
/* 800A3A8C  C0 0D 81 10 */	lfs f0, l_autoUpHeight(r13)
/* 800A3A90  EC 21 00 2A */	fadds f1, f1, f0
/* 800A3A94  C0 1F 00 00 */	lfs f0, 0(r31)
/* 800A3A98  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800A3A9C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 800A3AA0  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 800A3AA4  38 7C 1D 08 */	addi r3, r28, 0x1d08
/* 800A3AA8  38 81 00 18 */	addi r4, r1, 0x18
/* 800A3AAC  48 1C 42 7D */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 800A3AB0  7F 03 C3 78 */	mr r3, r24
/* 800A3AB4  38 9C 1D 08 */	addi r4, r28, 0x1d08
/* 800A3AB8  4B FD 09 E9 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 800A3ABC  FC 1F 08 00 */	fcmpu cr0, f31, f1
/* 800A3AC0  41 82 00 64 */	beq lbl_800A3B24
/* 800A3AC4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 800A3AC8  EC 60 08 28 */	fsubs f3, f0, f1
/* 800A3ACC  C0 4D 81 10 */	lfs f2, l_autoUpHeight(r13)
/* 800A3AD0  C0 0D 81 14 */	lfs f0, l_autoDownHeight(r13)
/* 800A3AD4  EC 02 00 28 */	fsubs f0, f2, f0
/* 800A3AD8  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 800A3ADC  40 80 00 48 */	bge lbl_800A3B24
/* 800A3AE0  D0 3D 00 00 */	stfs f1, 0(r29)
/* 800A3AE4  7F 03 C3 78 */	mr r3, r24
/* 800A3AE8  38 9C 1D 1C */	addi r4, r28, 0x1d1c
/* 800A3AEC  4B FD 14 05 */	bl GetGroundCode__4dBgSFRC13cBgS_PolyInfo
/* 800A3AF0  2C 03 00 08 */	cmpwi r3, 8
/* 800A3AF4  41 82 00 24 */	beq lbl_800A3B18
/* 800A3AF8  7F 83 E3 78 */	mr r3, r28
/* 800A3AFC  38 9C 1D 1C */	addi r4, r28, 0x1d1c
/* 800A3B00  A8 BC 04 E6 */	lha r5, 0x4e6(r28)
/* 800A3B04  38 05 C0 00 */	addi r0, r5, -16384
/* 800A3B08  7C 05 07 34 */	extsh r5, r0
/* 800A3B0C  48 00 C5 8D */	bl getGroundAngle__9daAlink_cFP13cBgS_PolyInfos
/* 800A3B10  B0 7E 00 00 */	sth r3, 0(r30)
/* 800A3B14  48 00 00 20 */	b lbl_800A3B34
lbl_800A3B18:
/* 800A3B18  38 00 00 00 */	li r0, 0
/* 800A3B1C  B0 1E 00 00 */	sth r0, 0(r30)
/* 800A3B20  48 00 00 14 */	b lbl_800A3B34
lbl_800A3B24:
/* 800A3B24  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 800A3B28  D0 1D 00 00 */	stfs f0, 0(r29)
/* 800A3B2C  38 00 00 00 */	li r0, 0
/* 800A3B30  B0 1E 00 00 */	sth r0, 0(r30)
lbl_800A3B34:
/* 800A3B34  3A F7 00 01 */	addi r23, r23, 1
/* 800A3B38  2C 17 00 02 */	cmpwi r23, 2
/* 800A3B3C  3B 7B 00 0C */	addi r27, r27, 0xc
/* 800A3B40  3B FF 00 0C */	addi r31, r31, 0xc
/* 800A3B44  3B BD 00 04 */	addi r29, r29, 4
/* 800A3B48  3B DE 00 02 */	addi r30, r30, 2
/* 800A3B4C  41 80 FF 28 */	blt lbl_800A3A74
/* 800A3B50  A0 1C 2F E8 */	lhz r0, 0x2fe8(r28)
/* 800A3B54  28 00 00 56 */	cmplwi r0, 0x56
/* 800A3B58  40 82 00 1C */	bne lbl_800A3B74
/* 800A3B5C  38 00 00 00 */	li r0, 0
/* 800A3B60  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 800A3B64  C0 02 93 18 */	lfs f0, lit_7308(r2)
/* 800A3B68  EC 01 00 2A */	fadds f0, f1, f0
/* 800A3B6C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800A3B70  48 00 00 20 */	b lbl_800A3B90
lbl_800A3B74:
/* 800A3B74  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 800A3B78  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800A3B7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A3B80  40 80 00 0C */	bge lbl_800A3B8C
/* 800A3B84  38 00 00 00 */	li r0, 0
/* 800A3B88  48 00 00 08 */	b lbl_800A3B90
lbl_800A3B8C:
/* 800A3B8C  38 00 00 01 */	li r0, 1
lbl_800A3B90:
/* 800A3B90  7F 83 E3 78 */	mr r3, r28
/* 800A3B94  38 9C 2B A4 */	addi r4, r28, 0x2ba4
/* 800A3B98  54 00 10 3A */	slwi r0, r0, 2
/* 800A3B9C  38 A1 00 10 */	addi r5, r1, 0x10
/* 800A3BA0  7C 25 04 2E */	lfsx f1, r5, r0
/* 800A3BA4  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 800A3BA8  EC 21 00 28 */	fsubs f1, f1, f0
/* 800A3BAC  4B FF F0 79 */	bl setMatrixOffset__9daAlink_cFPff
/* 800A3BB0  3B 1C 2A 4C */	addi r24, r28, 0x2a4c
/* 800A3BB4  3B 21 00 0C */	addi r25, r1, 0xc
/* 800A3BB8  3B 40 00 00 */	li r26, 0
/* 800A3BBC  3B A0 00 00 */	li r29, 0
/* 800A3BC0  3B 61 00 10 */	addi r27, r1, 0x10
/* 800A3BC4  C3 E2 92 BC */	lfs f31, lit_6041(r2)
lbl_800A3BC8:
/* 800A3BC8  80 7C 06 50 */	lwz r3, 0x650(r28)
/* 800A3BCC  7C 3B EC 2E */	lfsx f1, r27, r29
/* 800A3BD0  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 800A3BD4  EC 21 00 28 */	fsubs f1, f1, f0
/* 800A3BD8  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 800A3BDC  40 80 00 24 */	bge lbl_800A3C00
/* 800A3BE0  7F 83 E3 78 */	mr r3, r28
/* 800A3BE4  7F 04 C3 78 */	mr r4, r24
/* 800A3BE8  38 A1 00 0A */	addi r5, r1, 0xa
/* 800A3BEC  38 C1 00 08 */	addi r6, r1, 8
/* 800A3BF0  38 E0 00 00 */	li r7, 0
/* 800A3BF4  4B FF F0 ED */	bl setLegAngle__9daAlink_cFfP18daAlink_footData_cPsPsi
/* 800A3BF8  2C 03 00 00 */	cmpwi r3, 0
/* 800A3BFC  40 82 00 10 */	bne lbl_800A3C0C
lbl_800A3C00:
/* 800A3C00  38 00 00 00 */	li r0, 0
/* 800A3C04  B0 01 00 0A */	sth r0, 0xa(r1)
/* 800A3C08  B0 01 00 08 */	sth r0, 8(r1)
lbl_800A3C0C:
/* 800A3C0C  38 78 00 06 */	addi r3, r24, 6
/* 800A3C10  A8 81 00 0A */	lha r4, 0xa(r1)
/* 800A3C14  38 A0 00 02 */	li r5, 2
/* 800A3C18  38 C0 18 00 */	li r6, 0x1800
/* 800A3C1C  38 E0 00 10 */	li r7, 0x10
/* 800A3C20  48 1C C9 21 */	bl cLib_addCalcAngleS__FPsssss
/* 800A3C24  38 78 00 04 */	addi r3, r24, 4
/* 800A3C28  A8 81 00 08 */	lha r4, 8(r1)
/* 800A3C2C  38 A0 00 02 */	li r5, 2
/* 800A3C30  38 C0 18 00 */	li r6, 0x1800
/* 800A3C34  38 E0 00 10 */	li r7, 0x10
/* 800A3C38  48 1C C9 09 */	bl cLib_addCalcAngleS__FPsssss
/* 800A3C3C  38 78 00 02 */	addi r3, r24, 2
/* 800A3C40  A8 99 00 00 */	lha r4, 0(r25)
/* 800A3C44  38 A0 00 02 */	li r5, 2
/* 800A3C48  38 C0 18 00 */	li r6, 0x1800
/* 800A3C4C  38 E0 00 10 */	li r7, 0x10
/* 800A3C50  48 1C C8 F1 */	bl cLib_addCalcAngleS__FPsssss
/* 800A3C54  3B 5A 00 01 */	addi r26, r26, 1
/* 800A3C58  2C 1A 00 02 */	cmpwi r26, 2
/* 800A3C5C  3B BD 00 04 */	addi r29, r29, 4
/* 800A3C60  3B 39 00 02 */	addi r25, r25, 2
/* 800A3C64  3B 18 00 A4 */	addi r24, r24, 0xa4
/* 800A3C68  41 80 FF 60 */	blt lbl_800A3BC8
lbl_800A3C6C:
/* 800A3C6C  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 800A3C70  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 800A3C74  39 61 00 70 */	addi r11, r1, 0x70
/* 800A3C78  48 2B E5 99 */	bl _restgpr_23
/* 800A3C7C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 800A3C80  7C 08 03 A6 */	mtlr r0
/* 800A3C84  38 21 00 80 */	addi r1, r1, 0x80
/* 800A3C88  4E 80 00 20 */	blr 
