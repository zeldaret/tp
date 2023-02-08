lbl_80B20434:
/* 80B20434  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80B20438  7C 08 02 A6 */	mflr r0
/* 80B2043C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80B20440  39 61 00 50 */	addi r11, r1, 0x50
/* 80B20444  4B 84 1D 99 */	bl _savegpr_29
/* 80B20448  7C 7E 1B 78 */	mr r30, r3
/* 80B2044C  80 63 05 78 */	lwz r3, 0x578(r3)
/* 80B20450  83 A3 00 04 */	lwz r29, 4(r3)
/* 80B20454  38 00 00 00 */	li r0, 0
/* 80B20458  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B2045C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B20460  3B E3 61 C0 */	addi r31, r3, 0x61c0
/* 80B20464  80 9E 0E 44 */	lwz r4, 0xe44(r30)
/* 80B20468  28 04 00 00 */	cmplwi r4, 0
/* 80B2046C  41 82 00 88 */	beq lbl_80B204F4
/* 80B20470  2C 00 00 00 */	cmpwi r0, 0
/* 80B20474  40 82 00 80 */	bne lbl_80B204F4
/* 80B20478  88 1E 10 02 */	lbz r0, 0x1002(r30)
/* 80B2047C  28 00 00 00 */	cmplwi r0, 0
/* 80B20480  41 82 00 74 */	beq lbl_80B204F4
/* 80B20484  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80B20488  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80B2048C  80 84 00 04 */	lwz r4, 4(r4)
/* 80B20490  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80B20494  4B 68 49 0D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80B20498  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 80B2049C  80 83 00 0C */	lwz r4, 0xc(r3)
/* 80B204A0  3C 60 80 B2 */	lis r3, jointNo@ha /* 0x80B24B1C@ha */
/* 80B204A4  80 03 4B 1C */	lwz r0, jointNo@l(r3)  /* 0x80B24B1C@l */
/* 80B204A8  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80B204AC  7C 64 02 14 */	add r3, r4, r0
/* 80B204B0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B204B4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B204B8  4B 82 5F F9 */	bl PSMTXCopy
/* 80B204BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B204C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B204C4  38 81 00 08 */	addi r4, r1, 8
/* 80B204C8  4B 82 5F E9 */	bl PSMTXCopy
/* 80B204CC  38 61 00 08 */	addi r3, r1, 8
/* 80B204D0  80 9E 0E 44 */	lwz r4, 0xe44(r30)
/* 80B204D4  38 84 00 24 */	addi r4, r4, 0x24
/* 80B204D8  4B 82 5F D9 */	bl PSMTXCopy
/* 80B204DC  80 7E 0E 44 */	lwz r3, 0xe44(r30)
/* 80B204E0  4B 4E D7 E5 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80B204E4  7F E3 FB 78 */	mr r3, r31
/* 80B204E8  80 9E 0D 94 */	lwz r4, 0xd94(r30)
/* 80B204EC  80 BE 0E 44 */	lwz r5, 0xe44(r30)
/* 80B204F0  4B 53 5A 2D */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_80B204F4:
/* 80B204F4  39 61 00 50 */	addi r11, r1, 0x50
/* 80B204F8  4B 84 1D 31 */	bl _restgpr_29
/* 80B204FC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80B20500  7C 08 03 A6 */	mtlr r0
/* 80B20504  38 21 00 50 */	addi r1, r1, 0x50
/* 80B20508  4E 80 00 20 */	blr 
