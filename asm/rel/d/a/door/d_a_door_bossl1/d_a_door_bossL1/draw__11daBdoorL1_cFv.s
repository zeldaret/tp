lbl_804E476C:
/* 804E476C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E4770  7C 08 02 A6 */	mflr r0
/* 804E4774  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E4778  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E477C  93 C1 00 08 */	stw r30, 8(r1)
/* 804E4780  7C 7E 1B 78 */	mr r30, r3
/* 804E4784  3C 60 80 43 */	lis r3, g_env_light@ha
/* 804E4788  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 804E478C  38 80 00 10 */	li r4, 0x10
/* 804E4790  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 804E4794  38 DE 01 0C */	addi r6, r30, 0x10c
/* 804E4798  4B CB F0 2C */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 804E479C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804E47A0  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 804E47A4  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 804E47A8  3C 60 80 43 */	lis r3, j3dSys@ha
/* 804E47AC  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 804E47B0  90 1F 00 48 */	stw r0, 0x48(r31)
/* 804E47B4  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 804E47B8  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 804E47BC  4B FF D5 DD */	bl getNowLevel__Fv
/* 804E47C0  2C 03 00 08 */	cmpwi r3, 8
/* 804E47C4  40 82 00 24 */	bne lbl_804E47E8
/* 804E47C8  80 7E 05 8C */	lwz r3, 0x58c(r30)
/* 804E47CC  28 03 00 00 */	cmplwi r3, 0
/* 804E47D0  41 82 00 18 */	beq lbl_804E47E8
/* 804E47D4  80 9E 05 80 */	lwz r4, 0x580(r30)
/* 804E47D8  80 84 00 04 */	lwz r4, 4(r4)
/* 804E47DC  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 804E47E0  38 84 00 58 */	addi r4, r4, 0x58
/* 804E47E4  4B B2 8E F4 */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
lbl_804E47E8:
/* 804E47E8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 804E47EC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 804E47F0  80 9E 05 80 */	lwz r4, 0x580(r30)
/* 804E47F4  80 84 00 04 */	lwz r4, 4(r4)
/* 804E47F8  38 BE 01 0C */	addi r5, r30, 0x10c
/* 804E47FC  4B CC 05 A4 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804E4800  80 7E 05 80 */	lwz r3, 0x580(r30)
/* 804E4804  80 83 00 04 */	lwz r4, 4(r3)
/* 804E4808  80 7E 05 88 */	lwz r3, 0x588(r30)
/* 804E480C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 804E4810  4B B2 91 BC */	b entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 804E4814  80 7E 05 80 */	lwz r3, 0x580(r30)
/* 804E4818  4B B2 94 AC */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 804E481C  80 7E 05 80 */	lwz r3, 0x580(r30)
/* 804E4820  80 63 00 04 */	lwz r3, 4(r3)
/* 804E4824  80 63 00 28 */	lwz r3, 0x28(r3)
/* 804E4828  80 63 00 00 */	lwz r3, 0(r3)
/* 804E482C  38 00 00 00 */	li r0, 0
/* 804E4830  90 03 00 54 */	stw r0, 0x54(r3)
/* 804E4834  80 9E 05 84 */	lwz r4, 0x584(r30)
/* 804E4838  28 04 00 00 */	cmplwi r4, 0
/* 804E483C  41 82 00 4C */	beq lbl_804E4888
/* 804E4840  3C 60 80 43 */	lis r3, g_env_light@ha
/* 804E4844  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 804E4848  80 84 00 04 */	lwz r4, 4(r4)
/* 804E484C  38 BE 01 0C */	addi r5, r30, 0x10c
/* 804E4850  4B CC 05 50 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804E4854  80 7E 05 84 */	lwz r3, 0x584(r30)
/* 804E4858  80 83 00 04 */	lwz r4, 4(r3)
/* 804E485C  80 7E 05 88 */	lwz r3, 0x588(r30)
/* 804E4860  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 804E4864  4B B2 91 68 */	b entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 804E4868  80 7E 05 84 */	lwz r3, 0x584(r30)
/* 804E486C  4B B2 94 58 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 804E4870  80 7E 05 84 */	lwz r3, 0x584(r30)
/* 804E4874  80 63 00 04 */	lwz r3, 4(r3)
/* 804E4878  80 63 00 28 */	lwz r3, 0x28(r3)
/* 804E487C  80 63 00 00 */	lwz r3, 0(r3)
/* 804E4880  38 00 00 00 */	li r0, 0
/* 804E4884  90 03 00 54 */	stw r0, 0x54(r3)
lbl_804E4888:
/* 804E4888  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804E488C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804E4890  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 804E4894  90 1F 00 48 */	stw r0, 0x48(r31)
/* 804E4898  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 804E489C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 804E48A0  38 60 00 01 */	li r3, 1
/* 804E48A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E48A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E48AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E48B0  7C 08 03 A6 */	mtlr r0
/* 804E48B4  38 21 00 10 */	addi r1, r1, 0x10
/* 804E48B8  4E 80 00 20 */	blr 
