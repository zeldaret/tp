lbl_80AAA71C:
/* 80AAA71C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80AAA720  7C 08 02 A6 */	mflr r0
/* 80AAA724  90 01 00 54 */	stw r0, 0x54(r1)
/* 80AAA728  39 61 00 50 */	addi r11, r1, 0x50
/* 80AAA72C  4B 8B 7A A5 */	bl _savegpr_26
/* 80AAA730  7C 7B 1B 78 */	mr r27, r3
/* 80AAA734  80 63 05 78 */	lwz r3, 0x578(r3)
/* 80AAA738  83 E3 00 04 */	lwz r31, 4(r3)
/* 80AAA73C  80 7B 0E 40 */	lwz r3, 0xe40(r27)
/* 80AAA740  28 03 00 00 */	cmplwi r3, 0
/* 80AAA744  41 82 00 78 */	beq lbl_80AAA7BC
/* 80AAA748  80 83 00 04 */	lwz r4, 4(r3)
/* 80AAA74C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80AAA750  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80AAA754  80 84 00 04 */	lwz r4, 4(r4)
/* 80AAA758  38 BB 01 0C */	addi r5, r27, 0x10c
/* 80AAA75C  4B 6F A6 45 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80AAA760  88 1B 10 12 */	lbz r0, 0x1012(r27)
/* 80AAA764  28 00 00 00 */	cmplwi r0, 0
/* 80AAA768  40 82 00 1C */	bne lbl_80AAA784
/* 80AAA76C  80 7B 0E 40 */	lwz r3, 0xe40(r27)
/* 80AAA770  80 63 00 04 */	lwz r3, 4(r3)
/* 80AAA774  80 63 00 04 */	lwz r3, 4(r3)
/* 80AAA778  38 63 00 78 */	addi r3, r3, 0x78
/* 80AAA77C  4B 87 B1 25 */	bl hide__13J3DShapeTableFv
/* 80AAA780  48 00 00 18 */	b lbl_80AAA798
lbl_80AAA784:
/* 80AAA784  80 7B 0E 40 */	lwz r3, 0xe40(r27)
/* 80AAA788  80 63 00 04 */	lwz r3, 4(r3)
/* 80AAA78C  80 63 00 04 */	lwz r3, 4(r3)
/* 80AAA790  38 63 00 78 */	addi r3, r3, 0x78
/* 80AAA794  4B 87 B1 45 */	bl show__13J3DShapeTableFv
lbl_80AAA798:
/* 80AAA798  80 7B 0E 40 */	lwz r3, 0xe40(r27)
/* 80AAA79C  4B 56 6A 25 */	bl entryDL__16mDoExt_McaMorfSOFv
/* 80AAA7A0  80 7B 0E 40 */	lwz r3, 0xe40(r27)
/* 80AAA7A4  80 A3 00 04 */	lwz r5, 4(r3)
/* 80AAA7A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AAA7AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AAA7B0  38 63 61 C0 */	addi r3, r3, 0x61c0
/* 80AAA7B4  80 9B 0D 94 */	lwz r4, 0xd94(r27)
/* 80AAA7B8  4B 5A B7 65 */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_80AAA7BC:
/* 80AAA7BC  3B 80 00 00 */	li r28, 0
/* 80AAA7C0  3B 40 00 00 */	li r26, 0
/* 80AAA7C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AAA7C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AAA7CC  3B C3 61 C0 */	addi r30, r3, 0x61c0
lbl_80AAA7D0:
/* 80AAA7D0  3B BA 0E 48 */	addi r29, r26, 0xe48
/* 80AAA7D4  7C 9B E8 2E */	lwzx r4, r27, r29
/* 80AAA7D8  28 04 00 00 */	cmplwi r4, 0
/* 80AAA7DC  41 82 00 A0 */	beq lbl_80AAA87C
/* 80AAA7E0  2C 1C 00 00 */	cmpwi r28, 0
/* 80AAA7E4  40 82 00 10 */	bne lbl_80AAA7F4
/* 80AAA7E8  88 1B 10 10 */	lbz r0, 0x1010(r27)
/* 80AAA7EC  28 00 00 00 */	cmplwi r0, 0
/* 80AAA7F0  40 82 00 18 */	bne lbl_80AAA808
lbl_80AAA7F4:
/* 80AAA7F4  2C 1C 00 01 */	cmpwi r28, 1
/* 80AAA7F8  40 82 00 84 */	bne lbl_80AAA87C
/* 80AAA7FC  88 1B 10 11 */	lbz r0, 0x1011(r27)
/* 80AAA800  28 00 00 00 */	cmplwi r0, 0
/* 80AAA804  41 82 00 78 */	beq lbl_80AAA87C
lbl_80AAA808:
/* 80AAA808  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80AAA80C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80AAA810  80 84 00 04 */	lwz r4, 4(r4)
/* 80AAA814  38 BB 01 0C */	addi r5, r27, 0x10c
/* 80AAA818  4B 6F A5 89 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80AAA81C  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 80AAA820  80 83 00 0C */	lwz r4, 0xc(r3)
/* 80AAA824  3C 60 80 AB */	lis r3, jointNo@ha /* 0x80AAD318@ha */
/* 80AAA828  38 63 D3 18 */	addi r3, r3, jointNo@l /* 0x80AAD318@l */
/* 80AAA82C  7C 03 D0 2E */	lwzx r0, r3, r26
/* 80AAA830  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80AAA834  7C 64 02 14 */	add r3, r4, r0
/* 80AAA838  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AAA83C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AAA840  4B 89 BC 71 */	bl PSMTXCopy
/* 80AAA844  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AAA848  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AAA84C  38 81 00 08 */	addi r4, r1, 8
/* 80AAA850  4B 89 BC 61 */	bl PSMTXCopy
/* 80AAA854  38 61 00 08 */	addi r3, r1, 8
/* 80AAA858  7C 9B E8 2E */	lwzx r4, r27, r29
/* 80AAA85C  38 84 00 24 */	addi r4, r4, 0x24
/* 80AAA860  4B 89 BC 51 */	bl PSMTXCopy
/* 80AAA864  7C 7B E8 2E */	lwzx r3, r27, r29
/* 80AAA868  4B 56 34 5D */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80AAA86C  7F C3 F3 78 */	mr r3, r30
/* 80AAA870  80 9B 0D 94 */	lwz r4, 0xd94(r27)
/* 80AAA874  7C BB E8 2E */	lwzx r5, r27, r29
/* 80AAA878  4B 5A B6 A5 */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_80AAA87C:
/* 80AAA87C  3B 9C 00 01 */	addi r28, r28, 1
/* 80AAA880  2C 1C 00 02 */	cmpwi r28, 2
/* 80AAA884  3B 5A 00 04 */	addi r26, r26, 4
/* 80AAA888  41 80 FF 48 */	blt lbl_80AAA7D0
/* 80AAA88C  39 61 00 50 */	addi r11, r1, 0x50
/* 80AAA890  4B 8B 79 8D */	bl _restgpr_26
/* 80AAA894  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80AAA898  7C 08 03 A6 */	mtlr r0
/* 80AAA89C  38 21 00 50 */	addi r1, r1, 0x50
/* 80AAA8A0  4E 80 00 20 */	blr 
