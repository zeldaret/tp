lbl_800557C8:
/* 800557C8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800557CC  7C 08 02 A6 */	mflr r0
/* 800557D0  90 01 00 54 */	stw r0, 0x54(r1)
/* 800557D4  39 61 00 50 */	addi r11, r1, 0x50
/* 800557D8  48 30 C9 ED */	bl _savegpr_23
/* 800557DC  7C 78 1B 78 */	mr r24, r3
/* 800557E0  7C 99 23 78 */	mr r25, r4
/* 800557E4  3C 60 80 3B */	lis r3, l_matDL@ha
/* 800557E8  38 63 8D 00 */	addi r3, r3, l_matDL@l
/* 800557EC  38 80 00 60 */	li r4, 0x60
/* 800557F0  48 30 A7 01 */	bl GXCallDisplayList
/* 800557F4  38 60 00 00 */	li r3, 0
/* 800557F8  38 80 00 03 */	li r4, 3
/* 800557FC  38 A0 00 00 */	li r5, 0
/* 80055800  48 30 A4 9D */	bl GXSetZMode
/* 80055804  38 60 00 01 */	li r3, 1
/* 80055808  48 30 A4 C9 */	bl GXSetZCompLoc
/* 8005580C  38 60 00 02 */	li r3, 2
/* 80055810  38 80 00 01 */	li r4, 1
/* 80055814  38 A0 00 01 */	li r5, 1
/* 80055818  38 C0 00 07 */	li r6, 7
/* 8005581C  48 30 A3 D5 */	bl GXSetBlendMode
/* 80055820  38 60 00 01 */	li r3, 1
/* 80055824  48 30 AD AD */	bl GXSetClipMode
/* 80055828  38 00 00 03 */	li r0, 3
/* 8005582C  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80055830  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80055834  90 03 00 50 */	stw r0, 0x50(r3)
/* 80055838  3B E0 00 00 */	li r31, 0
/* 8005583C  93 ED 90 50 */	stw r31, sOldVcdVatCmd__8J3DShape(r13)
/* 80055840  83 D8 00 04 */	lwz r30, 4(r24)
/* 80055844  3B A0 00 00 */	li r29, 0
/* 80055848  3B 80 00 00 */	li r28, 0
/* 8005584C  3A E0 00 00 */	li r23, 0
/* 80055850  48 00 01 40 */	b lbl_80055990
lbl_80055854:
/* 80055854  88 1E 00 00 */	lbz r0, 0(r30)
/* 80055858  28 00 00 01 */	cmplwi r0, 1
/* 8005585C  40 82 01 30 */	bne lbl_8005598C
/* 80055860  2C 1D 00 00 */	cmpwi r29, 0
/* 80055864  40 82 00 6C */	bne lbl_800558D0
/* 80055868  3C 7F 00 01 */	addis r3, r31, 1
/* 8005586C  38 63 5E B0 */	addi r3, r3, 0x5eb0
/* 80055870  7C 78 1A 14 */	add r3, r24, r3
/* 80055874  48 30 89 C5 */	bl GXGetTexObjWidth
/* 80055878  7C 7B 1B 78 */	mr r27, r3
/* 8005587C  54 7A 0C 3C */	rlwinm r26, r3, 1, 0x10, 0x1e
/* 80055880  C0 22 86 10 */	lfs f1, lit_4074(r2)
/* 80055884  FC 40 08 90 */	fmr f2, f1
/* 80055888  C8 82 86 18 */	lfd f4, lit_4076(r2)
/* 8005588C  93 41 00 14 */	stw r26, 0x14(r1)
/* 80055890  3C 00 43 30 */	lis r0, 0x4330
/* 80055894  90 01 00 10 */	stw r0, 0x10(r1)
/* 80055898  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8005589C  EC 60 20 28 */	fsubs f3, f0, f4
/* 800558A0  93 41 00 1C */	stw r26, 0x1c(r1)
/* 800558A4  90 01 00 18 */	stw r0, 0x18(r1)
/* 800558A8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 800558AC  EC 80 20 28 */	fsubs f4, f0, f4
/* 800558B0  FC A0 08 90 */	fmr f5, f1
/* 800558B4  C0 C2 86 28 */	lfs f6, lit_4270(r2)
/* 800558B8  48 30 AB AD */	bl GXSetViewport
/* 800558BC  38 60 00 00 */	li r3, 0
/* 800558C0  38 80 00 00 */	li r4, 0
/* 800558C4  7F 45 D3 78 */	mr r5, r26
/* 800558C8  7F 46 D3 78 */	mr r6, r26
/* 800558CC  48 30 AC 05 */	bl GXSetScissor
lbl_800558D0:
/* 800558D0  57 A0 10 3A */	slwi r0, r29, 2
/* 800558D4  3C 60 80 3B */	lis r3, l_imageDrawColor@ha
/* 800558D8  38 63 8D 7C */	addi r3, r3, l_imageDrawColor@l
/* 800558DC  7C 03 00 2E */	lwzx r0, r3, r0
/* 800558E0  90 01 00 08 */	stw r0, 8(r1)
/* 800558E4  38 60 00 01 */	li r3, 1
/* 800558E8  38 81 00 08 */	addi r4, r1, 8
/* 800558EC  48 30 9A 91 */	bl GXSetTevColor
/* 800558F0  2C 1D 00 03 */	cmpwi r29, 3
/* 800558F4  40 82 00 14 */	bne lbl_80055908
/* 800558F8  38 60 00 00 */	li r3, 0
/* 800558FC  48 30 A3 49 */	bl GXSetColorUpdate
/* 80055900  38 60 00 01 */	li r3, 1
/* 80055904  48 30 A3 6D */	bl GXSetAlphaUpdate
lbl_80055908:
/* 80055908  7F C3 F3 78 */	mr r3, r30
/* 8005590C  7F 24 CB 78 */	mr r4, r25
/* 80055910  4B FF EB F1 */	bl imageDraw__18dDlst_shadowReal_cFPA4_f
/* 80055914  38 7D 00 01 */	addi r3, r29, 1
/* 80055918  54 60 F0 02 */	slwi r0, r3, 0x1e
/* 8005591C  54 63 0F FE */	srwi r3, r3, 0x1f
/* 80055920  7C 03 00 50 */	subf r0, r3, r0
/* 80055924  54 00 10 3E */	rotlwi r0, r0, 2
/* 80055928  7F A0 1A 15 */	add. r29, r0, r3
/* 8005592C  40 82 00 60 */	bne lbl_8005598C
/* 80055930  38 60 00 00 */	li r3, 0
/* 80055934  38 80 00 00 */	li r4, 0
/* 80055938  7F 45 D3 78 */	mr r5, r26
/* 8005593C  7F 46 D3 78 */	mr r6, r26
/* 80055940  48 30 71 41 */	bl GXSetTexCopySrc
/* 80055944  7F 63 DB 78 */	mr r3, r27
/* 80055948  7F 64 DB 78 */	mr r4, r27
/* 8005594C  38 A0 00 05 */	li r5, 5
/* 80055950  38 C0 00 01 */	li r6, 1
/* 80055954  48 30 71 DD */	bl GXSetTexCopyDst
/* 80055958  38 60 00 01 */	li r3, 1
/* 8005595C  48 30 A2 E9 */	bl GXSetColorUpdate
/* 80055960  3C 77 00 01 */	addis r3, r23, 1
/* 80055964  38 63 5E F0 */	addi r3, r3, 0x5ef0
/* 80055968  7C 78 18 2E */	lwzx r3, r24, r3
/* 8005596C  38 80 00 01 */	li r4, 1
/* 80055970  3B 9C 00 01 */	addi r28, r28, 1
/* 80055974  3A F7 00 04 */	addi r23, r23, 4
/* 80055978  3B FF 00 20 */	addi r31, r31, 0x20
/* 8005597C  48 30 7A F1 */	bl GXCopyTex
/* 80055980  48 30 69 F5 */	bl GXPixModeSync
/* 80055984  38 60 00 00 */	li r3, 0
/* 80055988  48 30 A2 E9 */	bl GXSetAlphaUpdate
lbl_8005598C:
/* 8005598C  83 DE 25 50 */	lwz r30, 0x2550(r30)
lbl_80055990:
/* 80055990  28 1E 00 00 */	cmplwi r30, 0
/* 80055994  40 82 FE C0 */	bne lbl_80055854
/* 80055998  2C 1D 00 00 */	cmpwi r29, 0
/* 8005599C  41 82 00 50 */	beq lbl_800559EC
/* 800559A0  38 60 00 00 */	li r3, 0
/* 800559A4  38 80 00 00 */	li r4, 0
/* 800559A8  7F 45 D3 78 */	mr r5, r26
/* 800559AC  7F 46 D3 78 */	mr r6, r26
/* 800559B0  48 30 70 D1 */	bl GXSetTexCopySrc
/* 800559B4  7F 63 DB 78 */	mr r3, r27
/* 800559B8  7F 64 DB 78 */	mr r4, r27
/* 800559BC  38 A0 00 05 */	li r5, 5
/* 800559C0  38 C0 00 01 */	li r6, 1
/* 800559C4  48 30 71 6D */	bl GXSetTexCopyDst
/* 800559C8  3C 78 00 01 */	addis r3, r24, 1
/* 800559CC  57 80 10 3A */	slwi r0, r28, 2
/* 800559D0  7C 63 02 14 */	add r3, r3, r0
/* 800559D4  80 63 5E F0 */	lwz r3, 0x5ef0(r3)
/* 800559D8  38 80 00 01 */	li r4, 1
/* 800559DC  48 30 7A 91 */	bl GXCopyTex
/* 800559E0  48 30 69 95 */	bl GXPixModeSync
/* 800559E4  38 60 00 00 */	li r3, 0
/* 800559E8  48 30 A2 89 */	bl GXSetAlphaUpdate
lbl_800559EC:
/* 800559EC  38 60 00 00 */	li r3, 0
/* 800559F0  48 30 AB E1 */	bl GXSetClipMode
/* 800559F4  38 60 00 01 */	li r3, 1
/* 800559F8  48 30 A3 E1 */	bl GXSetDither
/* 800559FC  39 61 00 50 */	addi r11, r1, 0x50
/* 80055A00  48 30 C8 11 */	bl _restgpr_23
/* 80055A04  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80055A08  7C 08 03 A6 */	mtlr r0
/* 80055A0C  38 21 00 50 */	addi r1, r1, 0x50
/* 80055A10  4E 80 00 20 */	blr 
