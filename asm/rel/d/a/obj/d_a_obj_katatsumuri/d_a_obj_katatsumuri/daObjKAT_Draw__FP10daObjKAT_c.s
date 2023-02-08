lbl_80C3B9A0:
/* 80C3B9A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3B9A4  7C 08 02 A6 */	mflr r0
/* 80C3B9A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3B9AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C3B9B0  93 C1 00 08 */	stw r30, 8(r1)
/* 80C3B9B4  7C 7E 1B 78 */	mr r30, r3
/* 80C3B9B8  88 03 05 6D */	lbz r0, 0x56d(r3)
/* 80C3B9BC  28 00 00 00 */	cmplwi r0, 0
/* 80C3B9C0  41 82 00 B0 */	beq lbl_80C3BA70
/* 80C3B9C4  4B FF FD 91 */	bl Z_BufferChk__10daObjKAT_cFv
/* 80C3B9C8  80 7E 0A 64 */	lwz r3, 0xa64(r30)
/* 80C3B9CC  83 E3 00 04 */	lwz r31, 4(r3)
/* 80C3B9D0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C3B9D4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C3B9D8  38 80 00 10 */	li r4, 0x10
/* 80C3B9DC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C3B9E0  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C3B9E4  4B 56 7D E1 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C3B9E8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C3B9EC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C3B9F0  80 9F 00 04 */	lwz r4, 4(r31)
/* 80C3B9F4  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C3B9F8  4B 56 93 A9 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C3B9FC  80 9F 00 04 */	lwz r4, 4(r31)
/* 80C3BA00  80 7E 07 FC */	lwz r3, 0x7fc(r30)
/* 80C3BA04  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80C3BA08  38 84 00 58 */	addi r4, r4, 0x58
/* 80C3BA0C  4B 3D 1C CD */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80C3BA10  80 9F 00 04 */	lwz r4, 4(r31)
/* 80C3BA14  80 7E 07 F8 */	lwz r3, 0x7f8(r30)
/* 80C3BA18  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80C3BA1C  38 84 00 58 */	addi r4, r4, 0x58
/* 80C3BA20  4B 3D 1D 89 */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80C3BA24  80 9F 00 04 */	lwz r4, 4(r31)
/* 80C3BA28  7F C3 F3 78 */	mr r3, r30
/* 80C3BA2C  4B 3E 1A 01 */	bl fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData
/* 80C3BA30  80 7E 0A 64 */	lwz r3, 0xa64(r30)
/* 80C3BA34  4B 3D 57 8D */	bl entryDL__16mDoExt_McaMorfSOFv
/* 80C3BA38  88 1E 08 08 */	lbz r0, 0x808(r30)
/* 80C3BA3C  28 00 00 00 */	cmplwi r0, 0
/* 80C3BA40  40 82 00 30 */	bne lbl_80C3BA70
/* 80C3BA44  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C3BA48  C0 3E 06 28 */	lfs f1, 0x628(r30)
/* 80C3BA4C  3C 80 80 C4 */	lis r4, lit_4695@ha /* 0x80C3C74C@ha */
/* 80C3BA50  C0 44 C7 4C */	lfs f2, lit_4695@l(r4)  /* 0x80C3C74C@l */
/* 80C3BA54  38 9E 06 80 */	addi r4, r30, 0x680
/* 80C3BA58  38 A0 00 00 */	li r5, 0
/* 80C3BA5C  3C C0 80 C4 */	lis r6, lit_4696@ha /* 0x80C3C750@ha */
/* 80C3BA60  C0 66 C7 50 */	lfs f3, lit_4696@l(r6)  /* 0x80C3C750@l */
/* 80C3BA64  3C C0 80 42 */	lis r6, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 80C3BA68  38 C6 48 D0 */	addi r6, r6, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 80C3BA6C  4B 3F 16 49 */	bl dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj
lbl_80C3BA70:
/* 80C3BA70  38 60 00 01 */	li r3, 1
/* 80C3BA74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C3BA78  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C3BA7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3BA80  7C 08 03 A6 */	mtlr r0
/* 80C3BA84  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3BA88  4E 80 00 20 */	blr 
