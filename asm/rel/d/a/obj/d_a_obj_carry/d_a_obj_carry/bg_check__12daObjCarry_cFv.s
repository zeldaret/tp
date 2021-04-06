lbl_8047573C:
/* 8047573C  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 80475740  7C 08 02 A6 */	mflr r0
/* 80475744  90 01 01 34 */	stw r0, 0x134(r1)
/* 80475748  DB E1 01 20 */	stfd f31, 0x120(r1)
/* 8047574C  F3 E1 01 28 */	psq_st f31, 296(r1), 0, 0 /* qr0 */
/* 80475750  DB C1 01 10 */	stfd f30, 0x110(r1)
/* 80475754  F3 C1 01 18 */	psq_st f30, 280(r1), 0, 0 /* qr0 */
/* 80475758  DB A1 01 00 */	stfd f29, 0x100(r1)
/* 8047575C  F3 A1 01 08 */	psq_st f29, 264(r1), 0, 0 /* qr0 */
/* 80475760  39 61 01 00 */	addi r11, r1, 0x100
/* 80475764  4B EE CA 61 */	bl _savegpr_23
/* 80475768  7C 77 1B 78 */	mr r23, r3
/* 8047576C  3C 60 80 48 */	lis r3, l_cyl_info@ha /* 0x8047990C@ha */
/* 80475770  3B C3 99 0C */	addi r30, r3, l_cyl_info@l /* 0x8047990C@l */
/* 80475774  80 17 05 A0 */	lwz r0, 0x5a0(r23)
/* 80475778  54 1D BF FE */	rlwinm r29, r0, 0x17, 0x1f, 0x1f
/* 8047577C  54 1F E7 FF */	rlwinm. r31, r0, 0x1c, 0x1f, 0x1f
/* 80475780  54 1C CF FE */	rlwinm r28, r0, 0x19, 0x1f, 0x1f
/* 80475784  54 1B DF FE */	rlwinm r27, r0, 0x1b, 0x1f, 0x1f
/* 80475788  54 1A AF FE */	rlwinm r26, r0, 0x15, 0x1f, 0x1f
/* 8047578C  54 19 A7 FE */	rlwinm r25, r0, 0x14, 0x1f, 0x1f
/* 80475790  41 82 04 58 */	beq lbl_80475BE8
/* 80475794  88 17 0E 0D */	lbz r0, 0xe0d(r23)
/* 80475798  28 00 00 00 */	cmplwi r0, 0
/* 8047579C  40 82 04 4C */	bne lbl_80475BE8
/* 804757A0  3C 60 80 48 */	lis r3, __vt__8cM3dGPla@ha /* 0x8047B1CC@ha */
/* 804757A4  38 03 B1 CC */	addi r0, r3, __vt__8cM3dGPla@l /* 0x8047B1CC@l */
/* 804757A8  90 01 00 CC */	stw r0, 0xcc(r1)
/* 804757AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804757B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804757B4  3B 03 0F 38 */	addi r24, r3, 0xf38
/* 804757B8  7F 03 C3 78 */	mr r3, r24
/* 804757BC  38 97 07 4C */	addi r4, r23, 0x74c
/* 804757C0  38 A1 00 BC */	addi r5, r1, 0xbc
/* 804757C4  4B BF EF 81 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 804757C8  C0 3E 0A 48 */	lfs f1, 0xa48(r30)
/* 804757CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804757D0  41 82 00 10 */	beq lbl_804757E0
/* 804757D4  38 77 04 F8 */	addi r3, r23, 0x4f8
/* 804757D8  38 81 00 BC */	addi r4, r1, 0xbc
/* 804757DC  4B ED 19 B9 */	bl PSVECDotProduct
lbl_804757E0:
/* 804757E0  C0 1E 0A 48 */	lfs f0, 0xa48(r30)
/* 804757E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804757E8  40 80 03 F4 */	bge lbl_80475BDC
/* 804757EC  38 77 04 F8 */	addi r3, r23, 0x4f8
/* 804757F0  4B ED 19 49 */	bl PSVECSquareMag
/* 804757F4  C0 1E 0A 48 */	lfs f0, 0xa48(r30)
/* 804757F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804757FC  40 81 00 58 */	ble lbl_80475854
/* 80475800  FC 00 08 34 */	frsqrte f0, f1
/* 80475804  C8 9E 0A 50 */	lfd f4, 0xa50(r30)
/* 80475808  FC 44 00 32 */	fmul f2, f4, f0
/* 8047580C  C8 7E 0A 58 */	lfd f3, 0xa58(r30)
/* 80475810  FC 00 00 32 */	fmul f0, f0, f0
/* 80475814  FC 01 00 32 */	fmul f0, f1, f0
/* 80475818  FC 03 00 28 */	fsub f0, f3, f0
/* 8047581C  FC 02 00 32 */	fmul f0, f2, f0
/* 80475820  FC 44 00 32 */	fmul f2, f4, f0
/* 80475824  FC 00 00 32 */	fmul f0, f0, f0
/* 80475828  FC 01 00 32 */	fmul f0, f1, f0
/* 8047582C  FC 03 00 28 */	fsub f0, f3, f0
/* 80475830  FC 02 00 32 */	fmul f0, f2, f0
/* 80475834  FC 44 00 32 */	fmul f2, f4, f0
/* 80475838  FC 00 00 32 */	fmul f0, f0, f0
/* 8047583C  FC 01 00 32 */	fmul f0, f1, f0
/* 80475840  FC 03 00 28 */	fsub f0, f3, f0
/* 80475844  FC 02 00 32 */	fmul f0, f2, f0
/* 80475848  FC 21 00 32 */	fmul f1, f1, f0
/* 8047584C  FC 20 08 18 */	frsp f1, f1
/* 80475850  48 00 00 88 */	b lbl_804758D8
lbl_80475854:
/* 80475854  C8 1E 0A 60 */	lfd f0, 0xa60(r30)
/* 80475858  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8047585C  40 80 00 10 */	bge lbl_8047586C
/* 80475860  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80475864  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80475868  48 00 00 70 */	b lbl_804758D8
lbl_8047586C:
/* 8047586C  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80475870  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 80475874  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80475878  3C 00 7F 80 */	lis r0, 0x7f80
/* 8047587C  7C 03 00 00 */	cmpw r3, r0
/* 80475880  41 82 00 14 */	beq lbl_80475894
/* 80475884  40 80 00 40 */	bge lbl_804758C4
/* 80475888  2C 03 00 00 */	cmpwi r3, 0
/* 8047588C  41 82 00 20 */	beq lbl_804758AC
/* 80475890  48 00 00 34 */	b lbl_804758C4
lbl_80475894:
/* 80475894  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80475898  41 82 00 0C */	beq lbl_804758A4
/* 8047589C  38 00 00 01 */	li r0, 1
/* 804758A0  48 00 00 28 */	b lbl_804758C8
lbl_804758A4:
/* 804758A4  38 00 00 02 */	li r0, 2
/* 804758A8  48 00 00 20 */	b lbl_804758C8
lbl_804758AC:
/* 804758AC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804758B0  41 82 00 0C */	beq lbl_804758BC
/* 804758B4  38 00 00 05 */	li r0, 5
/* 804758B8  48 00 00 10 */	b lbl_804758C8
lbl_804758BC:
/* 804758BC  38 00 00 03 */	li r0, 3
/* 804758C0  48 00 00 08 */	b lbl_804758C8
lbl_804758C4:
/* 804758C4  38 00 00 04 */	li r0, 4
lbl_804758C8:
/* 804758C8  2C 00 00 01 */	cmpwi r0, 1
/* 804758CC  40 82 00 0C */	bne lbl_804758D8
/* 804758D0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804758D4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_804758D8:
/* 804758D8  C0 1E 0B 84 */	lfs f0, 0xb84(r30)
/* 804758DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804758E0  40 81 02 F4 */	ble lbl_80475BD4
/* 804758E4  C0 57 04 F8 */	lfs f2, 0x4f8(r23)
/* 804758E8  D0 41 00 B0 */	stfs f2, 0xb0(r1)
/* 804758EC  C0 37 04 FC */	lfs f1, 0x4fc(r23)
/* 804758F0  D0 21 00 B4 */	stfs f1, 0xb4(r1)
/* 804758F4  C0 17 05 00 */	lfs f0, 0x500(r23)
/* 804758F8  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 804758FC  D0 41 00 A4 */	stfs f2, 0xa4(r1)
/* 80475900  D0 21 00 A8 */	stfs f1, 0xa8(r1)
/* 80475904  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 80475908  7E E3 BB 78 */	mr r3, r23
/* 8047590C  4B FF 9D 99 */	bl data__12daObjCarry_cFv
/* 80475910  C3 C3 00 14 */	lfs f30, 0x14(r3)
/* 80475914  88 17 0D EB */	lbz r0, 0xdeb(r23)
/* 80475918  28 00 00 00 */	cmplwi r0, 0
/* 8047591C  41 82 00 08 */	beq lbl_80475924
/* 80475920  C3 DE 0B 04 */	lfs f30, 0xb04(r30)
lbl_80475924:
/* 80475924  7F 03 C3 78 */	mr r3, r24
/* 80475928  38 97 07 4C */	addi r4, r23, 0x74c
/* 8047592C  4B BF F5 25 */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 80475930  2C 03 00 0D */	cmpwi r3, 0xd
/* 80475934  41 82 00 14 */	beq lbl_80475948
/* 80475938  40 80 00 F4 */	bge lbl_80475A2C
/* 8047593C  2C 03 00 08 */	cmpwi r3, 8
/* 80475940  41 82 00 24 */	beq lbl_80475964
/* 80475944  48 00 00 E8 */	b lbl_80475A2C
lbl_80475948:
/* 80475948  88 17 0C F0 */	lbz r0, 0xcf0(r23)
/* 8047594C  28 00 00 03 */	cmplwi r0, 3
/* 80475950  40 82 00 14 */	bne lbl_80475964
/* 80475954  88 17 0D EB */	lbz r0, 0xdeb(r23)
/* 80475958  28 00 00 00 */	cmplwi r0, 0
/* 8047595C  40 82 00 08 */	bne lbl_80475964
/* 80475960  C3 DE 0B 54 */	lfs f30, 0xb54(r30)
lbl_80475964:
/* 80475964  88 17 0C F0 */	lbz r0, 0xcf0(r23)
/* 80475968  28 00 00 03 */	cmplwi r0, 3
/* 8047596C  40 82 01 1C */	bne lbl_80475A88
/* 80475970  88 17 0D EB */	lbz r0, 0xdeb(r23)
/* 80475974  28 00 00 00 */	cmplwi r0, 0
/* 80475978  40 82 00 08 */	bne lbl_80475980
/* 8047597C  C3 DE 0B 54 */	lfs f30, 0xb54(r30)
lbl_80475980:
/* 80475980  C0 3E 0A C0 */	lfs f1, 0xac0(r30)
/* 80475984  D0 21 00 98 */	stfs f1, 0x98(r1)
/* 80475988  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 8047598C  D0 21 00 A0 */	stfs f1, 0xa0(r1)
/* 80475990  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80475994  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80475998  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8047599C  38 80 00 00 */	li r4, 0
/* 804759A0  90 81 00 08 */	stw r4, 8(r1)
/* 804759A4  38 00 FF FF */	li r0, -1
/* 804759A8  90 01 00 0C */	stw r0, 0xc(r1)
/* 804759AC  90 81 00 10 */	stw r4, 0x10(r1)
/* 804759B0  90 81 00 14 */	stw r4, 0x14(r1)
/* 804759B4  90 81 00 18 */	stw r4, 0x18(r1)
/* 804759B8  38 80 00 00 */	li r4, 0
/* 804759BC  38 A0 0A E3 */	li r5, 0xae3
/* 804759C0  38 D7 04 D0 */	addi r6, r23, 0x4d0
/* 804759C4  38 E0 00 00 */	li r7, 0
/* 804759C8  39 17 04 DC */	addi r8, r23, 0x4dc
/* 804759CC  39 21 00 98 */	addi r9, r1, 0x98
/* 804759D0  39 40 00 FF */	li r10, 0xff
/* 804759D4  4B BD 70 BD */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804759D8  C0 17 05 2C */	lfs f0, 0x52c(r23)
/* 804759DC  FC 00 02 10 */	fabs f0, f0
/* 804759E0  FC 20 00 18 */	frsp f1, f0
/* 804759E4  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801D6@ha */
/* 804759E8  38 03 01 D6 */	addi r0, r3, 0x01D6 /* 0x000801D6@l */
/* 804759EC  90 01 00 40 */	stw r0, 0x40(r1)
/* 804759F0  4B EE C6 BD */	bl __cvt_fp2unsigned
/* 804759F4  7C 66 1B 78 */	mr r6, r3
/* 804759F8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804759FC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80475A00  80 63 00 00 */	lwz r3, 0(r3)
/* 80475A04  38 81 00 40 */	addi r4, r1, 0x40
/* 80475A08  38 B7 04 D0 */	addi r5, r23, 0x4d0
/* 80475A0C  38 E0 00 00 */	li r7, 0
/* 80475A10  C0 3E 0A C0 */	lfs f1, 0xac0(r30)
/* 80475A14  FC 40 08 90 */	fmr f2, f1
/* 80475A18  C0 7E 0B 00 */	lfs f3, 0xb00(r30)
/* 80475A1C  FC 80 18 90 */	fmr f4, f3
/* 80475A20  39 00 00 00 */	li r8, 0
/* 80475A24  4B E3 5F 61 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80475A28  48 00 00 60 */	b lbl_80475A88
lbl_80475A2C:
/* 80475A2C  88 17 0C F0 */	lbz r0, 0xcf0(r23)
/* 80475A30  28 00 00 03 */	cmplwi r0, 3
/* 80475A34  40 82 00 54 */	bne lbl_80475A88
/* 80475A38  C0 17 05 2C */	lfs f0, 0x52c(r23)
/* 80475A3C  FC 00 02 10 */	fabs f0, f0
/* 80475A40  FC 20 00 18 */	frsp f1, f0
/* 80475A44  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801D4@ha */
/* 80475A48  38 03 01 D4 */	addi r0, r3, 0x01D4 /* 0x000801D4@l */
/* 80475A4C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80475A50  4B EE C6 5D */	bl __cvt_fp2unsigned
/* 80475A54  7C 66 1B 78 */	mr r6, r3
/* 80475A58  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80475A5C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80475A60  80 63 00 00 */	lwz r3, 0(r3)
/* 80475A64  38 81 00 3C */	addi r4, r1, 0x3c
/* 80475A68  38 B7 04 D0 */	addi r5, r23, 0x4d0
/* 80475A6C  38 E0 00 00 */	li r7, 0
/* 80475A70  C0 3E 0A C0 */	lfs f1, 0xac0(r30)
/* 80475A74  FC 40 08 90 */	fmr f2, f1
/* 80475A78  C0 7E 0B 00 */	lfs f3, 0xb00(r30)
/* 80475A7C  FC 80 18 90 */	fmr f4, f3
/* 80475A80  39 00 00 00 */	li r8, 0
/* 80475A84  4B E3 5F 01 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80475A88:
/* 80475A88  38 61 00 B0 */	addi r3, r1, 0xb0
/* 80475A8C  38 97 07 4C */	addi r4, r23, 0x74c
/* 80475A90  FC 20 F0 90 */	fmr f1, f30
/* 80475A94  4B FF 95 65 */	bl bound__FP4cXyzRC13cBgS_PolyInfof
/* 80475A98  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 80475A9C  D0 17 04 F8 */	stfs f0, 0x4f8(r23)
/* 80475AA0  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 80475AA4  D0 17 04 FC */	stfs f0, 0x4fc(r23)
/* 80475AA8  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 80475AAC  D0 17 05 00 */	stfs f0, 0x500(r23)
/* 80475AB0  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 80475AB4  D0 17 04 FC */	stfs f0, 0x4fc(r23)
/* 80475AB8  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 80475ABC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80475AC0  C0 1E 0A 48 */	lfs f0, 0xa48(r30)
/* 80475AC4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80475AC8  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 80475ACC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80475AD0  38 61 00 44 */	addi r3, r1, 0x44
/* 80475AD4  4B ED 16 65 */	bl PSVECSquareMag
/* 80475AD8  C0 1E 0A 48 */	lfs f0, 0xa48(r30)
/* 80475ADC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80475AE0  40 81 00 58 */	ble lbl_80475B38
/* 80475AE4  FC 00 08 34 */	frsqrte f0, f1
/* 80475AE8  C8 9E 0A 50 */	lfd f4, 0xa50(r30)
/* 80475AEC  FC 44 00 32 */	fmul f2, f4, f0
/* 80475AF0  C8 7E 0A 58 */	lfd f3, 0xa58(r30)
/* 80475AF4  FC 00 00 32 */	fmul f0, f0, f0
/* 80475AF8  FC 01 00 32 */	fmul f0, f1, f0
/* 80475AFC  FC 03 00 28 */	fsub f0, f3, f0
/* 80475B00  FC 02 00 32 */	fmul f0, f2, f0
/* 80475B04  FC 44 00 32 */	fmul f2, f4, f0
/* 80475B08  FC 00 00 32 */	fmul f0, f0, f0
/* 80475B0C  FC 01 00 32 */	fmul f0, f1, f0
/* 80475B10  FC 03 00 28 */	fsub f0, f3, f0
/* 80475B14  FC 02 00 32 */	fmul f0, f2, f0
/* 80475B18  FC 44 00 32 */	fmul f2, f4, f0
/* 80475B1C  FC 00 00 32 */	fmul f0, f0, f0
/* 80475B20  FC 01 00 32 */	fmul f0, f1, f0
/* 80475B24  FC 03 00 28 */	fsub f0, f3, f0
/* 80475B28  FC 02 00 32 */	fmul f0, f2, f0
/* 80475B2C  FC 21 00 32 */	fmul f1, f1, f0
/* 80475B30  FC 20 08 18 */	frsp f1, f1
/* 80475B34  48 00 00 88 */	b lbl_80475BBC
lbl_80475B38:
/* 80475B38  C8 1E 0A 60 */	lfd f0, 0xa60(r30)
/* 80475B3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80475B40  40 80 00 10 */	bge lbl_80475B50
/* 80475B44  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80475B48  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80475B4C  48 00 00 70 */	b lbl_80475BBC
lbl_80475B50:
/* 80475B50  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80475B54  80 81 00 28 */	lwz r4, 0x28(r1)
/* 80475B58  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80475B5C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80475B60  7C 03 00 00 */	cmpw r3, r0
/* 80475B64  41 82 00 14 */	beq lbl_80475B78
/* 80475B68  40 80 00 40 */	bge lbl_80475BA8
/* 80475B6C  2C 03 00 00 */	cmpwi r3, 0
/* 80475B70  41 82 00 20 */	beq lbl_80475B90
/* 80475B74  48 00 00 34 */	b lbl_80475BA8
lbl_80475B78:
/* 80475B78  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80475B7C  41 82 00 0C */	beq lbl_80475B88
/* 80475B80  38 00 00 01 */	li r0, 1
/* 80475B84  48 00 00 28 */	b lbl_80475BAC
lbl_80475B88:
/* 80475B88  38 00 00 02 */	li r0, 2
/* 80475B8C  48 00 00 20 */	b lbl_80475BAC
lbl_80475B90:
/* 80475B90  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80475B94  41 82 00 0C */	beq lbl_80475BA0
/* 80475B98  38 00 00 05 */	li r0, 5
/* 80475B9C  48 00 00 10 */	b lbl_80475BAC
lbl_80475BA0:
/* 80475BA0  38 00 00 03 */	li r0, 3
/* 80475BA4  48 00 00 08 */	b lbl_80475BAC
lbl_80475BA8:
/* 80475BA8  38 00 00 04 */	li r0, 4
lbl_80475BAC:
/* 80475BAC  2C 00 00 01 */	cmpwi r0, 1
/* 80475BB0  40 82 00 0C */	bne lbl_80475BBC
/* 80475BB4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80475BB8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80475BBC:
/* 80475BBC  D0 37 05 2C */	stfs f1, 0x52c(r23)
/* 80475BC0  C0 21 00 B0 */	lfs f1, 0xb0(r1)
/* 80475BC4  C0 41 00 B8 */	lfs f2, 0xb8(r1)
/* 80475BC8  4B DF 1A AD */	bl cM_atan2s__Fff
/* 80475BCC  B0 77 04 DE */	sth r3, 0x4de(r23)
/* 80475BD0  48 00 00 0C */	b lbl_80475BDC
lbl_80475BD4:
/* 80475BD4  C0 1E 0A 48 */	lfs f0, 0xa48(r30)
/* 80475BD8  D0 17 05 2C */	stfs f0, 0x52c(r23)
lbl_80475BDC:
/* 80475BDC  3C 60 80 48 */	lis r3, __vt__8cM3dGPla@ha /* 0x8047B1CC@ha */
/* 80475BE0  38 03 B1 CC */	addi r0, r3, __vt__8cM3dGPla@l /* 0x8047B1CC@l */
/* 80475BE4  90 01 00 CC */	stw r0, 0xcc(r1)
lbl_80475BE8:
/* 80475BE8  28 1C 00 00 */	cmplwi r28, 0
/* 80475BEC  41 82 05 60 */	beq lbl_8047614C
/* 80475BF0  C3 F7 0D 20 */	lfs f31, 0xd20(r23)
/* 80475BF4  38 77 04 F8 */	addi r3, r23, 0x4f8
/* 80475BF8  4B ED 15 41 */	bl PSVECSquareMag
/* 80475BFC  C0 1E 0A 48 */	lfs f0, 0xa48(r30)
/* 80475C00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80475C04  40 81 00 58 */	ble lbl_80475C5C
/* 80475C08  FC 00 08 34 */	frsqrte f0, f1
/* 80475C0C  C8 9E 0A 50 */	lfd f4, 0xa50(r30)
/* 80475C10  FC 44 00 32 */	fmul f2, f4, f0
/* 80475C14  C8 7E 0A 58 */	lfd f3, 0xa58(r30)
/* 80475C18  FC 00 00 32 */	fmul f0, f0, f0
/* 80475C1C  FC 01 00 32 */	fmul f0, f1, f0
/* 80475C20  FC 03 00 28 */	fsub f0, f3, f0
/* 80475C24  FC 02 00 32 */	fmul f0, f2, f0
/* 80475C28  FC 44 00 32 */	fmul f2, f4, f0
/* 80475C2C  FC 00 00 32 */	fmul f0, f0, f0
/* 80475C30  FC 01 00 32 */	fmul f0, f1, f0
/* 80475C34  FC 03 00 28 */	fsub f0, f3, f0
/* 80475C38  FC 02 00 32 */	fmul f0, f2, f0
/* 80475C3C  FC 44 00 32 */	fmul f2, f4, f0
/* 80475C40  FC 00 00 32 */	fmul f0, f0, f0
/* 80475C44  FC 01 00 32 */	fmul f0, f1, f0
/* 80475C48  FC 03 00 28 */	fsub f0, f3, f0
/* 80475C4C  FC 02 00 32 */	fmul f0, f2, f0
/* 80475C50  FC 21 00 32 */	fmul f1, f1, f0
/* 80475C54  FC 20 08 18 */	frsp f1, f1
/* 80475C58  48 00 00 88 */	b lbl_80475CE0
lbl_80475C5C:
/* 80475C5C  C8 1E 0A 60 */	lfd f0, 0xa60(r30)
/* 80475C60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80475C64  40 80 00 10 */	bge lbl_80475C74
/* 80475C68  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80475C6C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80475C70  48 00 00 70 */	b lbl_80475CE0
lbl_80475C74:
/* 80475C74  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80475C78  80 81 00 24 */	lwz r4, 0x24(r1)
/* 80475C7C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80475C80  3C 00 7F 80 */	lis r0, 0x7f80
/* 80475C84  7C 03 00 00 */	cmpw r3, r0
/* 80475C88  41 82 00 14 */	beq lbl_80475C9C
/* 80475C8C  40 80 00 40 */	bge lbl_80475CCC
/* 80475C90  2C 03 00 00 */	cmpwi r3, 0
/* 80475C94  41 82 00 20 */	beq lbl_80475CB4
/* 80475C98  48 00 00 34 */	b lbl_80475CCC
lbl_80475C9C:
/* 80475C9C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80475CA0  41 82 00 0C */	beq lbl_80475CAC
/* 80475CA4  38 00 00 01 */	li r0, 1
/* 80475CA8  48 00 00 28 */	b lbl_80475CD0
lbl_80475CAC:
/* 80475CAC  38 00 00 02 */	li r0, 2
/* 80475CB0  48 00 00 20 */	b lbl_80475CD0
lbl_80475CB4:
/* 80475CB4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80475CB8  41 82 00 0C */	beq lbl_80475CC4
/* 80475CBC  38 00 00 05 */	li r0, 5
/* 80475CC0  48 00 00 10 */	b lbl_80475CD0
lbl_80475CC4:
/* 80475CC4  38 00 00 03 */	li r0, 3
/* 80475CC8  48 00 00 08 */	b lbl_80475CD0
lbl_80475CCC:
/* 80475CCC  38 00 00 04 */	li r0, 4
lbl_80475CD0:
/* 80475CD0  2C 00 00 01 */	cmpwi r0, 1
/* 80475CD4  40 82 00 0C */	bne lbl_80475CE0
/* 80475CD8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80475CDC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80475CE0:
/* 80475CE0  C0 1E 0A C0 */	lfs f0, 0xac0(r30)
/* 80475CE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80475CE8  40 81 02 DC */	ble lbl_80475FC4
/* 80475CEC  7E E3 BB 78 */	mr r3, r23
/* 80475CF0  4B FF 99 B5 */	bl data__12daObjCarry_cFv
/* 80475CF4  C3 A3 00 14 */	lfs f29, 0x14(r3)
/* 80475CF8  7E E3 BB 78 */	mr r3, r23
/* 80475CFC  4B FF 99 A9 */	bl data__12daObjCarry_cFv
/* 80475D00  C3 C3 00 10 */	lfs f30, 0x10(r3)
/* 80475D04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80475D08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80475D0C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80475D10  38 97 06 64 */	addi r4, r23, 0x664
/* 80475D14  4B BF F1 3D */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 80475D18  2C 03 00 0D */	cmpwi r3, 0xd
/* 80475D1C  41 82 00 20 */	beq lbl_80475D3C
/* 80475D20  40 80 00 DC */	bge lbl_80475DFC
/* 80475D24  2C 03 00 03 */	cmpwi r3, 3
/* 80475D28  41 82 00 08 */	beq lbl_80475D30
/* 80475D2C  48 00 00 D0 */	b lbl_80475DFC
lbl_80475D30:
/* 80475D30  C3 BE 0B 34 */	lfs f29, 0xb34(r30)
/* 80475D34  FF C0 E8 90 */	fmr f30, f29
/* 80475D38  48 00 01 38 */	b lbl_80475E70
lbl_80475D3C:
/* 80475D3C  88 17 0C F0 */	lbz r0, 0xcf0(r23)
/* 80475D40  28 00 00 03 */	cmplwi r0, 3
/* 80475D44  40 82 01 2C */	bne lbl_80475E70
/* 80475D48  C3 BE 0B 54 */	lfs f29, 0xb54(r30)
/* 80475D4C  FF C0 E8 90 */	fmr f30, f29
/* 80475D50  C0 17 0D 20 */	lfs f0, 0xd20(r23)
/* 80475D54  FC 00 02 10 */	fabs f0, f0
/* 80475D58  FC 20 00 18 */	frsp f1, f0
/* 80475D5C  C0 1E 0A B0 */	lfs f0, 0xab0(r30)
/* 80475D60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80475D64  40 81 01 0C */	ble lbl_80475E70
/* 80475D68  C0 1E 0B 38 */	lfs f0, 0xb38(r30)
/* 80475D6C  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80475D70  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80475D74  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80475D78  38 60 00 00 */	li r3, 0
/* 80475D7C  90 61 00 08 */	stw r3, 8(r1)
/* 80475D80  38 00 FF FF */	li r0, -1
/* 80475D84  90 01 00 0C */	stw r0, 0xc(r1)
/* 80475D88  90 61 00 10 */	stw r3, 0x10(r1)
/* 80475D8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80475D90  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80475D94  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 80475D98  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000881F@ha */
/* 80475D9C  38 84 88 1F */	addi r4, r4, 0x881F /* 0x0000881F@l */
/* 80475DA0  38 B7 06 64 */	addi r5, r23, 0x664
/* 80475DA4  38 D7 04 D0 */	addi r6, r23, 0x4d0
/* 80475DA8  38 F7 01 0C */	addi r7, r23, 0x10c
/* 80475DAC  39 17 04 DC */	addi r8, r23, 0x4dc
/* 80475DB0  39 21 00 8C */	addi r9, r1, 0x8c
/* 80475DB4  39 40 00 00 */	li r10, 0
/* 80475DB8  4B BD 72 B1 */	bl setPoly__13dPa_control_cFUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz
/* 80475DBC  38 60 00 00 */	li r3, 0
/* 80475DC0  90 61 00 08 */	stw r3, 8(r1)
/* 80475DC4  38 00 FF FF */	li r0, -1
/* 80475DC8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80475DCC  90 61 00 10 */	stw r3, 0x10(r1)
/* 80475DD0  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 80475DD4  3C 80 00 01 */	lis r4, 0x0001 /* 0x00008820@ha */
/* 80475DD8  38 84 88 20 */	addi r4, r4, 0x8820 /* 0x00008820@l */
/* 80475DDC  38 B7 06 64 */	addi r5, r23, 0x664
/* 80475DE0  38 D7 04 D0 */	addi r6, r23, 0x4d0
/* 80475DE4  38 F7 01 0C */	addi r7, r23, 0x10c
/* 80475DE8  39 17 04 DC */	addi r8, r23, 0x4dc
/* 80475DEC  39 21 00 8C */	addi r9, r1, 0x8c
/* 80475DF0  39 40 00 00 */	li r10, 0
/* 80475DF4  4B BD 72 75 */	bl setPoly__13dPa_control_cFUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz
/* 80475DF8  48 00 00 78 */	b lbl_80475E70
lbl_80475DFC:
/* 80475DFC  88 17 0C F0 */	lbz r0, 0xcf0(r23)
/* 80475E00  28 00 00 03 */	cmplwi r0, 3
/* 80475E04  40 82 00 6C */	bne lbl_80475E70
/* 80475E08  C0 17 0D 20 */	lfs f0, 0xd20(r23)
/* 80475E0C  FC 00 02 10 */	fabs f0, f0
/* 80475E10  FC 20 00 18 */	frsp f1, f0
/* 80475E14  C0 1E 0A B0 */	lfs f0, 0xab0(r30)
/* 80475E18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80475E1C  40 81 00 54 */	ble lbl_80475E70
/* 80475E20  C0 1E 0B 38 */	lfs f0, 0xb38(r30)
/* 80475E24  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80475E28  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80475E2C  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80475E30  38 60 00 00 */	li r3, 0
/* 80475E34  90 61 00 08 */	stw r3, 8(r1)
/* 80475E38  38 00 FF FF */	li r0, -1
/* 80475E3C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80475E40  90 61 00 10 */	stw r3, 0x10(r1)
/* 80475E44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80475E48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80475E4C  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80475E50  38 80 00 E7 */	li r4, 0xe7
/* 80475E54  38 B7 06 64 */	addi r5, r23, 0x664
/* 80475E58  38 D7 04 D0 */	addi r6, r23, 0x4d0
/* 80475E5C  38 F7 01 0C */	addi r7, r23, 0x10c
/* 80475E60  39 17 04 DC */	addi r8, r23, 0x4dc
/* 80475E64  39 21 00 80 */	addi r9, r1, 0x80
/* 80475E68  39 40 00 00 */	li r10, 0
/* 80475E6C  4B BD 71 FD */	bl setPoly__13dPa_control_cFUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz
lbl_80475E70:
/* 80475E70  38 77 04 F8 */	addi r3, r23, 0x4f8
/* 80475E74  38 97 06 64 */	addi r4, r23, 0x664
/* 80475E78  FC 20 E8 90 */	fmr f1, f29
/* 80475E7C  4B FF 91 7D */	bl bound__FP4cXyzRC13cBgS_PolyInfof
/* 80475E80  C0 17 04 F8 */	lfs f0, 0x4f8(r23)
/* 80475E84  EC 20 00 32 */	fmuls f1, f0, f0
/* 80475E88  C0 17 05 00 */	lfs f0, 0x500(r23)
/* 80475E8C  EC 00 00 32 */	fmuls f0, f0, f0
/* 80475E90  EC 81 00 2A */	fadds f4, f1, f0
/* 80475E94  C0 1E 0A 48 */	lfs f0, 0xa48(r30)
/* 80475E98  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80475E9C  40 81 00 58 */	ble lbl_80475EF4
/* 80475EA0  FC 00 20 34 */	frsqrte f0, f4
/* 80475EA4  C8 7E 0A 50 */	lfd f3, 0xa50(r30)
/* 80475EA8  FC 23 00 32 */	fmul f1, f3, f0
/* 80475EAC  C8 5E 0A 58 */	lfd f2, 0xa58(r30)
/* 80475EB0  FC 00 00 32 */	fmul f0, f0, f0
/* 80475EB4  FC 04 00 32 */	fmul f0, f4, f0
/* 80475EB8  FC 02 00 28 */	fsub f0, f2, f0
/* 80475EBC  FC 01 00 32 */	fmul f0, f1, f0
/* 80475EC0  FC 23 00 32 */	fmul f1, f3, f0
/* 80475EC4  FC 00 00 32 */	fmul f0, f0, f0
/* 80475EC8  FC 04 00 32 */	fmul f0, f4, f0
/* 80475ECC  FC 02 00 28 */	fsub f0, f2, f0
/* 80475ED0  FC 01 00 32 */	fmul f0, f1, f0
/* 80475ED4  FC 23 00 32 */	fmul f1, f3, f0
/* 80475ED8  FC 00 00 32 */	fmul f0, f0, f0
/* 80475EDC  FC 04 00 32 */	fmul f0, f4, f0
/* 80475EE0  FC 02 00 28 */	fsub f0, f2, f0
/* 80475EE4  FC 01 00 32 */	fmul f0, f1, f0
/* 80475EE8  FC 84 00 32 */	fmul f4, f4, f0
/* 80475EEC  FC 80 20 18 */	frsp f4, f4
/* 80475EF0  48 00 00 88 */	b lbl_80475F78
lbl_80475EF4:
/* 80475EF4  C8 1E 0A 60 */	lfd f0, 0xa60(r30)
/* 80475EF8  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80475EFC  40 80 00 10 */	bge lbl_80475F0C
/* 80475F00  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80475F04  C0 83 0A E0 */	lfs f4, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80475F08  48 00 00 70 */	b lbl_80475F78
lbl_80475F0C:
/* 80475F0C  D0 81 00 20 */	stfs f4, 0x20(r1)
/* 80475F10  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80475F14  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80475F18  3C 00 7F 80 */	lis r0, 0x7f80
/* 80475F1C  7C 03 00 00 */	cmpw r3, r0
/* 80475F20  41 82 00 14 */	beq lbl_80475F34
/* 80475F24  40 80 00 40 */	bge lbl_80475F64
/* 80475F28  2C 03 00 00 */	cmpwi r3, 0
/* 80475F2C  41 82 00 20 */	beq lbl_80475F4C
/* 80475F30  48 00 00 34 */	b lbl_80475F64
lbl_80475F34:
/* 80475F34  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80475F38  41 82 00 0C */	beq lbl_80475F44
/* 80475F3C  38 00 00 01 */	li r0, 1
/* 80475F40  48 00 00 28 */	b lbl_80475F68
lbl_80475F44:
/* 80475F44  38 00 00 02 */	li r0, 2
/* 80475F48  48 00 00 20 */	b lbl_80475F68
lbl_80475F4C:
/* 80475F4C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80475F50  41 82 00 0C */	beq lbl_80475F5C
/* 80475F54  38 00 00 05 */	li r0, 5
/* 80475F58  48 00 00 10 */	b lbl_80475F68
lbl_80475F5C:
/* 80475F5C  38 00 00 03 */	li r0, 3
/* 80475F60  48 00 00 08 */	b lbl_80475F68
lbl_80475F64:
/* 80475F64  38 00 00 04 */	li r0, 4
lbl_80475F68:
/* 80475F68  2C 00 00 01 */	cmpwi r0, 1
/* 80475F6C  40 82 00 0C */	bne lbl_80475F78
/* 80475F70  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80475F74  C0 83 0A E0 */	lfs f4, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80475F78:
/* 80475F78  D0 97 05 2C */	stfs f4, 0x52c(r23)
/* 80475F7C  7E E3 BB 78 */	mr r3, r23
/* 80475F80  4B FF F6 FD */	bl chkWaterLineIn__12daObjCarry_cFv
/* 80475F84  2C 03 00 00 */	cmpwi r3, 0
/* 80475F88  41 82 00 10 */	beq lbl_80475F98
/* 80475F8C  C0 1E 0A 48 */	lfs f0, 0xa48(r30)
/* 80475F90  D0 17 04 FC */	stfs f0, 0x4fc(r23)
/* 80475F94  48 00 00 10 */	b lbl_80475FA4
lbl_80475F98:
/* 80475F98  FC 00 F8 50 */	fneg f0, f31
/* 80475F9C  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80475FA0  D0 17 04 FC */	stfs f0, 0x4fc(r23)
lbl_80475FA4:
/* 80475FA4  C0 17 04 FC */	lfs f0, 0x4fc(r23)
/* 80475FA8  FC 00 02 10 */	fabs f0, f0
/* 80475FAC  FC 20 00 18 */	frsp f1, f0
/* 80475FB0  C0 1E 0B 68 */	lfs f0, 0xb68(r30)
/* 80475FB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80475FB8  40 80 00 0C */	bge lbl_80475FC4
/* 80475FBC  C0 1E 0A 48 */	lfs f0, 0xa48(r30)
/* 80475FC0  D0 17 04 FC */	stfs f0, 0x4fc(r23)
lbl_80475FC4:
/* 80475FC4  88 17 0C F0 */	lbz r0, 0xcf0(r23)
/* 80475FC8  28 00 00 03 */	cmplwi r0, 3
/* 80475FCC  40 82 01 80 */	bne lbl_8047614C
/* 80475FD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80475FD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80475FD8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80475FDC  38 97 06 64 */	addi r4, r23, 0x664
/* 80475FE0  4B BF EE 71 */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 80475FE4  2C 03 00 0D */	cmpwi r3, 0xd
/* 80475FE8  41 82 00 14 */	beq lbl_80475FFC
/* 80475FEC  40 80 01 08 */	bge lbl_804760F4
/* 80475FF0  2C 03 00 08 */	cmpwi r3, 8
/* 80475FF4  41 82 00 84 */	beq lbl_80476078
/* 80475FF8  48 00 00 FC */	b lbl_804760F4
lbl_80475FFC:
/* 80475FFC  C0 17 05 2C */	lfs f0, 0x52c(r23)
/* 80476000  EC 20 00 32 */	fmuls f1, f0, f0
/* 80476004  C0 17 04 FC */	lfs f0, 0x4fc(r23)
/* 80476008  EC 00 00 32 */	fmuls f0, f0, f0
/* 8047600C  EC 21 00 2A */	fadds f1, f1, f0
/* 80476010  C0 1E 0A 48 */	lfs f0, 0xa48(r30)
/* 80476014  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80476018  40 81 00 08 */	ble lbl_80476020
/* 8047601C  48 00 00 0C */	b lbl_80476028
lbl_80476020:
/* 80476020  C8 1E 0A 60 */	lfd f0, 0xa60(r30)
/* 80476024  FC 01 00 40 */	fcmpo cr0, f1, f0
lbl_80476028:
/* 80476028  FC 00 FA 10 */	fabs f0, f31
/* 8047602C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801D5@ha */
/* 80476030  38 03 01 D5 */	addi r0, r3, 0x01D5 /* 0x000801D5@l */
/* 80476034  90 01 00 38 */	stw r0, 0x38(r1)
/* 80476038  FC 20 00 18 */	frsp f1, f0
/* 8047603C  4B EE C0 71 */	bl __cvt_fp2unsigned
/* 80476040  7C 66 1B 78 */	mr r6, r3
/* 80476044  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80476048  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8047604C  80 63 00 00 */	lwz r3, 0(r3)
/* 80476050  38 81 00 38 */	addi r4, r1, 0x38
/* 80476054  38 B7 04 D0 */	addi r5, r23, 0x4d0
/* 80476058  38 E0 00 00 */	li r7, 0
/* 8047605C  C0 3E 0A C0 */	lfs f1, 0xac0(r30)
/* 80476060  FC 40 08 90 */	fmr f2, f1
/* 80476064  C0 7E 0B 00 */	lfs f3, 0xb00(r30)
/* 80476068  FC 80 18 90 */	fmr f4, f3
/* 8047606C  39 00 00 00 */	li r8, 0
/* 80476070  4B E3 59 15 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80476074  48 00 00 D8 */	b lbl_8047614C
lbl_80476078:
/* 80476078  C0 17 05 2C */	lfs f0, 0x52c(r23)
/* 8047607C  EC 20 00 32 */	fmuls f1, f0, f0
/* 80476080  C0 17 04 FC */	lfs f0, 0x4fc(r23)
/* 80476084  EC 00 00 32 */	fmuls f0, f0, f0
/* 80476088  EC 21 00 2A */	fadds f1, f1, f0
/* 8047608C  C0 1E 0A 48 */	lfs f0, 0xa48(r30)
/* 80476090  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80476094  40 81 00 08 */	ble lbl_8047609C
/* 80476098  48 00 00 0C */	b lbl_804760A4
lbl_8047609C:
/* 8047609C  C8 1E 0A 60 */	lfd f0, 0xa60(r30)
/* 804760A0  FC 01 00 40 */	fcmpo cr0, f1, f0
lbl_804760A4:
/* 804760A4  FC 00 FA 10 */	fabs f0, f31
/* 804760A8  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801D6@ha */
/* 804760AC  38 03 01 D6 */	addi r0, r3, 0x01D6 /* 0x000801D6@l */
/* 804760B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 804760B4  FC 20 00 18 */	frsp f1, f0
/* 804760B8  4B EE BF F5 */	bl __cvt_fp2unsigned
/* 804760BC  7C 66 1B 78 */	mr r6, r3
/* 804760C0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804760C4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804760C8  80 63 00 00 */	lwz r3, 0(r3)
/* 804760CC  38 81 00 34 */	addi r4, r1, 0x34
/* 804760D0  38 B7 04 D0 */	addi r5, r23, 0x4d0
/* 804760D4  38 E0 00 00 */	li r7, 0
/* 804760D8  C0 3E 0A C0 */	lfs f1, 0xac0(r30)
/* 804760DC  FC 40 08 90 */	fmr f2, f1
/* 804760E0  C0 7E 0B 00 */	lfs f3, 0xb00(r30)
/* 804760E4  FC 80 18 90 */	fmr f4, f3
/* 804760E8  39 00 00 00 */	li r8, 0
/* 804760EC  4B E3 58 99 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 804760F0  48 00 00 5C */	b lbl_8047614C
lbl_804760F4:
/* 804760F4  80 17 04 9C */	lwz r0, 0x49c(r23)
/* 804760F8  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 804760FC  40 82 00 50 */	bne lbl_8047614C
/* 80476100  FC 00 FA 10 */	fabs f0, f31
/* 80476104  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801D4@ha */
/* 80476108  38 03 01 D4 */	addi r0, r3, 0x01D4 /* 0x000801D4@l */
/* 8047610C  90 01 00 30 */	stw r0, 0x30(r1)
/* 80476110  FC 20 00 18 */	frsp f1, f0
/* 80476114  4B EE BF 99 */	bl __cvt_fp2unsigned
/* 80476118  7C 66 1B 78 */	mr r6, r3
/* 8047611C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80476120  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80476124  80 63 00 00 */	lwz r3, 0(r3)
/* 80476128  38 81 00 30 */	addi r4, r1, 0x30
/* 8047612C  38 B7 04 D0 */	addi r5, r23, 0x4d0
/* 80476130  38 E0 00 00 */	li r7, 0
/* 80476134  C0 3E 0A C0 */	lfs f1, 0xac0(r30)
/* 80476138  FC 40 08 90 */	fmr f2, f1
/* 8047613C  C0 7E 0B 00 */	lfs f3, 0xb00(r30)
/* 80476140  FC 80 18 90 */	fmr f4, f3
/* 80476144  39 00 00 00 */	li r8, 0
/* 80476148  4B E3 58 3D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_8047614C:
/* 8047614C  88 17 0C F1 */	lbz r0, 0xcf1(r23)
/* 80476150  28 00 00 00 */	cmplwi r0, 0
/* 80476154  41 82 00 24 */	beq lbl_80476178
/* 80476158  28 00 00 01 */	cmplwi r0, 1
/* 8047615C  41 82 00 1C */	beq lbl_80476178
/* 80476160  28 00 00 03 */	cmplwi r0, 3
/* 80476164  41 82 00 14 */	beq lbl_80476178
/* 80476168  28 00 00 0B */	cmplwi r0, 0xb
/* 8047616C  41 82 00 0C */	beq lbl_80476178
/* 80476170  28 00 00 02 */	cmplwi r0, 2
/* 80476174  40 82 02 9C */	bne lbl_80476410
lbl_80476178:
/* 80476178  C3 D7 07 40 */	lfs f30, 0x740(r23)
/* 8047617C  28 1A 00 00 */	cmplwi r26, 0
/* 80476180  41 82 02 18 */	beq lbl_80476398
/* 80476184  C3 B7 04 FC */	lfs f29, 0x4fc(r23)
/* 80476188  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8047618C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80476190  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80476194  38 97 06 F4 */	addi r4, r23, 0x6f4
/* 80476198  4B BF EC B9 */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 8047619C  2C 03 00 07 */	cmpwi r3, 7
/* 804761A0  41 82 00 18 */	beq lbl_804761B8
/* 804761A4  40 80 00 10 */	bge lbl_804761B4
/* 804761A8  2C 03 00 06 */	cmpwi r3, 6
/* 804761AC  40 80 00 E4 */	bge lbl_80476290
/* 804761B0  48 00 00 08 */	b lbl_804761B8
lbl_804761B4:
/* 804761B4  2C 03 00 0B */	cmpwi r3, 0xb
lbl_804761B8:
/* 804761B8  7E E3 BB 78 */	mr r3, r23
/* 804761BC  4B FF F4 C1 */	bl chkWaterLineIn__12daObjCarry_cFv
/* 804761C0  2C 03 00 00 */	cmpwi r3, 0
/* 804761C4  41 82 00 34 */	beq lbl_804761F8
/* 804761C8  88 17 0C F1 */	lbz r0, 0xcf1(r23)
/* 804761CC  28 00 00 02 */	cmplwi r0, 2
/* 804761D0  41 82 00 28 */	beq lbl_804761F8
/* 804761D4  7E E3 BB 78 */	mr r3, r23
/* 804761D8  4B FF F4 FD */	bl chkSinkObj__12daObjCarry_cFv
/* 804761DC  2C 03 00 00 */	cmpwi r3, 0
/* 804761E0  41 82 00 10 */	beq lbl_804761F0
/* 804761E4  7E E3 BB 78 */	mr r3, r23
/* 804761E8  4B FF E8 21 */	bl mode_init_sink__12daObjCarry_cFv
/* 804761EC  48 00 00 0C */	b lbl_804761F8
lbl_804761F0:
/* 804761F0  7E E3 BB 78 */	mr r3, r23
/* 804761F4  4B FF E4 25 */	bl mode_init_float__12daObjCarry_cFv
lbl_804761F8:
/* 804761F8  28 19 00 00 */	cmplwi r25, 0
/* 804761FC  41 82 01 9C */	beq lbl_80476398
/* 80476200  88 17 0D AD */	lbz r0, 0xdad(r23)
/* 80476204  28 00 00 00 */	cmplwi r0, 0
/* 80476208  40 82 01 90 */	bne lbl_80476398
/* 8047620C  C0 17 04 D0 */	lfs f0, 0x4d0(r23)
/* 80476210  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80476214  C0 17 04 D4 */	lfs f0, 0x4d4(r23)
/* 80476218  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8047621C  C0 17 04 D8 */	lfs f0, 0x4d8(r23)
/* 80476220  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80476224  D3 C1 00 78 */	stfs f30, 0x78(r1)
/* 80476228  C0 1E 0B 6C */	lfs f0, 0xb6c(r30)
/* 8047622C  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 80476230  40 80 00 28 */	bge lbl_80476258
/* 80476234  7E E3 BB 78 */	mr r3, r23
/* 80476238  4B FF 94 6D */	bl data__12daObjCarry_cFv
/* 8047623C  C0 23 00 88 */	lfs f1, 0x88(r3)
/* 80476240  38 61 00 74 */	addi r3, r1, 0x74
/* 80476244  38 80 00 00 */	li r4, 0
/* 80476248  4B BA 96 35 */	bl fopKyM_createWpillar__FPC4cXyzfi
/* 8047624C  7E E3 BB 78 */	mr r3, r23
/* 80476250  48 00 18 49 */	bl se_fall_water__12daObjCarry_cFv
/* 80476254  48 00 01 44 */	b lbl_80476398
lbl_80476258:
/* 80476258  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8047625C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80476260  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80476264  88 17 0C F1 */	lbz r0, 0xcf1(r23)
/* 80476268  28 00 00 02 */	cmplwi r0, 2
/* 8047626C  40 82 00 18 */	bne lbl_80476284
/* 80476270  40 82 01 28 */	bne lbl_80476398
/* 80476274  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 80476278  C0 1E 0A B0 */	lfs f0, 0xab0(r30)
/* 8047627C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80476280  40 80 01 18 */	bge lbl_80476398
lbl_80476284:
/* 80476284  7E E3 BB 78 */	mr r3, r23
/* 80476288  48 00 17 8D */	bl se_put_water__12daObjCarry_cFv
/* 8047628C  48 00 01 0C */	b lbl_80476398
lbl_80476290:
/* 80476290  7E E3 BB 78 */	mr r3, r23
/* 80476294  4B FF F3 E9 */	bl chkWaterLineIn__12daObjCarry_cFv
/* 80476298  2C 03 00 00 */	cmpwi r3, 0
/* 8047629C  41 82 00 0C */	beq lbl_804762A8
/* 804762A0  7E E3 BB 78 */	mr r3, r23
/* 804762A4  4B FF EA C1 */	bl mode_init_yogan__12daObjCarry_cFv
lbl_804762A8:
/* 804762A8  28 19 00 00 */	cmplwi r25, 0
/* 804762AC  41 82 00 EC */	beq lbl_80476398
/* 804762B0  88 17 0D AD */	lbz r0, 0xdad(r23)
/* 804762B4  28 00 00 00 */	cmplwi r0, 0
/* 804762B8  40 82 00 E0 */	bne lbl_80476398
/* 804762BC  C0 37 04 D8 */	lfs f1, 0x4d8(r23)
/* 804762C0  C0 17 04 D0 */	lfs f0, 0x4d0(r23)
/* 804762C4  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 804762C8  D3 C1 00 6C */	stfs f30, 0x6c(r1)
/* 804762CC  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 804762D0  7E E3 BB 78 */	mr r3, r23
/* 804762D4  4B FF 93 D1 */	bl data__12daObjCarry_cFv
/* 804762D8  C3 E3 00 8C */	lfs f31, 0x8c(r3)
/* 804762DC  7E E3 BB 78 */	mr r3, r23
/* 804762E0  4B FF 93 C5 */	bl data__12daObjCarry_cFv
/* 804762E4  C3 C3 00 8C */	lfs f30, 0x8c(r3)
/* 804762E8  7E E3 BB 78 */	mr r3, r23
/* 804762EC  4B FF 93 B9 */	bl data__12daObjCarry_cFv
/* 804762F0  C0 03 00 8C */	lfs f0, 0x8c(r3)
/* 804762F4  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 804762F8  D3 C1 00 60 */	stfs f30, 0x60(r1)
/* 804762FC  D3 E1 00 64 */	stfs f31, 0x64(r1)
/* 80476300  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80476304  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80476308  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 8047630C  38 80 00 00 */	li r4, 0
/* 80476310  90 81 00 08 */	stw r4, 8(r1)
/* 80476314  38 00 FF FF */	li r0, -1
/* 80476318  90 01 00 0C */	stw r0, 0xc(r1)
/* 8047631C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80476320  90 81 00 14 */	stw r4, 0x14(r1)
/* 80476324  90 81 00 18 */	stw r4, 0x18(r1)
/* 80476328  38 80 00 00 */	li r4, 0
/* 8047632C  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008757@ha */
/* 80476330  38 A5 87 57 */	addi r5, r5, 0x8757 /* 0x00008757@l */
/* 80476334  38 C1 00 68 */	addi r6, r1, 0x68
/* 80476338  38 F7 01 0C */	addi r7, r23, 0x10c
/* 8047633C  39 00 00 00 */	li r8, 0
/* 80476340  39 21 00 5C */	addi r9, r1, 0x5c
/* 80476344  39 40 00 FF */	li r10, 0xff
/* 80476348  C0 3E 0A C0 */	lfs f1, 0xac0(r30)
/* 8047634C  4B BD 67 45 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80476350  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 80476354  38 80 00 00 */	li r4, 0
/* 80476358  90 81 00 08 */	stw r4, 8(r1)
/* 8047635C  38 00 FF FF */	li r0, -1
/* 80476360  90 01 00 0C */	stw r0, 0xc(r1)
/* 80476364  90 81 00 10 */	stw r4, 0x10(r1)
/* 80476368  90 81 00 14 */	stw r4, 0x14(r1)
/* 8047636C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80476370  38 80 00 00 */	li r4, 0
/* 80476374  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008758@ha */
/* 80476378  38 A5 87 58 */	addi r5, r5, 0x8758 /* 0x00008758@l */
/* 8047637C  38 C1 00 68 */	addi r6, r1, 0x68
/* 80476380  38 F7 01 0C */	addi r7, r23, 0x10c
/* 80476384  39 00 00 00 */	li r8, 0
/* 80476388  39 21 00 5C */	addi r9, r1, 0x5c
/* 8047638C  39 40 00 FF */	li r10, 0xff
/* 80476390  C0 3E 0A C0 */	lfs f1, 0xac0(r30)
/* 80476394  4B BD 66 FD */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_80476398:
/* 80476398  28 1C 00 00 */	cmplwi r28, 0
/* 8047639C  41 82 00 C8 */	beq lbl_80476464
/* 804763A0  7E E3 BB 78 */	mr r3, r23
/* 804763A4  4B FF F2 D9 */	bl chkWaterLineIn__12daObjCarry_cFv
/* 804763A8  2C 03 00 00 */	cmpwi r3, 0
/* 804763AC  40 82 00 B8 */	bne lbl_80476464
/* 804763B0  88 17 0C F1 */	lbz r0, 0xcf1(r23)
/* 804763B4  28 00 00 03 */	cmplwi r0, 3
/* 804763B8  41 82 00 0C */	beq lbl_804763C4
/* 804763BC  28 00 00 0B */	cmplwi r0, 0xb
/* 804763C0  40 82 00 A4 */	bne lbl_80476464
lbl_804763C4:
/* 804763C4  88 17 0C F0 */	lbz r0, 0xcf0(r23)
/* 804763C8  28 00 00 06 */	cmplwi r0, 6
/* 804763CC  40 82 00 34 */	bne lbl_80476400
/* 804763D0  C0 3E 0B 88 */	lfs f1, 0xb88(r30)
/* 804763D4  4B DF 15 81 */	bl cM_rndF__Ff
/* 804763D8  C0 1E 0A 70 */	lfs f0, 0xa70(r30)
/* 804763DC  EC 00 08 2A */	fadds f0, f0, f1
/* 804763E0  D0 17 0D 5C */	stfs f0, 0xd5c(r23)
/* 804763E4  C0 3E 0B 8C */	lfs f1, 0xb8c(r30)
/* 804763E8  4B DF 15 6D */	bl cM_rndF__Ff
/* 804763EC  C0 1E 0B 48 */	lfs f0, 0xb48(r30)
/* 804763F0  EC 00 08 2A */	fadds f0, f0, f1
/* 804763F4  D0 17 0D 60 */	stfs f0, 0xd60(r23)
/* 804763F8  38 00 0B B8 */	li r0, 0xbb8
/* 804763FC  B0 17 0D 68 */	sth r0, 0xd68(r23)
lbl_80476400:
/* 80476400  7E E3 BB 78 */	mr r3, r23
/* 80476404  38 80 00 00 */	li r4, 0
/* 80476408  4B FF D3 11 */	bl mode_init_walk__12daObjCarry_cFUc
/* 8047640C  48 00 00 58 */	b lbl_80476464
lbl_80476410:
/* 80476410  28 00 00 04 */	cmplwi r0, 4
/* 80476414  41 82 00 0C */	beq lbl_80476420
/* 80476418  28 00 00 05 */	cmplwi r0, 5
/* 8047641C  40 82 00 48 */	bne lbl_80476464
lbl_80476420:
/* 80476420  28 1B 00 00 */	cmplwi r27, 0
/* 80476424  41 82 00 14 */	beq lbl_80476438
/* 80476428  7E E3 BB 78 */	mr r3, r23
/* 8047642C  4B FF F2 51 */	bl chkWaterLineIn__12daObjCarry_cFv
/* 80476430  2C 03 00 00 */	cmpwi r3, 0
/* 80476434  41 82 00 0C */	beq lbl_80476440
lbl_80476438:
/* 80476438  28 19 00 00 */	cmplwi r25, 0
/* 8047643C  40 82 00 28 */	bne lbl_80476464
lbl_80476440:
/* 80476440  C3 B7 05 2C */	lfs f29, 0x52c(r23)
/* 80476444  C3 D7 04 FC */	lfs f30, 0x4fc(r23)
/* 80476448  7E E3 BB 78 */	mr r3, r23
/* 8047644C  38 80 00 00 */	li r4, 0
/* 80476450  4B FF D2 C9 */	bl mode_init_walk__12daObjCarry_cFUc
/* 80476454  28 19 00 00 */	cmplwi r25, 0
/* 80476458  40 82 00 0C */	bne lbl_80476464
/* 8047645C  D3 B7 05 2C */	stfs f29, 0x52c(r23)
/* 80476460  D3 D7 04 FC */	stfs f30, 0x4fc(r23)
lbl_80476464:
/* 80476464  28 1B 00 00 */	cmplwi r27, 0
/* 80476468  41 82 00 8C */	beq lbl_804764F4
/* 8047646C  88 77 0C F3 */	lbz r3, 0xcf3(r23)
/* 80476470  28 03 00 00 */	cmplwi r3, 0
/* 80476474  41 82 00 10 */	beq lbl_80476484
/* 80476478  38 03 FF FF */	addi r0, r3, -1
/* 8047647C  98 17 0C F3 */	stb r0, 0xcf3(r23)
/* 80476480  48 00 00 88 */	b lbl_80476508
lbl_80476484:
/* 80476484  88 17 0C F1 */	lbz r0, 0xcf1(r23)
/* 80476488  28 00 00 01 */	cmplwi r0, 1
/* 8047648C  41 82 00 24 */	beq lbl_804764B0
/* 80476490  28 00 00 03 */	cmplwi r0, 3
/* 80476494  41 82 00 1C */	beq lbl_804764B0
/* 80476498  28 00 00 0B */	cmplwi r0, 0xb
/* 8047649C  41 82 00 14 */	beq lbl_804764B0
/* 804764A0  28 00 00 00 */	cmplwi r0, 0
/* 804764A4  41 82 00 0C */	beq lbl_804764B0
/* 804764A8  28 00 00 05 */	cmplwi r0, 5
/* 804764AC  40 82 00 5C */	bne lbl_80476508
lbl_804764B0:
/* 804764B0  88 17 0D AE */	lbz r0, 0xdae(r23)
/* 804764B4  28 00 00 00 */	cmplwi r0, 0
/* 804764B8  40 82 00 50 */	bne lbl_80476508
/* 804764BC  88 17 0D B1 */	lbz r0, 0xdb1(r23)
/* 804764C0  28 00 00 00 */	cmplwi r0, 0
/* 804764C4  40 82 00 44 */	bne lbl_80476508
/* 804764C8  28 03 00 00 */	cmplwi r3, 0
/* 804764CC  40 82 00 3C */	bne lbl_80476508
/* 804764D0  88 17 0C F0 */	lbz r0, 0xcf0(r23)
/* 804764D4  28 00 00 03 */	cmplwi r0, 3
/* 804764D8  41 82 00 10 */	beq lbl_804764E8
/* 804764DC  7E E3 BB 78 */	mr r3, r23
/* 804764E0  38 80 00 00 */	li r4, 0
/* 804764E4  48 00 14 AD */	bl se_put__12daObjCarry_cFP13cBgS_PolyInfo
lbl_804764E8:
/* 804764E8  38 00 00 01 */	li r0, 1
/* 804764EC  98 17 0D B1 */	stb r0, 0xdb1(r23)
/* 804764F0  48 00 00 18 */	b lbl_80476508
lbl_804764F4:
/* 804764F4  88 17 0D B0 */	lbz r0, 0xdb0(r23)
/* 804764F8  28 00 00 00 */	cmplwi r0, 0
/* 804764FC  40 82 00 0C */	bne lbl_80476508
/* 80476500  38 00 00 00 */	li r0, 0
/* 80476504  98 17 0D B1 */	stb r0, 0xdb1(r23)
lbl_80476508:
/* 80476508  C0 17 04 D0 */	lfs f0, 0x4d0(r23)
/* 8047650C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80476510  C0 17 04 D4 */	lfs f0, 0x4d4(r23)
/* 80476514  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80476518  C0 17 04 D8 */	lfs f0, 0x4d8(r23)
/* 8047651C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80476520  C0 37 07 40 */	lfs f1, 0x740(r23)
/* 80476524  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80476528  28 1A 00 00 */	cmplwi r26, 0
/* 8047652C  41 82 00 8C */	beq lbl_804765B8
/* 80476530  C0 17 04 D4 */	lfs f0, 0x4d4(r23)
/* 80476534  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80476538  40 81 00 80 */	ble lbl_804765B8
/* 8047653C  88 17 0C F1 */	lbz r0, 0xcf1(r23)
/* 80476540  28 00 00 04 */	cmplwi r0, 4
/* 80476544  41 82 00 60 */	beq lbl_804765A4
/* 80476548  28 00 00 05 */	cmplwi r0, 5
/* 8047654C  40 82 00 14 */	bne lbl_80476560
/* 80476550  7E E3 BB 78 */	mr r3, r23
/* 80476554  4B FF F0 C5 */	bl chkSinkAll__12daObjCarry_cFv
/* 80476558  2C 03 00 00 */	cmpwi r3, 0
/* 8047655C  41 82 00 48 */	beq lbl_804765A4
lbl_80476560:
/* 80476560  88 17 0C F1 */	lbz r0, 0xcf1(r23)
/* 80476564  28 00 00 00 */	cmplwi r0, 0
/* 80476568  40 82 00 0C */	bne lbl_80476574
/* 8047656C  28 1B 00 00 */	cmplwi r27, 0
/* 80476570  40 82 00 34 */	bne lbl_804765A4
lbl_80476574:
/* 80476574  28 00 00 01 */	cmplwi r0, 1
/* 80476578  40 82 00 0C */	bne lbl_80476584
/* 8047657C  28 1B 00 00 */	cmplwi r27, 0
/* 80476580  40 82 00 24 */	bne lbl_804765A4
lbl_80476584:
/* 80476584  28 00 00 02 */	cmplwi r0, 2
/* 80476588  40 82 00 30 */	bne lbl_804765B8
/* 8047658C  28 19 00 00 */	cmplwi r25, 0
/* 80476590  41 82 00 28 */	beq lbl_804765B8
/* 80476594  7E E3 BB 78 */	mr r3, r23
/* 80476598  4B FF F0 81 */	bl chkSinkAll__12daObjCarry_cFv
/* 8047659C  2C 03 00 00 */	cmpwi r3, 0
/* 804765A0  40 82 00 18 */	bne lbl_804765B8
lbl_804765A4:
/* 804765A4  38 77 0D D4 */	addi r3, r23, 0xdd4
/* 804765A8  38 81 00 50 */	addi r4, r1, 0x50
/* 804765AC  C0 3E 0A C0 */	lfs f1, 0xac0(r30)
/* 804765B0  C0 5E 0B 34 */	lfs f2, 0xb34(r30)
/* 804765B4  4B BA 6B 59 */	bl fopAcM_effHamonSet__FPUlPC4cXyzff
lbl_804765B8:
/* 804765B8  88 17 0C F0 */	lbz r0, 0xcf0(r23)
/* 804765BC  28 00 00 03 */	cmplwi r0, 3
/* 804765C0  40 82 00 24 */	bne lbl_804765E4
/* 804765C4  28 1D 00 00 */	cmplwi r29, 0
/* 804765C8  41 82 00 1C */	beq lbl_804765E4
/* 804765CC  28 1B 00 00 */	cmplwi r27, 0
/* 804765D0  41 82 00 14 */	beq lbl_804765E4
/* 804765D4  C0 37 04 D4 */	lfs f1, 0x4d4(r23)
/* 804765D8  C0 1E 0B 1C */	lfs f0, 0xb1c(r30)
/* 804765DC  EC 01 00 28 */	fsubs f0, f1, f0
/* 804765E0  D0 17 04 D4 */	stfs f0, 0x4d4(r23)
lbl_804765E4:
/* 804765E4  9B F7 0E 0D */	stb r31, 0xe0d(r23)
/* 804765E8  E3 E1 01 28 */	psq_l f31, 296(r1), 0, 0 /* qr0 */
/* 804765EC  CB E1 01 20 */	lfd f31, 0x120(r1)
/* 804765F0  E3 C1 01 18 */	psq_l f30, 280(r1), 0, 0 /* qr0 */
/* 804765F4  CB C1 01 10 */	lfd f30, 0x110(r1)
/* 804765F8  E3 A1 01 08 */	psq_l f29, 264(r1), 0, 0 /* qr0 */
/* 804765FC  CB A1 01 00 */	lfd f29, 0x100(r1)
/* 80476600  39 61 01 00 */	addi r11, r1, 0x100
/* 80476604  4B EE BC 0D */	bl _restgpr_23
/* 80476608  80 01 01 34 */	lwz r0, 0x134(r1)
/* 8047660C  7C 08 03 A6 */	mtlr r0
/* 80476610  38 21 01 30 */	addi r1, r1, 0x130
/* 80476614  4E 80 00 20 */	blr 
