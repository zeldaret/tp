lbl_80A4B7BC:
/* 80A4B7BC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A4B7C0  7C 08 02 A6 */	mflr r0
/* 80A4B7C4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A4B7C8  39 61 00 40 */	addi r11, r1, 0x40
/* 80A4B7CC  4B 91 6A 11 */	bl _savegpr_29
/* 80A4B7D0  7C 7E 1B 78 */	mr r30, r3
/* 80A4B7D4  3C 60 80 A6 */	lis r3, lit_4030@ha /* 0x80A5DEFC@ha */
/* 80A4B7D8  3B E3 DE FC */	addi r31, r3, lit_4030@l /* 0x80A5DEFC@l */
/* 80A4B7DC  A8 1E 05 EA */	lha r0, 0x5ea(r30)
/* 80A4B7E0  2C 00 00 01 */	cmpwi r0, 1
/* 80A4B7E4  41 82 00 90 */	beq lbl_80A4B874
/* 80A4B7E8  40 80 00 C4 */	bge lbl_80A4B8AC
/* 80A4B7EC  2C 00 00 00 */	cmpwi r0, 0
/* 80A4B7F0  40 80 00 08 */	bge lbl_80A4B7F8
/* 80A4B7F4  48 00 00 B8 */	b lbl_80A4B8AC
lbl_80A4B7F8:
/* 80A4B7F8  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80A4B7FC  4B 81 C1 59 */	bl cM_rndF__Ff
/* 80A4B800  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80A4B804  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4B808  40 80 00 20 */	bge lbl_80A4B828
/* 80A4B80C  7F C3 F3 78 */	mr r3, r30
/* 80A4B810  38 80 00 1E */	li r4, 0x1e
/* 80A4B814  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80A4B818  38 A0 00 00 */	li r5, 0
/* 80A4B81C  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A4B820  4B FF D9 85 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4B824  48 00 00 1C */	b lbl_80A4B840
lbl_80A4B828:
/* 80A4B828  7F C3 F3 78 */	mr r3, r30
/* 80A4B82C  38 80 00 05 */	li r4, 5
/* 80A4B830  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80A4B834  38 A0 00 00 */	li r5, 0
/* 80A4B838  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A4B83C  4B FF D9 69 */	bl anm_init__FP12npc_ks_classifUcf
lbl_80A4B840:
/* 80A4B840  38 00 00 01 */	li r0, 1
/* 80A4B844  B0 1E 05 EA */	sth r0, 0x5ea(r30)
/* 80A4B848  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050014@ha */
/* 80A4B84C  38 03 00 14 */	addi r0, r3, 0x0014 /* 0x00050014@l */
/* 80A4B850  90 01 00 08 */	stw r0, 8(r1)
/* 80A4B854  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A4B858  38 81 00 08 */	addi r4, r1, 8
/* 80A4B85C  38 A0 FF FF */	li r5, -1
/* 80A4B860  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A4B864  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A4B868  7D 89 03 A6 */	mtctr r12
/* 80A4B86C  4E 80 04 21 */	bctrl 
/* 80A4B870  48 00 00 3C */	b lbl_80A4B8AC
lbl_80A4B874:
/* 80A4B874  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A4B878  38 80 00 01 */	li r4, 1
/* 80A4B87C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80A4B880  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A4B884  40 82 00 18 */	bne lbl_80A4B89C
/* 80A4B888  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80A4B88C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A4B890  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A4B894  41 82 00 08 */	beq lbl_80A4B89C
/* 80A4B898  38 80 00 00 */	li r4, 0
lbl_80A4B89C:
/* 80A4B89C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80A4B8A0  41 82 00 0C */	beq lbl_80A4B8AC
/* 80A4B8A4  38 00 00 00 */	li r0, 0
/* 80A4B8A8  B0 1E 05 EA */	sth r0, 0x5ea(r30)
lbl_80A4B8AC:
/* 80A4B8AC  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80A4B8B0  A8 9E 05 C8 */	lha r4, 0x5c8(r30)
/* 80A4B8B4  38 A0 00 02 */	li r5, 2
/* 80A4B8B8  38 C0 08 00 */	li r6, 0x800
/* 80A4B8BC  4B 82 4D 4D */	bl cLib_addCalcAngleS2__FPssss
/* 80A4B8C0  4B FF D7 95 */	bl checkDoorDemo__Fv
/* 80A4B8C4  2C 03 00 00 */	cmpwi r3, 0
/* 80A4B8C8  41 82 01 34 */	beq lbl_80A4B9FC
/* 80A4B8CC  3C 60 80 45 */	lis r3, struct_80450D64+0x2@ha /* 0x80450D66@ha */
/* 80A4B8D0  38 63 0D 66 */	addi r3, r3, struct_80450D64+0x2@l /* 0x80450D66@l */
/* 80A4B8D4  88 63 00 00 */	lbz r3, 0(r3)
/* 80A4B8D8  7C 63 07 74 */	extsb r3, r3
/* 80A4B8DC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80A4B8E0  7C 00 07 75 */	extsb. r0, r0
/* 80A4B8E4  40 82 01 18 */	bne lbl_80A4B9FC
/* 80A4B8E8  2C 03 00 04 */	cmpwi r3, 4
/* 80A4B8EC  40 82 01 10 */	bne lbl_80A4B9FC
/* 80A4B8F0  38 00 00 64 */	li r0, 0x64
/* 80A4B8F4  B0 1E 05 E8 */	sth r0, 0x5e8(r30)
/* 80A4B8F8  38 00 00 00 */	li r0, 0
/* 80A4B8FC  B0 1E 05 EA */	sth r0, 0x5ea(r30)
/* 80A4B900  90 1E 09 04 */	stw r0, 0x904(r30)
/* 80A4B904  38 00 00 01 */	li r0, 1
/* 80A4B908  98 1E 0A EC */	stb r0, 0xaec(r30)
/* 80A4B90C  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80A4B910  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80A4B914  41 82 00 E8 */	beq lbl_80A4B9FC
/* 80A4B918  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A4B91C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A4B920  83 A3 5D 74 */	lwz r29, 0x5d74(r3)
/* 80A4B924  C0 3D 00 D8 */	lfs f1, 0xd8(r29)
/* 80A4B928  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 80A4B92C  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A4B930  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80A4B934  C0 5D 00 E0 */	lfs f2, 0xe0(r29)
/* 80A4B938  C0 1D 00 EC */	lfs f0, 0xec(r29)
/* 80A4B93C  EC 42 00 28 */	fsubs f2, f2, f0
/* 80A4B940  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80A4B944  4B 81 BD 31 */	bl cM_atan2s__Fff
/* 80A4B948  7C 64 1B 78 */	mr r4, r3
/* 80A4B94C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A4B950  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A4B954  80 63 00 00 */	lwz r3, 0(r3)
/* 80A4B958  4B 5C 0A 85 */	bl mDoMtx_YrotS__FPA4_fs
/* 80A4B95C  88 1E 05 B6 */	lbz r0, 0x5b6(r30)
/* 80A4B960  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A4B964  41 82 00 0C */	beq lbl_80A4B970
/* 80A4B968  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80A4B96C  48 00 00 08 */	b lbl_80A4B974
lbl_80A4B970:
/* 80A4B970  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
lbl_80A4B974:
/* 80A4B974  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A4B978  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80A4B97C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A4B980  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80A4B984  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A4B988  38 61 00 24 */	addi r3, r1, 0x24
/* 80A4B98C  38 81 00 18 */	addi r4, r1, 0x18
/* 80A4B990  4B 82 55 5D */	bl MtxPosition__FP4cXyzP4cXyz
/* 80A4B994  38 61 00 0C */	addi r3, r1, 0xc
/* 80A4B998  38 9D 00 D8 */	addi r4, r29, 0xd8
/* 80A4B99C  38 A1 00 18 */	addi r5, r1, 0x18
/* 80A4B9A0  4B 81 B1 45 */	bl __pl__4cXyzCFRC3Vec
/* 80A4B9A4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80A4B9A8  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80A4B9AC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80A4B9B0  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80A4B9B4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80A4B9B8  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80A4B9BC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80A4B9C0  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 80A4B9C4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80A4B9C8  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 80A4B9CC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80A4B9D0  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 80A4B9D4  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80A4B9D8  B0 1E 04 C8 */	sth r0, 0x4c8(r30)
/* 80A4B9DC  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80A4B9E0  B0 1E 04 CA */	sth r0, 0x4ca(r30)
/* 80A4B9E4  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 80A4B9E8  B0 1E 04 CC */	sth r0, 0x4cc(r30)
/* 80A4B9EC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80A4B9F0  98 1E 04 CE */	stb r0, 0x4ce(r30)
/* 80A4B9F4  88 1E 04 E3 */	lbz r0, 0x4e3(r30)
/* 80A4B9F8  98 1E 04 CF */	stb r0, 0x4cf(r30)
lbl_80A4B9FC:
/* 80A4B9FC  39 61 00 40 */	addi r11, r1, 0x40
/* 80A4BA00  4B 91 68 29 */	bl _restgpr_29
/* 80A4BA04  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A4BA08  7C 08 03 A6 */	mtlr r0
/* 80A4BA0C  38 21 00 40 */	addi r1, r1, 0x40
/* 80A4BA10  4E 80 00 20 */	blr 
