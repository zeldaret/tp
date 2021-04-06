lbl_80667FE4:
/* 80667FE4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80667FE8  7C 08 02 A6 */	mflr r0
/* 80667FEC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80667FF0  39 61 00 30 */	addi r11, r1, 0x30
/* 80667FF4  4B CF A1 E9 */	bl _savegpr_29
/* 80667FF8  7C 7F 1B 78 */	mr r31, r3
/* 80667FFC  3C 80 80 67 */	lis r4, lit_3662@ha /* 0x8066EDE8@ha */
/* 80668000  3B C4 ED E8 */	addi r30, r4, lit_3662@l /* 0x8066EDE8@l */
/* 80668004  88 03 06 89 */	lbz r0, 0x689(r3)
/* 80668008  7C 00 07 75 */	extsb. r0, r0
/* 8066800C  41 82 00 14 */	beq lbl_80668020
/* 80668010  38 00 00 00 */	li r0, 0
/* 80668014  98 1F 06 89 */	stb r0, 0x689(r31)
/* 80668018  38 60 00 01 */	li r3, 1
/* 8066801C  48 00 01 00 */	b lbl_8066811C
lbl_80668020:
/* 80668020  4B AF 75 3D */	bl linkGrabSubjectNoDraw__9daPy_py_cFP10fopAc_ac_c
/* 80668024  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80668028  41 82 00 0C */	beq lbl_80668034
/* 8066802C  38 60 00 01 */	li r3, 1
/* 80668030  48 00 00 EC */	b lbl_8066811C
lbl_80668034:
/* 80668034  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 80668038  83 A3 00 04 */	lwz r29, 4(r3)
/* 8066803C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80668040  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80668044  38 80 00 00 */	li r4, 0
/* 80668048  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8066804C  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80668050  4B B3 B7 75 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80668054  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80668058  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8066805C  80 9D 00 04 */	lwz r4, 4(r29)
/* 80668060  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80668064  4B B3 CD 3D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80668068  80 9D 00 04 */	lwz r4, 4(r29)
/* 8066806C  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 80668070  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80668074  38 84 00 58 */	addi r4, r4, 0x58
/* 80668078  4B 9A 56 61 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 8066807C  80 9D 00 04 */	lwz r4, 4(r29)
/* 80668080  80 7F 05 D8 */	lwz r3, 0x5d8(r31)
/* 80668084  38 84 00 58 */	addi r4, r4, 0x58
/* 80668088  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8066808C  FC 00 00 1E */	fctiwz f0, f0
/* 80668090  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80668094  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 80668098  4B 9A 55 51 */	bl entry__13mDoExt_btpAnmFP16J3DMaterialTables
/* 8066809C  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 806680A0  4B 9A 85 E1 */	bl entryDL__14mDoExt_McaMorfFv
/* 806680A4  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 806680A8  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 806680AC  40 82 00 6C */	bne lbl_80668118
/* 806680B0  A8 1F 05 F2 */	lha r0, 0x5f2(r31)
/* 806680B4  2C 00 00 16 */	cmpwi r0, 0x16
/* 806680B8  41 82 00 60 */	beq lbl_80668118
/* 806680BC  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 806680C0  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 806680C4  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 806680C8  EC 20 18 2A */	fadds f1, f0, f3
/* 806680CC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 806680D0  D0 01 00 08 */	stfs f0, 8(r1)
/* 806680D4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806680D8  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 806680DC  80 7F 05 F8 */	lwz r3, 0x5f8(r31)
/* 806680E0  38 80 00 01 */	li r4, 1
/* 806680E4  7F A5 EB 78 */	mr r5, r29
/* 806680E8  38 C1 00 08 */	addi r6, r1, 8
/* 806680EC  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 806680F0  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 806680F4  C0 9F 07 94 */	lfs f4, 0x794(r31)
/* 806680F8  38 FF 07 EC */	addi r7, r31, 0x7ec
/* 806680FC  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80668100  39 20 00 00 */	li r9, 0
/* 80668104  C0 BE 00 00 */	lfs f5, 0(r30)
/* 80668108  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 8066810C  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 80668110  4B 9C 68 01 */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 80668114  90 7F 05 F8 */	stw r3, 0x5f8(r31)
lbl_80668118:
/* 80668118  38 60 00 01 */	li r3, 1
lbl_8066811C:
/* 8066811C  39 61 00 30 */	addi r11, r1, 0x30
/* 80668120  4B CF A1 09 */	bl _restgpr_29
/* 80668124  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80668128  7C 08 03 A6 */	mtlr r0
/* 8066812C  38 21 00 30 */	addi r1, r1, 0x30
/* 80668130  4E 80 00 20 */	blr 
