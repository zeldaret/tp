lbl_80B86A2C:
/* 80B86A2C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80B86A30  7C 08 02 A6 */	mflr r0
/* 80B86A34  90 01 00 74 */	stw r0, 0x74(r1)
/* 80B86A38  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80B86A3C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80B86A40  39 61 00 60 */	addi r11, r1, 0x60
/* 80B86A44  4B 7D B7 85 */	bl _savegpr_24
/* 80B86A48  7C 7A 1B 78 */	mr r26, r3
/* 80B86A4C  3C 60 80 B9 */	lis r3, m__17daNpc_zrA_Param_c@ha /* 0x80B8C458@ha */
/* 80B86A50  3B E3 C4 58 */	addi r31, r3, m__17daNpc_zrA_Param_c@l /* 0x80B8C458@l */
/* 80B86A54  38 7F 00 00 */	addi r3, r31, 0
/* 80B86A58  AB 83 00 74 */	lha r28, 0x74(r3)
/* 80B86A5C  C3 FA 15 28 */	lfs f31, 0x1528(r26)
/* 80B86A60  A0 1A 14 E6 */	lhz r0, 0x14e6(r26)
/* 80B86A64  2C 00 00 02 */	cmpwi r0, 2
/* 80B86A68  41 82 00 20 */	beq lbl_80B86A88
/* 80B86A6C  40 80 03 0C */	bge lbl_80B86D78
/* 80B86A70  2C 00 00 00 */	cmpwi r0, 0
/* 80B86A74  41 82 00 0C */	beq lbl_80B86A80
/* 80B86A78  48 00 03 00 */	b lbl_80B86D78
/* 80B86A7C  48 00 02 FC */	b lbl_80B86D78
lbl_80B86A80:
/* 80B86A80  38 00 00 02 */	li r0, 2
/* 80B86A84  B0 1A 14 E6 */	sth r0, 0x14e6(r26)
lbl_80B86A88:
/* 80B86A88  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80B86A8C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B86A90  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80B86A94  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B86A98  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80B86A9C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B86AA0  38 7A 0C 18 */	addi r3, r26, 0xc18
/* 80B86AA4  38 81 00 14 */	addi r4, r1, 0x14
/* 80B86AA8  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80B86AAC  4B 5C A3 35 */	bl getDstPos__13daNpcF_Path_cF4cXyzR4cXyz
/* 80B86AB0  2C 03 00 00 */	cmpwi r3, 0
/* 80B86AB4  41 82 00 3C */	beq lbl_80B86AF0
/* 80B86AB8  A3 7A 0C 18 */	lhz r27, 0xc18(r26)
/* 80B86ABC  38 7A 0C 18 */	addi r3, r26, 0xc18
/* 80B86AC0  4B 5C A1 59 */	bl getNextIdx__13daNpcF_Path_cFv
/* 80B86AC4  7C 1B 18 00 */	cmpw r27, r3
/* 80B86AC8  40 82 00 28 */	bne lbl_80B86AF0
/* 80B86ACC  38 7A 0C 18 */	addi r3, r26, 0xc18
/* 80B86AD0  4B 5C A0 ED */	bl reverse__13daNpcF_Path_cFv
/* 80B86AD4  38 7A 13 2C */	addi r3, r26, 0x132c
/* 80B86AD8  4B 5C 9C 15 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80B86ADC  4B 49 31 A1 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80B86AE0  7F 43 D3 78 */	mr r3, r26
/* 80B86AE4  4B 49 31 99 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80B86AE8  38 60 00 01 */	li r3, 1
/* 80B86AEC  48 00 02 90 */	b lbl_80B86D7C
lbl_80B86AF0:
/* 80B86AF0  38 61 00 2C */	addi r3, r1, 0x2c
/* 80B86AF4  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80B86AF8  4B 6E A1 7D */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80B86AFC  B0 61 00 0C */	sth r3, 0xc(r1)
/* 80B86B00  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 80B86B04  38 81 00 2C */	addi r4, r1, 0x2c
/* 80B86B08  4B 6E A0 FD */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80B86B0C  3B C1 00 0E */	addi r30, r1, 0xe
/* 80B86B10  B0 61 00 0E */	sth r3, 0xe(r1)
/* 80B86B14  A8 1A 04 E0 */	lha r0, 0x4e0(r26)
/* 80B86B18  3B A1 00 10 */	addi r29, r1, 0x10
/* 80B86B1C  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80B86B20  A8 9A 04 DC */	lha r4, 0x4dc(r26)
/* 80B86B24  A8 01 00 0C */	lha r0, 0xc(r1)
/* 80B86B28  7C 04 00 50 */	subf r0, r4, r0
/* 80B86B2C  7C 19 07 34 */	extsh r25, r0
/* 80B86B30  A8 9A 04 DE */	lha r4, 0x4de(r26)
/* 80B86B34  7C 60 07 34 */	extsh r0, r3
/* 80B86B38  7C 04 00 50 */	subf r0, r4, r0
/* 80B86B3C  7C 18 07 34 */	extsh r24, r0
/* 80B86B40  3B 60 00 00 */	li r27, 0
/* 80B86B44  88 1A 15 76 */	lbz r0, 0x1576(r26)
/* 80B86B48  28 00 00 00 */	cmplwi r0, 0
/* 80B86B4C  41 82 01 1C */	beq lbl_80B86C68
/* 80B86B50  7F 23 CB 78 */	mr r3, r25
/* 80B86B54  4B 7D E5 7D */	bl abs
/* 80B86B58  2C 03 30 00 */	cmpwi r3, 0x3000
/* 80B86B5C  41 81 00 14 */	bgt lbl_80B86B70
/* 80B86B60  7F 03 C3 78 */	mr r3, r24
/* 80B86B64  4B 7D E5 6D */	bl abs
/* 80B86B68  2C 03 30 00 */	cmpwi r3, 0x3000
/* 80B86B6C  40 81 00 FC */	ble lbl_80B86C68
lbl_80B86B70:
/* 80B86B70  C0 3A 15 24 */	lfs f1, 0x1524(r26)
/* 80B86B74  C0 1F 07 94 */	lfs f0, 0x794(r31)
/* 80B86B78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B86B7C  40 81 00 EC */	ble lbl_80B86C68
/* 80B86B80  80 7A 05 68 */	lwz r3, 0x568(r26)
/* 80B86B84  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B86B88  A8 81 00 10 */	lha r4, 0x10(r1)
/* 80B86B8C  2C 04 20 00 */	cmpwi r4, 0x2000
/* 80B86B90  40 81 00 0C */	ble lbl_80B86B9C
/* 80B86B94  7F 00 07 35 */	extsh. r0, r24
/* 80B86B98  41 80 00 84 */	blt lbl_80B86C1C
lbl_80B86B9C:
/* 80B86B9C  2C 04 E0 00 */	cmpwi r4, -8192
/* 80B86BA0  40 80 00 0C */	bge lbl_80B86BAC
/* 80B86BA4  7F 00 07 35 */	extsh. r0, r24
/* 80B86BA8  41 81 00 74 */	bgt lbl_80B86C1C
lbl_80B86BAC:
/* 80B86BAC  2C 19 D0 00 */	cmpwi r25, -12288
/* 80B86BB0  40 80 00 2C */	bge lbl_80B86BDC
/* 80B86BB4  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 80B86BB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B86BBC  4C 41 13 82 */	cror 2, 1, 2
/* 80B86BC0  40 82 00 5C */	bne lbl_80B86C1C
/* 80B86BC4  C0 1F 07 98 */	lfs f0, 0x798(r31)
/* 80B86BC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B86BCC  4C 40 13 82 */	cror 2, 0, 2
/* 80B86BD0  40 82 00 4C */	bne lbl_80B86C1C
/* 80B86BD4  3B 60 00 01 */	li r27, 1
/* 80B86BD8  48 00 00 44 */	b lbl_80B86C1C
lbl_80B86BDC:
/* 80B86BDC  C0 1F 07 9C */	lfs f0, 0x79c(r31)
/* 80B86BE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B86BE4  4C 41 13 82 */	cror 2, 1, 2
/* 80B86BE8  40 82 00 34 */	bne lbl_80B86C1C
/* 80B86BEC  C0 1F 07 A0 */	lfs f0, 0x7a0(r31)
/* 80B86BF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B86BF4  4C 40 13 82 */	cror 2, 0, 2
/* 80B86BF8  40 82 00 24 */	bne lbl_80B86C1C
/* 80B86BFC  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80B86C00  80 7A 05 68 */	lwz r3, 0x568(r26)
/* 80B86C04  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 80B86C08  4B 48 8F 75 */	bl setMorf__13mDoExt_morf_cFf
/* 80B86C0C  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 80B86C10  80 7A 05 68 */	lwz r3, 0x568(r26)
/* 80B86C14  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80B86C18  3B 60 00 01 */	li r27, 1
lbl_80B86C1C:
/* 80B86C1C  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80B86C20  41 82 00 20 */	beq lbl_80B86C40
/* 80B86C24  7F 43 D3 78 */	mr r3, r26
/* 80B86C28  38 81 00 0C */	addi r4, r1, 0xc
/* 80B86C2C  38 BA 15 36 */	addi r5, r26, 0x1536
/* 80B86C30  38 C0 00 04 */	li r6, 4
/* 80B86C34  7F 87 E3 78 */	mr r7, r28
/* 80B86C38  4B FF B8 BD */	bl calcSwimAngle__11daNpc_zrA_cFR5csXyzR5csXyzss
/* 80B86C3C  48 00 00 44 */	b lbl_80B86C80
lbl_80B86C40:
/* 80B86C40  7F 43 D3 78 */	mr r3, r26
/* 80B86C44  38 81 00 0C */	addi r4, r1, 0xc
/* 80B86C48  38 BA 15 36 */	addi r5, r26, 0x1536
/* 80B86C4C  38 C0 00 08 */	li r6, 8
/* 80B86C50  7F 80 07 34 */	extsh r0, r28
/* 80B86C54  7C 00 0E 70 */	srawi r0, r0, 1
/* 80B86C58  7C 00 01 94 */	addze r0, r0
/* 80B86C5C  7C 07 07 34 */	extsh r7, r0
/* 80B86C60  4B FF B8 95 */	bl calcSwimAngle__11daNpc_zrA_cFR5csXyzR5csXyzss
/* 80B86C64  48 00 00 1C */	b lbl_80B86C80
lbl_80B86C68:
/* 80B86C68  7F 43 D3 78 */	mr r3, r26
/* 80B86C6C  38 81 00 0C */	addi r4, r1, 0xc
/* 80B86C70  38 BA 15 36 */	addi r5, r26, 0x1536
/* 80B86C74  38 C0 00 08 */	li r6, 8
/* 80B86C78  7F 87 E3 78 */	mr r7, r28
/* 80B86C7C  4B FF B8 79 */	bl calcSwimAngle__11daNpc_zrA_cFR5csXyzR5csXyzss
lbl_80B86C80:
/* 80B86C80  38 7A 15 24 */	addi r3, r26, 0x1524
/* 80B86C84  38 9F 00 00 */	addi r4, r31, 0
/* 80B86C88  C0 04 00 6C */	lfs f0, 0x6c(r4)
/* 80B86C8C  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80B86C90  C0 5F 01 04 */	lfs f2, 0x104(r31)
/* 80B86C94  C0 7F 07 CC */	lfs f3, 0x7cc(r31)
/* 80B86C98  4B 6E 8D A5 */	bl cLib_addCalc2__FPffff
/* 80B86C9C  C0 3A 15 24 */	lfs f1, 0x1524(r26)
/* 80B86CA0  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B86CA4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B86CA8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B86CAC  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80B86CB0  7F 43 D3 78 */	mr r3, r26
/* 80B86CB4  38 81 00 20 */	addi r4, r1, 0x20
/* 80B86CB8  4B FF B8 CD */	bl calcSwimPos__11daNpc_zrA_cFR4cXyz
/* 80B86CBC  80 1A 05 FC */	lwz r0, 0x5fc(r26)
/* 80B86CC0  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 80B86CC4  41 82 00 18 */	beq lbl_80B86CDC
/* 80B86CC8  C0 3A 07 9C */	lfs f1, 0x79c(r26)
/* 80B86CCC  38 7F 00 00 */	addi r3, r31, 0
/* 80B86CD0  C0 03 00 88 */	lfs f0, 0x88(r3)
/* 80B86CD4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B86CD8  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
lbl_80B86CDC:
/* 80B86CDC  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80B86CE0  40 82 00 3C */	bne lbl_80B86D1C
/* 80B86CE4  80 7A 05 68 */	lwz r3, 0x568(r26)
/* 80B86CE8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80B86CEC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B86CF0  38 61 00 08 */	addi r3, r1, 8
/* 80B86CF4  C0 3A 15 24 */	lfs f1, 0x1524(r26)
/* 80B86CF8  38 9F 00 00 */	addi r4, r31, 0
/* 80B86CFC  C0 04 00 78 */	lfs f0, 0x78(r4)
/* 80B86D00  EC 21 00 24 */	fdivs f1, f1, f0
/* 80B86D04  C0 5F 01 04 */	lfs f2, 0x104(r31)
/* 80B86D08  C0 7F 01 14 */	lfs f3, 0x114(r31)
/* 80B86D0C  4B 6E 8D 31 */	bl cLib_addCalc2__FPffff
/* 80B86D10  C0 01 00 08 */	lfs f0, 8(r1)
/* 80B86D14  80 7A 05 68 */	lwz r3, 0x568(r26)
/* 80B86D18  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_80B86D1C:
/* 80B86D1C  7F 43 D3 78 */	mr r3, r26
/* 80B86D20  7F 84 E3 78 */	mr r4, r28
/* 80B86D24  38 A0 00 08 */	li r5, 8
/* 80B86D28  7F C6 F3 78 */	mr r6, r30
/* 80B86D2C  7F A7 EB 78 */	mr r7, r29
/* 80B86D30  4B FF B2 89 */	bl calcBank__11daNpc_zrA_cFssRsRs
/* 80B86D34  A8 01 00 10 */	lha r0, 0x10(r1)
/* 80B86D38  B0 1A 04 E0 */	sth r0, 0x4e0(r26)
/* 80B86D3C  A8 1A 04 DC */	lha r0, 0x4dc(r26)
/* 80B86D40  B0 1A 08 F0 */	sth r0, 0x8f0(r26)
/* 80B86D44  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80B86D48  B0 1A 08 F2 */	sth r0, 0x8f2(r26)
/* 80B86D4C  A8 1A 04 E0 */	lha r0, 0x4e0(r26)
/* 80B86D50  B0 1A 08 F4 */	sth r0, 0x8f4(r26)
/* 80B86D54  A8 1A 08 F0 */	lha r0, 0x8f0(r26)
/* 80B86D58  B0 1A 04 E4 */	sth r0, 0x4e4(r26)
/* 80B86D5C  A8 1A 08 F2 */	lha r0, 0x8f2(r26)
/* 80B86D60  B0 1A 04 E6 */	sth r0, 0x4e6(r26)
/* 80B86D64  A8 1A 08 F4 */	lha r0, 0x8f4(r26)
/* 80B86D68  B0 1A 04 E8 */	sth r0, 0x4e8(r26)
/* 80B86D6C  7F 43 D3 78 */	mr r3, r26
/* 80B86D70  38 80 00 01 */	li r4, 1
/* 80B86D74  48 00 32 F1 */	bl calcCanoeMove__11daNpc_zrA_cFi
lbl_80B86D78:
/* 80B86D78  38 60 00 01 */	li r3, 1
lbl_80B86D7C:
/* 80B86D7C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80B86D80  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80B86D84  39 61 00 60 */	addi r11, r1, 0x60
/* 80B86D88  4B 7D B4 8D */	bl _restgpr_24
/* 80B86D8C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80B86D90  7C 08 03 A6 */	mtlr r0
/* 80B86D94  38 21 00 70 */	addi r1, r1, 0x70
/* 80B86D98  4E 80 00 20 */	blr 
