lbl_807B4918:
/* 807B4918  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807B491C  7C 08 02 A6 */	mflr r0
/* 807B4920  90 01 00 44 */	stw r0, 0x44(r1)
/* 807B4924  39 61 00 40 */	addi r11, r1, 0x40
/* 807B4928  4B BA D8 94 */	b _savegpr_21
/* 807B492C  7C 7C 1B 78 */	mr r28, r3
/* 807B4930  3C 60 80 7B */	lis r3, lit_3746@ha
/* 807B4934  3B E3 7E B8 */	addi r31, r3, lit_3746@l
/* 807B4938  3B C0 00 00 */	li r30, 0
/* 807B493C  3B 20 00 00 */	li r25, 0
/* 807B4940  AB BC 0D D0 */	lha r29, 0xdd0(r28)
/* 807B4944  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807B4948  3A C3 07 68 */	addi r22, r3, calc_mtx@l
/* 807B494C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 807B4950  3A E3 CA 54 */	addi r23, r3, g_env_light@l
/* 807B4954  1F 1D 00 0C */	mulli r24, r29, 0xc
/* 807B4958  1F 7D 00 06 */	mulli r27, r29, 6
/* 807B495C  57 BA 10 3A */	slwi r26, r29, 2
/* 807B4960  48 00 00 C0 */	b lbl_807B4A20
lbl_807B4964:
/* 807B4964  7C 7C C2 14 */	add r3, r28, r24
/* 807B4968  C0 23 07 24 */	lfs f1, 0x724(r3)
/* 807B496C  C0 43 07 28 */	lfs f2, 0x728(r3)
/* 807B4970  C0 63 07 2C */	lfs f3, 0x72c(r3)
/* 807B4974  38 60 00 00 */	li r3, 0
/* 807B4978  4B AB C4 E4 */	b MtxTrans__FfffUc
/* 807B497C  80 76 00 00 */	lwz r3, 0(r22)
/* 807B4980  7E BC DA 14 */	add r21, r28, r27
/* 807B4984  A8 95 0B D6 */	lha r4, 0xbd6(r21)
/* 807B4988  4B 85 7A AC */	b mDoMtx_YrotM__FPA4_fs
/* 807B498C  80 76 00 00 */	lwz r3, 0(r22)
/* 807B4990  A8 95 0B D4 */	lha r4, 0xbd4(r21)
/* 807B4994  4B 85 7A 08 */	b mDoMtx_XrotM__FPA4_fs
/* 807B4998  7F 24 07 34 */	extsh r4, r25
/* 807B499C  57 C0 07 FF */	clrlwi. r0, r30, 0x1f
/* 807B49A0  41 82 00 0C */	beq lbl_807B49AC
/* 807B49A4  38 04 40 00 */	addi r0, r4, 0x4000
/* 807B49A8  7C 04 07 34 */	extsh r4, r0
lbl_807B49AC:
/* 807B49AC  80 76 00 00 */	lwz r3, 0(r22)
/* 807B49B0  4B 85 7B 1C */	b mDoMtx_ZrotM__FPA4_fs
/* 807B49B4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 807B49B8  FC 40 08 90 */	fmr f2, f1
/* 807B49BC  FC 60 08 90 */	fmr f3, f1
/* 807B49C0  38 60 00 01 */	li r3, 1
/* 807B49C4  4B AB C4 E0 */	b MtxScale__FfffUc
/* 807B49C8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807B49CC  FC 40 08 90 */	fmr f2, f1
/* 807B49D0  C0 7F 00 08 */	lfs f3, 8(r31)
/* 807B49D4  38 60 00 01 */	li r3, 1
/* 807B49D8  4B AB C4 84 */	b MtxTrans__FfffUc
/* 807B49DC  38 1A 06 5C */	addi r0, r26, 0x65c
/* 807B49E0  7E BC 00 2E */	lwzx r21, r28, r0
/* 807B49E4  80 76 00 00 */	lwz r3, 0(r22)
/* 807B49E8  38 95 00 24 */	addi r4, r21, 0x24
/* 807B49EC  4B B9 1A C4 */	b PSMTXCopy
/* 807B49F0  7E E3 BB 78 */	mr r3, r23
/* 807B49F4  80 95 00 04 */	lwz r4, 4(r21)
/* 807B49F8  38 BC 01 0C */	addi r5, r28, 0x10c
/* 807B49FC  4B 9F 03 A4 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 807B4A00  7E A3 AB 78 */	mr r3, r21
/* 807B4A04  4B 85 92 28 */	b mDoExt_modelUpdate__FP8J3DModel
/* 807B4A08  3B DE 00 01 */	addi r30, r30, 1
/* 807B4A0C  3B 39 0B B8 */	addi r25, r25, 0xbb8
/* 807B4A10  3B BD 00 01 */	addi r29, r29, 1
/* 807B4A14  3B 5A 00 04 */	addi r26, r26, 4
/* 807B4A18  3B 7B 00 06 */	addi r27, r27, 6
/* 807B4A1C  3B 18 00 0C */	addi r24, r24, 0xc
lbl_807B4A20:
/* 807B4A20  2C 1D 00 31 */	cmpwi r29, 0x31
/* 807B4A24  41 80 FF 40 */	blt lbl_807B4964
/* 807B4A28  3C 60 80 7C */	lis r3, master@ha
/* 807B4A2C  38 63 80 E0 */	addi r3, r3, master@l
/* 807B4A30  80 63 00 00 */	lwz r3, 0(r3)
/* 807B4A34  28 03 00 00 */	cmplwi r3, 0
/* 807B4A38  41 82 00 10 */	beq lbl_807B4A48
/* 807B4A3C  88 03 0D 8E */	lbz r0, 0xd8e(r3)
/* 807B4A40  7C 00 07 75 */	extsb. r0, r0
/* 807B4A44  40 82 01 E4 */	bne lbl_807B4C28
lbl_807B4A48:
/* 807B4A48  3A C0 00 00 */	li r22, 0
/* 807B4A4C  3B 20 00 00 */	li r25, 0
/* 807B4A50  83 BC 0D E8 */	lwz r29, 0xde8(r28)
/* 807B4A54  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807B4A58  3B 03 07 68 */	addi r24, r3, calc_mtx@l
/* 807B4A5C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 807B4A60  3A E3 CA 54 */	addi r23, r3, g_env_light@l
/* 807B4A64  1F DD 00 0C */	mulli r30, r29, 0xc
/* 807B4A68  1F 7D 00 06 */	mulli r27, r29, 6
/* 807B4A6C  57 BA 10 3A */	slwi r26, r29, 2
/* 807B4A70  48 00 00 C0 */	b lbl_807B4B30
lbl_807B4A74:
/* 807B4A74  7C 7C F2 14 */	add r3, r28, r30
/* 807B4A78  C0 23 0E 3C */	lfs f1, 0xe3c(r3)
/* 807B4A7C  C0 43 0E 40 */	lfs f2, 0xe40(r3)
/* 807B4A80  C0 63 0E 44 */	lfs f3, 0xe44(r3)
/* 807B4A84  38 60 00 00 */	li r3, 0
/* 807B4A88  4B AB C3 D4 */	b MtxTrans__FfffUc
/* 807B4A8C  80 78 00 00 */	lwz r3, 0(r24)
/* 807B4A90  7E BC DA 14 */	add r21, r28, r27
/* 807B4A94  A8 95 11 0E */	lha r4, 0x110e(r21)
/* 807B4A98  4B 85 79 9C */	b mDoMtx_YrotM__FPA4_fs
/* 807B4A9C  80 78 00 00 */	lwz r3, 0(r24)
/* 807B4AA0  A8 95 11 0C */	lha r4, 0x110c(r21)
/* 807B4AA4  4B 85 78 F8 */	b mDoMtx_XrotM__FPA4_fs
/* 807B4AA8  7F 24 07 34 */	extsh r4, r25
/* 807B4AAC  56 C0 07 FF */	clrlwi. r0, r22, 0x1f
/* 807B4AB0  41 82 00 0C */	beq lbl_807B4ABC
/* 807B4AB4  38 04 40 00 */	addi r0, r4, 0x4000
/* 807B4AB8  7C 04 07 34 */	extsh r4, r0
lbl_807B4ABC:
/* 807B4ABC  80 78 00 00 */	lwz r3, 0(r24)
/* 807B4AC0  4B 85 7A 0C */	b mDoMtx_ZrotM__FPA4_fs
/* 807B4AC4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 807B4AC8  FC 40 08 90 */	fmr f2, f1
/* 807B4ACC  FC 60 08 90 */	fmr f3, f1
/* 807B4AD0  38 60 00 01 */	li r3, 1
/* 807B4AD4  4B AB C3 D0 */	b MtxScale__FfffUc
/* 807B4AD8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807B4ADC  FC 40 08 90 */	fmr f2, f1
/* 807B4AE0  C0 7F 00 08 */	lfs f3, 8(r31)
/* 807B4AE4  38 60 00 01 */	li r3, 1
/* 807B4AE8  4B AB C3 74 */	b MtxTrans__FfffUc
/* 807B4AEC  38 1A 0D EC */	addi r0, r26, 0xdec
/* 807B4AF0  7E BC 00 2E */	lwzx r21, r28, r0
/* 807B4AF4  80 78 00 00 */	lwz r3, 0(r24)
/* 807B4AF8  38 95 00 24 */	addi r4, r21, 0x24
/* 807B4AFC  4B B9 19 B4 */	b PSMTXCopy
/* 807B4B00  7E E3 BB 78 */	mr r3, r23
/* 807B4B04  80 95 00 04 */	lwz r4, 4(r21)
/* 807B4B08  38 BC 01 0C */	addi r5, r28, 0x10c
/* 807B4B0C  4B 9F 02 94 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 807B4B10  7E A3 AB 78 */	mr r3, r21
/* 807B4B14  4B 85 91 18 */	b mDoExt_modelUpdate__FP8J3DModel
/* 807B4B18  3A D6 00 01 */	addi r22, r22, 1
/* 807B4B1C  3B 39 0B B8 */	addi r25, r25, 0xbb8
/* 807B4B20  3B BD 00 01 */	addi r29, r29, 1
/* 807B4B24  3B 5A 00 04 */	addi r26, r26, 4
/* 807B4B28  3B 7B 00 06 */	addi r27, r27, 6
/* 807B4B2C  3B DE 00 0C */	addi r30, r30, 0xc
lbl_807B4B30:
/* 807B4B30  2C 1D 00 13 */	cmpwi r29, 0x13
/* 807B4B34  41 80 FF 40 */	blt lbl_807B4A74
/* 807B4B38  3A C0 00 00 */	li r22, 0
/* 807B4B3C  3B C0 00 00 */	li r30, 0
/* 807B4B40  83 BC 11 D4 */	lwz r29, 0x11d4(r28)
/* 807B4B44  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807B4B48  3A E3 07 68 */	addi r23, r3, calc_mtx@l
/* 807B4B4C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 807B4B50  3B 03 CA 54 */	addi r24, r3, g_env_light@l
/* 807B4B54  1F 3D 00 0C */	mulli r25, r29, 0xc
/* 807B4B58  1F 5D 00 06 */	mulli r26, r29, 6
/* 807B4B5C  57 BB 10 3A */	slwi r27, r29, 2
/* 807B4B60  48 00 00 C0 */	b lbl_807B4C20
lbl_807B4B64:
/* 807B4B64  7C 7C CA 14 */	add r3, r28, r25
/* 807B4B68  C0 23 12 28 */	lfs f1, 0x1228(r3)
/* 807B4B6C  C0 43 12 2C */	lfs f2, 0x122c(r3)
/* 807B4B70  C0 63 12 30 */	lfs f3, 0x1230(r3)
/* 807B4B74  38 60 00 00 */	li r3, 0
/* 807B4B78  4B AB C2 E4 */	b MtxTrans__FfffUc
/* 807B4B7C  80 77 00 00 */	lwz r3, 0(r23)
/* 807B4B80  7E BC D2 14 */	add r21, r28, r26
/* 807B4B84  A8 95 14 FA */	lha r4, 0x14fa(r21)
/* 807B4B88  4B 85 78 AC */	b mDoMtx_YrotM__FPA4_fs
/* 807B4B8C  80 77 00 00 */	lwz r3, 0(r23)
/* 807B4B90  A8 95 14 F8 */	lha r4, 0x14f8(r21)
/* 807B4B94  4B 85 78 08 */	b mDoMtx_XrotM__FPA4_fs
/* 807B4B98  7F C4 07 34 */	extsh r4, r30
/* 807B4B9C  56 C0 07 FF */	clrlwi. r0, r22, 0x1f
/* 807B4BA0  41 82 00 0C */	beq lbl_807B4BAC
/* 807B4BA4  38 04 40 00 */	addi r0, r4, 0x4000
/* 807B4BA8  7C 04 07 34 */	extsh r4, r0
lbl_807B4BAC:
/* 807B4BAC  80 77 00 00 */	lwz r3, 0(r23)
/* 807B4BB0  4B 85 79 1C */	b mDoMtx_ZrotM__FPA4_fs
/* 807B4BB4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 807B4BB8  FC 40 08 90 */	fmr f2, f1
/* 807B4BBC  FC 60 08 90 */	fmr f3, f1
/* 807B4BC0  38 60 00 01 */	li r3, 1
/* 807B4BC4  4B AB C2 E0 */	b MtxScale__FfffUc
/* 807B4BC8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807B4BCC  FC 40 08 90 */	fmr f2, f1
/* 807B4BD0  C0 7F 00 08 */	lfs f3, 8(r31)
/* 807B4BD4  38 60 00 01 */	li r3, 1
/* 807B4BD8  4B AB C2 84 */	b MtxTrans__FfffUc
/* 807B4BDC  38 1B 11 D8 */	addi r0, r27, 0x11d8
/* 807B4BE0  7E BC 00 2E */	lwzx r21, r28, r0
/* 807B4BE4  80 77 00 00 */	lwz r3, 0(r23)
/* 807B4BE8  38 95 00 24 */	addi r4, r21, 0x24
/* 807B4BEC  4B B9 18 C4 */	b PSMTXCopy
/* 807B4BF0  7F 03 C3 78 */	mr r3, r24
/* 807B4BF4  80 95 00 04 */	lwz r4, 4(r21)
/* 807B4BF8  38 BC 01 0C */	addi r5, r28, 0x10c
/* 807B4BFC  4B 9F 01 A4 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 807B4C00  7E A3 AB 78 */	mr r3, r21
/* 807B4C04  4B 85 90 28 */	b mDoExt_modelUpdate__FP8J3DModel
/* 807B4C08  3A D6 00 01 */	addi r22, r22, 1
/* 807B4C0C  3B DE 0B B8 */	addi r30, r30, 0xbb8
/* 807B4C10  3B BD 00 01 */	addi r29, r29, 1
/* 807B4C14  3B 7B 00 04 */	addi r27, r27, 4
/* 807B4C18  3B 5A 00 06 */	addi r26, r26, 6
/* 807B4C1C  3B 39 00 0C */	addi r25, r25, 0xc
lbl_807B4C20:
/* 807B4C20  2C 1D 00 13 */	cmpwi r29, 0x13
/* 807B4C24  41 80 FF 40 */	blt lbl_807B4B64
lbl_807B4C28:
/* 807B4C28  39 61 00 40 */	addi r11, r1, 0x40
/* 807B4C2C  4B BA D5 DC */	b _restgpr_21
/* 807B4C30  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807B4C34  7C 08 03 A6 */	mtlr r0
/* 807B4C38  38 21 00 40 */	addi r1, r1, 0x40
/* 807B4C3C  4E 80 00 20 */	blr 
