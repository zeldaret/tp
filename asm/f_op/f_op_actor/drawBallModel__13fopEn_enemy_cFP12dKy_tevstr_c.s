lbl_800196A0:
/* 800196A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800196A4  7C 08 02 A6 */	mflr r0
/* 800196A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800196AC  39 61 00 20 */	addi r11, r1, 0x20
/* 800196B0  48 34 8B 2D */	bl _savegpr_29
/* 800196B4  7C 7D 1B 78 */	mr r29, r3
/* 800196B8  7C 9E 23 78 */	mr r30, r4
/* 800196BC  80 83 05 80 */	lwz r4, 0x580(r3)
/* 800196C0  28 04 00 00 */	cmplwi r4, 0
/* 800196C4  41 82 00 E0 */	beq lbl_800197A4
/* 800196C8  3B E4 00 18 */	addi r31, r4, 0x18
/* 800196CC  4B FF FE 31 */	bl checkBallModelDraw__13fopEn_enemy_cFv
/* 800196D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800196D4  41 82 00 0C */	beq lbl_800196E0
/* 800196D8  C0 22 81 E0 */	lfs f1, lit_4505(r2)
/* 800196DC  48 00 00 08 */	b lbl_800196E4
lbl_800196E0:
/* 800196E0  C0 22 81 F0 */	lfs f1, lit_4555(r2)
lbl_800196E4:
/* 800196E4  7F E3 FB 78 */	mr r3, r31
/* 800196E8  C0 42 81 F4 */	lfs f2, lit_4556(r2)
/* 800196EC  48 25 70 55 */	bl cLib_chaseF__FPfff
/* 800196F0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 800196F4  D0 1F 00 04 */	stfs f0, 4(r31)
/* 800196F8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 800196FC  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80019700  80 7D 05 80 */	lwz r3, 0x580(r29)
/* 80019704  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80019708  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8001970C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80019710  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80019714  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80019718  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 8001971C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80019720  C0 02 81 F8 */	lfs f0, lit_4557(r2)
/* 80019724  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80019728  40 81 00 7C */	ble lbl_800197A4
/* 8001972C  80 7D 05 80 */	lwz r3, 0x580(r29)
/* 80019730  38 63 00 24 */	addi r3, r3, 0x24
/* 80019734  C0 3D 05 68 */	lfs f1, 0x568(r29)
/* 80019738  C0 5D 05 6C */	lfs f2, 0x56c(r29)
/* 8001973C  C0 7D 05 70 */	lfs f3, 0x570(r29)
/* 80019740  48 32 D1 A9 */	bl PSMTXTrans
/* 80019744  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80019748  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8001974C  80 9D 05 80 */	lwz r4, 0x580(r29)
/* 80019750  80 84 00 04 */	lwz r4, 4(r4)
/* 80019754  7F C5 F3 78 */	mr r5, r30
/* 80019758  48 18 B6 49 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8001975C  C0 1D 05 90 */	lfs f0, 0x590(r29)
/* 80019760  80 7D 05 84 */	lwz r3, 0x584(r29)
/* 80019764  D0 03 00 08 */	stfs f0, 8(r3)
/* 80019768  80 7D 05 80 */	lwz r3, 0x580(r29)
/* 8001976C  80 63 00 04 */	lwz r3, 4(r3)
/* 80019770  38 63 00 58 */	addi r3, r3, 0x58
/* 80019774  80 9D 05 84 */	lwz r4, 0x584(r29)
/* 80019778  48 31 65 4D */	bl entryTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
/* 8001977C  C0 1D 05 90 */	lfs f0, 0x590(r29)
/* 80019780  80 7D 05 88 */	lwz r3, 0x588(r29)
/* 80019784  D0 03 00 08 */	stfs f0, 8(r3)
/* 80019788  80 7D 05 80 */	lwz r3, 0x580(r29)
/* 8001978C  80 63 00 04 */	lwz r3, 4(r3)
/* 80019790  38 63 00 58 */	addi r3, r3, 0x58
/* 80019794  80 9D 05 88 */	lwz r4, 0x588(r29)
/* 80019798  48 31 66 D9 */	bl entryTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
/* 8001979C  80 7D 05 80 */	lwz r3, 0x580(r29)
/* 800197A0  4B FF 45 25 */	bl mDoExt_modelUpdateDL__FP8J3DModel
lbl_800197A4:
/* 800197A4  39 61 00 20 */	addi r11, r1, 0x20
/* 800197A8  48 34 8A 81 */	bl _restgpr_29
/* 800197AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800197B0  7C 08 03 A6 */	mtlr r0
/* 800197B4  38 21 00 20 */	addi r1, r1, 0x20
/* 800197B8  4E 80 00 20 */	blr 
