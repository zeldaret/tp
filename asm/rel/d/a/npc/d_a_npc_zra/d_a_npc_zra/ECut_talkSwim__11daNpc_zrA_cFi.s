lbl_80B826F0:
/* 80B826F0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80B826F4  7C 08 02 A6 */	mflr r0
/* 80B826F8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80B826FC  39 61 00 60 */	addi r11, r1, 0x60
/* 80B82700  4B 7D FA D0 */	b _savegpr_26
/* 80B82704  7C 7C 1B 78 */	mr r28, r3
/* 80B82708  7C 9A 23 78 */	mr r26, r4
/* 80B8270C  3C 60 80 B9 */	lis r3, m__17daNpc_zrA_Param_c@ha
/* 80B82710  3B E3 C4 58 */	addi r31, r3, m__17daNpc_zrA_Param_c@l
/* 80B82714  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B82718  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B8271C  3B 63 4F F8 */	addi r27, r3, 0x4ff8
/* 80B82720  3B C0 00 00 */	li r30, 0
/* 80B82724  3B A0 FF FF */	li r29, -1
/* 80B82728  7F 63 DB 78 */	mr r3, r27
/* 80B8272C  3C A0 80 B9 */	lis r5, struct_80B8CD30+0x0@ha
/* 80B82730  38 A5 CD 30 */	addi r5, r5, struct_80B8CD30+0x0@l
/* 80B82734  38 A5 01 5B */	addi r5, r5, 0x15b
/* 80B82738  38 C0 00 03 */	li r6, 3
/* 80B8273C  4B 4C 59 B0 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B82740  28 03 00 00 */	cmplwi r3, 0
/* 80B82744  41 82 00 08 */	beq lbl_80B8274C
/* 80B82748  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80B8274C:
/* 80B8274C  7F 63 DB 78 */	mr r3, r27
/* 80B82750  7F 44 D3 78 */	mr r4, r26
/* 80B82754  4B 4C 55 F8 */	b getIsAddvance__16dEvent_manager_cFi
/* 80B82758  2C 03 00 00 */	cmpwi r3, 0
/* 80B8275C  41 82 01 00 */	beq lbl_80B8285C
/* 80B82760  2C 1D 00 01 */	cmpwi r29, 1
/* 80B82764  41 82 00 CC */	beq lbl_80B82830
/* 80B82768  40 80 00 10 */	bge lbl_80B82778
/* 80B8276C  2C 1D 00 00 */	cmpwi r29, 0
/* 80B82770  40 80 00 14 */	bge lbl_80B82784
/* 80B82774  48 00 00 E8 */	b lbl_80B8285C
lbl_80B82778:
/* 80B82778  2C 1D 00 03 */	cmpwi r29, 3
/* 80B8277C  40 80 00 E0 */	bge lbl_80B8285C
/* 80B82780  48 00 00 C4 */	b lbl_80B82844
lbl_80B82784:
/* 80B82784  80 1C 05 FC */	lwz r0, 0x5fc(r28)
/* 80B82788  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80B8278C  90 1C 05 FC */	stw r0, 0x5fc(r28)
/* 80B82790  80 1C 05 FC */	lwz r0, 0x5fc(r28)
/* 80B82794  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80B82798  90 1C 05 FC */	stw r0, 0x5fc(r28)
/* 80B8279C  7F 83 E3 78 */	mr r3, r28
/* 80B827A0  38 80 00 14 */	li r4, 0x14
/* 80B827A4  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80B827A8  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80B827AC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B827B0  7D 89 03 A6 */	mtctr r12
/* 80B827B4  4E 80 04 21 */	bctrl 
/* 80B827B8  7F 83 E3 78 */	mr r3, r28
/* 80B827BC  38 80 00 1D */	li r4, 0x1d
/* 80B827C0  38 BF 00 00 */	addi r5, r31, 0
/* 80B827C4  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 80B827C8  38 A0 00 01 */	li r5, 1
/* 80B827CC  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80B827D0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B827D4  7D 89 03 A6 */	mtctr r12
/* 80B827D8  4E 80 04 21 */	bctrl 
/* 80B827DC  38 00 00 00 */	li r0, 0
/* 80B827E0  90 1C 09 6C */	stw r0, 0x96c(r28)
/* 80B827E4  38 00 00 02 */	li r0, 2
/* 80B827E8  B0 1C 14 E6 */	sth r0, 0x14e6(r28)
/* 80B827EC  C0 3C 15 24 */	lfs f1, 0x1524(r28)
/* 80B827F0  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B827F4  D0 1C 15 44 */	stfs f0, 0x1544(r28)
/* 80B827F8  D0 1C 15 48 */	stfs f0, 0x1548(r28)
/* 80B827FC  D0 3C 15 4C */	stfs f1, 0x154c(r28)
/* 80B82800  38 7C 04 DC */	addi r3, r28, 0x4dc
/* 80B82804  4B 48 A7 08 */	b ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80B82808  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B8280C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B82810  38 9C 15 44 */	addi r4, r28, 0x1544
/* 80B82814  7C 85 23 78 */	mr r5, r4
/* 80B82818  4B 7C 45 54 */	b PSMTXMultVec
/* 80B8281C  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B82820  D0 1C 15 24 */	stfs f0, 0x1524(r28)
/* 80B82824  7F 83 E3 78 */	mr r3, r28
/* 80B82828  4B FF FA A5 */	bl calcWaistAngleStop__11daNpc_zrA_cFv
/* 80B8282C  48 00 00 30 */	b lbl_80B8285C
lbl_80B82830:
/* 80B82830  7F 83 E3 78 */	mr r3, r28
/* 80B82834  80 9C 14 E0 */	lwz r4, 0x14e0(r28)
/* 80B82838  38 A0 00 00 */	li r5, 0
/* 80B8283C  4B 5D 14 E0 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80B82840  48 00 00 1C */	b lbl_80B8285C
lbl_80B82844:
/* 80B82844  A8 1C 04 DC */	lha r0, 0x4dc(r28)
/* 80B82848  B0 1C 15 36 */	sth r0, 0x1536(r28)
/* 80B8284C  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80B82850  B0 1C 15 38 */	sth r0, 0x1538(r28)
/* 80B82854  A8 1C 04 E0 */	lha r0, 0x4e0(r28)
/* 80B82858  B0 1C 15 3A */	sth r0, 0x153a(r28)
lbl_80B8285C:
/* 80B8285C  2C 1D 00 01 */	cmpwi r29, 1
/* 80B82860  41 82 01 90 */	beq lbl_80B829F0
/* 80B82864  40 80 00 10 */	bge lbl_80B82874
/* 80B82868  2C 1D 00 00 */	cmpwi r29, 0
/* 80B8286C  40 80 00 14 */	bge lbl_80B82880
/* 80B82870  48 00 03 C4 */	b lbl_80B82C34
lbl_80B82874:
/* 80B82874  2C 1D 00 03 */	cmpwi r29, 3
/* 80B82878  40 80 03 BC */	bge lbl_80B82C34
/* 80B8287C  48 00 02 48 */	b lbl_80B82AC4
lbl_80B82880:
/* 80B82880  7F 83 E3 78 */	mr r3, r28
/* 80B82884  4B FF FA 7D */	bl calcModulation__11daNpc_zrA_cFv
/* 80B82888  A8 1C 04 DC */	lha r0, 0x4dc(r28)
/* 80B8288C  2C 00 00 00 */	cmpwi r0, 0
/* 80B82890  40 82 00 58 */	bne lbl_80B828E8
/* 80B82894  A8 1C 04 E0 */	lha r0, 0x4e0(r28)
/* 80B82898  2C 00 00 00 */	cmpwi r0, 0
/* 80B8289C  40 82 00 4C */	bne lbl_80B828E8
/* 80B828A0  38 7C 15 44 */	addi r3, r28, 0x1544
/* 80B828A4  4B 7C 48 94 */	b PSVECSquareMag
/* 80B828A8  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 80B828AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B828B0  40 80 00 38 */	bge lbl_80B828E8
/* 80B828B4  C0 3C 15 6C */	lfs f1, 0x156c(r28)
/* 80B828B8  C0 1F 07 C4 */	lfs f0, 0x7c4(r31)
/* 80B828BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B828C0  4C 40 13 82 */	cror 2, 0, 2
/* 80B828C4  40 82 00 24 */	bne lbl_80B828E8
/* 80B828C8  80 1C 14 EC */	lwz r0, 0x14ec(r28)
/* 80B828CC  2C 00 00 31 */	cmpwi r0, 0x31
/* 80B828D0  41 82 00 18 */	beq lbl_80B828E8
/* 80B828D4  3B C0 00 01 */	li r30, 1
/* 80B828D8  7F 83 E3 78 */	mr r3, r28
/* 80B828DC  38 80 00 02 */	li r4, 2
/* 80B828E0  4B FF BE 15 */	bl setLookMode__11daNpc_zrA_cFi
/* 80B828E4  48 00 03 54 */	b lbl_80B82C38
lbl_80B828E8:
/* 80B828E8  38 7C 04 DC */	addi r3, r28, 0x4dc
/* 80B828EC  38 80 00 00 */	li r4, 0
/* 80B828F0  3B 7F 00 00 */	addi r27, r31, 0
/* 80B828F4  A8 BB 00 74 */	lha r5, 0x74(r27)
/* 80B828F8  4B 6E E2 98 */	b cLib_chaseAngleS__FPsss
/* 80B828FC  38 7C 04 E0 */	addi r3, r28, 0x4e0
/* 80B82900  38 80 00 00 */	li r4, 0
/* 80B82904  A8 BB 00 74 */	lha r5, 0x74(r27)
/* 80B82908  4B 6E E2 88 */	b cLib_chaseAngleS__FPsss
/* 80B8290C  7F 83 E3 78 */	mr r3, r28
/* 80B82910  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B82914  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B82918  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B8291C  4B 49 7D F4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B82920  7C 64 1B 78 */	mr r4, r3
/* 80B82924  38 7C 04 DE */	addi r3, r28, 0x4de
/* 80B82928  A8 BB 00 74 */	lha r5, 0x74(r27)
/* 80B8292C  4B 6E E2 64 */	b cLib_chaseAngleS__FPsss
/* 80B82930  38 7C 15 6C */	addi r3, r28, 0x156c
/* 80B82934  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 80B82938  C0 1B 00 84 */	lfs f0, 0x84(r27)
/* 80B8293C  EC 40 08 28 */	fsubs f2, f0, f1
/* 80B82940  C0 1F 07 C0 */	lfs f0, 0x7c0(r31)
/* 80B82944  EC 42 00 24 */	fdivs f2, f2, f0
/* 80B82948  4B 6E DD F8 */	b cLib_chaseF__FPfff
/* 80B8294C  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B82950  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B82954  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B82958  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B8295C  38 7C 15 44 */	addi r3, r28, 0x1544
/* 80B82960  38 81 00 38 */	addi r4, r1, 0x38
/* 80B82964  C0 3F 07 4C */	lfs f1, 0x74c(r31)
/* 80B82968  4B 6E DE 44 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 80B8296C  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80B82970  38 9C 15 44 */	addi r4, r28, 0x1544
/* 80B82974  7C 65 1B 78 */	mr r5, r3
/* 80B82978  4B 7C 47 18 */	b PSVECAdd
/* 80B8297C  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80B82980  38 81 00 08 */	addi r4, r1, 8
/* 80B82984  4B 49 AF 0C */	b fopAcM_getWaterY__FPC4cXyzPf
/* 80B82988  2C 03 00 00 */	cmpwi r3, 0
/* 80B8298C  41 82 00 30 */	beq lbl_80B829BC
/* 80B82990  C0 5C 04 D4 */	lfs f2, 0x4d4(r28)
/* 80B82994  C0 21 00 08 */	lfs f1, 8(r1)
/* 80B82998  C0 1B 00 88 */	lfs f0, 0x88(r27)
/* 80B8299C  EC 21 00 28 */	fsubs f1, f1, f0
/* 80B829A0  C0 1F 07 C8 */	lfs f0, 0x7c8(r31)
/* 80B829A4  EC 21 00 28 */	fsubs f1, f1, f0
/* 80B829A8  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80B829AC  40 81 00 10 */	ble lbl_80B829BC
/* 80B829B0  38 7C 04 D4 */	addi r3, r28, 0x4d4
/* 80B829B4  C0 5F 00 F4 */	lfs f2, 0xf4(r31)
/* 80B829B8  4B 6E DD 88 */	b cLib_chaseF__FPfff
lbl_80B829BC:
/* 80B829BC  A8 1C 04 DC */	lha r0, 0x4dc(r28)
/* 80B829C0  B0 1C 08 F0 */	sth r0, 0x8f0(r28)
/* 80B829C4  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80B829C8  B0 1C 08 F2 */	sth r0, 0x8f2(r28)
/* 80B829CC  A8 1C 04 E0 */	lha r0, 0x4e0(r28)
/* 80B829D0  B0 1C 08 F4 */	sth r0, 0x8f4(r28)
/* 80B829D4  A8 1C 08 F0 */	lha r0, 0x8f0(r28)
/* 80B829D8  B0 1C 04 E4 */	sth r0, 0x4e4(r28)
/* 80B829DC  A8 1C 08 F2 */	lha r0, 0x8f2(r28)
/* 80B829E0  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80B829E4  A8 1C 08 F4 */	lha r0, 0x8f4(r28)
/* 80B829E8  B0 1C 04 E8 */	sth r0, 0x4e8(r28)
/* 80B829EC  48 00 02 4C */	b lbl_80B82C38
lbl_80B829F0:
/* 80B829F0  7F 83 E3 78 */	mr r3, r28
/* 80B829F4  4B FF F9 0D */	bl calcModulation__11daNpc_zrA_cFv
/* 80B829F8  7F 83 E3 78 */	mr r3, r28
/* 80B829FC  38 80 00 00 */	li r4, 0
/* 80B82A00  38 A0 00 01 */	li r5, 1
/* 80B82A04  38 C0 00 00 */	li r6, 0
/* 80B82A08  4B 5D 13 7C */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B82A0C  2C 03 00 00 */	cmpwi r3, 0
/* 80B82A10  41 82 02 28 */	beq lbl_80B82C38
/* 80B82A14  88 1C 15 76 */	lbz r0, 0x1576(r28)
/* 80B82A18  28 00 00 00 */	cmplwi r0, 0
/* 80B82A1C  40 82 00 34 */	bne lbl_80B82A50
/* 80B82A20  7F 83 E3 78 */	mr r3, r28
/* 80B82A24  38 80 00 1A */	li r4, 0x1a
/* 80B82A28  38 BF 00 00 */	addi r5, r31, 0
/* 80B82A2C  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 80B82A30  C0 1F 07 4C */	lfs f0, 0x74c(r31)
/* 80B82A34  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B82A38  38 A0 00 01 */	li r5, 1
/* 80B82A3C  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80B82A40  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B82A44  7D 89 03 A6 */	mtctr r12
/* 80B82A48  4E 80 04 21 */	bctrl 
/* 80B82A4C  48 00 00 30 */	b lbl_80B82A7C
lbl_80B82A50:
/* 80B82A50  7F 83 E3 78 */	mr r3, r28
/* 80B82A54  38 80 00 18 */	li r4, 0x18
/* 80B82A58  38 BF 00 00 */	addi r5, r31, 0
/* 80B82A5C  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 80B82A60  C0 1F 07 4C */	lfs f0, 0x74c(r31)
/* 80B82A64  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B82A68  38 A0 00 01 */	li r5, 1
/* 80B82A6C  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80B82A70  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B82A74  7D 89 03 A6 */	mtctr r12
/* 80B82A78  4E 80 04 21 */	bctrl 
lbl_80B82A7C:
/* 80B82A7C  A8 1C 04 DC */	lha r0, 0x4dc(r28)
/* 80B82A80  B0 1C 15 36 */	sth r0, 0x1536(r28)
/* 80B82A84  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80B82A88  B0 1C 15 38 */	sth r0, 0x1538(r28)
/* 80B82A8C  A8 1C 04 E0 */	lha r0, 0x4e0(r28)
/* 80B82A90  B0 1C 15 3A */	sth r0, 0x153a(r28)
/* 80B82A94  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B82A98  D0 1C 15 28 */	stfs f0, 0x1528(r28)
/* 80B82A9C  C0 3C 15 28 */	lfs f1, 0x1528(r28)
/* 80B82AA0  38 7F 00 00 */	addi r3, r31, 0
/* 80B82AA4  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80B82AA8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B82AAC  D0 1C 15 24 */	stfs f0, 0x1524(r28)
/* 80B82AB0  7F 83 E3 78 */	mr r3, r28
/* 80B82AB4  38 80 00 00 */	li r4, 0
/* 80B82AB8  4B FF BC 3D */	bl setLookMode__11daNpc_zrA_cFi
/* 80B82ABC  3B C0 00 01 */	li r30, 1
/* 80B82AC0  48 00 01 78 */	b lbl_80B82C38
lbl_80B82AC4:
/* 80B82AC4  7F 83 E3 78 */	mr r3, r28
/* 80B82AC8  4B FF F9 B5 */	bl resetModulation__11daNpc_zrA_cFv
/* 80B82ACC  38 7F 00 00 */	addi r3, r31, 0
/* 80B82AD0  AB 63 00 74 */	lha r27, 0x74(r3)
/* 80B82AD4  C0 23 00 84 */	lfs f1, 0x84(r3)
/* 80B82AD8  38 7C 15 6C */	addi r3, r28, 0x156c
/* 80B82ADC  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B82AE0  EC 41 00 28 */	fsubs f2, f1, f0
/* 80B82AE4  C0 1F 07 C0 */	lfs f0, 0x7c0(r31)
/* 80B82AE8  EC 42 00 24 */	fdivs f2, f2, f0
/* 80B82AEC  4B 6E DC 54 */	b cLib_chaseF__FPfff
/* 80B82AF0  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80B82AF4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B82AF8  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80B82AFC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B82B00  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80B82B04  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B82B08  38 7C 0C 18 */	addi r3, r28, 0xc18
/* 80B82B0C  38 81 00 14 */	addi r4, r1, 0x14
/* 80B82B10  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80B82B14  4B FF 59 F9 */	bl getDstPosDst2__16daNpc_zrA_Path_cF4cXyzR4cXyz
/* 80B82B18  38 61 00 2C */	addi r3, r1, 0x2c
/* 80B82B1C  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80B82B20  4B 6E E1 54 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80B82B24  B0 61 00 0C */	sth r3, 0xc(r1)
/* 80B82B28  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80B82B2C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80B82B30  4B 6E E0 D4 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B82B34  B0 61 00 0E */	sth r3, 0xe(r1)
/* 80B82B38  A8 1C 04 E0 */	lha r0, 0x4e0(r28)
/* 80B82B3C  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80B82B40  7F 83 E3 78 */	mr r3, r28
/* 80B82B44  38 81 00 0C */	addi r4, r1, 0xc
/* 80B82B48  38 BC 15 36 */	addi r5, r28, 0x1536
/* 80B82B4C  38 C0 00 08 */	li r6, 8
/* 80B82B50  7F 67 DB 78 */	mr r7, r27
/* 80B82B54  4B FF F9 A1 */	bl calcSwimAngle__11daNpc_zrA_cFR5csXyzR5csXyzss
/* 80B82B58  A8 1C 04 DC */	lha r0, 0x4dc(r28)
/* 80B82B5C  B0 1C 08 F0 */	sth r0, 0x8f0(r28)
/* 80B82B60  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80B82B64  B0 1C 08 F2 */	sth r0, 0x8f2(r28)
/* 80B82B68  A8 1C 04 E0 */	lha r0, 0x4e0(r28)
/* 80B82B6C  B0 1C 08 F4 */	sth r0, 0x8f4(r28)
/* 80B82B70  A8 1C 08 F0 */	lha r0, 0x8f0(r28)
/* 80B82B74  B0 1C 04 E4 */	sth r0, 0x4e4(r28)
/* 80B82B78  A8 1C 08 F2 */	lha r0, 0x8f2(r28)
/* 80B82B7C  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80B82B80  A8 1C 08 F4 */	lha r0, 0x8f4(r28)
/* 80B82B84  B0 1C 04 E8 */	sth r0, 0x4e8(r28)
/* 80B82B88  80 1C 14 EC */	lwz r0, 0x14ec(r28)
/* 80B82B8C  2C 00 00 2F */	cmpwi r0, 0x2f
/* 80B82B90  41 82 00 74 */	beq lbl_80B82C04
/* 80B82B94  3B C0 00 01 */	li r30, 1
/* 80B82B98  7F 83 E3 78 */	mr r3, r28
/* 80B82B9C  4B FF F7 3D */	bl calcWaistAngleCheck__11daNpc_zrA_cFv
/* 80B82BA0  2C 03 00 00 */	cmpwi r3, 0
/* 80B82BA4  40 82 00 28 */	bne lbl_80B82BCC
/* 80B82BA8  7F 83 E3 78 */	mr r3, r28
/* 80B82BAC  4B FF F6 8D */	bl calcWaistAngleInit__11daNpc_zrA_cFv
/* 80B82BB0  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B82BB4  D0 1C 15 28 */	stfs f0, 0x1528(r28)
/* 80B82BB8  C0 3C 15 28 */	lfs f1, 0x1528(r28)
/* 80B82BBC  38 7F 00 00 */	addi r3, r31, 0
/* 80B82BC0  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80B82BC4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B82BC8  D0 1C 15 24 */	stfs f0, 0x1524(r28)
lbl_80B82BCC:
/* 80B82BCC  C0 3C 15 24 */	lfs f1, 0x1524(r28)
/* 80B82BD0  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B82BD4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B82BD8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B82BDC  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80B82BE0  7F 83 E3 78 */	mr r3, r28
/* 80B82BE4  38 81 00 20 */	addi r4, r1, 0x20
/* 80B82BE8  4B FF F9 9D */	bl calcSwimPos__11daNpc_zrA_cFR4cXyz
/* 80B82BEC  80 1C 05 FC */	lwz r0, 0x5fc(r28)
/* 80B82BF0  60 00 00 02 */	ori r0, r0, 2
/* 80B82BF4  90 1C 05 FC */	stw r0, 0x5fc(r28)
/* 80B82BF8  80 1C 05 FC */	lwz r0, 0x5fc(r28)
/* 80B82BFC  60 00 00 04 */	ori r0, r0, 4
/* 80B82C00  90 1C 05 FC */	stw r0, 0x5fc(r28)
lbl_80B82C04:
/* 80B82C04  80 1C 05 FC */	lwz r0, 0x5fc(r28)
/* 80B82C08  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 80B82C0C  41 82 00 2C */	beq lbl_80B82C38
/* 80B82C10  C0 5C 04 D4 */	lfs f2, 0x4d4(r28)
/* 80B82C14  C0 3C 07 9C */	lfs f1, 0x79c(r28)
/* 80B82C18  38 7F 00 00 */	addi r3, r31, 0
/* 80B82C1C  C0 03 00 88 */	lfs f0, 0x88(r3)
/* 80B82C20  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B82C24  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80B82C28  40 81 00 10 */	ble lbl_80B82C38
/* 80B82C2C  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80B82C30  48 00 00 08 */	b lbl_80B82C38
lbl_80B82C34:
/* 80B82C34  3B C0 00 01 */	li r30, 1
lbl_80B82C38:
/* 80B82C38  7F C3 F3 78 */	mr r3, r30
/* 80B82C3C  39 61 00 60 */	addi r11, r1, 0x60
/* 80B82C40  4B 7D F5 DC */	b _restgpr_26
/* 80B82C44  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80B82C48  7C 08 03 A6 */	mtlr r0
/* 80B82C4C  38 21 00 60 */	addi r1, r1, 0x60
/* 80B82C50  4E 80 00 20 */	blr 
