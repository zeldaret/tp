lbl_80807874:
/* 80807874  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80807878  7C 08 02 A6 */	mflr r0
/* 8080787C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80807880  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80807884  4B B5 A9 30 */	b _savegpr_19
/* 80807888  7C 7E 1B 78 */	mr r30, r3
/* 8080788C  7C 9A 23 78 */	mr r26, r4
/* 80807890  7C BB 2B 78 */	mr r27, r5
/* 80807894  7C DC 33 78 */	mr r28, r6
/* 80807898  3C 60 80 80 */	lis r3, cNullVec__6Z2Calc@ha
/* 8080789C  3A E3 7D 70 */	addi r23, r3, cNullVec__6Z2Calc@l
/* 808078A0  3C 60 80 80 */	lis r3, lit_3941@ha
/* 808078A4  3B E3 7C 9C */	addi r31, r3, lit_3941@l
/* 808078A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 808078AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 808078B0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 808078B4  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha
/* 808078B8  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)
/* 808078BC  28 00 00 00 */	cmplwi r0, 0
/* 808078C0  41 82 03 A4 */	beq lbl_80807C64
/* 808078C4  7F C4 F3 78 */	mr r4, r30
/* 808078C8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 808078CC  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 808078D0  7D 89 03 A6 */	mtctr r12
/* 808078D4  4E 80 04 21 */	bctrl 
/* 808078D8  2C 03 00 00 */	cmpwi r3, 0
/* 808078DC  41 82 03 88 */	beq lbl_80807C64
/* 808078E0  4B 9A 4C 9C */	b dKy_darkworld_check__Fv
/* 808078E4  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 808078E8  30 03 FF FF */	addic r0, r3, -1
/* 808078EC  7F A0 19 10 */	subfe r29, r0, r3
/* 808078F0  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 808078F4  28 00 00 00 */	cmplwi r0, 0
/* 808078F8  40 82 02 A0 */	bne lbl_80807B98
/* 808078FC  38 00 00 01 */	li r0, 1
/* 80807900  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 80807904  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha
/* 80807908  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l
/* 8080790C  80 63 00 00 */	lwz r3, 0(r3)
/* 80807910  80 63 05 74 */	lwz r3, 0x574(r3)
/* 80807914  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80807918  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8080791C  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 80807920  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80807924  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80807928  4B B3 EB 88 */	b PSMTXCopy
/* 8080792C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80807930  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80807934  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80807938  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8080793C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80807940  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80807944  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80807948  38 81 00 4C */	addi r4, r1, 0x4c
/* 8080794C  38 A1 00 58 */	addi r5, r1, 0x58
/* 80807950  4B B3 F4 1C */	b PSMTXMultVec
/* 80807954  38 61 00 34 */	addi r3, r1, 0x34
/* 80807958  38 81 00 58 */	addi r4, r1, 0x58
/* 8080795C  7F 65 DB 78 */	mr r5, r27
/* 80807960  4B A5 F1 D4 */	b __mi__4cXyzCFRC3Vec
/* 80807964  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80807968  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8080796C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80807970  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80807974  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 80807978  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 8080797C  4B A5 FC F8 */	b cM_atan2s__Fff
/* 80807980  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 80807984  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80807988  EC 20 00 32 */	fmuls f1, f0, f0
/* 8080798C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80807990  EC 00 00 32 */	fmuls f0, f0, f0
/* 80807994  EC 41 00 2A */	fadds f2, f1, f0
/* 80807998  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8080799C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 808079A0  40 81 00 0C */	ble lbl_808079AC
/* 808079A4  FC 00 10 34 */	frsqrte f0, f2
/* 808079A8  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_808079AC:
/* 808079AC  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 808079B0  4B A5 FC C4 */	b cM_atan2s__Fff
/* 808079B4  7C 03 00 D0 */	neg r0, r3
/* 808079B8  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 808079BC  38 80 00 00 */	li r4, 0
/* 808079C0  B0 81 00 30 */	sth r4, 0x30(r1)
/* 808079C4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 808079C8  7C 00 07 74 */	extsb r0, r0
/* 808079CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 808079D0  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l
/* 808079D4  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 808079D8  57 A5 10 3A */	slwi r5, r29, 2
/* 808079DC  90 81 00 08 */	stw r4, 8(r1)
/* 808079E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 808079E4  3A B7 00 20 */	addi r21, r23, 0x20
/* 808079E8  7E B5 2A 14 */	add r21, r21, r5
/* 808079EC  92 A1 00 10 */	stw r21, 0x10(r1)
/* 808079F0  3A D7 00 28 */	addi r22, r23, 0x28
/* 808079F4  7E D6 2A 14 */	add r22, r22, r5
/* 808079F8  92 C1 00 14 */	stw r22, 0x14(r1)
/* 808079FC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80807A00  38 80 00 00 */	li r4, 0
/* 80807A04  38 A0 02 9B */	li r5, 0x29b
/* 80807A08  7F 66 DB 78 */	mr r6, r27
/* 80807A0C  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80807A10  39 01 00 2C */	addi r8, r1, 0x2c
/* 80807A14  7F 89 E3 78 */	mr r9, r28
/* 80807A18  39 40 00 FF */	li r10, 0xff
/* 80807A1C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80807A20  4B 84 50 70 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80807A24  7C 79 1B 79 */	or. r25, r3, r3
/* 80807A28  41 82 00 FC */	beq lbl_80807B24
/* 80807A2C  38 61 00 40 */	addi r3, r1, 0x40
/* 80807A30  4B B3 F7 08 */	b PSVECSquareMag
/* 80807A34  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80807A38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80807A3C  40 81 00 58 */	ble lbl_80807A94
/* 80807A40  FC 00 08 34 */	frsqrte f0, f1
/* 80807A44  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80807A48  FC 44 00 32 */	fmul f2, f4, f0
/* 80807A4C  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 80807A50  FC 00 00 32 */	fmul f0, f0, f0
/* 80807A54  FC 01 00 32 */	fmul f0, f1, f0
/* 80807A58  FC 03 00 28 */	fsub f0, f3, f0
/* 80807A5C  FC 02 00 32 */	fmul f0, f2, f0
/* 80807A60  FC 44 00 32 */	fmul f2, f4, f0
/* 80807A64  FC 00 00 32 */	fmul f0, f0, f0
/* 80807A68  FC 01 00 32 */	fmul f0, f1, f0
/* 80807A6C  FC 03 00 28 */	fsub f0, f3, f0
/* 80807A70  FC 02 00 32 */	fmul f0, f2, f0
/* 80807A74  FC 44 00 32 */	fmul f2, f4, f0
/* 80807A78  FC 00 00 32 */	fmul f0, f0, f0
/* 80807A7C  FC 01 00 32 */	fmul f0, f1, f0
/* 80807A80  FC 03 00 28 */	fsub f0, f3, f0
/* 80807A84  FC 02 00 32 */	fmul f0, f2, f0
/* 80807A88  FC 21 00 32 */	fmul f1, f1, f0
/* 80807A8C  FC 20 08 18 */	frsp f1, f1
/* 80807A90  48 00 00 88 */	b lbl_80807B18
lbl_80807A94:
/* 80807A94  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80807A98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80807A9C  40 80 00 10 */	bge lbl_80807AAC
/* 80807AA0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80807AA4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80807AA8  48 00 00 70 */	b lbl_80807B18
lbl_80807AAC:
/* 80807AAC  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80807AB0  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80807AB4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80807AB8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80807ABC  7C 03 00 00 */	cmpw r3, r0
/* 80807AC0  41 82 00 14 */	beq lbl_80807AD4
/* 80807AC4  40 80 00 40 */	bge lbl_80807B04
/* 80807AC8  2C 03 00 00 */	cmpwi r3, 0
/* 80807ACC  41 82 00 20 */	beq lbl_80807AEC
/* 80807AD0  48 00 00 34 */	b lbl_80807B04
lbl_80807AD4:
/* 80807AD4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80807AD8  41 82 00 0C */	beq lbl_80807AE4
/* 80807ADC  38 00 00 01 */	li r0, 1
/* 80807AE0  48 00 00 28 */	b lbl_80807B08
lbl_80807AE4:
/* 80807AE4  38 00 00 02 */	li r0, 2
/* 80807AE8  48 00 00 20 */	b lbl_80807B08
lbl_80807AEC:
/* 80807AEC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80807AF0  41 82 00 0C */	beq lbl_80807AFC
/* 80807AF4  38 00 00 05 */	li r0, 5
/* 80807AF8  48 00 00 10 */	b lbl_80807B08
lbl_80807AFC:
/* 80807AFC  38 00 00 03 */	li r0, 3
/* 80807B00  48 00 00 08 */	b lbl_80807B08
lbl_80807B04:
/* 80807B04  38 00 00 04 */	li r0, 4
lbl_80807B08:
/* 80807B08  2C 00 00 01 */	cmpwi r0, 1
/* 80807B0C  40 82 00 0C */	bne lbl_80807B18
/* 80807B10  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80807B14  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80807B18:
/* 80807B18  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80807B1C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80807B20  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_80807B24:
/* 80807B24  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80807B28  7C 04 07 74 */	extsb r4, r0
/* 80807B2C  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 80807B30  38 00 00 00 */	li r0, 0
/* 80807B34  90 01 00 08 */	stw r0, 8(r1)
/* 80807B38  90 81 00 0C */	stw r4, 0xc(r1)
/* 80807B3C  92 A1 00 10 */	stw r21, 0x10(r1)
/* 80807B40  92 C1 00 14 */	stw r22, 0x14(r1)
/* 80807B44  90 01 00 18 */	stw r0, 0x18(r1)
/* 80807B48  38 80 00 00 */	li r4, 0
/* 80807B4C  38 A0 02 9C */	li r5, 0x29c
/* 80807B50  7F 66 DB 78 */	mr r6, r27
/* 80807B54  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80807B58  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 80807B5C  7F 89 E3 78 */	mr r9, r28
/* 80807B60  39 40 00 FF */	li r10, 0xff
/* 80807B64  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80807B68  4B 84 4F 28 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80807B6C  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 80807B70  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 80807B74  90 01 00 28 */	stw r0, 0x28(r1)
/* 80807B78  7F 43 D3 78 */	mr r3, r26
/* 80807B7C  38 81 00 28 */	addi r4, r1, 0x28
/* 80807B80  38 A0 00 00 */	li r5, 0
/* 80807B84  38 C0 FF FF */	li r6, -1
/* 80807B88  81 9A 00 00 */	lwz r12, 0(r26)
/* 80807B8C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80807B90  7D 89 03 A6 */	mtctr r12
/* 80807B94  4E 80 04 21 */	bctrl 
lbl_80807B98:
/* 80807B98  3A A0 00 00 */	li r21, 0
/* 80807B9C  3A C0 00 00 */	li r22, 0
/* 80807BA0  3A 80 00 00 */	li r20, 0
/* 80807BA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80807BA8  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l
/* 80807BAC  57 A0 10 3A */	slwi r0, r29, 2
/* 80807BB0  3B 17 00 28 */	addi r24, r23, 0x28
/* 80807BB4  7F 18 02 14 */	add r24, r24, r0
/* 80807BB8  3B B7 00 20 */	addi r29, r23, 0x20
/* 80807BBC  7F BD 02 14 */	add r29, r29, r0
/* 80807BC0  3A 77 00 30 */	addi r19, r23, 0x30
lbl_80807BC4:
/* 80807BC4  3A F4 05 9C */	addi r23, r20, 0x59c
/* 80807BC8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80807BCC  7C 05 07 74 */	extsb r5, r0
/* 80807BD0  7C 9E B8 2E */	lwzx r4, r30, r23
/* 80807BD4  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 80807BD8  38 00 00 FF */	li r0, 0xff
/* 80807BDC  90 01 00 08 */	stw r0, 8(r1)
/* 80807BE0  38 00 00 00 */	li r0, 0
/* 80807BE4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80807BE8  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80807BEC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80807BF0  93 01 00 18 */	stw r24, 0x18(r1)
/* 80807BF4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80807BF8  38 A0 00 00 */	li r5, 0
/* 80807BFC  7C D3 B2 2E */	lhzx r6, r19, r22
/* 80807C00  7F 67 DB 78 */	mr r7, r27
/* 80807C04  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80807C08  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 80807C0C  7F 8A E3 78 */	mr r10, r28
/* 80807C10  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80807C14  4B 84 58 B8 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80807C18  7C 7E B9 2E */	stwx r3, r30, r23
/* 80807C1C  3A B5 00 01 */	addi r21, r21, 1
/* 80807C20  2C 15 00 03 */	cmpwi r21, 3
/* 80807C24  3A D6 00 02 */	addi r22, r22, 2
/* 80807C28  3A 94 00 04 */	addi r20, r20, 4
/* 80807C2C  41 80 FF 98 */	blt lbl_80807BC4
/* 80807C30  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 80807C34  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 80807C38  90 01 00 24 */	stw r0, 0x24(r1)
/* 80807C3C  7F 43 D3 78 */	mr r3, r26
/* 80807C40  38 81 00 24 */	addi r4, r1, 0x24
/* 80807C44  38 A0 00 00 */	li r5, 0
/* 80807C48  38 C0 FF FF */	li r6, -1
/* 80807C4C  81 9A 00 00 */	lwz r12, 0(r26)
/* 80807C50  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80807C54  7D 89 03 A6 */	mtctr r12
/* 80807C58  4E 80 04 21 */	bctrl 
/* 80807C5C  38 60 00 01 */	li r3, 1
/* 80807C60  48 00 00 10 */	b lbl_80807C70
lbl_80807C64:
/* 80807C64  38 00 00 00 */	li r0, 0
/* 80807C68  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 80807C6C  38 60 00 00 */	li r3, 0
lbl_80807C70:
/* 80807C70  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80807C74  4B B5 A5 8C */	b _restgpr_19
/* 80807C78  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80807C7C  7C 08 03 A6 */	mtlr r0
/* 80807C80  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80807C84  4E 80 00 20 */	blr 
