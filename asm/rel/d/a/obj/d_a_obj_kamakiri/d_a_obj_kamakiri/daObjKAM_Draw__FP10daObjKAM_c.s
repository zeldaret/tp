lbl_80C377F4:
/* 80C377F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C377F8  7C 08 02 A6 */	mflr r0
/* 80C377FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C37800  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C37804  93 C1 00 08 */	stw r30, 8(r1)
/* 80C37808  7C 7E 1B 78 */	mr r30, r3
/* 80C3780C  88 03 05 6D */	lbz r0, 0x56d(r3)
/* 80C37810  28 00 00 00 */	cmplwi r0, 0
/* 80C37814  41 82 00 A4 */	beq lbl_80C378B8
/* 80C37818  4B FF F4 A1 */	bl Z_BufferChk__10daObjKAM_cFv
/* 80C3781C  80 7E 0A 58 */	lwz r3, 0xa58(r30)
/* 80C37820  83 E3 00 04 */	lwz r31, 4(r3)
/* 80C37824  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C37828  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C3782C  38 80 00 10 */	li r4, 0x10
/* 80C37830  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C37834  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C37838  4B 56 BF 8D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C3783C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C37840  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C37844  80 9F 00 04 */	lwz r4, 4(r31)
/* 80C37848  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C3784C  4B 56 D5 55 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C37850  80 9F 00 04 */	lwz r4, 4(r31)
/* 80C37854  80 7E 09 B4 */	lwz r3, 0x9b4(r30)
/* 80C37858  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80C3785C  38 84 00 58 */	addi r4, r4, 0x58
/* 80C37860  4B 3D 5E 79 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80C37864  80 9F 00 04 */	lwz r4, 4(r31)
/* 80C37868  80 7E 09 B0 */	lwz r3, 0x9b0(r30)
/* 80C3786C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80C37870  38 84 00 58 */	addi r4, r4, 0x58
/* 80C37874  4B 3D 5F 35 */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80C37878  80 7E 0A 58 */	lwz r3, 0xa58(r30)
/* 80C3787C  4B 3D 99 45 */	bl entryDL__16mDoExt_McaMorfSOFv
/* 80C37880  88 1E 09 C0 */	lbz r0, 0x9c0(r30)
/* 80C37884  28 00 00 00 */	cmplwi r0, 0
/* 80C37888  40 82 00 30 */	bne lbl_80C378B8
/* 80C3788C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C37890  C0 3E 07 E8 */	lfs f1, 0x7e8(r30)
/* 80C37894  3C 80 80 C4 */	lis r4, lit_4757@ha /* 0x80C384DC@ha */
/* 80C37898  C0 44 84 DC */	lfs f2, lit_4757@l(r4)  /* 0x80C384DC@l */
/* 80C3789C  38 9E 08 40 */	addi r4, r30, 0x840
/* 80C378A0  38 A0 00 00 */	li r5, 0
/* 80C378A4  3C C0 80 C4 */	lis r6, lit_4758@ha /* 0x80C384E0@ha */
/* 80C378A8  C0 66 84 E0 */	lfs f3, lit_4758@l(r6)  /* 0x80C384E0@l */
/* 80C378AC  3C C0 80 42 */	lis r6, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 80C378B0  38 C6 48 D0 */	addi r6, r6, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 80C378B4  4B 3F 58 01 */	bl dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj
lbl_80C378B8:
/* 80C378B8  38 60 00 01 */	li r3, 1
/* 80C378BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C378C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C378C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C378C8  7C 08 03 A6 */	mtlr r0
/* 80C378CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C378D0  4E 80 00 20 */	blr 
