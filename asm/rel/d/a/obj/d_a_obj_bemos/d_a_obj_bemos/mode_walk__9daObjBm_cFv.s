lbl_80BB09E0:
/* 80BB09E0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80BB09E4  7C 08 02 A6 */	mflr r0
/* 80BB09E8  90 01 00 94 */	stw r0, 0x94(r1)
/* 80BB09EC  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80BB09F0  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 80BB09F4  39 61 00 80 */	addi r11, r1, 0x80
/* 80BB09F8  4B 7B 17 E0 */	b _savegpr_28
/* 80BB09FC  7C 7F 1B 78 */	mr r31, r3
/* 80BB0A00  3C 60 80 BB */	lis r3, lit_1109@ha
/* 80BB0A04  3B A3 3E E8 */	addi r29, r3, lit_1109@l
/* 80BB0A08  3C 60 80 BB */	lis r3, l_eye_offset@ha
/* 80BB0A0C  3B C3 37 B8 */	addi r30, r3, l_eye_offset@l
/* 80BB0A10  88 1D 00 50 */	lbz r0, 0x50(r29)
/* 80BB0A14  7C 00 07 75 */	extsb. r0, r0
/* 80BB0A18  40 82 00 E8 */	bne lbl_80BB0B00
/* 80BB0A1C  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 80BB0A20  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80BB0A24  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80BB0A28  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80BB0A2C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80BB0A30  D0 3D 00 78 */	stfs f1, 0x78(r29)
/* 80BB0A34  38 7D 00 78 */	addi r3, r29, 0x78
/* 80BB0A38  D0 23 00 04 */	stfs f1, 4(r3)
/* 80BB0A3C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80BB0A40  3C 80 80 BB */	lis r4, __dt__4cXyzFv@ha
/* 80BB0A44  38 84 F8 BC */	addi r4, r4, __dt__4cXyzFv@l
/* 80BB0A48  38 BD 00 44 */	addi r5, r29, 0x44
/* 80BB0A4C  4B FF D8 AD */	bl __register_global_object
/* 80BB0A50  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80BB0A54  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80BB0A58  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 80BB0A5C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80BB0A60  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80BB0A64  38 7D 00 78 */	addi r3, r29, 0x78
/* 80BB0A68  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 80BB0A6C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80BB0A70  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80BB0A74  38 63 00 0C */	addi r3, r3, 0xc
/* 80BB0A78  3C 80 80 BB */	lis r4, __dt__4cXyzFv@ha
/* 80BB0A7C  38 84 F8 BC */	addi r4, r4, __dt__4cXyzFv@l
/* 80BB0A80  38 BD 00 54 */	addi r5, r29, 0x54
/* 80BB0A84  4B FF D8 75 */	bl __register_global_object
/* 80BB0A88  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 80BB0A8C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80BB0A90  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80BB0A94  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 80BB0A98  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80BB0A9C  38 7D 00 78 */	addi r3, r29, 0x78
/* 80BB0AA0  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 80BB0AA4  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 80BB0AA8  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80BB0AAC  38 63 00 18 */	addi r3, r3, 0x18
/* 80BB0AB0  3C 80 80 BB */	lis r4, __dt__4cXyzFv@ha
/* 80BB0AB4  38 84 F8 BC */	addi r4, r4, __dt__4cXyzFv@l
/* 80BB0AB8  38 BD 00 60 */	addi r5, r29, 0x60
/* 80BB0ABC  4B FF D8 3D */	bl __register_global_object
/* 80BB0AC0  C0 3E 00 88 */	lfs f1, 0x88(r30)
/* 80BB0AC4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80BB0AC8  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 80BB0ACC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BB0AD0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BB0AD4  38 7D 00 78 */	addi r3, r29, 0x78
/* 80BB0AD8  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 80BB0ADC  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 80BB0AE0  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 80BB0AE4  38 63 00 24 */	addi r3, r3, 0x24
/* 80BB0AE8  3C 80 80 BB */	lis r4, __dt__4cXyzFv@ha
/* 80BB0AEC  38 84 F8 BC */	addi r4, r4, __dt__4cXyzFv@l
/* 80BB0AF0  38 BD 00 6C */	addi r5, r29, 0x6c
/* 80BB0AF4  4B FF D8 05 */	bl __register_global_object
/* 80BB0AF8  38 00 00 01 */	li r0, 1
/* 80BB0AFC  98 1D 00 50 */	stb r0, 0x50(r29)
lbl_80BB0B00:
/* 80BB0B00  A8 7F 10 CC */	lha r3, 0x10cc(r31)
/* 80BB0B04  38 03 FF FF */	addi r0, r3, -1
/* 80BB0B08  B0 1F 10 CC */	sth r0, 0x10cc(r31)
/* 80BB0B0C  7C 00 07 34 */	extsh r0, r0
/* 80BB0B10  38 60 00 01 */	li r3, 1
/* 80BB0B14  7C 00 00 34 */	cntlzw r0, r0
/* 80BB0B18  5C 7C 07 FE */	rlwnm r28, r3, r0, 0x1f, 0x1f
/* 80BB0B1C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80BB0B20  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80BB0B24  A8 1F 10 CC */	lha r0, 0x10cc(r31)
/* 80BB0B28  C8 3E 00 70 */	lfd f1, 0x70(r30)
/* 80BB0B2C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BB0B30  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80BB0B34  3C 00 43 30 */	lis r0, 0x4330
/* 80BB0B38  90 01 00 48 */	stw r0, 0x48(r1)
/* 80BB0B3C  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 80BB0B40  EC 20 08 28 */	fsubs f1, f0, f1
/* 80BB0B44  C0 1F 10 B8 */	lfs f0, 0x10b8(r31)
/* 80BB0B48  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BB0B4C  FC 00 00 1E */	fctiwz f0, f0
/* 80BB0B50  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 80BB0B54  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80BB0B58  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BB0B5C  7C 63 02 14 */	add r3, r3, r0
/* 80BB0B60  C0 43 00 04 */	lfs f2, 4(r3)
/* 80BB0B64  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 80BB0B68  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80BB0B6C  EC 00 10 2A */	fadds f0, f0, f2
/* 80BB0B70  EF E1 00 32 */	fmuls f31, f1, f0
/* 80BB0B74  38 7F 04 A8 */	addi r3, r31, 0x4a8
/* 80BB0B78  4B 45 C1 EC */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80BB0B7C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BB0B80  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BB0B84  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80BB0B88  4B 45 B8 AC */	b mDoMtx_YrotM__FPA4_fs
/* 80BB0B8C  80 1F 10 BC */	lwz r0, 0x10bc(r31)
/* 80BB0B90  1C A0 00 0C */	mulli r5, r0, 0xc
/* 80BB0B94  C0 9E 00 D8 */	lfs f4, 0xd8(r30)
/* 80BB0B98  80 1F 10 B0 */	lwz r0, 0x10b0(r31)
/* 80BB0B9C  C8 7E 00 70 */	lfd f3, 0x70(r30)
/* 80BB0BA0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BB0BA4  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80BB0BA8  3C 80 43 30 */	lis r4, 0x4330
/* 80BB0BAC  90 81 00 58 */	stw r4, 0x58(r1)
/* 80BB0BB0  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 80BB0BB4  EC 20 18 28 */	fsubs f1, f0, f3
/* 80BB0BB8  38 7D 00 78 */	addi r3, r29, 0x78
/* 80BB0BBC  7C 03 2C 2E */	lfsx f0, r3, r5
/* 80BB0BC0  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80BB0BC4  EC 01 00 2A */	fadds f0, f1, f0
/* 80BB0BC8  EC 24 00 32 */	fmuls f1, f4, f0
/* 80BB0BCC  C0 5E 00 78 */	lfs f2, 0x78(r30)
/* 80BB0BD0  80 1F 10 B4 */	lwz r0, 0x10b4(r31)
/* 80BB0BD4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BB0BD8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80BB0BDC  90 81 00 60 */	stw r4, 0x60(r1)
/* 80BB0BE0  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 80BB0BE4  EC 60 18 28 */	fsubs f3, f0, f3
/* 80BB0BE8  7C 63 2A 14 */	add r3, r3, r5
/* 80BB0BEC  C0 03 00 08 */	lfs f0, 8(r3)
/* 80BB0BF0  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80BB0BF4  EC 03 00 2A */	fadds f0, f3, f0
/* 80BB0BF8  EC 64 00 32 */	fmuls f3, f4, f0
/* 80BB0BFC  4B 45 C1 A0 */	b transM__14mDoMtx_stack_cFfff
/* 80BB0C00  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BB0C04  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BB0C08  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80BB0C0C  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80BB0C10  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80BB0C14  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80BB0C18  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80BB0C1C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80BB0C20  D0 3F 04 D0 */	stfs f1, 0x4d0(r31)
/* 80BB0C24  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80BB0C28  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80BB0C2C  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80BB0C30  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80BB0C34  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80BB0C38  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80BB0C3C  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80BB0C40  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80BB0C44  41 82 00 2C */	beq lbl_80BB0C70
/* 80BB0C48  38 7F 10 D4 */	addi r3, r31, 0x10d4
/* 80BB0C4C  7F E4 FB 78 */	mr r4, r31
/* 80BB0C50  3C A0 80 BB */	lis r5, M_lin5__Q29daObjBm_c5Bgc_c@ha
/* 80BB0C54  38 A5 3D 14 */	addi r5, r5, M_lin5__Q29daObjBm_c5Bgc_c@l
/* 80BB0C58  38 C0 00 05 */	li r6, 5
/* 80BB0C5C  80 1F 10 BC */	lwz r0, 0x10bc(r31)
/* 80BB0C60  54 00 08 3C */	slwi r0, r0, 1
/* 80BB0C64  38 FE 00 60 */	addi r7, r30, 0x60
/* 80BB0C68  7C E7 02 AE */	lhax r7, r7, r0
/* 80BB0C6C  48 00 04 E9 */	bl chk_wall_pre__Q29daObjBm_c5Bgc_cFPC10fopAc_ac_cPCQ29daObjBm_c8BgcSrc_cis
lbl_80BB0C70:
/* 80BB0C70  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80BB0C74  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80BB0C78  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80BB0C7C  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80BB0C80  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BB0C84  7C 03 07 74 */	extsb r3, r0
/* 80BB0C88  4B 47 C3 E4 */	b dComIfGp_getReverb__Fi
/* 80BB0C8C  7C 67 1B 78 */	mr r7, r3
/* 80BB0C90  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007022A@ha */
/* 80BB0C94  38 03 02 2A */	addi r0, r3, 0x022A /* 0x0007022A@l */
/* 80BB0C98  90 01 00 08 */	stw r0, 8(r1)
/* 80BB0C9C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BB0CA0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BB0CA4  80 63 00 00 */	lwz r3, 0(r3)
/* 80BB0CA8  38 81 00 08 */	addi r4, r1, 8
/* 80BB0CAC  38 BF 05 38 */	addi r5, r31, 0x538
/* 80BB0CB0  38 C0 00 00 */	li r6, 0
/* 80BB0CB4  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80BB0CB8  FC 40 08 90 */	fmr f2, f1
/* 80BB0CBC  C0 7E 00 88 */	lfs f3, 0x88(r30)
/* 80BB0CC0  FC 80 18 90 */	fmr f4, f3
/* 80BB0CC4  39 00 00 00 */	li r8, 0
/* 80BB0CC8  4B 6F B8 44 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BB0CCC  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80BB0CD0  41 82 00 B8 */	beq lbl_80BB0D88
/* 80BB0CD4  80 1F 10 BC */	lwz r0, 0x10bc(r31)
/* 80BB0CD8  2C 00 00 00 */	cmpwi r0, 0
/* 80BB0CDC  40 82 00 14 */	bne lbl_80BB0CF0
/* 80BB0CE0  80 7F 10 B4 */	lwz r3, 0x10b4(r31)
/* 80BB0CE4  38 03 00 01 */	addi r0, r3, 1
/* 80BB0CE8  90 1F 10 B4 */	stw r0, 0x10b4(r31)
/* 80BB0CEC  48 00 00 48 */	b lbl_80BB0D34
lbl_80BB0CF0:
/* 80BB0CF0  2C 00 00 01 */	cmpwi r0, 1
/* 80BB0CF4  40 82 00 14 */	bne lbl_80BB0D08
/* 80BB0CF8  80 7F 10 B0 */	lwz r3, 0x10b0(r31)
/* 80BB0CFC  38 03 00 01 */	addi r0, r3, 1
/* 80BB0D00  90 1F 10 B0 */	stw r0, 0x10b0(r31)
/* 80BB0D04  48 00 00 30 */	b lbl_80BB0D34
lbl_80BB0D08:
/* 80BB0D08  2C 00 00 02 */	cmpwi r0, 2
/* 80BB0D0C  40 82 00 14 */	bne lbl_80BB0D20
/* 80BB0D10  80 7F 10 B4 */	lwz r3, 0x10b4(r31)
/* 80BB0D14  38 03 FF FF */	addi r0, r3, -1
/* 80BB0D18  90 1F 10 B4 */	stw r0, 0x10b4(r31)
/* 80BB0D1C  48 00 00 18 */	b lbl_80BB0D34
lbl_80BB0D20:
/* 80BB0D20  2C 00 00 03 */	cmpwi r0, 3
/* 80BB0D24  40 82 00 10 */	bne lbl_80BB0D34
/* 80BB0D28  80 7F 10 B0 */	lwz r3, 0x10b0(r31)
/* 80BB0D2C  38 03 FF FF */	addi r0, r3, -1
/* 80BB0D30  90 1F 10 B0 */	stw r0, 0x10b0(r31)
lbl_80BB0D34:
/* 80BB0D34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BB0D38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BB0D3C  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 80BB0D40  80 04 05 70 */	lwz r0, 0x570(r4)
/* 80BB0D44  54 00 05 66 */	rlwinm r0, r0, 0, 0x15, 0x13
/* 80BB0D48  90 04 05 70 */	stw r0, 0x570(r4)
/* 80BB0D4C  80 9F 00 B0 */	lwz r4, 0xb0(r31)
/* 80BB0D50  54 80 47 3F */	rlwinm. r0, r4, 8, 0x1c, 0x1f
/* 80BB0D54  40 82 00 2C */	bne lbl_80BB0D80
/* 80BB0D58  80 1F 10 B4 */	lwz r0, 0x10b4(r31)
/* 80BB0D5C  2C 00 00 04 */	cmpwi r0, 4
/* 80BB0D60  40 82 00 20 */	bne lbl_80BB0D80
/* 80BB0D64  54 84 86 3E */	rlwinm r4, r4, 0x10, 0x18, 0x1f
/* 80BB0D68  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80BB0D6C  7C 05 07 74 */	extsb r5, r0
/* 80BB0D70  4B 48 44 90 */	b onSwitch__10dSv_info_cFii
/* 80BB0D74  7F E3 FB 78 */	mr r3, r31
/* 80BB0D78  48 00 00 49 */	bl mode_dead_init__9daObjBm_cFv
/* 80BB0D7C  48 00 00 0C */	b lbl_80BB0D88
lbl_80BB0D80:
/* 80BB0D80  7F E3 FB 78 */	mr r3, r31
/* 80BB0D84  4B FF FA A1 */	bl mode_wait_init__9daObjBm_cFv
lbl_80BB0D88:
/* 80BB0D88  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80BB0D8C  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80BB0D90  39 61 00 80 */	addi r11, r1, 0x80
/* 80BB0D94  4B 7B 14 90 */	b _restgpr_28
/* 80BB0D98  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80BB0D9C  7C 08 03 A6 */	mtlr r0
/* 80BB0DA0  38 21 00 90 */	addi r1, r1, 0x90
/* 80BB0DA4  4E 80 00 20 */	blr 
