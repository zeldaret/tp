lbl_804718E8:
/* 804718E8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804718EC  7C 08 02 A6 */	mflr r0
/* 804718F0  90 01 00 44 */	stw r0, 0x44(r1)
/* 804718F4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804718F8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804718FC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80471900  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80471904  7C 7F 1B 78 */	mr r31, r3
/* 80471908  3C 60 80 48 */	lis r3, l_cyl_info@ha
/* 8047190C  3B C3 99 0C */	addi r30, r3, l_cyl_info@l
/* 80471910  38 00 00 00 */	li r0, 0
/* 80471914  98 1F 0D BC */	stb r0, 0xdbc(r31)
/* 80471918  88 7F 0C F0 */	lbz r3, 0xcf0(r31)
/* 8047191C  2C 03 00 03 */	cmpwi r3, 3
/* 80471920  40 82 00 20 */	bne lbl_80471940
/* 80471924  A0 1F 0D 16 */	lhz r0, 0xd16(r31)
/* 80471928  54 03 C6 BE */	rlwinm r3, r0, 0x18, 0x1a, 0x1f
/* 8047192C  38 80 00 0B */	li r4, 0xb
/* 80471930  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80471934  38 C0 FF FF */	li r6, -1
/* 80471938  4B C2 AA 94 */	b setPosition__7dTres_cFiUcPC3Veci
/* 8047193C  48 00 00 E0 */	b lbl_80471A1C
lbl_80471940:
/* 80471940  2C 03 00 08 */	cmpwi r3, 8
/* 80471944  41 82 00 0C */	beq lbl_80471950
/* 80471948  2C 03 00 09 */	cmpwi r3, 9
/* 8047194C  40 82 00 08 */	bne lbl_80471954
lbl_80471950:
/* 80471950  38 00 00 01 */	li r0, 1
lbl_80471954:
/* 80471954  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80471958  41 82 00 C4 */	beq lbl_80471A1C
/* 8047195C  A0 1F 0D 16 */	lhz r0, 0xd16(r31)
/* 80471960  54 03 C6 BE */	rlwinm r3, r0, 0x18, 0x1a, 0x1f
/* 80471964  38 80 00 0C */	li r4, 0xc
/* 80471968  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8047196C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80471970  7C 06 07 74 */	extsb r6, r0
/* 80471974  4B C2 AA 58 */	b setPosition__7dTres_cFiUcPC3Veci
/* 80471978  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8047197C  7C 03 07 74 */	extsb r3, r0
/* 80471980  4B BB B6 EC */	b dComIfGp_getReverb__Fi
/* 80471984  7C 67 1B 78 */	mr r7, r3
/* 80471988  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080205@ha */
/* 8047198C  38 03 02 05 */	addi r0, r3, 0x0205 /* 0x00080205@l */
/* 80471990  90 01 00 10 */	stw r0, 0x10(r1)
/* 80471994  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80471998  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8047199C  80 63 00 00 */	lwz r3, 0(r3)
/* 804719A0  38 81 00 10 */	addi r4, r1, 0x10
/* 804719A4  38 BF 05 38 */	addi r5, r31, 0x538
/* 804719A8  38 C0 00 00 */	li r6, 0
/* 804719AC  C0 3E 0A C0 */	lfs f1, 0xac0(r30)
/* 804719B0  FC 40 08 90 */	fmr f2, f1
/* 804719B4  C0 7E 0B 00 */	lfs f3, 0xb00(r30)
/* 804719B8  FC 80 18 90 */	fmr f4, f3
/* 804719BC  39 00 00 00 */	li r8, 0
/* 804719C0  4B E3 AB 4C */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 804719C4  80 7F 05 A0 */	lwz r3, 0x5a0(r31)
/* 804719C8  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 804719CC  41 82 00 20 */	beq lbl_804719EC
/* 804719D0  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 804719D4  40 82 00 18 */	bne lbl_804719EC
/* 804719D8  38 7F 0E 20 */	addi r3, r31, 0xe20
/* 804719DC  C0 3E 0A C0 */	lfs f1, 0xac0(r30)
/* 804719E0  C0 5E 0B 04 */	lfs f2, 0xb04(r30)
/* 804719E4  4B DF ED 5C */	b cLib_chaseF__FPfff
/* 804719E8  48 00 00 14 */	b lbl_804719FC
lbl_804719EC:
/* 804719EC  38 7F 0E 20 */	addi r3, r31, 0xe20
/* 804719F0  C0 3E 0B 08 */	lfs f1, 0xb08(r30)
/* 804719F4  C0 5E 0B 04 */	lfs f2, 0xb04(r30)
/* 804719F8  4B DF ED 48 */	b cLib_chaseF__FPfff
lbl_804719FC:
/* 804719FC  80 1E 0A FC */	lwz r0, 0xafc(r30)
/* 80471A00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80471A04  90 01 00 18 */	stw r0, 0x18(r1)
/* 80471A08  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80471A0C  38 81 00 18 */	addi r4, r1, 0x18
/* 80471A10  C0 3F 0E 20 */	lfs f1, 0xe20(r31)
/* 80471A14  38 A0 00 00 */	li r5, 0
/* 80471A18  4B D3 83 48 */	b dKy_BossLight_set__FP4cXyzP8_GXColorfUc
lbl_80471A1C:
/* 80471A1C  88 7F 0C F0 */	lbz r3, 0xcf0(r31)
/* 80471A20  2C 03 00 03 */	cmpwi r3, 3
/* 80471A24  40 82 00 14 */	bne lbl_80471A38
/* 80471A28  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80471A2C  54 00 06 BE */	clrlwi r0, r0, 0x1a
/* 80471A30  2C 00 00 3F */	cmpwi r0, 0x3f
/* 80471A34  40 82 00 34 */	bne lbl_80471A68
lbl_80471A38:
/* 80471A38  38 00 00 00 */	li r0, 0
/* 80471A3C  2C 03 00 08 */	cmpwi r3, 8
/* 80471A40  41 82 00 0C */	beq lbl_80471A4C
/* 80471A44  2C 03 00 09 */	cmpwi r3, 9
/* 80471A48  40 82 00 08 */	bne lbl_80471A50
lbl_80471A4C:
/* 80471A4C  38 00 00 01 */	li r0, 1
lbl_80471A50:
/* 80471A50  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80471A54  41 82 01 1C */	beq lbl_80471B70
/* 80471A58  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80471A5C  54 00 06 BE */	clrlwi r0, r0, 0x1a
/* 80471A60  2C 00 00 3F */	cmpwi r0, 0x3f
/* 80471A64  41 82 01 0C */	beq lbl_80471B70
lbl_80471A68:
/* 80471A68  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80471A6C  7C 00 07 74 */	extsb r0, r0
/* 80471A70  2C 00 FF FF */	cmpwi r0, -1
/* 80471A74  40 82 00 60 */	bne lbl_80471AD4
/* 80471A78  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80471A7C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80471A80  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80471A84  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80471A88  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80471A8C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80471A90  C0 1E 0A B4 */	lfs f0, 0xab4(r30)
/* 80471A94  EC 01 00 2A */	fadds f0, f1, f0
/* 80471A98  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80471A9C  38 61 00 1C */	addi r3, r1, 0x1c
/* 80471AA0  4B BA C2 1C */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80471AA4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80471AA8  41 82 00 2C */	beq lbl_80471AD4
/* 80471AAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80471AB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80471AB4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80471AB8  3C 80 80 3F */	lis r4, mGndCheck__11fopAcM_gc_c@ha
/* 80471ABC  38 84 1C C4 */	addi r4, r4, mGndCheck__11fopAcM_gc_c@l
/* 80471AC0  38 84 00 14 */	addi r4, r4, 0x14
/* 80471AC4  4B C0 36 3C */	b GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80471AC8  98 7F 04 E2 */	stb r3, 0x4e2(r31)
/* 80471ACC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80471AD0  98 1F 04 8C */	stb r0, 0x48c(r31)
lbl_80471AD4:
/* 80471AD4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80471AD8  7C 00 07 74 */	extsb r0, r0
/* 80471ADC  7C 04 03 78 */	mr r4, r0
/* 80471AE0  2C 00 FF FF */	cmpwi r0, -1
/* 80471AE4  40 82 00 10 */	bne lbl_80471AF4
/* 80471AE8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80471AEC  54 00 06 BE */	clrlwi r0, r0, 0x1a
/* 80471AF0  7C 04 03 78 */	mr r4, r0
lbl_80471AF4:
/* 80471AF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80471AF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80471AFC  38 63 4E C4 */	addi r3, r3, 0x4ec4
/* 80471B00  4B BB 29 E8 */	b checkRoomDisp__20dStage_roomControl_cCFi
/* 80471B04  2C 03 00 00 */	cmpwi r3, 0
/* 80471B08  40 82 00 38 */	bne lbl_80471B40
/* 80471B0C  38 00 00 00 */	li r0, 0
/* 80471B10  88 7F 0C F0 */	lbz r3, 0xcf0(r31)
/* 80471B14  2C 03 00 08 */	cmpwi r3, 8
/* 80471B18  41 82 00 0C */	beq lbl_80471B24
/* 80471B1C  2C 03 00 09 */	cmpwi r3, 9
/* 80471B20  40 82 00 08 */	bne lbl_80471B28
lbl_80471B24:
/* 80471B24  38 00 00 01 */	li r0, 1
lbl_80471B28:
/* 80471B28  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80471B2C  41 82 00 0C */	beq lbl_80471B38
/* 80471B30  7F E3 FB 78 */	mr r3, r31
/* 80471B34  4B BA 81 48 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80471B38:
/* 80471B38  38 60 00 01 */	li r3, 1
/* 80471B3C  48 00 07 E0 */	b lbl_8047231C
lbl_80471B40:
/* 80471B40  C0 5E 0B 0C */	lfs f2, 0xb0c(r30)
/* 80471B44  88 1F 0C F0 */	lbz r0, 0xcf0(r31)
/* 80471B48  2C 00 00 03 */	cmpwi r0, 3
/* 80471B4C  40 82 00 08 */	bne lbl_80471B54
/* 80471B50  C0 5E 0A 70 */	lfs f2, 0xa70(r30)
lbl_80471B54:
/* 80471B54  C0 3F 04 AC */	lfs f1, 0x4ac(r31)
/* 80471B58  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80471B5C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80471B60  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80471B64  40 81 00 0C */	ble lbl_80471B70
/* 80471B68  38 00 00 01 */	li r0, 1
/* 80471B6C  98 1F 0D BA */	stb r0, 0xdba(r31)
lbl_80471B70:
/* 80471B70  88 1F 0C F0 */	lbz r0, 0xcf0(r31)
/* 80471B74  28 00 00 05 */	cmplwi r0, 5
/* 80471B78  40 82 00 44 */	bne lbl_80471BBC
/* 80471B7C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80471B80  54 04 D6 3E */	rlwinm r4, r0, 0x1a, 0x18, 0x1f
/* 80471B84  28 04 00 FF */	cmplwi r4, 0xff
/* 80471B88  41 82 00 34 */	beq lbl_80471BBC
/* 80471B8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80471B90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80471B94  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80471B98  7C 05 07 74 */	extsb r5, r0
/* 80471B9C  4B BC 37 C4 */	b isSwitch__10dSv_info_cCFii
/* 80471BA0  2C 03 00 00 */	cmpwi r3, 0
/* 80471BA4  40 82 00 18 */	bne lbl_80471BBC
/* 80471BA8  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 80471BAC  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80471BB0  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80471BB4  38 60 00 01 */	li r3, 1
/* 80471BB8  48 00 07 64 */	b lbl_8047231C
lbl_80471BBC:
/* 80471BBC  88 7F 0D B6 */	lbz r3, 0xdb6(r31)
/* 80471BC0  28 03 00 00 */	cmplwi r3, 0
/* 80471BC4  41 82 00 24 */	beq lbl_80471BE8
/* 80471BC8  38 03 FF FF */	addi r0, r3, -1
/* 80471BCC  98 1F 0D B6 */	stb r0, 0xdb6(r31)
/* 80471BD0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80471BD4  40 82 00 0C */	bne lbl_80471BE0
/* 80471BD8  7F E3 FB 78 */	mr r3, r31
/* 80471BDC  4B BA 80 A0 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80471BE0:
/* 80471BE0  38 60 00 01 */	li r3, 1
/* 80471BE4  48 00 07 38 */	b lbl_8047231C
lbl_80471BE8:
/* 80471BE8  88 1F 0D B8 */	lbz r0, 0xdb8(r31)
/* 80471BEC  28 00 00 00 */	cmplwi r0, 0
/* 80471BF0  41 82 00 5C */	beq lbl_80471C4C
/* 80471BF4  88 1F 0D B9 */	lbz r0, 0xdb9(r31)
/* 80471BF8  28 00 00 00 */	cmplwi r0, 0
/* 80471BFC  40 82 00 0C */	bne lbl_80471C08
/* 80471C00  7F E3 FB 78 */	mr r3, r31
/* 80471C04  48 00 17 E5 */	bl mode_init_wait__12daObjCarry_cFv
lbl_80471C08:
/* 80471C08  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 80471C0C  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80471C10  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80471C14  7F E3 FB 78 */	mr r3, r31
/* 80471C18  48 00 76 BD */	bl calc_rot_call__12daObjCarry_cFv
/* 80471C1C  7F E3 FB 78 */	mr r3, r31
/* 80471C20  4B FF DB 8D */	bl setBaseMtx__12daObjCarry_cFv
/* 80471C24  88 1F 0D B8 */	lbz r0, 0xdb8(r31)
/* 80471C28  98 1F 0D B9 */	stb r0, 0xdb9(r31)
/* 80471C2C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80471C30  D0 1F 0D EC */	stfs f0, 0xdec(r31)
/* 80471C34  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80471C38  D0 1F 0D F0 */	stfs f0, 0xdf0(r31)
/* 80471C3C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80471C40  D0 1F 0D F4 */	stfs f0, 0xdf4(r31)
/* 80471C44  38 60 00 01 */	li r3, 1
/* 80471C48  48 00 06 D4 */	b lbl_8047231C
lbl_80471C4C:
/* 80471C4C  88 1F 0D B9 */	lbz r0, 0xdb9(r31)
/* 80471C50  28 00 00 00 */	cmplwi r0, 0
/* 80471C54  41 82 02 B0 */	beq lbl_80471F04
/* 80471C58  88 1F 0D EA */	lbz r0, 0xdea(r31)
/* 80471C5C  28 00 00 00 */	cmplwi r0, 0
/* 80471C60  41 82 02 50 */	beq lbl_80471EB0
/* 80471C64  A8 1F 0D E8 */	lha r0, 0xde8(r31)
/* 80471C68  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80471C6C  7C 00 1E 70 */	srawi r0, r0, 3
/* 80471C70  54 00 18 38 */	slwi r0, r0, 3
/* 80471C74  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80471C78  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80471C7C  7C 43 04 2E */	lfsx f2, r3, r0
/* 80471C80  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80471C84  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80471C88  7C 23 04 2E */	lfsx f1, r3, r0
/* 80471C8C  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 80471C90  EC 20 00 72 */	fmuls f1, f0, f1
/* 80471C94  C0 1F 0D E4 */	lfs f0, 0xde4(r31)
/* 80471C98  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80471C9C  EC 01 00 2A */	fadds f0, f1, f0
/* 80471CA0  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80471CA4  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 80471CA8  C0 1F 0D E0 */	lfs f0, 0xde0(r31)
/* 80471CAC  EC 01 00 2A */	fadds f0, f1, f0
/* 80471CB0  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80471CB4  38 63 00 04 */	addi r3, r3, 4
/* 80471CB8  A8 1F 0D E8 */	lha r0, 0xde8(r31)
/* 80471CBC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80471CC0  7C 43 04 2E */	lfsx f2, r3, r0
/* 80471CC4  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80471CC8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80471CCC  7C 23 04 2E */	lfsx f1, r3, r0
/* 80471CD0  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 80471CD4  EC 20 00 72 */	fmuls f1, f0, f1
/* 80471CD8  C0 1F 0D E4 */	lfs f0, 0xde4(r31)
/* 80471CDC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80471CE0  EC 01 00 2A */	fadds f0, f1, f0
/* 80471CE4  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80471CE8  C0 1F 04 F8 */	lfs f0, 0x4f8(r31)
/* 80471CEC  EC 20 00 32 */	fmuls f1, f0, f0
/* 80471CF0  C0 1F 05 00 */	lfs f0, 0x500(r31)
/* 80471CF4  EC 00 00 32 */	fmuls f0, f0, f0
/* 80471CF8  EC 81 00 2A */	fadds f4, f1, f0
/* 80471CFC  C0 1E 0A 48 */	lfs f0, 0xa48(r30)
/* 80471D00  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80471D04  40 81 00 58 */	ble lbl_80471D5C
/* 80471D08  FC 00 20 34 */	frsqrte f0, f4
/* 80471D0C  C8 7E 0A 50 */	lfd f3, 0xa50(r30)
/* 80471D10  FC 23 00 32 */	fmul f1, f3, f0
/* 80471D14  C8 5E 0A 58 */	lfd f2, 0xa58(r30)
/* 80471D18  FC 00 00 32 */	fmul f0, f0, f0
/* 80471D1C  FC 04 00 32 */	fmul f0, f4, f0
/* 80471D20  FC 02 00 28 */	fsub f0, f2, f0
/* 80471D24  FC 01 00 32 */	fmul f0, f1, f0
/* 80471D28  FC 23 00 32 */	fmul f1, f3, f0
/* 80471D2C  FC 00 00 32 */	fmul f0, f0, f0
/* 80471D30  FC 04 00 32 */	fmul f0, f4, f0
/* 80471D34  FC 02 00 28 */	fsub f0, f2, f0
/* 80471D38  FC 01 00 32 */	fmul f0, f1, f0
/* 80471D3C  FC 23 00 32 */	fmul f1, f3, f0
/* 80471D40  FC 00 00 32 */	fmul f0, f0, f0
/* 80471D44  FC 04 00 32 */	fmul f0, f4, f0
/* 80471D48  FC 02 00 28 */	fsub f0, f2, f0
/* 80471D4C  FC 01 00 32 */	fmul f0, f1, f0
/* 80471D50  FC 84 00 32 */	fmul f4, f4, f0
/* 80471D54  FC 80 20 18 */	frsp f4, f4
/* 80471D58  48 00 00 88 */	b lbl_80471DE0
lbl_80471D5C:
/* 80471D5C  C8 1E 0A 60 */	lfd f0, 0xa60(r30)
/* 80471D60  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80471D64  40 80 00 10 */	bge lbl_80471D74
/* 80471D68  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80471D6C  C0 83 0A E0 */	lfs f4, __float_nan@l(r3)
/* 80471D70  48 00 00 70 */	b lbl_80471DE0
lbl_80471D74:
/* 80471D74  D0 81 00 08 */	stfs f4, 8(r1)
/* 80471D78  80 81 00 08 */	lwz r4, 8(r1)
/* 80471D7C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80471D80  3C 00 7F 80 */	lis r0, 0x7f80
/* 80471D84  7C 03 00 00 */	cmpw r3, r0
/* 80471D88  41 82 00 14 */	beq lbl_80471D9C
/* 80471D8C  40 80 00 40 */	bge lbl_80471DCC
/* 80471D90  2C 03 00 00 */	cmpwi r3, 0
/* 80471D94  41 82 00 20 */	beq lbl_80471DB4
/* 80471D98  48 00 00 34 */	b lbl_80471DCC
lbl_80471D9C:
/* 80471D9C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80471DA0  41 82 00 0C */	beq lbl_80471DAC
/* 80471DA4  38 00 00 01 */	li r0, 1
/* 80471DA8  48 00 00 28 */	b lbl_80471DD0
lbl_80471DAC:
/* 80471DAC  38 00 00 02 */	li r0, 2
/* 80471DB0  48 00 00 20 */	b lbl_80471DD0
lbl_80471DB4:
/* 80471DB4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80471DB8  41 82 00 0C */	beq lbl_80471DC4
/* 80471DBC  38 00 00 05 */	li r0, 5
/* 80471DC0  48 00 00 10 */	b lbl_80471DD0
lbl_80471DC4:
/* 80471DC4  38 00 00 03 */	li r0, 3
/* 80471DC8  48 00 00 08 */	b lbl_80471DD0
lbl_80471DCC:
/* 80471DCC  38 00 00 04 */	li r0, 4
lbl_80471DD0:
/* 80471DD0  2C 00 00 01 */	cmpwi r0, 1
/* 80471DD4  40 82 00 0C */	bne lbl_80471DE0
/* 80471DD8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80471DDC  C0 83 0A E0 */	lfs f4, __float_nan@l(r3)
lbl_80471DE0:
/* 80471DE0  D0 9F 05 2C */	stfs f4, 0x52c(r31)
/* 80471DE4  C0 3F 04 F8 */	lfs f1, 0x4f8(r31)
/* 80471DE8  C0 5F 05 00 */	lfs f2, 0x500(r31)
/* 80471DEC  4B DF 58 88 */	b cM_atan2s__Fff
/* 80471DF0  B0 7F 04 DE */	sth r3, 0x4de(r31)
/* 80471DF4  C0 1E 0A 48 */	lfs f0, 0xa48(r30)
/* 80471DF8  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80471DFC  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80471E00  38 00 00 00 */	li r0, 0
/* 80471E04  B0 1F 0D E8 */	sth r0, 0xde8(r31)
/* 80471E08  7F E3 FB 78 */	mr r3, r31
/* 80471E0C  4B FF D8 99 */	bl data__12daObjCarry_cFv
/* 80471E10  C0 23 00 04 */	lfs f1, 4(r3)
/* 80471E14  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 80471E18  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80471E1C  40 81 00 2C */	ble lbl_80471E48
/* 80471E20  7F E3 FB 78 */	mr r3, r31
/* 80471E24  4B FF D8 81 */	bl data__12daObjCarry_cFv
/* 80471E28  C0 23 00 00 */	lfs f1, 0(r3)
/* 80471E2C  C0 1F 04 FC */	lfs f0, 0x4fc(r31)
/* 80471E30  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80471E34  40 81 00 14 */	ble lbl_80471E48
/* 80471E38  7F E3 FB 78 */	mr r3, r31
/* 80471E3C  38 80 00 00 */	li r4, 0
/* 80471E40  48 00 26 09 */	bl mode_init_drop__12daObjCarry_cFUc
/* 80471E44  48 00 00 10 */	b lbl_80471E54
lbl_80471E48:
/* 80471E48  7F E3 FB 78 */	mr r3, r31
/* 80471E4C  38 80 00 00 */	li r4, 0
/* 80471E50  48 00 18 C9 */	bl mode_init_walk__12daObjCarry_cFUc
lbl_80471E54:
/* 80471E54  80 7F 0D D0 */	lwz r3, 0xdd0(r31)
/* 80471E58  28 03 00 00 */	cmplwi r3, 0
/* 80471E5C  41 82 00 48 */	beq lbl_80471EA4
/* 80471E60  4B BA 6E 80 */	b fopAc_IsActor__FPv
/* 80471E64  2C 03 00 00 */	cmpwi r3, 0
/* 80471E68  41 82 00 3C */	beq lbl_80471EA4
/* 80471E6C  80 7F 0D D0 */	lwz r3, 0xdd0(r31)
/* 80471E70  A8 03 00 0E */	lha r0, 0xe(r3)
/* 80471E74  2C 00 00 91 */	cmpwi r0, 0x91
/* 80471E78  40 82 00 2C */	bne lbl_80471EA4
/* 80471E7C  38 7F 07 8C */	addi r3, r31, 0x78c
/* 80471E80  4B DF 1A DC */	b ClrCcMove__9cCcD_SttsFv
/* 80471E84  38 00 00 64 */	li r0, 0x64
/* 80471E88  98 1F 07 DC */	stb r0, 0x7dc(r31)
/* 80471E8C  38 7F 05 88 */	addi r3, r31, 0x588
/* 80471E90  4B C0 71 04 */	b SetIronBall__16dBgS_PolyPassChkFv
/* 80471E94  38 00 00 00 */	li r0, 0
/* 80471E98  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 80471E9C  38 00 00 01 */	li r0, 1
/* 80471EA0  98 1F 0D EB */	stb r0, 0xdeb(r31)
lbl_80471EA4:
/* 80471EA4  38 00 00 00 */	li r0, 0
/* 80471EA8  98 1F 0D EA */	stb r0, 0xdea(r31)
/* 80471EAC  48 00 00 AC */	b lbl_80471F58
lbl_80471EB0:
/* 80471EB0  88 7F 0C F0 */	lbz r3, 0xcf0(r31)
/* 80471EB4  28 03 00 0B */	cmplwi r3, 0xb
/* 80471EB8  41 82 00 34 */	beq lbl_80471EEC
/* 80471EBC  38 00 00 00 */	li r0, 0
/* 80471EC0  2C 03 00 08 */	cmpwi r3, 8
/* 80471EC4  41 82 00 0C */	beq lbl_80471ED0
/* 80471EC8  2C 03 00 09 */	cmpwi r3, 9
/* 80471ECC  40 82 00 08 */	bne lbl_80471ED4
lbl_80471ED0:
/* 80471ED0  38 00 00 01 */	li r0, 1
lbl_80471ED4:
/* 80471ED4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80471ED8  41 82 00 20 */	beq lbl_80471EF8
/* 80471EDC  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha
/* 80471EE0  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)
/* 80471EE4  7C 00 07 75 */	extsb. r0, r0
/* 80471EE8  40 82 00 10 */	bne lbl_80471EF8
lbl_80471EEC:
/* 80471EEC  7F E3 FB 78 */	mr r3, r31
/* 80471EF0  48 00 34 95 */	bl mode_init_fit__12daObjCarry_cFv
/* 80471EF4  48 00 00 64 */	b lbl_80471F58
lbl_80471EF8:
/* 80471EF8  7F E3 FB 78 */	mr r3, r31
/* 80471EFC  48 00 14 ED */	bl mode_init_wait__12daObjCarry_cFv
/* 80471F00  48 00 00 58 */	b lbl_80471F58
lbl_80471F04:
/* 80471F04  38 7F 0D EC */	addi r3, r31, 0xdec
/* 80471F08  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80471F0C  4B DF 51 60 */	b __ne__4cXyzCFRC3Vec
/* 80471F10  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80471F14  41 82 00 44 */	beq lbl_80471F58
/* 80471F18  80 7F 04 9C */	lwz r3, 0x49c(r31)
/* 80471F1C  54 60 04 A5 */	rlwinm. r0, r3, 0, 0x12, 0x12
/* 80471F20  40 82 00 38 */	bne lbl_80471F58
/* 80471F24  88 9F 0C F1 */	lbz r4, 0xcf1(r31)
/* 80471F28  28 04 00 02 */	cmplwi r4, 2
/* 80471F2C  41 82 00 2C */	beq lbl_80471F58
/* 80471F30  54 60 02 D7 */	rlwinm. r0, r3, 0, 0xb, 0xb
/* 80471F34  40 82 00 24 */	bne lbl_80471F58
/* 80471F38  28 04 00 0C */	cmplwi r4, 0xc
/* 80471F3C  41 82 00 1C */	beq lbl_80471F58
/* 80471F40  28 04 00 00 */	cmplwi r4, 0
/* 80471F44  41 82 00 14 */	beq lbl_80471F58
/* 80471F48  28 04 00 0E */	cmplwi r4, 0xe
/* 80471F4C  41 82 00 0C */	beq lbl_80471F58
/* 80471F50  7F E3 FB 78 */	mr r3, r31
/* 80471F54  48 00 14 95 */	bl mode_init_wait__12daObjCarry_cFv
lbl_80471F58:
/* 80471F58  88 1F 0D BA */	lbz r0, 0xdba(r31)
/* 80471F5C  28 00 00 00 */	cmplwi r0, 0
/* 80471F60  41 82 01 40 */	beq lbl_804720A0
/* 80471F64  38 00 00 00 */	li r0, 0
/* 80471F68  98 1F 0D BA */	stb r0, 0xdba(r31)
/* 80471F6C  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80471F70  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80471F74  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80471F78  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80471F7C  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80471F80  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80471F84  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80471F88  C0 1E 0A B0 */	lfs f0, 0xab0(r30)
/* 80471F8C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80471F90  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80471F94  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80471F98  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80471F9C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80471FA0  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80471FA4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80471FA8  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80471FAC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80471FB0  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 80471FB4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80471FB8  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80471FBC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80471FC0  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 80471FC4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80471FC8  D0 1F 0D EC */	stfs f0, 0xdec(r31)
/* 80471FCC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80471FD0  D0 1F 0D F0 */	stfs f0, 0xdf0(r31)
/* 80471FD4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80471FD8  D0 1F 0D F4 */	stfs f0, 0xdf4(r31)
/* 80471FDC  C0 1E 0A 48 */	lfs f0, 0xa48(r30)
/* 80471FE0  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80471FE4  88 7F 0C F0 */	lbz r3, 0xcf0(r31)
/* 80471FE8  2C 03 00 08 */	cmpwi r3, 8
/* 80471FEC  41 82 00 0C */	beq lbl_80471FF8
/* 80471FF0  2C 03 00 09 */	cmpwi r3, 9
/* 80471FF4  40 82 00 08 */	bne lbl_80471FFC
lbl_80471FF8:
/* 80471FF8  38 00 00 01 */	li r0, 1
lbl_80471FFC:
/* 80471FFC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80472000  41 82 00 6C */	beq lbl_8047206C
/* 80472004  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80472008  7C 03 07 74 */	extsb r3, r0
/* 8047200C  4B BB B0 60 */	b dComIfGp_getReverb__Fi
/* 80472010  7C 67 1B 78 */	mr r7, r3
/* 80472014  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080206@ha */
/* 80472018  38 03 02 06 */	addi r0, r3, 0x0206 /* 0x00080206@l */
/* 8047201C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80472020  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80472024  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80472028  80 63 00 00 */	lwz r3, 0(r3)
/* 8047202C  38 81 00 0C */	addi r4, r1, 0xc
/* 80472030  38 BF 05 38 */	addi r5, r31, 0x538
/* 80472034  38 C0 00 00 */	li r6, 0
/* 80472038  C0 3E 0A C0 */	lfs f1, 0xac0(r30)
/* 8047203C  FC 40 08 90 */	fmr f2, f1
/* 80472040  C0 7E 0B 00 */	lfs f3, 0xb00(r30)
/* 80472044  FC 80 18 90 */	fmr f4, f3
/* 80472048  39 00 00 00 */	li r8, 0
/* 8047204C  4B E3 99 38 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80472050  C0 1E 0A 48 */	lfs f0, 0xa48(r30)
/* 80472054  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 80472058  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 8047205C  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 80472060  7F E3 FB 78 */	mr r3, r31
/* 80472064  48 00 34 6D */	bl mode_init_resetLightBall__12daObjCarry_cFv
/* 80472068  48 00 00 38 */	b lbl_804720A0
lbl_8047206C:
/* 8047206C  2C 03 00 03 */	cmpwi r3, 3
/* 80472070  40 82 00 28 */	bne lbl_80472098
/* 80472074  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80472078  7C 03 07 74 */	extsb r3, r0
/* 8047207C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80472080  54 00 06 BE */	clrlwi r0, r0, 0x1a
/* 80472084  7C 03 00 00 */	cmpw r3, r0
/* 80472088  41 82 00 10 */	beq lbl_80472098
/* 8047208C  98 1F 04 E2 */	stb r0, 0x4e2(r31)
/* 80472090  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80472094  98 1F 04 8C */	stb r0, 0x48c(r31)
lbl_80472098:
/* 80472098  7F E3 FB 78 */	mr r3, r31
/* 8047209C  48 00 13 4D */	bl mode_init_wait__12daObjCarry_cFv
lbl_804720A0:
/* 804720A0  C0 1F 04 F8 */	lfs f0, 0x4f8(r31)
/* 804720A4  D0 1F 0D 1C */	stfs f0, 0xd1c(r31)
/* 804720A8  C0 1F 04 FC */	lfs f0, 0x4fc(r31)
/* 804720AC  D0 1F 0D 20 */	stfs f0, 0xd20(r31)
/* 804720B0  C0 1F 05 00 */	lfs f0, 0x500(r31)
/* 804720B4  D0 1F 0D 24 */	stfs f0, 0xd24(r31)
/* 804720B8  A8 7F 0D 04 */	lha r3, 0xd04(r31)
/* 804720BC  38 03 00 01 */	addi r0, r3, 1
/* 804720C0  B0 1F 0D 04 */	sth r0, 0xd04(r31)
/* 804720C4  7F E3 FB 78 */	mr r3, r31
/* 804720C8  48 00 6E 89 */	bl cc_damage_proc_call__12daObjCarry_cFv
/* 804720CC  7F E3 FB 78 */	mr r3, r31
/* 804720D0  48 00 0F 81 */	bl mode_proc_call__12daObjCarry_cFv
/* 804720D4  7F E3 FB 78 */	mr r3, r31
/* 804720D8  48 00 36 65 */	bl bg_check__12daObjCarry_cFv
/* 804720DC  7F E3 FB 78 */	mr r3, r31
/* 804720E0  48 00 71 F5 */	bl calc_rot_call__12daObjCarry_cFv
/* 804720E4  7F E3 FB 78 */	mr r3, r31
/* 804720E8  48 00 73 99 */	bl obj_execute_proc_call__12daObjCarry_cFv
/* 804720EC  38 7F 07 A8 */	addi r3, r31, 0x7a8
/* 804720F0  4B C1 17 40 */	b Move__10dCcD_GSttsFv
/* 804720F4  88 1F 0D AE */	lbz r0, 0xdae(r31)
/* 804720F8  28 00 00 00 */	cmplwi r0, 0
/* 804720FC  40 82 00 9C */	bne lbl_80472198
/* 80472100  38 7F 08 EC */	addi r3, r31, 0x8ec
/* 80472104  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80472108  4B DF D0 D4 */	b SetC__8cM3dGCylFRC4cXyz
/* 8047210C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80472110  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80472114  38 63 23 3C */	addi r3, r3, 0x233c
/* 80472118  38 9F 07 C8 */	addi r4, r31, 0x7c8
/* 8047211C  4B DF 2A 8C */	b Set__4cCcSFP8cCcD_Obj
/* 80472120  80 1F 07 F4 */	lwz r0, 0x7f4(r31)
/* 80472124  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80472128  41 82 00 48 */	beq lbl_80472170
/* 8047212C  88 1F 0C F1 */	lbz r0, 0xcf1(r31)
/* 80472130  28 00 00 03 */	cmplwi r0, 3
/* 80472134  40 82 00 3C */	bne lbl_80472170
/* 80472138  7F E3 FB 78 */	mr r3, r31
/* 8047213C  4B FF D5 69 */	bl data__12daObjCarry_cFv
/* 80472140  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 80472144  C0 1E 0A 78 */	lfs f0, 0xa78(r30)
/* 80472148  EF E0 00 72 */	fmuls f31, f0, f1
/* 8047214C  7F E3 FB 78 */	mr r3, r31
/* 80472150  4B FF D5 55 */	bl data__12daObjCarry_cFv
/* 80472154  C0 23 00 4C */	lfs f1, 0x4c(r3)
/* 80472158  C0 1E 0A 78 */	lfs f0, 0xa78(r30)
/* 8047215C  EC 20 00 72 */	fmuls f1, f0, f1
/* 80472160  38 7F 07 4C */	addi r3, r31, 0x74c
/* 80472164  FC 40 F8 90 */	fmr f2, f31
/* 80472168  4B C0 3D F0 */	b SetWall__12dBgS_AcchCirFff
/* 8047216C  48 00 00 50 */	b lbl_804721BC
lbl_80472170:
/* 80472170  7F E3 FB 78 */	mr r3, r31
/* 80472174  4B FF D5 31 */	bl data__12daObjCarry_cFv
/* 80472178  C3 E3 00 50 */	lfs f31, 0x50(r3)
/* 8047217C  7F E3 FB 78 */	mr r3, r31
/* 80472180  4B FF D5 25 */	bl data__12daObjCarry_cFv
/* 80472184  C0 23 00 4C */	lfs f1, 0x4c(r3)
/* 80472188  38 7F 07 4C */	addi r3, r31, 0x74c
/* 8047218C  FC 40 F8 90 */	fmr f2, f31
/* 80472190  4B C0 3D C8 */	b SetWall__12dBgS_AcchCirFff
/* 80472194  48 00 00 28 */	b lbl_804721BC
lbl_80472198:
/* 80472198  7F E3 FB 78 */	mr r3, r31
/* 8047219C  4B FF D5 09 */	bl data__12daObjCarry_cFv
/* 804721A0  C3 E3 00 50 */	lfs f31, 0x50(r3)
/* 804721A4  7F E3 FB 78 */	mr r3, r31
/* 804721A8  4B FF D4 FD */	bl data__12daObjCarry_cFv
/* 804721AC  C0 23 00 4C */	lfs f1, 0x4c(r3)
/* 804721B0  38 7F 07 4C */	addi r3, r31, 0x74c
/* 804721B4  FC 40 F8 90 */	fmr f2, f31
/* 804721B8  4B C0 3D A0 */	b SetWall__12dBgS_AcchCirFff
lbl_804721BC:
/* 804721BC  88 1F 0C F1 */	lbz r0, 0xcf1(r31)
/* 804721C0  28 00 00 00 */	cmplwi r0, 0
/* 804721C4  41 82 00 1C */	beq lbl_804721E0
/* 804721C8  28 00 00 01 */	cmplwi r0, 1
/* 804721CC  41 82 00 14 */	beq lbl_804721E0
/* 804721D0  28 00 00 05 */	cmplwi r0, 5
/* 804721D4  41 82 00 0C */	beq lbl_804721E0
/* 804721D8  28 00 00 03 */	cmplwi r0, 3
/* 804721DC  40 82 00 1C */	bne lbl_804721F8
lbl_804721E0:
/* 804721E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804721E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804721E8  38 63 4B 88 */	addi r3, r3, 0x4b88
/* 804721EC  38 9F 07 C8 */	addi r4, r31, 0x7c8
/* 804721F0  38 A0 00 03 */	li r5, 3
/* 804721F4  4B C1 3B A4 */	b Set__12dCcMassS_MngFP8cCcD_ObjUc
lbl_804721F8:
/* 804721F8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804721FC  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80472200  7F E3 FB 78 */	mr r3, r31
/* 80472204  4B FF D4 A1 */	bl data__12daObjCarry_cFv
/* 80472208  C0 23 00 48 */	lfs f1, 0x48(r3)
/* 8047220C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80472210  EC 00 08 2A */	fadds f0, f0, f1
/* 80472214  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80472218  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8047221C  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80472220  C0 1F 05 50 */	lfs f0, 0x550(r31)
/* 80472224  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80472228  C0 1F 05 54 */	lfs f0, 0x554(r31)
/* 8047222C  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80472230  C0 1F 05 58 */	lfs f0, 0x558(r31)
/* 80472234  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80472238  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 8047223C  54 00 9F FE */	rlwinm r0, r0, 0x13, 0x1f, 0x1f
/* 80472240  98 1F 0D A9 */	stb r0, 0xda9(r31)
/* 80472244  38 7F 07 C8 */	addi r3, r31, 0x7c8
/* 80472248  4B C1 24 10 */	b ChkCoHit__12dCcD_GObjInfFv
/* 8047224C  30 03 FF FF */	addic r0, r3, -1
/* 80472250  7C 00 19 10 */	subfe r0, r0, r3
/* 80472254  98 1F 0D AC */	stb r0, 0xdac(r31)
/* 80472258  80 1F 05 A0 */	lwz r0, 0x5a0(r31)
/* 8047225C  54 00 A7 FE */	rlwinm r0, r0, 0x14, 0x1f, 0x1f
/* 80472260  98 1F 0D AD */	stb r0, 0xdad(r31)
/* 80472264  88 1F 0D AA */	lbz r0, 0xdaa(r31)
/* 80472268  28 00 00 00 */	cmplwi r0, 0
/* 8047226C  41 82 00 10 */	beq lbl_8047227C
/* 80472270  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 80472274  90 1F 05 24 */	stw r0, 0x524(r31)
/* 80472278  48 00 00 0C */	b lbl_80472284
lbl_8047227C:
/* 8047227C  38 00 00 00 */	li r0, 0
/* 80472280  90 1F 05 24 */	stw r0, 0x524(r31)
lbl_80472284:
/* 80472284  88 1F 0D B8 */	lbz r0, 0xdb8(r31)
/* 80472288  98 1F 0D B9 */	stb r0, 0xdb9(r31)
/* 8047228C  7F E3 FB 78 */	mr r3, r31
/* 80472290  4B FF D5 1D */	bl setBaseMtx__12daObjCarry_cFv
/* 80472294  88 1F 0C F0 */	lbz r0, 0xcf0(r31)
/* 80472298  28 00 00 02 */	cmplwi r0, 2
/* 8047229C  41 82 00 0C */	beq lbl_804722A8
/* 804722A0  28 00 00 04 */	cmplwi r0, 4
/* 804722A4  40 82 00 18 */	bne lbl_804722BC
lbl_804722A8:
/* 804722A8  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 804722AC  81 83 00 00 */	lwz r12, 0(r3)
/* 804722B0  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 804722B4  7D 89 03 A6 */	mtctr r12
/* 804722B8  4E 80 04 21 */	bctrl 
lbl_804722BC:
/* 804722BC  38 00 00 00 */	li r0, 0
/* 804722C0  98 1F 0D AF */	stb r0, 0xdaf(r31)
/* 804722C4  38 7F 0E 24 */	addi r3, r31, 0xe24
/* 804722C8  48 00 76 11 */	bl func_804798D8
/* 804722CC  7C 60 07 75 */	extsb. r0, r3
/* 804722D0  40 82 00 10 */	bne lbl_804722E0
/* 804722D4  80 1F 05 A0 */	lwz r0, 0x5a0(r31)
/* 804722D8  54 00 04 E2 */	rlwinm r0, r0, 0, 0x13, 0x11
/* 804722DC  90 1F 05 A0 */	stw r0, 0x5a0(r31)
lbl_804722E0:
/* 804722E0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804722E4  D0 1F 0D EC */	stfs f0, 0xdec(r31)
/* 804722E8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 804722EC  D0 1F 0D F0 */	stfs f0, 0xdf0(r31)
/* 804722F0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 804722F4  D0 1F 0D F4 */	stfs f0, 0xdf4(r31)
/* 804722F8  80 7F 04 9C */	lwz r3, 0x49c(r31)
/* 804722FC  54 60 04 A5 */	rlwinm. r0, r3, 0, 0x12, 0x12
/* 80472300  41 82 00 10 */	beq lbl_80472310
/* 80472304  54 60 05 A8 */	rlwinm r0, r3, 0, 0x16, 0x14
/* 80472308  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 8047230C  48 00 00 0C */	b lbl_80472318
lbl_80472310:
/* 80472310  60 60 04 00 */	ori r0, r3, 0x400
/* 80472314  90 1F 04 9C */	stw r0, 0x49c(r31)
lbl_80472318:
/* 80472318  38 60 00 01 */	li r3, 1
lbl_8047231C:
/* 8047231C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80472320  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80472324  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80472328  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8047232C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80472330  7C 08 03 A6 */	mtlr r0
/* 80472334  38 21 00 40 */	addi r1, r1, 0x40
/* 80472338  4E 80 00 20 */	blr 
