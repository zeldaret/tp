lbl_80CF99C0:
/* 80CF99C0  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 80CF99C4  7C 08 02 A6 */	mflr r0
/* 80CF99C8  90 01 01 34 */	stw r0, 0x134(r1)
/* 80CF99CC  DB E1 01 20 */	stfd f31, 0x120(r1)
/* 80CF99D0  F3 E1 01 28 */	psq_st f31, 296(r1), 0, 0 /* qr0 */
/* 80CF99D4  DB C1 01 10 */	stfd f30, 0x110(r1)
/* 80CF99D8  F3 C1 01 18 */	psq_st f30, 280(r1), 0, 0 /* qr0 */
/* 80CF99DC  DB A1 01 00 */	stfd f29, 0x100(r1)
/* 80CF99E0  F3 A1 01 08 */	psq_st f29, 264(r1), 0, 0 /* qr0 */
/* 80CF99E4  DB 81 00 F0 */	stfd f28, 0xf0(r1)
/* 80CF99E8  F3 81 00 F8 */	psq_st f28, 248(r1), 0, 0 /* qr0 */
/* 80CF99EC  DB 61 00 E0 */	stfd f27, 0xe0(r1)
/* 80CF99F0  F3 61 00 E8 */	psq_st f27, 232(r1), 0, 0 /* qr0 */
/* 80CF99F4  39 61 00 E0 */	addi r11, r1, 0xe0
/* 80CF99F8  4B 66 87 D4 */	b _savegpr_25
/* 80CF99FC  7C 7F 1B 78 */	mr r31, r3
/* 80CF9A00  3C 60 80 D0 */	lis r3, lit_3734@ha
/* 80CF9A04  3B C3 B6 EC */	addi r30, r3, lit_3734@l
/* 80CF9A08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CF9A0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CF9A10  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 80CF9A14  80 7F 0A 74 */	lwz r3, 0xa74(r31)
/* 80CF9A18  88 1F 0A 65 */	lbz r0, 0xa65(r31)
/* 80CF9A1C  1C 00 00 50 */	mulli r0, r0, 0x50
/* 80CF9A20  7F 83 02 14 */	add r28, r3, r0
/* 80CF9A24  3B 7C 00 34 */	addi r27, r28, 0x34
/* 80CF9A28  88 7F 0A 62 */	lbz r3, 0xa62(r31)
/* 80CF9A2C  28 03 00 00 */	cmplwi r3, 0
/* 80CF9A30  40 82 00 10 */	bne lbl_80CF9A40
/* 80CF9A34  88 1F 0A 61 */	lbz r0, 0xa61(r31)
/* 80CF9A38  28 00 00 00 */	cmplwi r0, 0
/* 80CF9A3C  41 82 05 E0 */	beq lbl_80CFA01C
lbl_80CF9A40:
/* 80CF9A40  28 03 00 00 */	cmplwi r3, 0
/* 80CF9A44  41 82 02 70 */	beq lbl_80CF9CB4
/* 80CF9A48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CF9A4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CF9A50  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80CF9A54  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80CF9A58  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80CF9A5C  41 82 01 24 */	beq lbl_80CF9B80
/* 80CF9A60  7F A3 EB 78 */	mr r3, r29
/* 80CF9A64  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80CF9A68  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80CF9A6C  7D 89 03 A6 */	mtctr r12
/* 80CF9A70  4E 80 04 21 */	bctrl 
/* 80CF9A74  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80CF9A78  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80CF9A7C  4B 64 CA 34 */	b PSMTXCopy
/* 80CF9A80  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CF9A84  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CF9A88  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80CF9A8C  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80CF9A90  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80CF9A94  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80CF9A98  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80CF9A9C  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80CF9AA0  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 80CF9AA4  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80CF9AA8  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80CF9AAC  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80CF9AB0  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80CF9AB4  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80CF9AB8  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80CF9ABC  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80CF9AC0  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 80CF9AC4  38 81 00 9C */	addi r4, r1, 0x9c
/* 80CF9AC8  7C 85 23 78 */	mr r5, r4
/* 80CF9ACC  4B 64 D2 A0 */	b PSMTXMultVec
/* 80CF9AD0  38 61 00 B4 */	addi r3, r1, 0xb4
/* 80CF9AD4  38 81 00 9C */	addi r4, r1, 0x9c
/* 80CF9AD8  7C 65 1B 78 */	mr r5, r3
/* 80CF9ADC  4B 64 D5 B4 */	b PSVECAdd
/* 80CF9AE0  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80CF9AE4  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80CF9AE8  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80CF9AEC  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80CF9AF0  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80CF9AF4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CF9AF8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CF9AFC  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80CF9B00  4B 31 28 DC */	b mDoMtx_YrotS__FPA4_fs
/* 80CF9B04  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CF9B08  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CF9B0C  A8 9F 0A 6E */	lha r4, 0xa6e(r31)
/* 80CF9B10  4B 31 28 8C */	b mDoMtx_XrotM__FPA4_fs
/* 80CF9B14  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CF9B18  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CF9B1C  38 81 00 90 */	addi r4, r1, 0x90
/* 80CF9B20  7C 85 23 78 */	mr r5, r4
/* 80CF9B24  4B 64 D2 48 */	b PSMTXMultVec
/* 80CF9B28  38 61 00 54 */	addi r3, r1, 0x54
/* 80CF9B2C  38 81 00 90 */	addi r4, r1, 0x90
/* 80CF9B30  38 A1 00 B4 */	addi r5, r1, 0xb4
/* 80CF9B34  4B 56 CF B0 */	b __pl__4cXyzCFRC3Vec
/* 80CF9B38  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80CF9B3C  D0 1B 00 00 */	stfs f0, 0(r27)
/* 80CF9B40  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80CF9B44  D0 1B 00 04 */	stfs f0, 4(r27)
/* 80CF9B48  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80CF9B4C  D0 1B 00 08 */	stfs f0, 8(r27)
/* 80CF9B50  C0 1B 00 00 */	lfs f0, 0(r27)
/* 80CF9B54  D0 1F 0A 78 */	stfs f0, 0xa78(r31)
/* 80CF9B58  C0 1B 00 04 */	lfs f0, 4(r27)
/* 80CF9B5C  D0 1F 0A 7C */	stfs f0, 0xa7c(r31)
/* 80CF9B60  C0 1B 00 08 */	lfs f0, 8(r27)
/* 80CF9B64  D0 1F 0A 80 */	stfs f0, 0xa80(r31)
/* 80CF9B68  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80CF9B6C  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80CF9B70  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80CF9B74  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 80CF9B78  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80CF9B7C  48 00 00 C8 */	b lbl_80CF9C44
lbl_80CF9B80:
/* 80CF9B80  38 61 00 48 */	addi r3, r1, 0x48
/* 80CF9B84  7F A4 EB 78 */	mr r4, r29
/* 80CF9B88  48 00 1B 41 */	bl getRightHandPos__9daPy_py_cCFv
/* 80CF9B8C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80CF9B90  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80CF9B94  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80CF9B98  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80CF9B9C  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80CF9BA0  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80CF9BA4  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80CF9BA8  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80CF9BAC  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 80CF9BB0  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80CF9BB4  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80CF9BB8  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80CF9BBC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CF9BC0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CF9BC4  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80CF9BC8  4B 31 28 14 */	b mDoMtx_YrotS__FPA4_fs
/* 80CF9BCC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CF9BD0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CF9BD4  A8 9F 0A 6E */	lha r4, 0xa6e(r31)
/* 80CF9BD8  4B 31 27 C4 */	b mDoMtx_XrotM__FPA4_fs
/* 80CF9BDC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CF9BE0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CF9BE4  38 81 00 84 */	addi r4, r1, 0x84
/* 80CF9BE8  7C 85 23 78 */	mr r5, r4
/* 80CF9BEC  4B 64 D1 80 */	b PSMTXMultVec
/* 80CF9BF0  38 61 00 84 */	addi r3, r1, 0x84
/* 80CF9BF4  38 81 00 B4 */	addi r4, r1, 0xb4
/* 80CF9BF8  7C 65 1B 78 */	mr r5, r3
/* 80CF9BFC  4B 64 D4 94 */	b PSVECAdd
/* 80CF9C00  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80CF9C04  D0 1B 00 00 */	stfs f0, 0(r27)
/* 80CF9C08  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 80CF9C0C  D0 1B 00 04 */	stfs f0, 4(r27)
/* 80CF9C10  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80CF9C14  D0 1B 00 08 */	stfs f0, 8(r27)
/* 80CF9C18  C0 1B 00 00 */	lfs f0, 0(r27)
/* 80CF9C1C  D0 1F 0A 78 */	stfs f0, 0xa78(r31)
/* 80CF9C20  C0 1B 00 04 */	lfs f0, 4(r27)
/* 80CF9C24  D0 1F 0A 7C */	stfs f0, 0xa7c(r31)
/* 80CF9C28  C0 1B 00 08 */	lfs f0, 8(r27)
/* 80CF9C2C  D0 1F 0A 80 */	stfs f0, 0xa80(r31)
/* 80CF9C30  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80CF9C34  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80CF9C38  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80CF9C3C  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 80CF9C40  D0 01 00 BC */	stfs f0, 0xbc(r1)
lbl_80CF9C44:
/* 80CF9C44  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CF9C48  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CF9C4C  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80CF9C50  38 04 7F FF */	addi r0, r4, 0x7fff
/* 80CF9C54  7C 04 07 34 */	extsh r4, r0
/* 80CF9C58  4B 31 27 84 */	b mDoMtx_YrotS__FPA4_fs
/* 80CF9C5C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CF9C60  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CF9C64  A8 1F 0A 6E */	lha r0, 0xa6e(r31)
/* 80CF9C68  7C 00 00 D0 */	neg r0, r0
/* 80CF9C6C  7C 04 07 34 */	extsh r4, r0
/* 80CF9C70  4B 31 27 2C */	b mDoMtx_XrotM__FPA4_fs
/* 80CF9C74  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CF9C78  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CF9C7C  38 81 00 B4 */	addi r4, r1, 0xb4
/* 80CF9C80  38 A1 00 A8 */	addi r5, r1, 0xa8
/* 80CF9C84  4B 64 D0 E8 */	b PSMTXMultVec
/* 80CF9C88  38 61 00 A8 */	addi r3, r1, 0xa8
/* 80CF9C8C  38 9F 0A 78 */	addi r4, r31, 0xa78
/* 80CF9C90  7C 65 1B 78 */	mr r5, r3
/* 80CF9C94  4B 64 D3 FC */	b PSVECAdd
/* 80CF9C98  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 80CF9C9C  D0 1B 00 00 */	stfs f0, 0(r27)
/* 80CF9CA0  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 80CF9CA4  D0 1B 00 04 */	stfs f0, 4(r27)
/* 80CF9CA8  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 80CF9CAC  D0 1B 00 08 */	stfs f0, 8(r27)
/* 80CF9CB0  48 00 00 28 */	b lbl_80CF9CD8
lbl_80CF9CB4:
/* 80CF9CB4  88 1F 0A 61 */	lbz r0, 0xa61(r31)
/* 80CF9CB8  28 00 00 00 */	cmplwi r0, 0
/* 80CF9CBC  41 82 00 1C */	beq lbl_80CF9CD8
/* 80CF9CC0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80CF9CC4  D0 1B 00 00 */	stfs f0, 0(r27)
/* 80CF9CC8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80CF9CCC  D0 1B 00 04 */	stfs f0, 4(r27)
/* 80CF9CD0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80CF9CD4  D0 1B 00 08 */	stfs f0, 8(r27)
lbl_80CF9CD8:
/* 80CF9CD8  88 7F 0A 65 */	lbz r3, 0xa65(r31)
/* 80CF9CDC  3B 23 FF FF */	addi r25, r3, -1
/* 80CF9CE0  3C 60 80 3F */	lis r3, mGndCheck__11fopAcM_gc_c@ha
/* 80CF9CE4  38 63 1C C4 */	addi r3, r3, mGndCheck__11fopAcM_gc_c@l
/* 80CF9CE8  3B A3 00 14 */	addi r29, r3, 0x14
/* 80CF9CEC  C3 DE 00 00 */	lfs f30, 0(r30)
/* 80CF9CF0  C3 FE 00 54 */	lfs f31, 0x54(r30)
/* 80CF9CF4  C3 9E 00 08 */	lfs f28, 8(r30)
/* 80CF9CF8  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 80CF9CFC  EF 7C 00 28 */	fsubs f27, f28, f0
/* 80CF9D00  48 00 03 0C */	b lbl_80CFA00C
lbl_80CF9D04:
/* 80CF9D04  7F 7A DB 78 */	mr r26, r27
/* 80CF9D08  3B 7C FF E4 */	addi r27, r28, -28
/* 80CF9D0C  C3 BC FF E8 */	lfs f29, -0x18(r28)
/* 80CF9D10  38 61 00 3C */	addi r3, r1, 0x3c
/* 80CF9D14  7F 44 D3 78 */	mr r4, r26
/* 80CF9D18  7F 65 DB 78 */	mr r5, r27
/* 80CF9D1C  3B 9C FF B0 */	addi r28, r28, -80
/* 80CF9D20  4B 56 CE 14 */	b __mi__4cXyzCFRC3Vec
/* 80CF9D24  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80CF9D28  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80CF9D2C  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 80CF9D30  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 80CF9D34  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80CF9D38  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80CF9D3C  D3 C1 00 80 */	stfs f30, 0x80(r1)
/* 80CF9D40  D3 C1 00 78 */	stfs f30, 0x78(r1)
/* 80CF9D44  EC 01 07 B2 */	fmuls f0, f1, f30
/* 80CF9D48  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80CF9D4C  FC 00 02 10 */	fabs f0, f0
/* 80CF9D50  FC 20 00 18 */	frsp f1, f0
/* 80CF9D54  C0 1B 00 04 */	lfs f0, 4(r27)
/* 80CF9D58  EC 00 08 2A */	fadds f0, f0, f1
/* 80CF9D5C  D0 1B 00 04 */	stfs f0, 4(r27)
/* 80CF9D60  C0 1B 00 00 */	lfs f0, 0(r27)
/* 80CF9D64  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80CF9D68  C0 3B 00 04 */	lfs f1, 4(r27)
/* 80CF9D6C  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 80CF9D70  C0 1B 00 08 */	lfs f0, 8(r27)
/* 80CF9D74  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80CF9D78  EC 01 F8 2A */	fadds f0, f1, f31
/* 80CF9D7C  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80CF9D80  38 61 00 6C */	addi r3, r1, 0x6c
/* 80CF9D84  4B 32 3F 38 */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80CF9D88  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CF9D8C  41 82 00 44 */	beq lbl_80CF9DD0
/* 80CF9D90  7F A3 EB 78 */	mr r3, r29
/* 80CF9D94  4B FF E9 45 */	bl GetActorName__FR13cBgS_PolyInfo
/* 80CF9D98  7C 60 07 34 */	extsh r0, r3
/* 80CF9D9C  2C 00 00 A9 */	cmpwi r0, 0xa9
/* 80CF9DA0  41 82 00 30 */	beq lbl_80CF9DD0
/* 80CF9DA4  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 80CF9DA8  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 80CF9DAC  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 80CF9DB0  EC 21 00 2A */	fadds f1, f1, f0
/* 80CF9DB4  C0 1B 00 04 */	lfs f0, 4(r27)
/* 80CF9DB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CF9DBC  40 81 00 28 */	ble lbl_80CF9DE4
/* 80CF9DC0  D0 3B 00 04 */	stfs f1, 4(r27)
/* 80CF9DC4  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80CF9DC8  D0 1C 00 48 */	stfs f0, 0x48(r28)
/* 80CF9DCC  48 00 00 18 */	b lbl_80CF9DE4
lbl_80CF9DD0:
/* 80CF9DD0  D3 BB 00 04 */	stfs f29, 4(r27)
/* 80CF9DD4  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80CF9DD8  D0 1C 00 48 */	stfs f0, 0x48(r28)
/* 80CF9DDC  38 00 00 01 */	li r0, 1
/* 80CF9DE0  98 1C 00 4C */	stb r0, 0x4c(r28)
lbl_80CF9DE4:
/* 80CF9DE4  88 1C 00 4C */	lbz r0, 0x4c(r28)
/* 80CF9DE8  28 00 00 00 */	cmplwi r0, 0
/* 80CF9DEC  40 82 00 68 */	bne lbl_80CF9E54
/* 80CF9DF0  7F E3 FB 78 */	mr r3, r31
/* 80CF9DF4  48 00 16 5D */	bl getTopChainNo__14daObjSwChain_cFv
/* 80CF9DF8  7C 19 18 00 */	cmpw r25, r3
/* 80CF9DFC  41 82 00 28 */	beq lbl_80CF9E24
/* 80CF9E00  88 1C FF FC */	lbz r0, -4(r28)
/* 80CF9E04  28 00 00 00 */	cmplwi r0, 0
/* 80CF9E08  41 82 00 1C */	beq lbl_80CF9E24
/* 80CF9E0C  C0 3A 00 04 */	lfs f1, 4(r26)
/* 80CF9E10  C0 1B 00 04 */	lfs f0, 4(r27)
/* 80CF9E14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CF9E18  4C 41 13 82 */	cror 2, 1, 2
/* 80CF9E1C  40 82 00 08 */	bne lbl_80CF9E24
/* 80CF9E20  D3 BB 00 04 */	stfs f29, 4(r27)
lbl_80CF9E24:
/* 80CF9E24  88 1F 0A 65 */	lbz r0, 0xa65(r31)
/* 80CF9E28  7C 19 00 00 */	cmpw r25, r0
/* 80CF9E2C  40 80 00 28 */	bge lbl_80CF9E54
/* 80CF9E30  88 1C 00 9C */	lbz r0, 0x9c(r28)
/* 80CF9E34  28 00 00 00 */	cmplwi r0, 0
/* 80CF9E38  41 82 00 1C */	beq lbl_80CF9E54
/* 80CF9E3C  C0 3C 00 88 */	lfs f1, 0x88(r28)
/* 80CF9E40  C0 1B 00 04 */	lfs f0, 4(r27)
/* 80CF9E44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CF9E48  4C 41 13 82 */	cror 2, 1, 2
/* 80CF9E4C  40 82 00 08 */	bne lbl_80CF9E54
/* 80CF9E50  D3 BB 00 04 */	stfs f29, 4(r27)
lbl_80CF9E54:
/* 80CF9E54  38 61 00 30 */	addi r3, r1, 0x30
/* 80CF9E58  7F 64 DB 78 */	mr r4, r27
/* 80CF9E5C  7F 45 D3 78 */	mr r5, r26
/* 80CF9E60  4B 56 CC D4 */	b __mi__4cXyzCFRC3Vec
/* 80CF9E64  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80CF9E68  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80CF9E6C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80CF9E70  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80CF9E74  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80CF9E78  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80CF9E7C  38 61 00 60 */	addi r3, r1, 0x60
/* 80CF9E80  4B 64 D2 B8 */	b PSVECSquareMag
/* 80CF9E84  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 80CF9E88  40 81 00 58 */	ble lbl_80CF9EE0
/* 80CF9E8C  FC 00 08 34 */	frsqrte f0, f1
/* 80CF9E90  C8 9E 00 18 */	lfd f4, 0x18(r30)
/* 80CF9E94  FC 44 00 32 */	fmul f2, f4, f0
/* 80CF9E98  C8 7E 00 20 */	lfd f3, 0x20(r30)
/* 80CF9E9C  FC 00 00 32 */	fmul f0, f0, f0
/* 80CF9EA0  FC 01 00 32 */	fmul f0, f1, f0
/* 80CF9EA4  FC 03 00 28 */	fsub f0, f3, f0
/* 80CF9EA8  FC 02 00 32 */	fmul f0, f2, f0
/* 80CF9EAC  FC 44 00 32 */	fmul f2, f4, f0
/* 80CF9EB0  FC 00 00 32 */	fmul f0, f0, f0
/* 80CF9EB4  FC 01 00 32 */	fmul f0, f1, f0
/* 80CF9EB8  FC 03 00 28 */	fsub f0, f3, f0
/* 80CF9EBC  FC 02 00 32 */	fmul f0, f2, f0
/* 80CF9EC0  FC 44 00 32 */	fmul f2, f4, f0
/* 80CF9EC4  FC 00 00 32 */	fmul f0, f0, f0
/* 80CF9EC8  FC 01 00 32 */	fmul f0, f1, f0
/* 80CF9ECC  FC 03 00 28 */	fsub f0, f3, f0
/* 80CF9ED0  FC 02 00 32 */	fmul f0, f2, f0
/* 80CF9ED4  FF A1 00 32 */	fmul f29, f1, f0
/* 80CF9ED8  FF A0 E8 18 */	frsp f29, f29
/* 80CF9EDC  48 00 00 90 */	b lbl_80CF9F6C
lbl_80CF9EE0:
/* 80CF9EE0  C8 1E 00 28 */	lfd f0, 0x28(r30)
/* 80CF9EE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CF9EE8  40 80 00 10 */	bge lbl_80CF9EF8
/* 80CF9EEC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CF9EF0  C3 A3 0A E0 */	lfs f29, __float_nan@l(r3)
/* 80CF9EF4  48 00 00 78 */	b lbl_80CF9F6C
lbl_80CF9EF8:
/* 80CF9EF8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80CF9EFC  80 81 00 08 */	lwz r4, 8(r1)
/* 80CF9F00  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CF9F04  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CF9F08  7C 03 00 00 */	cmpw r3, r0
/* 80CF9F0C  41 82 00 14 */	beq lbl_80CF9F20
/* 80CF9F10  40 80 00 40 */	bge lbl_80CF9F50
/* 80CF9F14  2C 03 00 00 */	cmpwi r3, 0
/* 80CF9F18  41 82 00 20 */	beq lbl_80CF9F38
/* 80CF9F1C  48 00 00 34 */	b lbl_80CF9F50
lbl_80CF9F20:
/* 80CF9F20  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CF9F24  41 82 00 0C */	beq lbl_80CF9F30
/* 80CF9F28  38 00 00 01 */	li r0, 1
/* 80CF9F2C  48 00 00 28 */	b lbl_80CF9F54
lbl_80CF9F30:
/* 80CF9F30  38 00 00 02 */	li r0, 2
/* 80CF9F34  48 00 00 20 */	b lbl_80CF9F54
lbl_80CF9F38:
/* 80CF9F38  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CF9F3C  41 82 00 0C */	beq lbl_80CF9F48
/* 80CF9F40  38 00 00 05 */	li r0, 5
/* 80CF9F44  48 00 00 10 */	b lbl_80CF9F54
lbl_80CF9F48:
/* 80CF9F48  38 00 00 03 */	li r0, 3
/* 80CF9F4C  48 00 00 08 */	b lbl_80CF9F54
lbl_80CF9F50:
/* 80CF9F50  38 00 00 04 */	li r0, 4
lbl_80CF9F54:
/* 80CF9F54  2C 00 00 01 */	cmpwi r0, 1
/* 80CF9F58  40 82 00 10 */	bne lbl_80CF9F68
/* 80CF9F5C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CF9F60  C3 A3 0A E0 */	lfs f29, __float_nan@l(r3)
/* 80CF9F64  48 00 00 08 */	b lbl_80CF9F6C
lbl_80CF9F68:
/* 80CF9F68  FF A0 08 90 */	fmr f29, f1
lbl_80CF9F6C:
/* 80CF9F6C  38 61 00 24 */	addi r3, r1, 0x24
/* 80CF9F70  38 81 00 60 */	addi r4, r1, 0x60
/* 80CF9F74  4B 56 CF D4 */	b normalizeZP__4cXyzFv
/* 80CF9F78  88 7F 0A 65 */	lbz r3, 0xa65(r31)
/* 80CF9F7C  38 03 FF FF */	addi r0, r3, -1
/* 80CF9F80  7C 19 00 00 */	cmpw r25, r0
/* 80CF9F84  FC 1D D8 40 */	fcmpo cr0, f29, f27
/* 80CF9F88  4C 40 13 82 */	cror 2, 0, 2
/* 80CF9F8C  40 82 00 08 */	bne lbl_80CF9F94
/* 80CF9F90  FF A0 D8 90 */	fmr f29, f27
lbl_80CF9F94:
/* 80CF9F94  FC 1D E0 40 */	fcmpo cr0, f29, f28
/* 80CF9F98  40 81 00 08 */	ble lbl_80CF9FA0
/* 80CF9F9C  FF A0 E0 90 */	fmr f29, f28
lbl_80CF9FA0:
/* 80CF9FA0  38 61 00 18 */	addi r3, r1, 0x18
/* 80CF9FA4  38 81 00 60 */	addi r4, r1, 0x60
/* 80CF9FA8  FC 20 E8 90 */	fmr f1, f29
/* 80CF9FAC  4B 56 CB D8 */	b __ml__4cXyzCFf
/* 80CF9FB0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80CF9FB4  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80CF9FB8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80CF9FBC  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80CF9FC0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80CF9FC4  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80CF9FC8  38 61 00 0C */	addi r3, r1, 0xc
/* 80CF9FCC  7F 44 D3 78 */	mr r4, r26
/* 80CF9FD0  38 A1 00 60 */	addi r5, r1, 0x60
/* 80CF9FD4  4B 56 CB 10 */	b __pl__4cXyzCFRC3Vec
/* 80CF9FD8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80CF9FDC  D0 1B 00 00 */	stfs f0, 0(r27)
/* 80CF9FE0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80CF9FE4  D0 1B 00 04 */	stfs f0, 4(r27)
/* 80CF9FE8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80CF9FEC  D0 1B 00 08 */	stfs f0, 8(r27)
/* 80CF9FF0  C0 1B 00 00 */	lfs f0, 0(r27)
/* 80CF9FF4  D0 1C 00 34 */	stfs f0, 0x34(r28)
/* 80CF9FF8  C0 1B 00 04 */	lfs f0, 4(r27)
/* 80CF9FFC  D0 1C 00 38 */	stfs f0, 0x38(r28)
/* 80CFA000  C0 1B 00 08 */	lfs f0, 8(r27)
/* 80CFA004  D0 1C 00 3C */	stfs f0, 0x3c(r28)
/* 80CFA008  3B 39 FF FF */	addi r25, r25, -1
lbl_80CFA00C:
/* 80CFA00C  7F E3 FB 78 */	mr r3, r31
/* 80CFA010  48 00 14 41 */	bl getTopChainNo__14daObjSwChain_cFv
/* 80CFA014  7C 19 18 00 */	cmpw r25, r3
/* 80CFA018  40 80 FC EC */	bge lbl_80CF9D04
lbl_80CFA01C:
/* 80CFA01C  E3 E1 01 28 */	psq_l f31, 296(r1), 0, 0 /* qr0 */
/* 80CFA020  CB E1 01 20 */	lfd f31, 0x120(r1)
/* 80CFA024  E3 C1 01 18 */	psq_l f30, 280(r1), 0, 0 /* qr0 */
/* 80CFA028  CB C1 01 10 */	lfd f30, 0x110(r1)
/* 80CFA02C  E3 A1 01 08 */	psq_l f29, 264(r1), 0, 0 /* qr0 */
/* 80CFA030  CB A1 01 00 */	lfd f29, 0x100(r1)
/* 80CFA034  E3 81 00 F8 */	psq_l f28, 248(r1), 0, 0 /* qr0 */
/* 80CFA038  CB 81 00 F0 */	lfd f28, 0xf0(r1)
/* 80CFA03C  E3 61 00 E8 */	psq_l f27, 232(r1), 0, 0 /* qr0 */
/* 80CFA040  CB 61 00 E0 */	lfd f27, 0xe0(r1)
/* 80CFA044  39 61 00 E0 */	addi r11, r1, 0xe0
/* 80CFA048  4B 66 81 D0 */	b _restgpr_25
/* 80CFA04C  80 01 01 34 */	lwz r0, 0x134(r1)
/* 80CFA050  7C 08 03 A6 */	mtlr r0
/* 80CFA054  38 21 01 30 */	addi r1, r1, 0x130
/* 80CFA058  4E 80 00 20 */	blr 
