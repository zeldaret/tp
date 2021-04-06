lbl_80469568:
/* 80469568  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046956C  7C 08 02 A6 */	mflr r0
/* 80469570  90 01 00 14 */	stw r0, 0x14(r1)
/* 80469574  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80469578  7C 7F 1B 78 */	mr r31, r3
/* 8046957C  80 03 05 A0 */	lwz r0, 0x5a0(r3)
/* 80469580  28 00 00 00 */	cmplwi r0, 0
/* 80469584  41 82 00 48 */	beq lbl_804695CC
/* 80469588  88 1F 06 02 */	lbz r0, 0x602(r31)
/* 8046958C  28 00 00 01 */	cmplwi r0, 1
/* 80469590  41 82 00 3C */	beq lbl_804695CC
/* 80469594  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80469598  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8046959C  38 80 00 10 */	li r4, 0x10
/* 804695A0  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 804695A4  38 DF 01 0C */	addi r6, r31, 0x10c
/* 804695A8  4B D3 A2 1D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 804695AC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 804695B0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 804695B4  80 9F 05 A0 */	lwz r4, 0x5a0(r31)
/* 804695B8  80 84 00 04 */	lwz r4, 4(r4)
/* 804695BC  38 BF 01 0C */	addi r5, r31, 0x10c
/* 804695C0  4B D3 B7 E1 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804695C4  80 7F 05 A0 */	lwz r3, 0x5a0(r31)
/* 804695C8  4B BA 46 FD */	bl mDoExt_modelUpdateDL__FP8J3DModel
lbl_804695CC:
/* 804695CC  88 1F 0A 79 */	lbz r0, 0xa79(r31)
/* 804695D0  7C 00 07 75 */	extsb. r0, r0
/* 804695D4  41 82 00 0C */	beq lbl_804695E0
/* 804695D8  7F E3 FB 78 */	mr r3, r31
/* 804695DC  4B FF EC 1D */	bl hahen_draw__FP8ep_class
lbl_804695E0:
/* 804695E0  38 60 00 01 */	li r3, 1
/* 804695E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804695E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804695EC  7C 08 03 A6 */	mtlr r0
/* 804695F0  38 21 00 10 */	addi r1, r1, 0x10
/* 804695F4  4E 80 00 20 */	blr 
