lbl_8060F964:
/* 8060F964  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8060F968  7C 08 02 A6 */	mflr r0
/* 8060F96C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8060F970  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8060F974  4B D5 28 41 */	bl _savegpr_19
/* 8060F978  7C 7E 1B 78 */	mr r30, r3
/* 8060F97C  7C 9A 23 78 */	mr r26, r4
/* 8060F980  7C BB 2B 78 */	mr r27, r5
/* 8060F984  7C DC 33 78 */	mr r28, r6
/* 8060F988  3C 60 80 61 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80610094@ha */
/* 8060F98C  3A E3 00 94 */	addi r23, r3, cNullVec__6Z2Calc@l /* 0x80610094@l */
/* 8060F990  3C 60 80 61 */	lis r3, lit_3928@ha /* 0x8060FDE0@ha */
/* 8060F994  3B E3 FD E0 */	addi r31, r3, lit_3928@l /* 0x8060FDE0@l */
/* 8060F998  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8060F99C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8060F9A0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8060F9A4  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 8060F9A8  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)  /* 0x80451018@l */
/* 8060F9AC  28 00 00 00 */	cmplwi r0, 0
/* 8060F9B0  41 82 03 A4 */	beq lbl_8060FD54
/* 8060F9B4  7F C4 F3 78 */	mr r4, r30
/* 8060F9B8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8060F9BC  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 8060F9C0  7D 89 03 A6 */	mtctr r12
/* 8060F9C4  4E 80 04 21 */	bctrl 
/* 8060F9C8  2C 03 00 00 */	cmpwi r3, 0
/* 8060F9CC  41 82 03 88 */	beq lbl_8060FD54
/* 8060F9D0  4B B9 CB AD */	bl dKy_darkworld_check__Fv
/* 8060F9D4  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8060F9D8  30 03 FF FF */	addic r0, r3, -1
/* 8060F9DC  7F A0 19 10 */	subfe r29, r0, r3
/* 8060F9E0  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 8060F9E4  28 00 00 00 */	cmplwi r0, 0
/* 8060F9E8  40 82 02 A0 */	bne lbl_8060FC88
/* 8060F9EC  38 00 00 01 */	li r0, 1
/* 8060F9F0  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 8060F9F4  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 8060F9F8  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l /* 0x80451018@l */
/* 8060F9FC  80 63 00 00 */	lwz r3, 0(r3)
/* 8060FA00  80 63 05 74 */	lwz r3, 0x574(r3)
/* 8060FA04  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8060FA08  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8060FA0C  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 8060FA10  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8060FA14  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8060FA18  4B D3 6A 99 */	bl PSMTXCopy
/* 8060FA1C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8060FA20  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8060FA24  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8060FA28  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8060FA2C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8060FA30  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8060FA34  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8060FA38  38 81 00 4C */	addi r4, r1, 0x4c
/* 8060FA3C  38 A1 00 58 */	addi r5, r1, 0x58
/* 8060FA40  4B D3 73 2D */	bl PSMTXMultVec
/* 8060FA44  38 61 00 34 */	addi r3, r1, 0x34
/* 8060FA48  38 81 00 58 */	addi r4, r1, 0x58
/* 8060FA4C  7F 65 DB 78 */	mr r5, r27
/* 8060FA50  4B C5 70 E5 */	bl __mi__4cXyzCFRC3Vec
/* 8060FA54  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 8060FA58  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8060FA5C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8060FA60  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8060FA64  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 8060FA68  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 8060FA6C  4B C5 7C 09 */	bl cM_atan2s__Fff
/* 8060FA70  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 8060FA74  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8060FA78  EC 20 00 32 */	fmuls f1, f0, f0
/* 8060FA7C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8060FA80  EC 00 00 32 */	fmuls f0, f0, f0
/* 8060FA84  EC 41 00 2A */	fadds f2, f1, f0
/* 8060FA88  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8060FA8C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8060FA90  40 81 00 0C */	ble lbl_8060FA9C
/* 8060FA94  FC 00 10 34 */	frsqrte f0, f2
/* 8060FA98  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8060FA9C:
/* 8060FA9C  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 8060FAA0  4B C5 7B D5 */	bl cM_atan2s__Fff
/* 8060FAA4  7C 03 00 D0 */	neg r0, r3
/* 8060FAA8  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 8060FAAC  38 80 00 00 */	li r4, 0
/* 8060FAB0  B0 81 00 30 */	sth r4, 0x30(r1)
/* 8060FAB4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8060FAB8  7C 00 07 74 */	extsb r0, r0
/* 8060FABC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8060FAC0  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8060FAC4  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 8060FAC8  57 A5 10 3A */	slwi r5, r29, 2
/* 8060FACC  90 81 00 08 */	stw r4, 8(r1)
/* 8060FAD0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8060FAD4  3A B7 00 20 */	addi r21, r23, 0x20
/* 8060FAD8  7E B5 2A 14 */	add r21, r21, r5
/* 8060FADC  92 A1 00 10 */	stw r21, 0x10(r1)
/* 8060FAE0  3A D7 00 28 */	addi r22, r23, 0x28
/* 8060FAE4  7E D6 2A 14 */	add r22, r22, r5
/* 8060FAE8  92 C1 00 14 */	stw r22, 0x14(r1)
/* 8060FAEC  90 81 00 18 */	stw r4, 0x18(r1)
/* 8060FAF0  38 80 00 00 */	li r4, 0
/* 8060FAF4  38 A0 02 9B */	li r5, 0x29b
/* 8060FAF8  7F 66 DB 78 */	mr r6, r27
/* 8060FAFC  38 FE 01 0C */	addi r7, r30, 0x10c
/* 8060FB00  39 01 00 2C */	addi r8, r1, 0x2c
/* 8060FB04  7F 89 E3 78 */	mr r9, r28
/* 8060FB08  39 40 00 FF */	li r10, 0xff
/* 8060FB0C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8060FB10  4B A3 CF 81 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8060FB14  7C 79 1B 79 */	or. r25, r3, r3
/* 8060FB18  41 82 00 FC */	beq lbl_8060FC14
/* 8060FB1C  38 61 00 40 */	addi r3, r1, 0x40
/* 8060FB20  4B D3 76 19 */	bl PSVECSquareMag
/* 8060FB24  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8060FB28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8060FB2C  40 81 00 58 */	ble lbl_8060FB84
/* 8060FB30  FC 00 08 34 */	frsqrte f0, f1
/* 8060FB34  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8060FB38  FC 44 00 32 */	fmul f2, f4, f0
/* 8060FB3C  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8060FB40  FC 00 00 32 */	fmul f0, f0, f0
/* 8060FB44  FC 01 00 32 */	fmul f0, f1, f0
/* 8060FB48  FC 03 00 28 */	fsub f0, f3, f0
/* 8060FB4C  FC 02 00 32 */	fmul f0, f2, f0
/* 8060FB50  FC 44 00 32 */	fmul f2, f4, f0
/* 8060FB54  FC 00 00 32 */	fmul f0, f0, f0
/* 8060FB58  FC 01 00 32 */	fmul f0, f1, f0
/* 8060FB5C  FC 03 00 28 */	fsub f0, f3, f0
/* 8060FB60  FC 02 00 32 */	fmul f0, f2, f0
/* 8060FB64  FC 44 00 32 */	fmul f2, f4, f0
/* 8060FB68  FC 00 00 32 */	fmul f0, f0, f0
/* 8060FB6C  FC 01 00 32 */	fmul f0, f1, f0
/* 8060FB70  FC 03 00 28 */	fsub f0, f3, f0
/* 8060FB74  FC 02 00 32 */	fmul f0, f2, f0
/* 8060FB78  FC 21 00 32 */	fmul f1, f1, f0
/* 8060FB7C  FC 20 08 18 */	frsp f1, f1
/* 8060FB80  48 00 00 88 */	b lbl_8060FC08
lbl_8060FB84:
/* 8060FB84  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8060FB88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8060FB8C  40 80 00 10 */	bge lbl_8060FB9C
/* 8060FB90  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8060FB94  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8060FB98  48 00 00 70 */	b lbl_8060FC08
lbl_8060FB9C:
/* 8060FB9C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8060FBA0  80 81 00 20 */	lwz r4, 0x20(r1)
/* 8060FBA4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8060FBA8  3C 00 7F 80 */	lis r0, 0x7f80
/* 8060FBAC  7C 03 00 00 */	cmpw r3, r0
/* 8060FBB0  41 82 00 14 */	beq lbl_8060FBC4
/* 8060FBB4  40 80 00 40 */	bge lbl_8060FBF4
/* 8060FBB8  2C 03 00 00 */	cmpwi r3, 0
/* 8060FBBC  41 82 00 20 */	beq lbl_8060FBDC
/* 8060FBC0  48 00 00 34 */	b lbl_8060FBF4
lbl_8060FBC4:
/* 8060FBC4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8060FBC8  41 82 00 0C */	beq lbl_8060FBD4
/* 8060FBCC  38 00 00 01 */	li r0, 1
/* 8060FBD0  48 00 00 28 */	b lbl_8060FBF8
lbl_8060FBD4:
/* 8060FBD4  38 00 00 02 */	li r0, 2
/* 8060FBD8  48 00 00 20 */	b lbl_8060FBF8
lbl_8060FBDC:
/* 8060FBDC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8060FBE0  41 82 00 0C */	beq lbl_8060FBEC
/* 8060FBE4  38 00 00 05 */	li r0, 5
/* 8060FBE8  48 00 00 10 */	b lbl_8060FBF8
lbl_8060FBEC:
/* 8060FBEC  38 00 00 03 */	li r0, 3
/* 8060FBF0  48 00 00 08 */	b lbl_8060FBF8
lbl_8060FBF4:
/* 8060FBF4  38 00 00 04 */	li r0, 4
lbl_8060FBF8:
/* 8060FBF8  2C 00 00 01 */	cmpwi r0, 1
/* 8060FBFC  40 82 00 0C */	bne lbl_8060FC08
/* 8060FC00  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8060FC04  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8060FC08:
/* 8060FC08  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8060FC0C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8060FC10  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_8060FC14:
/* 8060FC14  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8060FC18  7C 04 07 74 */	extsb r4, r0
/* 8060FC1C  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 8060FC20  38 00 00 00 */	li r0, 0
/* 8060FC24  90 01 00 08 */	stw r0, 8(r1)
/* 8060FC28  90 81 00 0C */	stw r4, 0xc(r1)
/* 8060FC2C  92 A1 00 10 */	stw r21, 0x10(r1)
/* 8060FC30  92 C1 00 14 */	stw r22, 0x14(r1)
/* 8060FC34  90 01 00 18 */	stw r0, 0x18(r1)
/* 8060FC38  38 80 00 00 */	li r4, 0
/* 8060FC3C  38 A0 02 9C */	li r5, 0x29c
/* 8060FC40  7F 66 DB 78 */	mr r6, r27
/* 8060FC44  38 FE 01 0C */	addi r7, r30, 0x10c
/* 8060FC48  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 8060FC4C  7F 89 E3 78 */	mr r9, r28
/* 8060FC50  39 40 00 FF */	li r10, 0xff
/* 8060FC54  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8060FC58  4B A3 CE 39 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8060FC5C  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 8060FC60  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 8060FC64  90 01 00 28 */	stw r0, 0x28(r1)
/* 8060FC68  7F 43 D3 78 */	mr r3, r26
/* 8060FC6C  38 81 00 28 */	addi r4, r1, 0x28
/* 8060FC70  38 A0 00 00 */	li r5, 0
/* 8060FC74  38 C0 FF FF */	li r6, -1
/* 8060FC78  81 9A 00 00 */	lwz r12, 0(r26)
/* 8060FC7C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8060FC80  7D 89 03 A6 */	mtctr r12
/* 8060FC84  4E 80 04 21 */	bctrl 
lbl_8060FC88:
/* 8060FC88  3A A0 00 00 */	li r21, 0
/* 8060FC8C  3A C0 00 00 */	li r22, 0
/* 8060FC90  3A 80 00 00 */	li r20, 0
/* 8060FC94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8060FC98  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8060FC9C  57 A0 10 3A */	slwi r0, r29, 2
/* 8060FCA0  3B 17 00 28 */	addi r24, r23, 0x28
/* 8060FCA4  7F 18 02 14 */	add r24, r24, r0
/* 8060FCA8  3B B7 00 20 */	addi r29, r23, 0x20
/* 8060FCAC  7F BD 02 14 */	add r29, r29, r0
/* 8060FCB0  3A 77 00 30 */	addi r19, r23, 0x30
lbl_8060FCB4:
/* 8060FCB4  3A F4 05 9C */	addi r23, r20, 0x59c
/* 8060FCB8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8060FCBC  7C 05 07 74 */	extsb r5, r0
/* 8060FCC0  7C 9E B8 2E */	lwzx r4, r30, r23
/* 8060FCC4  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 8060FCC8  38 00 00 FF */	li r0, 0xff
/* 8060FCCC  90 01 00 08 */	stw r0, 8(r1)
/* 8060FCD0  38 00 00 00 */	li r0, 0
/* 8060FCD4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8060FCD8  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8060FCDC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8060FCE0  93 01 00 18 */	stw r24, 0x18(r1)
/* 8060FCE4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8060FCE8  38 A0 00 00 */	li r5, 0
/* 8060FCEC  7C D3 B2 2E */	lhzx r6, r19, r22
/* 8060FCF0  7F 67 DB 78 */	mr r7, r27
/* 8060FCF4  39 1E 01 0C */	addi r8, r30, 0x10c
/* 8060FCF8  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 8060FCFC  7F 8A E3 78 */	mr r10, r28
/* 8060FD00  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8060FD04  4B A3 D7 C9 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8060FD08  7C 7E B9 2E */	stwx r3, r30, r23
/* 8060FD0C  3A B5 00 01 */	addi r21, r21, 1
/* 8060FD10  2C 15 00 03 */	cmpwi r21, 3
/* 8060FD14  3A D6 00 02 */	addi r22, r22, 2
/* 8060FD18  3A 94 00 04 */	addi r20, r20, 4
/* 8060FD1C  41 80 FF 98 */	blt lbl_8060FCB4
/* 8060FD20  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 8060FD24  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 8060FD28  90 01 00 24 */	stw r0, 0x24(r1)
/* 8060FD2C  7F 43 D3 78 */	mr r3, r26
/* 8060FD30  38 81 00 24 */	addi r4, r1, 0x24
/* 8060FD34  38 A0 00 00 */	li r5, 0
/* 8060FD38  38 C0 FF FF */	li r6, -1
/* 8060FD3C  81 9A 00 00 */	lwz r12, 0(r26)
/* 8060FD40  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8060FD44  7D 89 03 A6 */	mtctr r12
/* 8060FD48  4E 80 04 21 */	bctrl 
/* 8060FD4C  38 60 00 01 */	li r3, 1
/* 8060FD50  48 00 00 10 */	b lbl_8060FD60
lbl_8060FD54:
/* 8060FD54  38 00 00 00 */	li r0, 0
/* 8060FD58  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 8060FD5C  38 60 00 00 */	li r3, 0
lbl_8060FD60:
/* 8060FD60  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8060FD64  4B D5 24 9D */	bl _restgpr_19
/* 8060FD68  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8060FD6C  7C 08 03 A6 */	mtlr r0
/* 8060FD70  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8060FD74  4E 80 00 20 */	blr 
