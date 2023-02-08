lbl_80A548E4:
/* 80A548E4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A548E8  7C 08 02 A6 */	mflr r0
/* 80A548EC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A548F0  39 61 00 30 */	addi r11, r1, 0x30
/* 80A548F4  4B 90 D8 E9 */	bl _savegpr_29
/* 80A548F8  7C 7D 1B 78 */	mr r29, r3
/* 80A548FC  3C 80 80 A6 */	lis r4, lit_4030@ha /* 0x80A5DEFC@ha */
/* 80A54900  3B E4 DE FC */	addi r31, r4, lit_4030@l /* 0x80A5DEFC@l */
/* 80A54904  A8 03 05 EA */	lha r0, 0x5ea(r3)
/* 80A54908  2C 00 00 01 */	cmpwi r0, 1
/* 80A5490C  41 82 00 3C */	beq lbl_80A54948
/* 80A54910  40 80 00 48 */	bge lbl_80A54958
/* 80A54914  2C 00 00 00 */	cmpwi r0, 0
/* 80A54918  40 80 00 08 */	bge lbl_80A54920
/* 80A5491C  48 00 00 3C */	b lbl_80A54958
lbl_80A54920:
/* 80A54920  38 80 00 1A */	li r4, 0x1a
/* 80A54924  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80A54928  38 A0 00 02 */	li r5, 2
/* 80A5492C  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A54930  4B FF 48 75 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A54934  38 00 00 01 */	li r0, 1
/* 80A54938  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A5493C  38 00 00 1E */	li r0, 0x1e
/* 80A54940  B0 1D 05 F0 */	sth r0, 0x5f0(r29)
/* 80A54944  48 00 00 14 */	b lbl_80A54958
lbl_80A54948:
/* 80A54948  A8 1D 05 F0 */	lha r0, 0x5f0(r29)
/* 80A5494C  2C 00 00 00 */	cmpwi r0, 0
/* 80A54950  40 82 00 08 */	bne lbl_80A54958
/* 80A54954  4B 5C 53 29 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80A54958:
/* 80A54958  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A5495C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A54960  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 80A54964  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A54968  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A5496C  80 63 00 00 */	lwz r3, 0(r3)
/* 80A54970  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80A54974  4B 5B 7A 69 */	bl mDoMtx_YrotS__FPA4_fs
/* 80A54978  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A5497C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A54980  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A54984  C0 1F 01 10 */	lfs f0, 0x110(r31)
/* 80A54988  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A5498C  38 61 00 14 */	addi r3, r1, 0x14
/* 80A54990  38 81 00 08 */	addi r4, r1, 8
/* 80A54994  4B 81 C5 59 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80A54998  38 61 00 08 */	addi r3, r1, 8
/* 80A5499C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80A549A0  7C 65 1B 78 */	mr r5, r3
/* 80A549A4  4B 8F 26 ED */	bl PSVECAdd
/* 80A549A8  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 80A549AC  C0 01 00 08 */	lfs f0, 8(r1)
/* 80A549B0  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A549B4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80A549B8  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80A549BC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80A549C0  EC 42 00 28 */	fsubs f2, f2, f0
/* 80A549C4  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80A549C8  4B 81 2C AD */	bl cM_atan2s__Fff
/* 80A549CC  7C 64 1B 78 */	mr r4, r3
/* 80A549D0  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80A549D4  38 A0 00 01 */	li r5, 1
/* 80A549D8  38 C0 20 00 */	li r6, 0x2000
/* 80A549DC  4B 81 BC 2D */	bl cLib_addCalcAngleS2__FPssss
/* 80A549E0  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80A549E4  3C 80 80 A6 */	lis r4, l_HIO@ha /* 0x80A5FEB8@ha */
/* 80A549E8  38 84 FE B8 */	addi r4, r4, l_HIO@l /* 0x80A5FEB8@l */
/* 80A549EC  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 80A549F0  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A549F4  C0 7F 00 CC */	lfs f3, 0xcc(r31)
/* 80A549F8  4B 81 B0 45 */	bl cLib_addCalc2__FPffff
/* 80A549FC  39 61 00 30 */	addi r11, r1, 0x30
/* 80A54A00  4B 90 D8 29 */	bl _restgpr_29
/* 80A54A04  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A54A08  7C 08 03 A6 */	mtlr r0
/* 80A54A0C  38 21 00 30 */	addi r1, r1, 0x30
/* 80A54A10  4E 80 00 20 */	blr 
