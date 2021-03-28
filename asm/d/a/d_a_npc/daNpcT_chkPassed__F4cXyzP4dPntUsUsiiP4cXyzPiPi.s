lbl_8014698C:
/* 8014698C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80146990  7C 08 02 A6 */	mflr r0
/* 80146994  90 01 00 84 */	stw r0, 0x84(r1)
/* 80146998  39 61 00 80 */	addi r11, r1, 0x80
/* 8014699C  48 21 B8 25 */	bl _savegpr_22
/* 801469A0  7C 78 1B 78 */	mr r24, r3
/* 801469A4  7C 99 23 78 */	mr r25, r4
/* 801469A8  7C BA 2B 78 */	mr r26, r5
/* 801469AC  7C F6 3B 78 */	mr r22, r7
/* 801469B0  7D 1B 43 78 */	mr r27, r8
/* 801469B4  7D 3C 4B 78 */	mr r28, r9
/* 801469B8  7D 5D 53 78 */	mr r29, r10
/* 801469BC  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 801469C0  B3 41 00 0A */	sth r26, 0xa(r1)
/* 801469C4  B3 41 00 08 */	sth r26, 8(r1)
/* 801469C8  54 D7 04 3E */	clrlwi r23, r6, 0x10
/* 801469CC  7E E3 BB 78 */	mr r3, r23
/* 801469D0  38 81 00 08 */	addi r4, r1, 8
/* 801469D4  7E C5 B3 78 */	mr r5, r22
/* 801469D8  38 C0 00 00 */	li r6, 0
/* 801469DC  4B FF F0 E9 */	bl daNpcT_incIdx__FiRUsii
/* 801469E0  7E E3 BB 78 */	mr r3, r23
/* 801469E4  38 81 00 0A */	addi r4, r1, 0xa
/* 801469E8  7E C5 B3 78 */	mr r5, r22
/* 801469EC  38 C0 00 00 */	li r6, 0
/* 801469F0  4B FF F1 31 */	bl daNpcT_decIdx__FiRUsii
/* 801469F4  A0 81 00 0A */	lhz r4, 0xa(r1)
/* 801469F8  54 80 23 36 */	rlwinm r0, r4, 4, 0xc, 0x1b
/* 801469FC  7C 79 02 14 */	add r3, r25, r0
/* 80146A00  C0 63 00 0C */	lfs f3, 0xc(r3)
/* 80146A04  C0 03 00 08 */	lfs f0, 8(r3)
/* 80146A08  C0 43 00 04 */	lfs f2, 4(r3)
/* 80146A0C  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 80146A10  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80146A14  D0 61 00 4C */	stfs f3, 0x4c(r1)
/* 80146A18  A0 A1 00 08 */	lhz r5, 8(r1)
/* 80146A1C  54 A0 23 36 */	rlwinm r0, r5, 4, 0xc, 0x1b
/* 80146A20  7C 79 02 14 */	add r3, r25, r0
/* 80146A24  C0 83 00 0C */	lfs f4, 0xc(r3)
/* 80146A28  C0 03 00 08 */	lfs f0, 8(r3)
/* 80146A2C  C0 23 00 04 */	lfs f1, 4(r3)
/* 80146A30  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80146A34  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80146A38  D0 81 00 40 */	stfs f4, 0x40(r1)
/* 80146A3C  57 40 04 3E */	clrlwi r0, r26, 0x10
/* 80146A40  57 43 23 36 */	rlwinm r3, r26, 4, 0xc, 0x1b
/* 80146A44  7C 79 1A 14 */	add r3, r25, r3
/* 80146A48  C0 C3 00 0C */	lfs f6, 0xc(r3)
/* 80146A4C  C0 A3 00 08 */	lfs f5, 8(r3)
/* 80146A50  C0 03 00 04 */	lfs f0, 4(r3)
/* 80146A54  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80146A58  D0 A1 00 30 */	stfs f5, 0x30(r1)
/* 80146A5C  D0 C1 00 34 */	stfs f6, 0x34(r1)
/* 80146A60  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 80146A64  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80146A68  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80146A6C  C0 02 99 F0 */	lfs f0, lit_4672(r2)
/* 80146A70  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80146A74  7C 04 00 40 */	cmplw r4, r0
/* 80146A78  40 80 00 20 */	bge lbl_80146A98
/* 80146A7C  7C 00 28 40 */	cmplw r0, r5
/* 80146A80  40 80 00 18 */	bge lbl_80146A98
/* 80146A84  EC 21 10 28 */	fsubs f1, f1, f2
/* 80146A88  EC 44 18 28 */	fsubs f2, f4, f3
/* 80146A8C  48 12 0B E9 */	bl cM_atan2s__Fff
/* 80146A90  7C 7F 1B 78 */	mr r31, r3
/* 80146A94  48 00 00 5C */	b lbl_80146AF0
lbl_80146A98:
/* 80146A98  57 40 04 3E */	clrlwi r0, r26, 0x10
/* 80146A9C  7C 04 00 40 */	cmplw r4, r0
/* 80146AA0  40 80 00 28 */	bge lbl_80146AC8
/* 80146AA4  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80146AA8  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80146AAC  EC 21 00 28 */	fsubs f1, f1, f0
/* 80146AB0  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 80146AB4  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80146AB8  EC 42 00 28 */	fsubs f2, f2, f0
/* 80146ABC  48 12 0B B9 */	bl cM_atan2s__Fff
/* 80146AC0  7C 7F 1B 78 */	mr r31, r3
/* 80146AC4  48 00 00 2C */	b lbl_80146AF0
lbl_80146AC8:
/* 80146AC8  7C 00 28 40 */	cmplw r0, r5
/* 80146ACC  40 80 00 24 */	bge lbl_80146AF0
/* 80146AD0  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80146AD4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80146AD8  EC 21 00 28 */	fsubs f1, f1, f0
/* 80146ADC  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 80146AE0  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80146AE4  EC 42 00 28 */	fsubs f2, f2, f0
/* 80146AE8  48 12 0B 8D */	bl cM_atan2s__Fff
/* 80146AEC  7C 7F 1B 78 */	mr r31, r3
lbl_80146AF0:
/* 80146AF0  38 61 00 38 */	addi r3, r1, 0x38
/* 80146AF4  4B EC 62 71 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80146AF8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80146AFC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80146B00  7F E4 FB 78 */	mr r4, r31
/* 80146B04  4B EC 59 31 */	bl mDoMtx_YrotM__FPA4_fs
/* 80146B08  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80146B0C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80146B10  38 81 00 20 */	addi r4, r1, 0x20
/* 80146B14  38 A1 00 38 */	addi r5, r1, 0x38
/* 80146B18  48 20 02 55 */	bl PSMTXMultVec
/* 80146B1C  38 61 00 44 */	addi r3, r1, 0x44
/* 80146B20  4B EC 62 45 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80146B24  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80146B28  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80146B2C  3C 9F 00 01 */	addis r4, r31, 1
/* 80146B30  38 04 80 00 */	addi r0, r4, -32768
/* 80146B34  7C 04 07 34 */	extsh r4, r0
/* 80146B38  4B EC 58 FD */	bl mDoMtx_YrotM__FPA4_fs
/* 80146B3C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80146B40  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80146B44  38 81 00 20 */	addi r4, r1, 0x20
/* 80146B48  38 A1 00 44 */	addi r5, r1, 0x44
/* 80146B4C  48 20 02 21 */	bl PSMTXMultVec
/* 80146B50  C0 38 00 00 */	lfs f1, 0(r24)
/* 80146B54  C0 58 00 08 */	lfs f2, 8(r24)
/* 80146B58  C0 61 00 44 */	lfs f3, 0x44(r1)
/* 80146B5C  C0 81 00 4C */	lfs f4, 0x4c(r1)
/* 80146B60  C0 A1 00 38 */	lfs f5, 0x38(r1)
/* 80146B64  C0 C1 00 40 */	lfs f6, 0x40(r1)
/* 80146B68  38 61 00 18 */	addi r3, r1, 0x18
/* 80146B6C  38 81 00 14 */	addi r4, r1, 0x14
/* 80146B70  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80146B74  48 12 1A B9 */	bl cM3d_Len2dSqPntAndSegLine__FffffffPfPfPf
/* 80146B78  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80146B7C  FC 00 02 10 */	fabs f0, f0
/* 80146B80  FC 20 00 18 */	frsp f1, f0
/* 80146B84  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 80146B88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80146B8C  40 80 00 0C */	bge lbl_80146B98
/* 80146B90  38 60 00 00 */	li r3, 0
/* 80146B94  48 00 00 EC */	b lbl_80146C80
lbl_80146B98:
/* 80146B98  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80146B9C  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 80146BA0  C0 61 00 44 */	lfs f3, 0x44(r1)
/* 80146BA4  C0 81 00 4C */	lfs f4, 0x4c(r1)
/* 80146BA8  C0 A1 00 38 */	lfs f5, 0x38(r1)
/* 80146BAC  C0 C1 00 40 */	lfs f6, 0x40(r1)
/* 80146BB0  38 61 00 10 */	addi r3, r1, 0x10
/* 80146BB4  38 81 00 0C */	addi r4, r1, 0xc
/* 80146BB8  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80146BBC  48 12 1A 71 */	bl cM3d_Len2dSqPntAndSegLine__FffffffPfPfPf
/* 80146BC0  2C 1B 00 00 */	cmpwi r27, 0
/* 80146BC4  41 82 00 28 */	beq lbl_80146BEC
/* 80146BC8  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 80146BCC  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80146BD0  EC 21 00 28 */	fsubs f1, f1, f0
/* 80146BD4  C0 41 00 4C */	lfs f2, 0x4c(r1)
/* 80146BD8  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80146BDC  EC 42 00 28 */	fsubs f2, f2, f0
/* 80146BE0  48 12 0A 95 */	bl cM_atan2s__Fff
/* 80146BE4  7C 78 1B 78 */	mr r24, r3
/* 80146BE8  48 00 00 24 */	b lbl_80146C0C
lbl_80146BEC:
/* 80146BEC  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80146BF0  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80146BF4  EC 21 00 28 */	fsubs f1, f1, f0
/* 80146BF8  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 80146BFC  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80146C00  EC 42 00 28 */	fsubs f2, f2, f0
/* 80146C04  48 12 0A 71 */	bl cM_atan2s__Fff
/* 80146C08  7C 78 1B 78 */	mr r24, r3
lbl_80146C0C:
/* 80146C0C  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80146C10  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80146C14  EC 21 00 28 */	fsubs f1, f1, f0
/* 80146C18  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 80146C1C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80146C20  EC 42 00 28 */	fsubs f2, f2, f0
/* 80146C24  48 12 0A 51 */	bl cM_atan2s__Fff
/* 80146C28  7C 03 C0 50 */	subf r0, r3, r24
/* 80146C2C  7C 03 07 34 */	extsh r3, r0
/* 80146C30  28 1C 00 00 */	cmplwi r28, 0
/* 80146C34  41 82 00 1C */	beq lbl_80146C50
/* 80146C38  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80146C3C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80146C40  D0 1C 00 00 */	stfs f0, 0(r28)
/* 80146C44  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 80146C48  D0 1C 00 04 */	stfs f0, 4(r28)
/* 80146C4C  D0 3C 00 08 */	stfs f1, 8(r28)
lbl_80146C50:
/* 80146C50  28 1D 00 00 */	cmplwi r29, 0
/* 80146C54  41 82 00 0C */	beq lbl_80146C60
/* 80146C58  A0 01 00 0A */	lhz r0, 0xa(r1)
/* 80146C5C  90 1D 00 00 */	stw r0, 0(r29)
lbl_80146C60:
/* 80146C60  28 1E 00 00 */	cmplwi r30, 0
/* 80146C64  41 82 00 0C */	beq lbl_80146C70
/* 80146C68  A0 01 00 08 */	lhz r0, 8(r1)
/* 80146C6C  90 1E 00 00 */	stw r0, 0(r30)
lbl_80146C70:
/* 80146C70  48 21 E4 61 */	bl abs
/* 80146C74  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80146C78  20 00 40 00 */	subfic r0, r0, 0x4000
/* 80146C7C  54 03 0F FE */	srwi r3, r0, 0x1f
lbl_80146C80:
/* 80146C80  39 61 00 80 */	addi r11, r1, 0x80
/* 80146C84  48 21 B5 89 */	bl _restgpr_22
/* 80146C88  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80146C8C  7C 08 03 A6 */	mtlr r0
/* 80146C90  38 21 00 80 */	addi r1, r1, 0x80
/* 80146C94  4E 80 00 20 */	blr 
