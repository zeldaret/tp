lbl_805B8A24:
/* 805B8A24  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 805B8A28  7C 08 02 A6 */	mflr r0
/* 805B8A2C  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 805B8A30  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 805B8A34  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 805B8A38  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 805B8A3C  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, 0 /* qr0 */
/* 805B8A40  39 61 00 B0 */	addi r11, r1, 0xb0
/* 805B8A44  4B DA 97 88 */	b _savegpr_25
/* 805B8A48  7C 7F 1B 78 */	mr r31, r3
/* 805B8A4C  3C 60 80 5C */	lis r3, lit_3816@ha
/* 805B8A50  3B C3 A5 88 */	addi r30, r3, lit_3816@l
/* 805B8A54  4B A5 F8 54 */	b cDmrNowMidnaTalk__Fv
/* 805B8A58  2C 03 00 00 */	cmpwi r3, 0
/* 805B8A5C  41 82 00 0C */	beq lbl_805B8A68
/* 805B8A60  38 60 00 01 */	li r3, 1
/* 805B8A64  48 00 08 64 */	b lbl_805B92C8
lbl_805B8A68:
/* 805B8A68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805B8A6C  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 805B8A70  83 7D 5D AC */	lwz r27, 0x5dac(r29)
/* 805B8A74  A8 1F 12 38 */	lha r0, 0x1238(r31)
/* 805B8A78  2C 00 03 E8 */	cmpwi r0, 0x3e8
/* 805B8A7C  40 82 00 0C */	bne lbl_805B8A88
/* 805B8A80  38 60 00 01 */	li r3, 1
/* 805B8A84  48 00 08 44 */	b lbl_805B92C8
lbl_805B8A88:
/* 805B8A88  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha
/* 805B8A8C  38 83 0C 98 */	addi r4, r3, struct_80450C98+0x0@l
/* 805B8A90  88 64 00 00 */	lbz r3, 0(r4)
/* 805B8A94  28 03 00 00 */	cmplwi r3, 0
/* 805B8A98  41 82 00 0C */	beq lbl_805B8AA4
/* 805B8A9C  38 03 FF FF */	addi r0, r3, -1
/* 805B8AA0  98 04 00 00 */	stb r0, 0(r4)
lbl_805B8AA4:
/* 805B8AA4  A8 7F 06 C8 */	lha r3, 0x6c8(r31)
/* 805B8AA8  38 03 00 01 */	addi r0, r3, 1
/* 805B8AAC  B0 1F 06 C8 */	sth r0, 0x6c8(r31)
/* 805B8AB0  38 60 00 00 */	li r3, 0
/* 805B8AB4  38 00 00 05 */	li r0, 5
/* 805B8AB8  7C 09 03 A6 */	mtctr r0
lbl_805B8ABC:
/* 805B8ABC  38 A3 06 D4 */	addi r5, r3, 0x6d4
/* 805B8AC0  7C 9F 2A AE */	lhax r4, r31, r5
/* 805B8AC4  2C 04 00 00 */	cmpwi r4, 0
/* 805B8AC8  41 82 00 0C */	beq lbl_805B8AD4
/* 805B8ACC  38 04 FF FF */	addi r0, r4, -1
/* 805B8AD0  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_805B8AD4:
/* 805B8AD4  38 63 00 02 */	addi r3, r3, 2
/* 805B8AD8  42 00 FF E4 */	bdnz lbl_805B8ABC
/* 805B8ADC  A8 7F 06 DE */	lha r3, 0x6de(r31)
/* 805B8AE0  2C 03 00 00 */	cmpwi r3, 0
/* 805B8AE4  41 82 00 0C */	beq lbl_805B8AF0
/* 805B8AE8  38 03 FF FF */	addi r0, r3, -1
/* 805B8AEC  B0 1F 06 DE */	sth r0, 0x6de(r31)
lbl_805B8AF0:
/* 805B8AF0  88 7F 06 FC */	lbz r3, 0x6fc(r31)
/* 805B8AF4  7C 60 07 75 */	extsb. r0, r3
/* 805B8AF8  41 82 00 0C */	beq lbl_805B8B04
/* 805B8AFC  38 03 FF FF */	addi r0, r3, -1
/* 805B8B00  98 1F 06 FC */	stb r0, 0x6fc(r31)
lbl_805B8B04:
/* 805B8B04  A8 7F 06 FE */	lha r3, 0x6fe(r31)
/* 805B8B08  2C 03 00 00 */	cmpwi r3, 0
/* 805B8B0C  41 82 00 0C */	beq lbl_805B8B18
/* 805B8B10  38 03 FF FF */	addi r0, r3, -1
/* 805B8B14  B0 1F 06 FE */	sth r0, 0x6fe(r31)
lbl_805B8B18:
/* 805B8B18  7F E3 FB 78 */	mr r3, r31
/* 805B8B1C  4B FF CA 81 */	bl action__FP10b_bq_class
/* 805B8B20  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805B8B24  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805B8B28  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 805B8B2C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 805B8B30  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 805B8B34  4B D8 DD B4 */	b PSMTXTrans
/* 805B8B38  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805B8B3C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805B8B40  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 805B8B44  4B A5 38 F0 */	b mDoMtx_YrotM__FPA4_fs
/* 805B8B48  3C 60 80 5C */	lis r3, l_HIO@ha
/* 805B8B4C  38 63 AD 60 */	addi r3, r3, l_HIO@l
/* 805B8B50  C0 23 00 08 */	lfs f1, 8(r3)
/* 805B8B54  FC 40 08 90 */	fmr f2, f1
/* 805B8B58  FC 60 08 90 */	fmr f3, f1
/* 805B8B5C  4B A5 42 DC */	b scaleM__14mDoMtx_stack_cFfff
/* 805B8B60  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805B8B64  83 83 00 04 */	lwz r28, 4(r3)
/* 805B8B68  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805B8B6C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805B8B70  38 9C 00 24 */	addi r4, r28, 0x24
/* 805B8B74  4B D8 D9 3C */	b PSMTXCopy
/* 805B8B78  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805B8B7C  7C 03 07 74 */	extsb r3, r0
/* 805B8B80  4B A7 44 EC */	b dComIfGp_getReverb__Fi
/* 805B8B84  7C 65 1B 78 */	mr r5, r3
/* 805B8B88  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805B8B8C  38 80 00 00 */	li r4, 0
/* 805B8B90  4B A5 85 20 */	b play__16mDoExt_McaMorfSOFUlSc
/* 805B8B94  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 805B8B98  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 805B8B9C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805B8BA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805B8BA4  40 81 00 08 */	ble lbl_805B8BAC
/* 805B8BA8  4B A5 48 80 */	b play__14mDoExt_baseAnmFv
lbl_805B8BAC:
/* 805B8BAC  88 1F 05 C0 */	lbz r0, 0x5c0(r31)
/* 805B8BB0  7C 00 07 75 */	extsb. r0, r0
/* 805B8BB4  41 82 00 0C */	beq lbl_805B8BC0
/* 805B8BB8  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 805B8BBC  4B A5 48 6C */	b play__14mDoExt_baseAnmFv
lbl_805B8BC0:
/* 805B8BC0  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805B8BC4  4B A5 86 28 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 805B8BC8  7F E3 FB 78 */	mr r3, r31
/* 805B8BCC  4B FF CC FD */	bl anm_se_set__FP10b_bq_class
/* 805B8BD0  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 805B8BD4  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 805B8BD8  C0 1E 02 B0 */	lfs f0, 0x2b0(r30)
/* 805B8BDC  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 805B8BE0  C0 1E 02 B4 */	lfs f0, 0x2b4(r30)
/* 805B8BE4  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 805B8BE8  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 805B8BEC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805B8BF0  38 63 09 F0 */	addi r3, r3, 0x9f0
/* 805B8BF4  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 805B8BF8  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 805B8BFC  80 84 00 00 */	lwz r4, 0(r4)
/* 805B8C00  4B D8 D8 B0 */	b PSMTXCopy
/* 805B8C04  A8 1F 06 CA */	lha r0, 0x6ca(r31)
/* 805B8C08  2C 00 00 04 */	cmpwi r0, 4
/* 805B8C0C  40 82 00 18 */	bne lbl_805B8C24
/* 805B8C10  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805B8C14  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 805B8C18  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 805B8C1C  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 805B8C20  48 00 00 18 */	b lbl_805B8C38
lbl_805B8C24:
/* 805B8C24  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 805B8C28  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 805B8C2C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805B8C30  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 805B8C34  D0 01 00 88 */	stfs f0, 0x88(r1)
lbl_805B8C38:
/* 805B8C38  38 61 00 80 */	addi r3, r1, 0x80
/* 805B8C3C  38 9F 05 38 */	addi r4, r31, 0x538
/* 805B8C40  4B CB 82 AC */	b MtxPosition__FP4cXyzP4cXyz
/* 805B8C44  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 805B8C48  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 805B8C4C  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 805B8C50  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 805B8C54  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 805B8C58  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 805B8C5C  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 805B8C60  C0 1E 02 2C */	lfs f0, 0x22c(r30)
/* 805B8C64  EC 01 00 2A */	fadds f0, f1, f0
/* 805B8C68  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 805B8C6C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805B8C70  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 805B8C74  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 805B8C78  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 805B8C7C  A8 1F 06 CA */	lha r0, 0x6ca(r31)
/* 805B8C80  2C 00 00 04 */	cmpwi r0, 4
/* 805B8C84  40 82 00 10 */	bne lbl_805B8C94
/* 805B8C88  C0 1E 02 B8 */	lfs f0, 0x2b8(r30)
/* 805B8C8C  EC 01 00 2A */	fadds f0, f1, f0
/* 805B8C90  D0 01 00 60 */	stfs f0, 0x60(r1)
lbl_805B8C94:
/* 805B8C94  A8 1F 06 CA */	lha r0, 0x6ca(r31)
/* 805B8C98  2C 00 00 03 */	cmpwi r0, 3
/* 805B8C9C  41 80 00 AC */	blt lbl_805B8D48
/* 805B8CA0  38 7F 09 D4 */	addi r3, r31, 0x9d4
/* 805B8CA4  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 805B8CA8  4B CB 6A 60 */	b SetR__8cM3dGSphFf
/* 805B8CAC  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 805B8CB0  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 805B8CB4  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 805B8CB8  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 805B8CBC  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 805B8CC0  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 805B8CC4  38 61 00 50 */	addi r3, r1, 0x50
/* 805B8CC8  38 81 00 74 */	addi r4, r1, 0x74
/* 805B8CCC  38 A1 00 5C */	addi r5, r1, 0x5c
/* 805B8CD0  4B CA DE 14 */	b __pl__4cXyzCFRC3Vec
/* 805B8CD4  38 7F 09 D4 */	addi r3, r31, 0x9d4
/* 805B8CD8  38 81 00 50 */	addi r4, r1, 0x50
/* 805B8CDC  4B CB 69 6C */	b SetC__8cM3dGSphFRC4cXyz
/* 805B8CE0  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 805B8CE4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805B8CE8  38 63 09 60 */	addi r3, r3, 0x960
/* 805B8CEC  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 805B8CF0  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 805B8CF4  80 84 00 00 */	lwz r4, 0(r4)
/* 805B8CF8  4B D8 D7 B8 */	b PSMTXCopy
/* 805B8CFC  C0 1E 02 BC */	lfs f0, 0x2bc(r30)
/* 805B8D00  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 805B8D04  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805B8D08  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 805B8D0C  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 805B8D10  38 61 00 80 */	addi r3, r1, 0x80
/* 805B8D14  38 81 00 74 */	addi r4, r1, 0x74
/* 805B8D18  4B CB 81 D4 */	b MtxPosition__FP4cXyzP4cXyz
/* 805B8D1C  38 61 00 44 */	addi r3, r1, 0x44
/* 805B8D20  38 81 00 74 */	addi r4, r1, 0x74
/* 805B8D24  38 A1 00 5C */	addi r5, r1, 0x5c
/* 805B8D28  4B CA DD BC */	b __pl__4cXyzCFRC3Vec
/* 805B8D2C  38 7F 08 60 */	addi r3, r31, 0x860
/* 805B8D30  38 81 00 44 */	addi r4, r1, 0x44
/* 805B8D34  4B CB 69 14 */	b SetC__8cM3dGSphFRC4cXyz
/* 805B8D38  38 7F 08 60 */	addi r3, r31, 0x860
/* 805B8D3C  C0 3E 02 04 */	lfs f1, 0x204(r30)
/* 805B8D40  4B CB 69 C8 */	b SetR__8cM3dGSphFf
/* 805B8D44  48 00 01 08 */	b lbl_805B8E4C
lbl_805B8D48:
/* 805B8D48  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 805B8D4C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805B8D50  38 63 09 60 */	addi r3, r3, 0x960
/* 805B8D54  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 805B8D58  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 805B8D5C  80 84 00 00 */	lwz r4, 0(r4)
/* 805B8D60  4B D8 D7 50 */	b PSMTXCopy
/* 805B8D64  C0 1E 02 C0 */	lfs f0, 0x2c0(r30)
/* 805B8D68  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 805B8D6C  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 805B8D70  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 805B8D74  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805B8D78  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 805B8D7C  38 61 00 80 */	addi r3, r1, 0x80
/* 805B8D80  38 9F 05 38 */	addi r4, r31, 0x538
/* 805B8D84  4B CB 81 68 */	b MtxPosition__FP4cXyzP4cXyz
/* 805B8D88  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 805B8D8C  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 805B8D90  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 805B8D94  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 805B8D98  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 805B8D9C  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 805B8DA0  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 805B8DA4  C0 1E 02 C4 */	lfs f0, 0x2c4(r30)
/* 805B8DA8  EC 01 00 2A */	fadds f0, f1, f0
/* 805B8DAC  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 805B8DB0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805B8DB4  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 805B8DB8  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 805B8DBC  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 805B8DC0  38 61 00 80 */	addi r3, r1, 0x80
/* 805B8DC4  38 81 00 74 */	addi r4, r1, 0x74
/* 805B8DC8  4B CB 81 24 */	b MtxPosition__FP4cXyzP4cXyz
/* 805B8DCC  38 61 00 38 */	addi r3, r1, 0x38
/* 805B8DD0  38 81 00 74 */	addi r4, r1, 0x74
/* 805B8DD4  38 A1 00 5C */	addi r5, r1, 0x5c
/* 805B8DD8  4B CA DD 0C */	b __pl__4cXyzCFRC3Vec
/* 805B8DDC  38 7F 08 60 */	addi r3, r31, 0x860
/* 805B8DE0  38 81 00 38 */	addi r4, r1, 0x38
/* 805B8DE4  4B CB 68 64 */	b SetC__8cM3dGSphFRC4cXyz
/* 805B8DE8  C0 3F 06 D0 */	lfs f1, 0x6d0(r31)
/* 805B8DEC  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 805B8DF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805B8DF4  40 81 00 28 */	ble lbl_805B8E1C
/* 805B8DF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805B8DFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805B8E00  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 805B8E04  54 00 03 19 */	rlwinm. r0, r0, 0, 0xc, 0xc
/* 805B8E08  41 82 00 14 */	beq lbl_805B8E1C
/* 805B8E0C  38 7F 08 60 */	addi r3, r31, 0x860
/* 805B8E10  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 805B8E14  4B CB 68 F4 */	b SetR__8cM3dGSphFf
/* 805B8E18  48 00 00 10 */	b lbl_805B8E28
lbl_805B8E1C:
/* 805B8E1C  38 7F 08 60 */	addi r3, r31, 0x860
/* 805B8E20  C0 3E 00 B4 */	lfs f1, 0xb4(r30)
/* 805B8E24  4B CB 68 E4 */	b SetR__8cM3dGSphFf
lbl_805B8E28:
/* 805B8E28  C0 1E 02 C8 */	lfs f0, 0x2c8(r30)
/* 805B8E2C  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 805B8E30  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 805B8E34  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 805B8E38  C0 1E 02 B8 */	lfs f0, 0x2b8(r30)
/* 805B8E3C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 805B8E40  38 7F 09 D4 */	addi r3, r31, 0x9d4
/* 805B8E44  38 81 00 74 */	addi r4, r1, 0x74
/* 805B8E48  4B CB 68 00 */	b SetC__8cM3dGSphFRC4cXyz
lbl_805B8E4C:
/* 805B8E4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805B8E50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805B8E54  3B 43 23 3C */	addi r26, r3, 0x233c
/* 805B8E58  7F 43 D3 78 */	mr r3, r26
/* 805B8E5C  38 9F 07 3C */	addi r4, r31, 0x73c
/* 805B8E60  4B CA BD 48 */	b Set__4cCcSFP8cCcD_Obj
/* 805B8E64  7F 43 D3 78 */	mr r3, r26
/* 805B8E68  38 9F 08 B0 */	addi r4, r31, 0x8b0
/* 805B8E6C  4B CA BD 3C */	b Set__4cCcSFP8cCcD_Obj
/* 805B8E70  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 805B8E74  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 805B8E78  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 805B8E7C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 805B8E80  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 805B8E84  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 805B8E88  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 805B8E8C  88 03 05 68 */	lbz r0, 0x568(r3)
/* 805B8E90  28 00 00 27 */	cmplwi r0, 0x27
/* 805B8E94  41 82 00 24 */	beq lbl_805B8EB8
/* 805B8E98  A8 1F 06 CA */	lha r0, 0x6ca(r31)
/* 805B8E9C  2C 00 00 03 */	cmpwi r0, 3
/* 805B8EA0  41 80 00 18 */	blt lbl_805B8EB8
/* 805B8EA4  C0 3E 02 2C */	lfs f1, 0x22c(r30)
/* 805B8EA8  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 805B8EAC  EC 01 00 2A */	fadds f0, f1, f0
/* 805B8EB0  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 805B8EB4  48 00 00 14 */	b lbl_805B8EC8
lbl_805B8EB8:
/* 805B8EB8  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 805B8EBC  C0 1E 02 C8 */	lfs f0, 0x2c8(r30)
/* 805B8EC0  EC 01 00 28 */	fsubs f0, f1, f0
/* 805B8EC4  D0 01 00 74 */	stfs f0, 0x74(r1)
lbl_805B8EC8:
/* 805B8EC8  38 61 00 2C */	addi r3, r1, 0x2c
/* 805B8ECC  38 81 00 74 */	addi r4, r1, 0x74
/* 805B8ED0  38 A1 00 5C */	addi r5, r1, 0x5c
/* 805B8ED4  4B CA DC 10 */	b __pl__4cXyzCFRC3Vec
/* 805B8ED8  38 7F 0B 0C */	addi r3, r31, 0xb0c
/* 805B8EDC  38 81 00 2C */	addi r4, r1, 0x2c
/* 805B8EE0  4B CB 67 68 */	b SetC__8cM3dGSphFRC4cXyz
/* 805B8EE4  7F 43 D3 78 */	mr r3, r26
/* 805B8EE8  38 9F 09 E8 */	addi r4, r31, 0x9e8
/* 805B8EEC  4B CA BC BC */	b Set__4cCcSFP8cCcD_Obj
/* 805B8EF0  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 805B8EF4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805B8EF8  38 63 00 60 */	addi r3, r3, 0x60
/* 805B8EFC  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 805B8F00  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 805B8F04  80 84 00 00 */	lwz r4, 0(r4)
/* 805B8F08  4B D8 D5 A8 */	b PSMTXCopy
/* 805B8F0C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805B8F10  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 805B8F14  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 805B8F18  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 805B8F1C  38 61 00 80 */	addi r3, r1, 0x80
/* 805B8F20  38 81 00 74 */	addi r4, r1, 0x74
/* 805B8F24  4B CB 7F C8 */	b MtxPosition__FP4cXyzP4cXyz
/* 805B8F28  38 61 00 20 */	addi r3, r1, 0x20
/* 805B8F2C  38 81 00 74 */	addi r4, r1, 0x74
/* 805B8F30  38 A1 00 5C */	addi r5, r1, 0x5c
/* 805B8F34  4B CA DB B0 */	b __pl__4cXyzCFRC3Vec
/* 805B8F38  38 7F 11 24 */	addi r3, r31, 0x1124
/* 805B8F3C  38 81 00 20 */	addi r4, r1, 0x20
/* 805B8F40  4B CB 67 08 */	b SetC__8cM3dGSphFRC4cXyz
/* 805B8F44  38 7F 11 24 */	addi r3, r31, 0x1124
/* 805B8F48  C0 3E 02 CC */	lfs f1, 0x2cc(r30)
/* 805B8F4C  4B CB 67 BC */	b SetR__8cM3dGSphFf
/* 805B8F50  7F 43 D3 78 */	mr r3, r26
/* 805B8F54  38 9F 10 00 */	addi r4, r31, 0x1000
/* 805B8F58  4B CA BC 50 */	b Set__4cCcSFP8cCcD_Obj
/* 805B8F5C  7F E3 FB 78 */	mr r3, r31
/* 805B8F60  4B FF D4 8D */	bl demo_camera__FP10b_bq_class
/* 805B8F64  38 7F 12 AC */	addi r3, r31, 0x12ac
/* 805B8F68  A8 9F 12 AE */	lha r4, 0x12ae(r31)
/* 805B8F6C  38 A0 00 01 */	li r5, 1
/* 805B8F70  38 C0 00 08 */	li r6, 8
/* 805B8F74  4B CB 76 94 */	b cLib_addCalcAngleS2__FPssss
/* 805B8F78  C3 FE 00 04 */	lfs f31, 4(r30)
/* 805B8F7C  C3 DE 00 18 */	lfs f30, 0x18(r30)
/* 805B8F80  88 7F 06 ED */	lbz r3, 0x6ed(r31)
/* 805B8F84  7C 60 07 75 */	extsb. r0, r3
/* 805B8F88  40 82 00 18 */	bne lbl_805B8FA0
/* 805B8F8C  38 60 00 00 */	li r3, 0
/* 805B8F90  38 80 00 01 */	li r4, 1
/* 805B8F94  C0 3F 06 F0 */	lfs f1, 0x6f0(r31)
/* 805B8F98  4B BE F8 74 */	b dKy_custom_colset__FUcUcf
/* 805B8F9C  48 00 01 1C */	b lbl_805B90B8
lbl_805B8FA0:
/* 805B8FA0  7C 60 07 74 */	extsb r0, r3
/* 805B8FA4  2C 00 00 01 */	cmpwi r0, 1
/* 805B8FA8  40 82 00 20 */	bne lbl_805B8FC8
/* 805B8FAC  38 60 00 00 */	li r3, 0
/* 805B8FB0  38 80 00 01 */	li r4, 1
/* 805B8FB4  C0 3F 06 F0 */	lfs f1, 0x6f0(r31)
/* 805B8FB8  4B BE F8 54 */	b dKy_custom_colset__FUcUcf
/* 805B8FBC  C3 FE 00 00 */	lfs f31, 0(r30)
/* 805B8FC0  C3 DE 01 54 */	lfs f30, 0x154(r30)
/* 805B8FC4  48 00 00 F4 */	b lbl_805B90B8
lbl_805B8FC8:
/* 805B8FC8  2C 00 00 0F */	cmpwi r0, 0xf
/* 805B8FCC  40 82 00 20 */	bne lbl_805B8FEC
/* 805B8FD0  38 60 00 00 */	li r3, 0
/* 805B8FD4  38 80 00 01 */	li r4, 1
/* 805B8FD8  C0 3F 06 F0 */	lfs f1, 0x6f0(r31)
/* 805B8FDC  4B BE F8 30 */	b dKy_custom_colset__FUcUcf
/* 805B8FE0  C3 FE 00 5C */	lfs f31, 0x5c(r30)
/* 805B8FE4  C3 DE 02 D0 */	lfs f30, 0x2d0(r30)
/* 805B8FE8  48 00 00 D0 */	b lbl_805B90B8
lbl_805B8FEC:
/* 805B8FEC  2C 00 00 02 */	cmpwi r0, 2
/* 805B8FF0  40 82 00 1C */	bne lbl_805B900C
/* 805B8FF4  38 60 00 02 */	li r3, 2
/* 805B8FF8  38 80 00 01 */	li r4, 1
/* 805B8FFC  C0 3F 06 F0 */	lfs f1, 0x6f0(r31)
/* 805B9000  4B BE F8 0C */	b dKy_custom_colset__FUcUcf
/* 805B9004  C3 DE 02 D4 */	lfs f30, 0x2d4(r30)
/* 805B9008  48 00 00 B0 */	b lbl_805B90B8
lbl_805B900C:
/* 805B900C  2C 00 00 03 */	cmpwi r0, 3
/* 805B9010  40 82 00 1C */	bne lbl_805B902C
/* 805B9014  38 60 00 02 */	li r3, 2
/* 805B9018  38 80 00 03 */	li r4, 3
/* 805B901C  C0 3F 06 F0 */	lfs f1, 0x6f0(r31)
/* 805B9020  4B BE F7 EC */	b dKy_custom_colset__FUcUcf
/* 805B9024  C3 FE 00 00 */	lfs f31, 0(r30)
/* 805B9028  48 00 00 90 */	b lbl_805B90B8
lbl_805B902C:
/* 805B902C  2C 00 00 04 */	cmpwi r0, 4
/* 805B9030  40 82 00 1C */	bne lbl_805B904C
/* 805B9034  38 60 00 04 */	li r3, 4
/* 805B9038  38 80 00 03 */	li r4, 3
/* 805B903C  C0 3F 06 F0 */	lfs f1, 0x6f0(r31)
/* 805B9040  4B BE F7 CC */	b dKy_custom_colset__FUcUcf
/* 805B9044  C3 DE 00 C0 */	lfs f30, 0xc0(r30)
/* 805B9048  48 00 00 70 */	b lbl_805B90B8
lbl_805B904C:
/* 805B904C  2C 00 00 05 */	cmpwi r0, 5
/* 805B9050  40 82 00 24 */	bne lbl_805B9074
/* 805B9054  38 60 00 05 */	li r3, 5
/* 805B9058  38 80 00 03 */	li r4, 3
/* 805B905C  C0 3F 06 F0 */	lfs f1, 0x6f0(r31)
/* 805B9060  4B BE F7 AC */	b dKy_custom_colset__FUcUcf
/* 805B9064  C3 DE 00 60 */	lfs f30, 0x60(r30)
/* 805B9068  38 00 00 06 */	li r0, 6
/* 805B906C  98 1F 06 ED */	stb r0, 0x6ed(r31)
/* 805B9070  48 00 00 48 */	b lbl_805B90B8
lbl_805B9074:
/* 805B9074  2C 00 00 06 */	cmpwi r0, 6
/* 805B9078  40 82 00 20 */	bne lbl_805B9098
/* 805B907C  38 60 00 05 */	li r3, 5
/* 805B9080  38 80 00 03 */	li r4, 3
/* 805B9084  C0 3F 06 F0 */	lfs f1, 0x6f0(r31)
/* 805B9088  4B BE F7 84 */	b dKy_custom_colset__FUcUcf
/* 805B908C  C3 FE 00 00 */	lfs f31, 0(r30)
/* 805B9090  C3 DE 00 60 */	lfs f30, 0x60(r30)
/* 805B9094  48 00 00 24 */	b lbl_805B90B8
lbl_805B9098:
/* 805B9098  2C 00 00 07 */	cmpwi r0, 7
/* 805B909C  40 82 00 1C */	bne lbl_805B90B8
/* 805B90A0  38 60 00 04 */	li r3, 4
/* 805B90A4  38 80 00 06 */	li r4, 6
/* 805B90A8  C0 3F 06 F0 */	lfs f1, 0x6f0(r31)
/* 805B90AC  4B BE F7 60 */	b dKy_custom_colset__FUcUcf
/* 805B90B0  C3 FE 00 00 */	lfs f31, 0(r30)
/* 805B90B4  C3 DE 02 D8 */	lfs f30, 0x2d8(r30)
lbl_805B90B8:
/* 805B90B8  38 7F 06 F0 */	addi r3, r31, 0x6f0
/* 805B90BC  FC 20 F8 90 */	fmr f1, f31
/* 805B90C0  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805B90C4  FC 60 F0 90 */	fmr f3, f30
/* 805B90C8  4B CB 69 74 */	b cLib_addCalc2__FPffff
/* 805B90CC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805B90D0  7C 03 07 74 */	extsb r3, r0
/* 805B90D4  4B A7 3F 98 */	b dComIfGp_getReverb__Fi
/* 805B90D8  7C 65 1B 78 */	mr r5, r3
/* 805B90DC  38 7F 06 84 */	addi r3, r31, 0x684
/* 805B90E0  38 80 00 00 */	li r4, 0
/* 805B90E4  81 9F 06 94 */	lwz r12, 0x694(r31)
/* 805B90E8  81 8C 00 08 */	lwz r12, 8(r12)
/* 805B90EC  7D 89 03 A6 */	mtctr r12
/* 805B90F0  4E 80 04 21 */	bctrl 
/* 805B90F4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805B90F8  7C 03 07 74 */	extsb r3, r0
/* 805B90FC  4B A7 3F 70 */	b dComIfGp_getReverb__Fi
/* 805B9100  7C 65 1B 78 */	mr r5, r3
/* 805B9104  38 7F 06 A4 */	addi r3, r31, 0x6a4
/* 805B9108  38 80 00 00 */	li r4, 0
/* 805B910C  81 9F 06 B4 */	lwz r12, 0x6b4(r31)
/* 805B9110  81 8C 00 08 */	lwz r12, 8(r12)
/* 805B9114  7D 89 03 A6 */	mtctr r12
/* 805B9118  4E 80 04 21 */	bctrl 
/* 805B911C  88 7F 13 94 */	lbz r3, 0x1394(r31)
/* 805B9120  7C 60 07 75 */	extsb. r0, r3
/* 805B9124  41 82 00 90 */	beq lbl_805B91B4
/* 805B9128  38 03 FF FF */	addi r0, r3, -1
/* 805B912C  98 1F 13 94 */	stb r0, 0x1394(r31)
/* 805B9130  88 1F 13 94 */	lbz r0, 0x1394(r31)
/* 805B9134  2C 00 00 14 */	cmpwi r0, 0x14
/* 805B9138  40 82 00 14 */	bne lbl_805B914C
/* 805B913C  3C 60 80 5B */	lis r3, s_bi_del_sub__FPvPv@ha
/* 805B9140  38 63 3D AC */	addi r3, r3, s_bi_del_sub__FPvPv@l
/* 805B9144  7F E4 FB 78 */	mr r4, r31
/* 805B9148  4B A6 81 F0 */	b fpcEx_Search__FPFPvPv_PvPv
lbl_805B914C:
/* 805B914C  88 7F 13 94 */	lbz r3, 0x1394(r31)
/* 805B9150  2C 03 00 0A */	cmpwi r3, 0xa
/* 805B9154  40 82 00 18 */	bne lbl_805B916C
/* 805B9158  3C 60 80 5B */	lis r3, s_fw_del_sub__FPvPv@ha
/* 805B915C  38 63 3D 60 */	addi r3, r3, s_fw_del_sub__FPvPv@l
/* 805B9160  7F E4 FB 78 */	mr r4, r31
/* 805B9164  4B A6 81 D4 */	b fpcEx_Search__FPFPvPv_PvPv
/* 805B9168  48 00 00 4C */	b lbl_805B91B4
lbl_805B916C:
/* 805B916C  7C 60 07 75 */	extsb. r0, r3
/* 805B9170  40 82 00 44 */	bne lbl_805B91B4
/* 805B9174  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805B9178  7C 07 07 74 */	extsb r7, r0
/* 805B917C  38 00 00 00 */	li r0, 0
/* 805B9180  90 01 00 08 */	stw r0, 8(r1)
/* 805B9184  38 60 03 04 */	li r3, 0x304
/* 805B9188  28 1F 00 00 */	cmplwi r31, 0
/* 805B918C  41 82 00 0C */	beq lbl_805B9198
/* 805B9190  80 9F 00 04 */	lwz r4, 4(r31)
/* 805B9194  48 00 00 08 */	b lbl_805B919C
lbl_805B9198:
/* 805B9198  38 80 FF FF */	li r4, -1
lbl_805B919C:
/* 805B919C  38 A0 FF 35 */	li r5, -203
/* 805B91A0  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 805B91A4  39 00 00 00 */	li r8, 0
/* 805B91A8  39 20 00 00 */	li r9, 0
/* 805B91AC  39 40 FF FF */	li r10, -1
/* 805B91B0  4B A6 0D 40 */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
lbl_805B91B4:
/* 805B91B4  3B 60 00 00 */	li r27, 0
/* 805B91B8  3B 80 00 00 */	li r28, 0
/* 805B91BC  3B 40 00 00 */	li r26, 0
/* 805B91C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805B91C4  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
lbl_805B91C8:
/* 805B91C8  88 1F 11 51 */	lbz r0, 0x1151(r31)
/* 805B91CC  28 00 00 00 */	cmplwi r0, 0
/* 805B91D0  41 82 00 64 */	beq lbl_805B9234
/* 805B91D4  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 805B91D8  38 00 00 FF */	li r0, 0xff
/* 805B91DC  90 01 00 08 */	stw r0, 8(r1)
/* 805B91E0  38 80 00 00 */	li r4, 0
/* 805B91E4  90 81 00 0C */	stw r4, 0xc(r1)
/* 805B91E8  38 00 FF FF */	li r0, -1
/* 805B91EC  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B91F0  90 81 00 14 */	stw r4, 0x14(r1)
/* 805B91F4  90 81 00 18 */	stw r4, 0x18(r1)
/* 805B91F8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805B91FC  3B 3A 12 28 */	addi r25, r26, 0x1228
/* 805B9200  7C 9F C8 2E */	lwzx r4, r31, r25
/* 805B9204  38 A0 00 00 */	li r5, 0
/* 805B9208  3C C0 80 5C */	lis r6, takino2@ha
/* 805B920C  38 C6 AB 64 */	addi r6, r6, takino2@l
/* 805B9210  7C C6 E2 2E */	lhzx r6, r6, r28
/* 805B9214  38 FF 04 A8 */	addi r7, r31, 0x4a8
/* 805B9218  39 00 00 00 */	li r8, 0
/* 805B921C  39 20 00 00 */	li r9, 0
/* 805B9220  39 40 00 00 */	li r10, 0
/* 805B9224  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805B9228  4B A9 42 A4 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805B922C  7C 7F C9 2E */	stwx r3, r31, r25
/* 805B9230  48 00 00 60 */	b lbl_805B9290
lbl_805B9234:
/* 805B9234  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 805B9238  38 00 00 FF */	li r0, 0xff
/* 805B923C  90 01 00 08 */	stw r0, 8(r1)
/* 805B9240  38 80 00 00 */	li r4, 0
/* 805B9244  90 81 00 0C */	stw r4, 0xc(r1)
/* 805B9248  38 00 FF FF */	li r0, -1
/* 805B924C  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B9250  90 81 00 14 */	stw r4, 0x14(r1)
/* 805B9254  90 81 00 18 */	stw r4, 0x18(r1)
/* 805B9258  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805B925C  3B 3A 12 28 */	addi r25, r26, 0x1228
/* 805B9260  7C 9F C8 2E */	lwzx r4, r31, r25
/* 805B9264  38 A0 00 00 */	li r5, 0
/* 805B9268  3C C0 80 5C */	lis r6, takino@ha
/* 805B926C  38 C6 AB 5C */	addi r6, r6, takino@l
/* 805B9270  7C C6 E2 2E */	lhzx r6, r6, r28
/* 805B9274  38 FF 04 A8 */	addi r7, r31, 0x4a8
/* 805B9278  39 00 00 00 */	li r8, 0
/* 805B927C  39 20 00 00 */	li r9, 0
/* 805B9280  39 40 00 00 */	li r10, 0
/* 805B9284  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805B9288  4B A9 42 44 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805B928C  7C 7F C9 2E */	stwx r3, r31, r25
lbl_805B9290:
/* 805B9290  3B 7B 00 01 */	addi r27, r27, 1
/* 805B9294  2C 1B 00 04 */	cmpwi r27, 4
/* 805B9298  3B 9C 00 02 */	addi r28, r28, 2
/* 805B929C  3B 5A 00 04 */	addi r26, r26, 4
/* 805B92A0  41 80 FF 28 */	blt lbl_805B91C8
/* 805B92A4  88 1F 11 51 */	lbz r0, 0x1151(r31)
/* 805B92A8  28 00 00 00 */	cmplwi r0, 0
/* 805B92AC  41 82 00 18 */	beq lbl_805B92C4
/* 805B92B0  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 805B92B4  54 00 00 3E */	slwi r0, r0, 0
/* 805B92B8  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 805B92BC  38 00 00 00 */	li r0, 0
/* 805B92C0  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_805B92C4:
/* 805B92C4  38 60 00 01 */	li r3, 1
lbl_805B92C8:
/* 805B92C8  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 805B92CC  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 805B92D0  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, 0 /* qr0 */
/* 805B92D4  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 805B92D8  39 61 00 B0 */	addi r11, r1, 0xb0
/* 805B92DC  4B DA 8F 3C */	b _restgpr_25
/* 805B92E0  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 805B92E4  7C 08 03 A6 */	mtlr r0
/* 805B92E8  38 21 00 D0 */	addi r1, r1, 0xd0
/* 805B92EC  4E 80 00 20 */	blr 
