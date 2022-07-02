lbl_805CA780:
/* 805CA780  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805CA784  7C 08 02 A6 */	mflr r0
/* 805CA788  90 01 00 34 */	stw r0, 0x34(r1)
/* 805CA78C  39 61 00 30 */	addi r11, r1, 0x30
/* 805CA790  4B D9 7A 4D */	bl _savegpr_29
/* 805CA794  7C 7D 1B 78 */	mr r29, r3
/* 805CA798  3C 60 80 5D */	lis r3, lit_3844@ha /* 0x805CAD5C@ha */
/* 805CA79C  3B E3 AD 5C */	addi r31, r3, lit_3844@l /* 0x805CAD5C@l */
/* 805CA7A0  80 7D 06 EC */	lwz r3, 0x6ec(r29)
/* 805CA7A4  83 C3 00 04 */	lwz r30, 4(r3)
/* 805CA7A8  88 1D 06 36 */	lbz r0, 0x636(r29)
/* 805CA7AC  28 00 00 00 */	cmplwi r0, 0
/* 805CA7B0  40 82 00 B0 */	bne lbl_805CA860
/* 805CA7B4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 805CA7B8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 805CA7BC  38 80 00 00 */	li r4, 0
/* 805CA7C0  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 805CA7C4  38 DD 01 0C */	addi r6, r29, 0x10c
/* 805CA7C8  4B BD 8F FD */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 805CA7CC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 805CA7D0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 805CA7D4  80 9E 00 04 */	lwz r4, 4(r30)
/* 805CA7D8  38 BD 01 0C */	addi r5, r29, 0x10c
/* 805CA7DC  4B BD A5 C5 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 805CA7E0  88 1D 05 B7 */	lbz r0, 0x5b7(r29)
/* 805CA7E4  28 00 00 01 */	cmplwi r0, 1
/* 805CA7E8  40 82 00 50 */	bne lbl_805CA838
/* 805CA7EC  80 9E 00 04 */	lwz r4, 4(r30)
/* 805CA7F0  80 7D 06 04 */	lwz r3, 0x604(r29)
/* 805CA7F4  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 805CA7F8  38 84 00 58 */	addi r4, r4, 0x58
/* 805CA7FC  4B A4 2F AD */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 805CA800  88 1D 06 37 */	lbz r0, 0x637(r29)
/* 805CA804  28 00 00 00 */	cmplwi r0, 0
/* 805CA808  41 82 00 30 */	beq lbl_805CA838
/* 805CA80C  80 7D 06 EC */	lwz r3, 0x6ec(r29)
/* 805CA810  80 63 00 04 */	lwz r3, 4(r3)
/* 805CA814  80 63 00 04 */	lwz r3, 4(r3)
/* 805CA818  80 63 00 60 */	lwz r3, 0x60(r3)
/* 805CA81C  80 63 00 08 */	lwz r3, 8(r3)
/* 805CA820  80 63 00 08 */	lwz r3, 8(r3)
/* 805CA824  28 03 00 00 */	cmplwi r3, 0
/* 805CA828  41 82 00 10 */	beq lbl_805CA838
/* 805CA82C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 805CA830  60 00 00 01 */	ori r0, r0, 1
/* 805CA834  90 03 00 0C */	stw r0, 0xc(r3)
lbl_805CA838:
/* 805CA838  80 7D 06 EC */	lwz r3, 0x6ec(r29)
/* 805CA83C  4B A4 69 85 */	bl entryDL__16mDoExt_McaMorfSOFv
/* 805CA840  88 1D 05 B7 */	lbz r0, 0x5b7(r29)
/* 805CA844  28 00 00 01 */	cmplwi r0, 1
/* 805CA848  40 82 00 18 */	bne lbl_805CA860
/* 805CA84C  80 7E 00 04 */	lwz r3, 4(r30)
/* 805CA850  38 63 00 58 */	addi r3, r3, 0x58
/* 805CA854  80 9D 06 04 */	lwz r4, 0x604(r29)
/* 805CA858  80 84 00 14 */	lwz r4, 0x14(r4)
/* 805CA85C  4B D6 50 25 */	bl removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
lbl_805CA860:
/* 805CA860  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 805CA864  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 805CA868  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 805CA86C  EC 21 00 2A */	fadds f1, f1, f0
/* 805CA870  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 805CA874  D0 01 00 08 */	stfs f0, 8(r1)
/* 805CA878  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805CA87C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 805CA880  88 1D 05 B7 */	lbz r0, 0x5b7(r29)
/* 805CA884  28 00 00 00 */	cmplwi r0, 0
/* 805CA888  41 82 00 48 */	beq lbl_805CA8D0
/* 805CA88C  C0 BF 00 00 */	lfs f5, 0(r31)
/* 805CA890  D0 BD 04 50 */	stfs f5, 0x450(r29)
/* 805CA894  80 7D 06 E8 */	lwz r3, 0x6e8(r29)
/* 805CA898  38 80 00 00 */	li r4, 0
/* 805CA89C  7F C5 F3 78 */	mr r5, r30
/* 805CA8A0  38 C1 00 08 */	addi r6, r1, 8
/* 805CA8A4  C0 3F 01 5C */	lfs f1, 0x15c(r31)
/* 805CA8A8  C0 5F 00 04 */	lfs f2, 4(r31)
/* 805CA8AC  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 805CA8B0  C0 9D 07 C8 */	lfs f4, 0x7c8(r29)
/* 805CA8B4  38 FD 08 20 */	addi r7, r29, 0x820
/* 805CA8B8  39 1D 01 0C */	addi r8, r29, 0x10c
/* 805CA8BC  39 20 00 00 */	li r9, 0
/* 805CA8C0  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 805CA8C4  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 805CA8C8  4B A6 40 49 */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 805CA8CC  90 7D 06 E8 */	stw r3, 0x6e8(r29)
lbl_805CA8D0:
/* 805CA8D0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805CA8D4  C0 3D 05 F8 */	lfs f1, 0x5f8(r29)
/* 805CA8D8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805CA8DC  41 82 00 20 */	beq lbl_805CA8FC
/* 805CA8E0  FC 00 08 1E */	fctiwz f0, f1
/* 805CA8E4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805CA8E8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805CA8EC  3C 60 80 45 */	lis r3, mBlureFlag__13mDoGph_gInf_c+0x1@ha /* 0x80450BE5@ha */
/* 805CA8F0  98 03 0B E5 */	stb r0, mBlureFlag__13mDoGph_gInf_c+0x1@l(r3)  /* 0x80450BE5@l */
/* 805CA8F4  4B A3 D7 85 */	bl onBlure__13mDoGph_gInf_cFv
/* 805CA8F8  48 00 00 10 */	b lbl_805CA908
lbl_805CA8FC:
/* 805CA8FC  38 00 00 00 */	li r0, 0
/* 805CA900  3C 60 80 45 */	lis r3, mBlureFlag__13mDoGph_gInf_c+0x0@ha /* 0x80450BE4@ha */
/* 805CA904  98 03 0B E4 */	stb r0, mBlureFlag__13mDoGph_gInf_c+0x0@l(r3)  /* 0x80450BE4@l */
lbl_805CA908:
/* 805CA908  38 60 00 01 */	li r3, 1
/* 805CA90C  39 61 00 30 */	addi r11, r1, 0x30
/* 805CA910  4B D9 79 19 */	bl _restgpr_29
/* 805CA914  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805CA918  7C 08 03 A6 */	mtlr r0
/* 805CA91C  38 21 00 30 */	addi r1, r1, 0x30
/* 805CA920  4E 80 00 20 */	blr 
